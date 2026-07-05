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

/*-----------------------
 endgame.c -- end of game
-----------------------*/

#include <stdio.h>
#include <string.h>
#include "gnugo.h"

#define BSIZE 19
#define NODES BSIZE*BSIZE
#define ENDLIST 1000
#define QSIZE 150
#define GREY  3


extern unsigned char p[19][19];   /* go board */
extern int mymove, umove;         /* computer color, opponent color */
extern int mk, uk;    /* no. of stones captured by computer and oppoent */

int que[QSIZE],color[BSIZE*BSIZE],listpt[BSIZE*BSIZE];
int *pe, *pstart;
int endq=0;
int queinit=0;
int size=0;
static int mymovelist[NODES][5];
static int umovelist[NODES][5];

void node2ij(int node,
             int *i,
             int *j)
/* Converts a node number back to an i,j pair. */
{
   *i = node/BSIZE;
   *j = node%BSIZE;
}

int node(int i,
         int j)
{
  return i*BSIZE+j;
}

void createlist(int color,
                int (*movelist)[5])
/* Create an adjacency list, movelist, for a particular
   color of piece.
*/
{
  int i, j, k, m;
  unsigned char *pp = (unsigned char *)p;

  for (i=0;i<BSIZE;i++) {
   for (j=0;j<BSIZE;j++) {
     int nidx = i * BSIZE + j;
     k=0;
     if (pp[i * BSIZE + j] == color) {
     /* check up */
       if ( i > 0 ) {
         if (pp[(i - 1) * BSIZE + j] == color) {
           movelist[nidx][k]= (i - 1) * BSIZE + j;
           k++;
         }
       }
       /* check right */ 
       if ( j < ( BSIZE -1 ) ) { 
         if ( pp[i * BSIZE + j + 1] == color ) {
           movelist[nidx][k]= i * BSIZE + j + 1;
           k++;
         }
       }
       /* check down */
       if ( i < ( BSIZE - 1) ) {
         if ( pp[(i + 1) * BSIZE + j] == color ) {
           movelist[nidx][k]= (i + 1) * BSIZE + j;
           k++;
         }
       }
       /* check left */
       if ( j > 0 ) {
         if ( pp[i * BSIZE + j - 1] == color ) {
           movelist[nidx][k]= i * BSIZE + j - 1;
           k++;
         }
       }
     } /* end if for color */
     /* Mark end of adjacency list for this node. */
     movelist[nidx][k]=ENDLIST;
   } /* End j loop */
  } /* End i loop */
}

void enqueue(int *v)
{
  if (queinit == 0)
  {
   pe = que;
   pstart = que;
  }
  *pe = *v;
  pe++;
  size++;
  if ( pe > (que + (QSIZE - 1))) pe = que;
  if (queinit == 0) queinit++;
}

void dequeue(void)
{
 pstart++;
 size--;
 if (pstart > (que + (QSIZE - 1))) pstart = que;
}

int  bfslist(int i,
             int j,
             int movelist[][5],
             int list[])
/* Using the adjacency list, movelist, for pieces of one color
   find all connected points.  
   Starting point is defined by i and j.  Output is
   the number of points found and an array of their 
   locations.
*/
{ 
  int k,u,v;
  int w=0;

  for (k=0;k<(BSIZE*BSIZE);k++) color[k]=WHITE; /* initialization */
  color[node(i,j)] = GREY;
  u=node(i,j);
  enqueue(&u);
#ifdef DEBUG 
printf("sURVIVED FIRST ENQUEUE IN BFSLIST.\n");
#endif
  while (size != 0) {
    k = 0;
    u=*pstart;
    while ((v = movelist[u][k]) != ENDLIST) {    
      if (color[v] == WHITE) {
        color[v] = GREY;
        enqueue(&v);
      }
      k++;
    }
#ifdef DEBUG 
printf("jUST PRIOR TO FIRST DEQUEUE!.\n");
#endif
    dequeue();
    color[u]=BLACK;
    *(listpt + w) = u;
    w++;
  }
return w;
}

