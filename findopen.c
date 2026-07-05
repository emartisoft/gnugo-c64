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

/*-------------------------------------------------------
  findopen.c -- Find possible moves from current location
-------------------------------------------------------*/

#include "gnugo.h"

extern unsigned char p[19][19];   /* go board */
extern unsigned char ma[19][19];  /* working matrix for marking */
extern int mik, mjk;  /* location of computer stone captured */

/* --- OLD recursive version (commented out) ---
int findopen(int m, int n, int i[], int j[], int color, int minlib, int *ct)
{
 ma[m][n] = 1;
 if (m != 0)
   {
    if ((p[m - 1][n] == EMPTY) && (((m - 1) != mik) || (n != mjk)))
      { i[*ct] = m - 1; j[*ct] = n; ++*ct; if (*ct == minlib) return 1; }
    else if ((p[m - 1][n] == color) && !ma[m - 1][n])
	 if (findopen(m - 1, n, i, j, color, minlib, ct) && (*ct == minlib)) return 1;
  }
 if (m != 18)
   {
    if ((p[m + 1][n] == EMPTY) && (((m + 1) != mik) || (n != mjk)))
      { i[*ct] = m + 1; j[*ct] = n; ++*ct; if (*ct == minlib) return 1; }
    else if ((p[m + 1][n] == color) && !ma[m + 1][n])
	 if (findopen(m + 1, n, i, j, color, minlib, ct) && (*ct == minlib)) return 1;
  }
 if (n != 0)
   {
    if ((p[m][n - 1] == EMPTY) && ((m != mik) || ((n - 1) != mjk)))
      { i[*ct] = m; j[*ct] = n - 1; ++*ct; if (*ct == minlib) return 1; }
    else if ((p[m][n - 1] == color) && !ma[m][n - 1])
	 if (findopen(m, n - 1, i, j, color, minlib, ct) && (*ct == minlib)) return 1;
  }
 if (n != 18)
   {
    if ((p[m][n + 1] == EMPTY) && ((m != mik) || ((n + 1) != mjk)))
      { i[*ct] = m; j[*ct] = n + 1; ++*ct; if (*ct == minlib) return 1; }
    else if ((p[m][n + 1] == color) && !ma[m][n + 1])
	 if (findopen(m, n + 1, i, j, color, minlib, ct) && (*ct == minlib)) return 1;
  }
 return 0;
}
*/

#define OSTACK_MAX 400
static int ostack[OSTACK_MAX];
static int osp;

int findopen(int m, int n, int i[], int j[], int color, int minlib, int *ct)
{
  int cur;

  osp = 0;
  ostack[osp++] = m * 19 + n;

  while (osp > 0)
    {
      cur = ostack[--osp];
      m = cur / 19;
      n = cur % 19;

      if (ma[m][n])
        continue;
      ma[m][n] = 1;

      if (m != 0)
        {
          if ((p[m - 1][n] == EMPTY) && (((m - 1) != mik) || (n != mjk)))
            {
              i[*ct] = m - 1;
              j[*ct] = n;
              ++*ct;
              if (*ct == minlib) return 1;
            }
          else if ((p[m - 1][n] == color) && !ma[m - 1][n])
            ostack[osp++] = (m - 1) * 19 + n;
        }

      if (m != 18)
        {
          if ((p[m + 1][n] == EMPTY) && (((m + 1) != mik) || (n != mjk)))
            {
              i[*ct] = m + 1;
              j[*ct] = n;
              ++*ct;
              if (*ct == minlib) return 1;
            }
          else if ((p[m + 1][n] == color) && !ma[m + 1][n])
            ostack[osp++] = (m + 1) * 19 + n;
        }

      if (n != 0)
        {
          if ((p[m][n - 1] == EMPTY) && ((m != mik) || ((n - 1) != mjk)))
            {
              i[*ct] = m;
              j[*ct] = n - 1;
              ++*ct;
              if (*ct == minlib) return 1;
            }
          else if ((p[m][n - 1] == color) && !ma[m][n - 1])
            ostack[osp++] = m * 19 + (n - 1);
        }

      if (n != 18)
        {
          if ((p[m][n + 1] == EMPTY) && ((m != mik) || ((n + 1) != mjk)))
            {
              i[*ct] = m;
              j[*ct] = n + 1;
              ++*ct;
              if (*ct == minlib) return 1;
            }
          else if ((p[m][n + 1] == color) && !ma[m][n + 1])
            ostack[osp++] = m * 19 + (n + 1);
        }
    }

  return 0;
}
