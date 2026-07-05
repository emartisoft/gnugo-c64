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
/*------------------------------
  main.c -- gnugo main program
------------------------------*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <c64/memmap.h>
#include <conio.h>
#include "gnugo.h"

extern void fontinit(void);

#pragma region(main, 0x0a00, 0xd000, , , {code, data, bss, heap, stack})
#pragma stacksize(3600)
#pragma heapsize(0)

unsigned char p[19][19];  /* go board */
unsigned char l[19][19];  /* liberty of current color */
unsigned char ma[19][19]; /* working matrix for marking */
unsigned char ml[19][19]; /* working matrix for marking */
int mymove, umove;        /* computer color, opponent color */
int lib;                  /* current stone liberty */
int play;                 /* game state */
int pass;                 /* pass indicator */
int mik, mjk;             /* location of computer stone captured */
int uik, ujk;             /* location of opponent stone captured */
int mk, uk;               /* no. of stones captured by computer and oppoent */
int opn[9];               /* opening pattern flag */

#pragma stacksize(3600)

/* --- OLD Unix version (commented out) ---
int main(int argc, char *argv[])
  {
   FILE *fp;
   int i, j;
   char move[10], ans[5];
   int cont = 0;
   time_t tm;

   showinst();

   if ((fp = fopen("gnugo.dat", "r")) != NULL)
     {
      cont = 1;
      for (i = 0; i < 19; i++)
        for (j = 0; j < 19; j++)
          fscanf(fp, "%c", &p[i][j]);
      fscanf(fp, "%d %d %d ", &mymove, &mk, &uk);
      for (i = 0; i < 9; i++)
        fscanf(fp, "%d ", &opn[i]);
      fclose(fp);
      umove = 3 - mymove;
      remove("gnugo.dat");
    }
   else
     {
      for (i = 0; i < 9; i++) opn[i] = 1;
      opn[4] = 0;
      for (i = 0; i < 19; i++)
        for (j = 0; j < 19; j++)
          p[i][j] = EMPTY;
      mk = 0;  uk = 0;
    }

   play = 1;
   pass = 0;
   mik = -1; mjk = -1;
   uik = -1; ujk = -1;
   srand((unsigned)time(&tm));

   if (!cont)
     {
      printf("nUMBER OF HANDICAP FOR BLACK (0 TO 17)? ");
      scanf("%d", &i);
      getchar();
      sethand(i);
      showboard();
    if (i >= 0) {
        gotoxy(24, 8);
        printf("COMPUTER MOVE: %c%d", "ABCDEFGHJKLMNOPQRST"[j], 19 - i);
        gotoxy(0, 21);
    } else if (i == 0 && (mymove == 1 || mymove == 2)) {
        // If computer makes first move (depends on side choice)
        // but handled by the genmove calls above.
    }
      printf("\ncHOOSE SIDE(B OR W)? ");
      scanf("%c",ans);
      if (ans[0] == 'b')
        {
         mymove = 1; umove = 2;
         if (i) { genmove(&i, &j); p[i][j] = mymove; }
       }
      else
        {
         mymove = 2; umove = 1;
         if (i == 0) { genmove(&i, &j); p[i][j] = mymove; }
       }
    }

   showboard();
   while (play > 0)
     {
      printf("YOUR MOVE? ");
      scanf("%s", move);
      getmove(move, &i, &j);
      if (play > 0)
	{
	 if (i >= 0) { p[i][j] = umove; examboard(mymove); }
	 if (pass != 2) { genmove(&i, &j); if (i >= 0) { p[i][j] = mymove; examboard(umove); } }
	 showboard();
       }
      if (pass == 2) play = 0;
    }

 if (play == 0)
   {
    getchar();
    printf("dO YOU WANT TO COUNT SCORE (Y OR N)? ");
    scanf("%c",ans);
    if (ans[0] == 'y') endgame();
  }

 return 0;
}
*/