void endgame(void)
/* count pieces and announce the winner */
{
  char an[10];
  int i, j, k, N, mtot, utot, cont;
  /* local arrays moved to file scope (see static mymovelist/umovelist above) */

  printf("\ntO COUNT SCORE, WE NEED THE FOLLOWING STEPS:\n");
  printf("fIRST, i NEED YOU TO REMOVE ALL DEAD PIECES ON THE BOARD.\n");
  printf("sECOND, i NEED YOU TO FILL IN NEUTRAL TERRITORIES WITH ");
  printf("PIECES.\n");
  printf("lAST, i WILL FILL IN ALL PIECES AND ANNOUNCE THE WINNER.\n");

/* remove dead pieces */
  printf("\nfIRST, YOU SHOULD ENTER THE DEAD PIECES (BLACK AND WHITE) TO");
  printf(" BE REMOVED.  eNTER\n");
  printf(" 'STOP' WHEN YOU HAVE FINISHED.\n");

/* Create an adjacency list for the game board. */
/* First a list for the computer's moves */
  createlist(mymove, mymovelist);

/* Then a list for our opponent's moves */
  createlist(umove, umovelist);

  cont = 1;
  do {
      printf("dEAD PIECE? ");
      scanf("%s", an);
      if (strcmp(an, "stop") && strcmp(an, "STOP"))
        {
  	 getij(an, &i, &j);
 	 if (p[i][j] == mymove)
 	   {
#ifdef DEBUG 
printf("jUST BEFORE BFSLIST.\n");
#endif
 	    N = bfslist(i, j, mymovelist, listpt);
#ifdef DEBUG 
printf("sURVIVED FIRST BFSLIST.\n");
#endif
 	    for (k=0;k<N;k++)
               {
                node2ij(listpt[k], &i, &j);
                p[i][j] = EMPTY;
                mk++;
               }
 	 }
 	else
 	   if (p[i][j] == umove)
 	     {
#ifdef DEBUG 
printf("jUST BEFORE SECOND BFSLIST.\n");
#endif
              N = bfslist(i, j, umovelist, listpt);
              for (k=0;k<N;k++)
                 {
                  node2ij(listpt[k], &i, &j);
                  p[i][j] = EMPTY;
                  uk++;
                 }
       	    }
           showboard();
       }
     else
        cont = 0;
    }
  while (cont);

/* fill in neutral */
  printf("nEXT, YOU NEED TO FILL IN PIECES (BLACK AND WHITE) IN ALL NEUTRAL");
  printf(" TERRITORIES.\n");
  printf("eNTER YOUR AND MY PIECES ALTERNATELY AND");
  printf(" ENTER 'STOP' WHEN FINISH\n");
  cont = 1;
  N = 0;

  do {
    if ( (N%2) == 0 ) 
     {
      printf("yOUR PIECE? ");
      scanf("%s", an);
      if (strcmp(an, "stop") && strcmp(an, "STOP"))
        {
 	getij(an, &i, &j);
 	p[i][j] = umove;
 	showboard();
       }
      else
 	cont = 0;
     }
     else
     {
      printf("mY PIECE? ");
      scanf("%s", an);
      if (strcmp(an, "stop") && strcmp(an, "STOP"))
        {
 	getij(an, &i, &j);
 	p[i][j] = mymove;
 	showboard();
        }
      else
 	cont = 0;
     }
     N++;
    }
   while (cont);

/* set empty to side they belong to */
   for (i = 0; i < 19; i++)
      for (j = 0; j < 19; j++)
 	if (p[i][j] == EMPTY)
 	   p[i][j] = findcolor(i, j);

/* count total */
  mtot = 0;  utot = 0;
  for (i = 0; i < 19; i++)
     for (j = 0; j < 19; j++)
	if (p[i][j] == mymove)
	  ++mtot;
	else
	   if (p[i][j] == umove)
	     ++utot;

  showboard();
  printf("yOUR TOTAL NUMBER OF PIECES %d\n", utot);
  printf("mY TOTAL NUMBER OF PIECES %d\n", mtot);

}  /* end endgame */

