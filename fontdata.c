#include <c64/vic.h>

static const unsigned char zxfonttr_bin[] = {
   #embed "zxfonttr.bin"
};

void fontinit(void)
{
   unsigned int i, addr;
   unsigned char *dst = (unsigned char*)0xA000;

   *(volatile unsigned char*)0x01 &= ~0x01; /* enable RAM at $A000-$BFFF */

   for (i = 0; i < 2048; i++)
      dst[i] = zxfonttr_bin[i];

   vic_setmode(VICM_TEXT, (const char*)0xB800, (const char*)0xA000);
   *(volatile unsigned char*)0xD018 = 0xE8; /* screen $B800, font $A000 in bank 2 */

   /* update KERNAL screen page */
   *(unsigned char*)0x0288 = 0xB8;

   /* update KERNAL screen line address table ($D9-$F1) for $B800 */
   addr = 0xB800;
   for (i = 0; i < 25; i++)
   {
      ((unsigned char*)0xD9)[i] = (unsigned char)(addr >> 8);
      addr += 40;
   }

   /* set KERNAL screen base and cursor */
   *(unsigned int*)0xF3 = 0xB800;
   *(unsigned int*)0xD1 = 0xB800;
   *(unsigned char*)0xD5 = 0;
   *(unsigned char*)0xD3 = 0;
   *(unsigned char*)0xD6 = 40;
}
