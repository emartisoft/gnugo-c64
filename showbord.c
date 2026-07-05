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
/*-------------------------------------------------------------
   showbord.c -- Show current go board and playing information
 -------------------------------------------------------------*/

#include <stdio.h>
#include <conio.h>
#include "gnugo.h"

extern unsigned char p[19][19];   /* go board */
extern int mymove, umove;         /* computer color, opponent color */
extern int mk, uk;    /* no. of stones captured by computer and oppoent */

void showboard(void)
{
   int i, j, ii;

/* show go board */

   for (i = 0; i<160; i++){
      *(volatile unsigned char*)(0xbb48+i) = 0x20;
   }

   printf("\x13"); /* HOME - cursor to top-left without clearing */
   textcolor(0x09);
   printf("  abcdefghjklmnopqrst  \n");

   for (i = 0; i < 19; i++)
   {
      ii = 19 - i;
      printf("%2d", ii);

      for (j = 0; j < 19; j++)
      {
         if (p[i][j] == EMPTY)
         {
            if (i == 0 && j == 0) printf("%%");
            else if (i == 0 && j == 18) printf("'");
            else if (i == 18 && j == 0) printf("+");
            else if (i == 18 && j == 18) printf(")");
            else if (i == 0) printf("&");
            else if (i == 18) printf("*");
            else if (j == 0) printf(",");
            else if (j == 18) printf("(");
            else if ((i == 3 || i == 9 || i == 15) && (j == 3 || j == 9 || j == 15)) printf("-");
            else printf("!");
         }
         else if (p[i][j] == WHITE)
            printf("$");
         else
            printf("#");
      }

      printf("%2d\n", ii);
   }

   printf("  abcdefghjklmnopqrst  \n");

   textcolor(0x0F);

/* status line below board */
    if (umove == 1) textcolor(1);
    else if (umove == 2) textcolor(0);
    printf("\nyOU");
    textcolor(0x0F);
    printf(": %d  ", uk);
    if (mymove == 1) textcolor(1);
    else if (mymove == 2) textcolor(0);
    printf("cOMPUTER");
    textcolor(0x0F);
    printf(": %d\n", mk);

/* set color RAM for stone positions */
    for (i = 0; i < 19; i++)
      for (j = 0; j < 19; j++)
        {
	unsigned char c = p[i][j];
	unsigned char col = (c == EMPTY) ? 0x09 : (c == WHITE) ? 1 : 0;
	*(volatile unsigned char*)(0xD800 + (i + 1) * 40 + (j + 2)) = col;
        }
  }  /* end showboard */