int main(void)
  {
   int i, j;
   char move[10], ans[5];

   fontinit();
   printf("\x93\x0E"); /* CHR$(14) - switch C64 to lowercase mode */
   *(volatile unsigned char*)0x02A6 = 1; /* C= mode: keyboard produces lowercase PETSCII */
   *(volatile unsigned char*)0xD018 = 0xE8; /* enforce: screen $B800, font $A000 */
   *(volatile unsigned char*)0xD020 = 0x08;
   *(volatile unsigned char*)0xD021 = 0x08;
   *(volatile unsigned char*)0x0286 = 0x09;

/* show instruction -- disabled for C64 */
   /* showinst(); */

   /* continue old game -- disabled for C64 */
   /* if ((fp = fopen("gnugo.dat", "r")) != NULL) */
   /*   { */
   /*    cont = 1; */
   /*  */
   /* read board configuration */
   /*     for (i = 0; i < 19; i++) */
   /*       for (j = 0; j < 19; j++) */
   /*         fscanf(fp, "%c", &p[i][j]); */
   /*  */
   /* read my color, pieces captured */
   /*     fscanf(fp, "%d %d %d ", &mymove, &mk, &uk); */
   /* read opening pattern flags */
   /*     for (i = 0; i < 9; i++) */
   /*       fscanf(fp, "%d ", &opn[i]); */
   /*  */
   /*     fclose(fp); */
   /*     umove = 3 - mymove; */
   /*  */
   /* delete file */
   /*     remove("gnugo.dat"); */
   /*   } */
   /* else */
     {
/* init opening pattern numbers to search */
      for (i = 0; i < 9; i++)
        opn[i] = 1;
      opn[4] = 0;

/* init board */
      for (i = 0; i < 19; i++)
        for (j = 0; j < 19; j++)
          p[i][j] = EMPTY;
/* init global variables */
      mk = 0;  uk = 0;
    }

/* init global variables */
   play = 1;
   pass = 0;
   mik = -1; mjk = -1;
   uik = -1; ujk = -1;
   srand((unsigned)clock());	/* start random number seed */

   /* new game -- no handicap */
   i = 0;
   sethand(i);

/* display game board */
   showboard();

/* choose color */
   printf("\ncHOOSE SIDE[B OR W]? ");
   scanf(" %c",ans);
   if (ans[0] == 'b' || ans[0] == 'B')
     {
      mymove = 1;   /* computer white */
      umove = 2;   /* human black */
      if (i)
        {
         genmove(&i, &j);   /* computer move */
         p[i][j] = mymove;
        }
     }
   else
     {
      mymove = 2;   /* computer black */
      umove = 1;   /* human white */
      if (i == 0)
        {
         genmove(&i, &j);   /* computer move */
         p[i][j] = mymove;
        }
     }

   showboard();
   if (mymove == 2) {
       printf("cOMPUTER MOVE: %c%d\n", "ABCDEFGHJKLMNOPQRST"[j], 19 - i);
   } else {
       printf("\n");
   }

/* main loop */
   while (play > 0)
     {
      printf("yOUR MOVE? ");
      scanf("%s", move);
      getmove(move, &i, &j);   /* read human move */
      if (play > 0)
	{
	 if (i >= 0)   /* not pass */
	   {
	    p[i][j] = umove;
	    examboard(mymove);	 /* remove my dead pieces */
	  }
	 if (pass != 2)
	   {
	    printf("tHINKING...");
	    genmove(&i, &j);   /* computer move */
	    if (i >= 0)   /* not pass */
	      {
	       p[i][j] = mymove;
	       examboard(umove);   /* remove your dead pieces */
	     }
	  }
	 showboard();
	 if (i >= 0)
	    printf("cOMPUTER MOVE: %c%d\n", "ABCDEFGHJKLMNOPQRST"[j], 19 - i);
	 else
	    printf("cOMPUTER MOVE: PASS\n");
       }
      if (pass == 2) play = 0;	/* both pass then stop game */
    }

 if (play == 0)
   {
/* finish game and count pieces */
    getchar();
    printf("dO YOU WANT TO COUNT SCORE [Y OR N]? ");
    scanf("%c",ans);
    if (ans[0] == 'y') endgame();
  }

 return 0;
 }  /* end main */
