	;****************************************
	;*                                      *
	;* KK  K EEEEE RRRR  NN  N  AAA  LL     *
	;* KK KK EE    RR  R NNN N AA  A LL     *
	;* KKK   EE    RR  R NNN N AA  A LL     *
	;* KKK   EEEE  RRRR  NNNNN AAAAA LL     *
	;* KK K  EE    RR  R NN NN AA  A LL     *
	;* KK KK EE    RR  R NN NN AA  A LL     *
	;* KK KK EEEEE RR  R NN NN AA  A LLLLL  *
	;*                                      *
	;***************************************
	;
	;***************************************
	;* C64 KERNAL                          *
	;*   MEMORY AND I/O DEPENDENT ROUTINES *
	;* DRIVING THE HARDWARE OF THE         *
	;* FOLLOWING CBM MODELS:               *
	;*   COMMODORE 64 (NTSC OR PAL VIDEO)  *
	;* COPYRIGHT (C) 1983 BY               *
	;* COMMODORE BUSINESS MACHINES (CBM)   *
	;***************************************
	;
	;***************************************
	;* THIS SOFTWARE IS FURNISHED FOR USE  *
	;* USE IN THE VIC OR COMMODORE COMPUTER*
	;* SERIES ONLY.                        *
	;*                                     *
	;* COPIES THEREOF MAY NOT BE PROVIDED  *
	;* OR MADE AVAILABLE FOR USE ON ANY    *
	;* OTHER SYSTEM.                       *
	;*                                     *
	;* THE INFORMATION IN THIS DOCUMENT IS *
	;* SUBJECT TO CHANGE WITHOUT NOTICE.   *
	;*                                     *
	;* NO RESPONSIBILITY IS ASSUMED FOR    *
	;* RELIABILITY OF THIS SOFTWARE. RSR   *
	;*                                     *
	;***************************************

# Context

This is based on the original C64 KERNAL source from the [Dennis Jarvis disk images maintained by Steve Gray](http://6502.org/users/sjgray/dj/), with the [901227-03 changes](http://pagetable.com/docs/C64_KERNAL_03_LST.pdf) added. The source has been converted to lower case and LF line breaks, and adapted to work with the cc65/ca65 assembler. All original symbols and comments are intact.

This makes it a great base for custom C64 KERNALs.

# Building

* Use `make` to build.
* Requires [cc65](https://github.com/cc65/cc65).
* The resulting file `kernal.bin` contains the range of $E4B7-$FFFF of the 901227-03 ROM, i.e. everything except the BASIC V2 overflow area.

