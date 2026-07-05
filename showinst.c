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
/*----------------------------------------------------------
  showinst.c -- Show instructions at the beginning of game
----------------------------------------------------------*/

#include <stdio.h>
#include "gnugo.h"

/* showinst disabled for C64 */
/*
void showinst(void)
{
 printf("xoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxox");
 printf("oxoxoxoxoxox\n");
 printf("o                                                                  ");
 printf("           o\n");
 printf("x                           gnugo (pREVIOUSLY hUGO)                ");
 printf("           x\n");
 printf("o                           THE GAME OF gO (wEI-cHI)               ");
 printf("           o\n");
 printf("x                                                                  ");
 printf("           x\n");
 printf("o                            VERSION 1.2   10-31-95                ");
 printf("           o\n");
 printf("x           cOPYRIGHT (c) 1989, 1995 fREE sOFTWARE fOUNDATION, iNC.");
 printf("           x\n");
 printf("o                              aUTHOR: mAN l. lI                   ");
 printf("           o\n");
 printf("x           gnugo COMES WITH absolutely no warranty; SEE copying FO");
 printf("R          x\n");
 printf("o           DETAIL.   tHIS IS FREE SOFTWARE, AND YOU ARE WELCOME TO");
 printf("           o\n");
 printf("x           REDISTRIBUTE IT; SEE copying FOR COPYING CONDITIONS.   ");
 printf("           x\n");
 printf("o                                                                  ");
 printf("           o\n");
 printf("x              pLEASE REPORT ALL BUGS, MODIFICATIONS, SUGGESTIONS  ");
 printf("           x\n");
 printf("o                             TO MANLI@CS.UH.EDU                   ");
 printf("           o\n");
 printf("x                                                                  ");
 printf("           x\n");
 printf("oxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxoxo");
 printf("xoxoxoxoxoxo\n");
 printf("\n\n\n\n\n\n\n\npRESS RETURN TO CONTINUE");
 getchar();
 printf("\n\ntO PLAY THIS GAME FIRST SELECT NUMBER OF HANDICAP PIECES (0 TO");
 printf(" 17) FOR THE\nBLACK SIDE.  nEXT CHOOSE YOUR COLOR (BLACK OR WHITE).");
 printf("  tO PLACE YOUR PIECE,\nENTER YOUR MOVE AS COORDINATE ON THE BOARD");
 printf(" IN COLUMN AND ROW.  tHE COLUMN\nIS FROM 'a' TO 't'(EXCLUDING 'i').");
 printf("  tHE ROW IS FROM 1 TO 19.\n\ntO PASS YOUR MOVE ENTER 'PASS' FOR");
 printf(" YOUR TURN.  aFTER BOTH YOU AND THE COMPUTER\nPASSED THE GAME WILL");
 printf(" END.  tO STOP THE GAME IN");
 printf(" THE\nMIDDLE OF PLAY ENTER 'STOP' FOR YOUR MOVE.  yOU WILL BE");
 printf(" ASKED WHETHER YOU WANT\nTO COUNT THE RESULT OF THE GAME.  iF YOU");
 printf(" ANSWER 'Y' THEN YOU NEED TO REMOVE THE\nREMAINING DEAD PIECES AND");
 printf(" FILL UP NEUTRAL TURF ON THE BOARD AS INSTRUCTED.\nfINALLY, THE");
 printf(" COMPUTER WILL COUNT ALL PIECES FOR BOTH SIDE AND SHOW THE RESULT.\n\n");
}
*/

