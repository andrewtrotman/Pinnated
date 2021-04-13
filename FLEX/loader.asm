* LOADER - FLEX LOADER ROUTINE
*
* COPYRIGHT (C) 1980 BY
* TECHNICAL SYSTEMS CONSULTANTS, INC.
* 111 PROVIDENCE RD, CHAPEL HILL, NC 27514
*
* LOADS FLEX FROM DISK.  ASSUMES DRIVE IS ALREADY
* SELECTED AND A RESTORE HAS BEEN PERFORMED BY THE
* ROM BOOT AND THAT STARTING TRACK AND SECTOR OF
* FLEX ARE AT $C105 AND $C106.  BEGIN EXECUTION
* BY JUMPING TO LOCATION $C100.  JUMPS TO FLEX
* STARTUP WHEN COMPLETE.
*

* EQUATES

STACK  EQU    $C07F
SCTBUF EQU    $C300  DATA SECTOR BUFFER

* START OF UTILITY
        ORG    $C100

LOAD    BRA    LOAD0

        FCB    0,0,0
TRK     FCB    1         FILE START TRACK
SCT     FCB    1         FILE START SECTOR
DNS     FCB    0         DENSITY FLAG
TADR    FDB    $CD00     TRANSFER ADDRESS
LADR    FDB    0         LOAD ADDRESS
LOAD0   LDS    #STACK    SETUP STACK
        LDD    TRK       SETUP STARTING TRK & SCT
        STD    SCTBUF
        LDY    #SCTBUF+256

* PERFORM ACTUAL FILE LOAD

LOAD1   BSR    GETCH     GET A CHARACTER
        CMPA   #$02      DATA RECORD HEADER?
        BEQ    LOAD2     SKIP IF SO
        CMPA   #$16      XFR ADDRESS HEADER?
        BNE    LOAD1     LOOP IF NEITHER
        BSR    GETCH     GET TRANSFER ADDRESS
        STA    TADR
        BSR    GETCH
        STA    TADR+1
        BRA    LOAD1     CONTINUE LOAD
LOAD2   BSR    GETCH     GET LOAD ADDRESS
        STA    LADR
        BSR    GETCH
        STA    LADR+1
        BSR    GETCH     GET BYTE COUNT

        TFR A,B          PUT IN B (ASPT: was TAB, but not supported.  Leventhal, p22-72 gives the equivelant)
        TSTA

        BEQ    LOAD1     LOOP IF COUNT=0
        LDX    LADR      GET LOAD ADDRESS
LOAD3   PSHS   B,X
        BSR    GETCH     GET A DATA CHARACTER
        PULS   B,X
        STA    ,X+       PUT CHARACTER
        DECB             END OF DATA IN RECORD?
        BNE    LOAD3     LOOP IF NOT
        BRA    LOAD1     GET ANOTHER RECORD

* GET CHARACTER ROUTINE - READS A SECTOR IF NECESSARY

GETCH   CMPY   #SCTBUF+256 OUT OF DATA?
        BNE    GETCH4    GO READ CHARACTER IF NOT
GETCH2  LDX    #SCTBUF   POINT TO BUFFER
        LDD    ,X        GET FORWARD LINK
        BEQ    GO        IF ZERO, FILE IS LOADED
        BSR    READ      READ NEXT SECTOR
        BNE    LOAD      START OVER IF ERROR
        LDY    #SCTBUF+4 POINT PAST LINK
GETCH4  LDA    ,Y+       ELSE, GET A CHARACTER
        RTS

* FILE IS LOADED, JUMP TO IT

GO      JMP    [TADR]    JUMP TO TRANSFER ADDRESS

* READ SINGLE SECTOR
*
* THIS ROUTINE MUST READ THE SECTOR WHOSE TRACK
* AND SECTOR ADDRESS ARE IN A ANB B ON ENTRY.
* THE DATA FROM THE SECTOR IS TO BE PLACED AT
* THE ADDRESS CONTAINED IN X ON ENTRY.
* IF ERRORS, A NOT-EQUAL CONDITION SHOULD BE
* RETURNED.  THIS ROUTINE WILL HAVE TO DO SEEKS.
* A,B,X, AND U MAY BE DESTROYED BY THIS ROUTINE,
* BUT Y MUST-BE PRESERVED.

FLEX_READ EQU  $DE00			; Assuming the FLEX disk drivers are already loaded by the BIOS

READ
        JSR    FLEX_READ
        RTS
;
;        LDB    #$FF      MUST BE USER SUPPLIED!
;        RTS              THIS CODE DISABLES READ!
;
        END
