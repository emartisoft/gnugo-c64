#---------------------------
# Makefile for GNUGO on UNIX
#
# Usage: make
#---------------------------

SRC = count.c \
      countlib.c \
      endgame.c \
      eval.c \
      exambord.c \
      findcolr.c \
      findnext.c \
      findopen.c \
      findpatn.c \
      findsavr.c \
      findwinr.c \
      fioe.c \
      fontdata.c \
      genmove.c \
      getij.c \
      getmove.c \
      initmark.c \
      main.c \
      matchpat.c \
      opening.c \
      openregn.c \
      sethand.c \
      showbord.c \
      showinst.c \
      suicide.c

PRG = gnugo

OBJ = $(SRC:.c=.o)

CFLAGS = -O

$(PRG) : $(OBJ)
	$(CC) $(OBJ) -o $@
	/bin/rm -f *.o

matchpat.o : patterns.h
$(OBJ) : gnugo.h

#---------------------------
# C64 target with oscar64
#---------------------------
PRG64 = gnugo.prg

$(PRG64): $(SRC)
	oscar64 -Os -o=$(PRG64) $(SRC)

c64: $(PRG64)

clean:
	/bin/rm -f $(OBJ) $(PRG) $(PRG64) gnugo.lbl gnugo.map gnugo.int gnugo.asm
