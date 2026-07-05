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

/*-------------------------------------
  count.c -- Count liberty around stone
-------------------------------------*/

#include "gnugo.h"

extern unsigned char p[19][19];   /* go board */
extern unsigned char ml[19][19];  /* working matrix for marking */
extern int lib;                   /* current stone liberty */

/* --- OLD recursive version (commented out) ---
void count(int i,     int j,     int color)
{
 ml[i][j] = EMPTY;
 if (i != EMPTY)
   {
    if ((p[i - 1][j] == EMPTY) && ml[i - 1][j])
      { ++lib; ml[i - 1][j] = EMPTY; }
    else if ((p[i - 1][j] == color) && ml[i - 1][j])
	  count(i - 1, j, color);
  }
 if (i != 18)
   {
    if ((p[i + 1][j] == EMPTY) && ml[i + 1][j])
      { ++lib; ml[i + 1][j] = EMPTY; }
    else if ((p[i + 1][j] == color) && ml[i + 1][j])
	  count(i + 1, j, color);
  }
 if (j != EMPTY)
   {
    if ((p[i][j - 1] == EMPTY) && ml[i][j - 1])
      { ++lib; ml[i][j - 1] = EMPTY; }
    else if ((p[i][j - 1] == color) && ml[i][j - 1])
	  count(i, j - 1, color);
  }
 if (j != 18)
   {
    if ((p[i][j + 1] == EMPTY) && ml[i][j + 1])
      { ++lib; ml[i][j + 1] = EMPTY; }
    else if ((p[i][j + 1] == color) && ml[i][j + 1])
	  count(i + 1, j, color);
  }
}
*/

#define CSTACK_MAX 400
static int cstack[CSTACK_MAX];
static int csp;

void count(int i, int j, int color)
{
  int cur;

  csp = 0;
  cstack[csp++] = i * 19 + j;

  while (csp > 0)
    {
      cur = cstack[--csp];
      i = cur / 19;
      j = cur % 19;

      if (ml[i][j] == 0)
        continue;
      ml[i][j] = 0;

      if (i != 0)
        {
          if ((p[i - 1][j] == EMPTY) && ml[i - 1][j])
            {
              ++lib;
              ml[i - 1][j] = 0;
            }
          else if ((p[i - 1][j] == color) && ml[i - 1][j])
            cstack[csp++] = (i - 1) * 19 + j;
        }

      if (i != 18)
        {
          if ((p[i + 1][j] == EMPTY) && ml[i + 1][j])
            {
              ++lib;
              ml[i + 1][j] = 0;
            }
          else if ((p[i + 1][j] == color) && ml[i + 1][j])
            cstack[csp++] = (i + 1) * 19 + j;
        }

      if (j != 0)
        {
          if ((p[i][j - 1] == EMPTY) && ml[i][j - 1])
            {
              ++lib;
              ml[i][j - 1] = 0;
            }
          else if ((p[i][j - 1] == color) && ml[i][j - 1])
            cstack[csp++] = i * 19 + (j - 1);
        }

      if (j != 18)
        {
          if ((p[i][j + 1] == EMPTY) && ml[i][j + 1])
            {
              ++lib;
              ml[i][j + 1] = 0;
            }
          else if ((p[i][j + 1] == color) && ml[i][j + 1])
            cstack[csp++] = i * 19 + (j + 1);
        }
    }
}
