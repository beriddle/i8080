;  **************************; * orion-128.2 "SPACE" 256B *; *        VERSION 1         *; *    BY RIDDLE (C) 2016    *;  **************************ORG 0START:MVI A,6STA 0F800H ; 16-COLOR MODEJMP CLSSETCLR:    ; RST 1 -> HL - ADDRESS, C - COLORMVI A,1JMP 0F839HRAND:DW 0F900HNOPRND:       ; RST 2PUSH HLHLD RANDMOV A,LINR LADD MSHLD RANDPOP HRETGSD:DB 3,11POLX:DB 7,7,7,6,6,5,4,3,2POLY:DB 1FRMCHK:    ; RST 5PUSH PSWADD MMOV B,APOP PSWXRA BRPGSTAR2:POP HPOP HGSTAR:     ; RST 6PUSH HLXI D,7F7FHLHLD GSDCALL NXSTSHLD GSDMVI A,POLYSUB HCALL GSOJNC GS1INR EGS1:PUSH PSW ; DYMVI A,POLXADD HCALL GSOJNC GS2INR DGS2:MOV B,A  ; DXPOP PSWMOV C,A  ; DYRST 2ANI 7ADI 3MOV L,AGS4:MOV A,DADD BMOV D,AMOV A,EADD CMOV E,ADCR LJNZ GS4POP HMOV M,DINR LMOV M,EINR LMOV M,BINR LMOV M,CINR LRETGSO:MOV C,AMVI B,0MOV A,LRRCMOV L,ALDAX BRCXRI 0FFHINR ARETNXST:DCR HRPMVI H,10DCR LRPMVI L,3RETCLS:LXI H,INTROCALL 0F818HLXI H,0C000HLXI B,200FHCLR:RST 1INX HMVI A,0F0HCMP HJNZ CLRMOV C,BFRAME:MVI H,0C7HRST 1MVI M,0FEHMVI H,0E8HRST 1MVI M,7FHINR LJNZ FRAMEFRH:DCR HRST 1MOV M,ADCR LRST 1MOV M,AINR LDCR BJNZ FRHMVI H,2 ; STARSISTARS:RST 6JNZ ISTARSLOOP:LXI D,LOOPPUSH DJNZ STARDELAY:RST 2DCR LJNZ DELAYSTAR:PUSH HMOV C,M  ; XMOV A,CANI 7INR AMOV B,AMVI A,1PIX:RRCDCR BJNZ PIXMOV B,AMOV A,CRARRARRARANI 1FHADI 0C8H ; FIT INTO FRAMEMOV D,A  ; X OFFSETINR LMOV E,M  ; YINR LLDAX DXRA BSTAX DANA BJZ SMOVEPOP BINR LINR LRETSMOVE:MOV A,CRST 5MOV C,BINR LMOV A,ERST 5INR LXTHLMOV M,CINX HMOV M,BPOP HRETINTRO:DB 1FH,'CC/2016',0END
