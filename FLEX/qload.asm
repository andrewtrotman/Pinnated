* QLOAD - QUICK LOADER
*
* COPYRIGHT (C) 1980 BY
* TECHNICAL SYSTEMS CONSULTANTS, INC.
* 111 PROVIDENCE RD. CHAPEL HILL, NC 27514

* LOADS FLEX FROM DISK ASSUMING THAT THE DISK I/O
* ROUTINES ARE ALREADY IN MEMORY. ASSUMES FLEX.COR
* BEGINS ON TRACK XX SECTOR YY (CODED BELOW). RETURNS TO
* MONITOR ON COMPLETION. BEGIN EXECUTION BY
* JUMPING TO LOCATION $C100
*

* EQUATES

STACK           EQU  $C07F
MONITR          EQU  $D3F3
READ            EQU  $DE00
RESTORE         EQU  $DE09
DRIVE           EQU  $DE0C
SCTBUF          EQU  $C300      DATA SECTOR BUFFER

* START OF UTILITY

                ORG  $C100

QLOAD           BRA  LOAD0

                FCB 0,0,0
TRK             FCB 1           FILE START TRACK
SCT             FCB 1           FILE START SECTOR
DNS             FCB 0           DENSITY FLAG
LADR            FDB 0           LOAD ADDRESS

LOAD0           LDS #STACK      SETUP STACK
                LDX #SCTBUF     POINT TO FCB
                CLR 3,X         SET FOR DRIVE 0
                JSR DRIVE       SELECT DRIVE 0
                LDX #SCTBUF
                JSR RESTORE     NOW RESTORE TO TRACK 0
                LDD TRK         SETUP STARTING TRK & SCT
                STD SCTBUF
                LDY #SCTBUF+256

* PERFORM ACTUAL FILE LOAD

LOAD1           BSR GETCH       GET A CHARACTER
                CMPA #$02       DATA RECORD HEADER?
                BEQ LOAD2       SKIP IF SO
                CMPA #$16       XFER ADDRESS HEADER?
                BNE LOAD1       LOOP IF NEITHER
                BSR GETCH       GET TRANSFER ADDRESS
                BSR GETCH       DISCARD IT
                BRA LOAD1       CONTINUE LOAD
LOAD2           BSR GETCH       GET LOAD ADDRESS
                STA LADR
                BSR GETCH
                STA LADR+1
                BSR GETCH       GET BYTE COUNT

                TFR A,B         PUT IN B (ASPT: was TAB, but not supported.  Leventhal, p22-72 gives the equivelant)
                TSTA

                BEQ LOAD1       LOOP IF COUNT=0
                LDX LADR        GET LOAD ADDRESS IN X
LOAD3           PSHS B,X
                BSR GETCH       GET A DATA CHARACTER
                PULS B,X
                STA ,X+         PUT CHARACTER
                DECB            END OF DATA IN RECORD
                BNE LOAD3       LOOP IF NOT
                BRA LOAD1       GET ANOTHER RECORD

* GET CHARACTER ROUTINE - READS A SECTOR IF NECESSARY

GETCH           CMPY #SCTBUF+256 OUT OF DATA?
                BNE GETCH4      GO READ CHARACTER IF NOT
GETCH2          LDX #SCTBUF     POINT TO BUFFER
                LDD ,X          GET FORWARD LINK
                BEQ GO          IF ZERO, FILE IS LOADED
                JSR READ        READ NEXT SECTOR
                BNE QLOAD       START OVER IF ERROR
                LDY #SCTBUF+4   POINT PAST LINK
GETCH4          LDA ,Y+         ELSE, GET A CHARACTER
                RTS

* FILE IS LOADED, RETURN TO MONITOR

GO              JMP [MONITR]     JUMP TO MONITOR

                END
