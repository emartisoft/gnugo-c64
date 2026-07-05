/*
                 GNUGO - the game of Go (Wei-Chi)
                Version 1.2   last revised 10-31-95
           Copyright (C) Free Software Foundation, Inc.
                      written by Man L. Li
                      modified by Wayne Iba
        modified by Frank Pursel <fpp%minor.UUCP@dragon.com>
                    documented by Bob Webber
*/
/*
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation - version 2.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License in file COPYING for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

Please report any bug/fix, modification, suggestion to

           manli@cs.uh.edu
*/

/*-----------------------------------------------------------------
  findnext.c -- Find next computer move related to current location
-----------------------------------------------------------------*/

#include "gnugo.h"

extern unsigned char p[19][19];   /* go board */
extern unsigned char ma[19][19];  /* working matrix for marking */
extern int mymove;                /* computer color */
extern int lib;                   /* liberty of current stone */

static int fval(int newlib, int minlib);

/* --- OLD recursive version (commented out) ---
int findnextmove(int m, int n, int *i, int *j, int *val, int minlib)
 {
  int ti, tj, tval;
  int found = 0;
  *i = -1; *j = -1; *val = -1;
  ma[m][n] = 1;
  if (m != 0)
     if (p[m - 1][n] == EMPTY)
      { ti = m - 1; tj = n; lib = 0; countlib(ti, tj, mymove); tval = fval(lib, minlib); found = 1; }
     else if ((p[m - 1][n] == mymove) && !ma[m - 1][n])
	 if (findnextmove(m - 1, n, &ti, &tj, &tval, minlib)) found = 1;
  if (found)
    { found = 0; if (tval > *val && fioe(ti, tj) != 1) { *val = tval; *i = ti; *j = tj; } }
  if (m != 18)
     if (p[m + 1][n] == EMPTY)
      { ti = m + 1; tj = n; lib = 0; countlib(ti, tj, mymove); tval = fval(lib, minlib); found = 1; }
     else if ((p[m + 1][n] == mymove) && !ma[m + 1][n])
	  if (findnextmove(m + 1, n, &ti, &tj, &tval, minlib)) found = 1;
  if (found)
    { found = 0; if (tval > *val && fioe(ti, tj) != 1) { *val = tval; *i = ti; *j = tj; } }
  if (n != 0)
     if (p[m][n - 1] == EMPTY)
      { ti = m; tj = n - 1; lib = 0; countlib(ti, tj, mymove); tval = fval(lib, minlib); found = 1; }
     else if ((p[m][n - 1] == mymove) && !ma[m][n - 1])
	  if (findnextmove(m, n - 1, &ti, &tj, &tval, minlib)) found = 1;
  if (found)
    { found = 0; if (tval > *val && fioe(ti, tj) != 1) { *val = tval; *i = ti; *j = tj; } }
  if (n != 18)
     if (p[m][n + 1] == EMPTY)
      { ti = m; tj = n + 1; lib = 0; countlib(ti, tj, mymove); tval = fval(lib, minlib); found = 1; }
     else if ((p[m][n + 1] == mymove) && !ma[m][n + 1])
	  if (findnextmove(m, n + 1, &ti, &tj, &tval, minlib)) found = 1;
  if (found)
    { found = 0; if (tval > *val && fioe(ti, tj) != 1) { *val = tval; *i = ti; *j = tj; } }
  if (*val > 0) return 1;
  else return 0;
}
*/

static int fstack[400];
static int fsp;

int findnextmove(int m, int n, int *i, int *j, int *val, int minlib)
{
  fsp = 0;
  int tval;
  int cur;

  *val = -1;
  *i = -1;
  *j = -1;

  fstack[fsp++] = m * 19 + n;

  while (fsp > 0)
    {
      cur = fstack[--fsp];
      m = cur / 19;
      n = cur % 19;

      if (ma[m][n])
        continue;
      ma[m][n] = 1;

      if (m != 0)
        {
          if (p[m - 1][n] == EMPTY)
            {
              lib = 0;
              countlib(m - 1, n, mymove);
              tval = fval(lib, minlib);
              if (tval > *val && fioe(m - 1, n) != 1)
                {
                  *val = tval;
                  *i = m - 1;
                  *j = n;
                }
            }
          else if ((p[m - 1][n] == mymove) && !ma[m - 1][n])
            fstack[fsp++] = (m - 1) * 19 + n;
        }

      if (m != 18)
        {
          if (p[m + 1][n] == EMPTY)
            {
              lib = 0;
              countlib(m + 1, n, mymove);
              tval = fval(lib, minlib);
              if (tval > *val && fioe(m + 1, n) != 1)
                {
                  *val = tval;
                  *i = m + 1;
                  *j = n;
                }
            }
          else if ((p[m + 1][n] == mymove) && !ma[m + 1][n])
            fstack[fsp++] = (m + 1) * 19 + n;
        }

      if (n != 0)
        {
          if (p[m][n - 1] == EMPTY)
            {
              lib = 0;
              countlib(m, n - 1, mymove);
              tval = fval(lib, minlib);
              if (tval > *val && fioe(m, n - 1) != 1)
                {
                  *val = tval;
                  *i = m;
                  *j = n - 1;
                }
            }
          else if ((p[m][n - 1] == mymove) && !ma[m][n - 1])
            fstack[fsp++] = m * 19 + (n - 1);
        }

      if (n != 18)
        {
          if (p[m][n + 1] == EMPTY)
            {
              lib = 0;
              countlib(m, n + 1, mymove);
              tval = fval(lib, minlib);
              if (tval > *val && fioe(m, n + 1) != 1)
                {
                  *val = tval;
                  *i = m;
                  *j = n + 1;
                }
            }
          else if ((p[m][n + 1] == mymove) && !ma[m][n + 1])
            fstack[fsp++] = m * 19 + (n + 1);
        }
    }

  return *val > 0 ? 1 : 0;
}

static int fval(int newlib, int minlib)
{
 int k, val;

 if (newlib <= minlib)
    val = -1;
 else
   {
    k = newlib - minlib;
    val = 40 + (k - 1) * 50 / (minlib * minlib * minlib);
  }
 return val;
}
