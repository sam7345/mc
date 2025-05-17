    AREA ZEROONE,CODE,READONLY
        ENTRY
        MOV R2,#0
        MOV R3,#0
        MOV R6,#0x00000002
        MOV R1,#32
        MOV R0,R6
  LOOP0 MOVS R0,R0,ROR #1
        BHI ones
        ADD R3,R3,#1
        B LOOP1
  ones ADD R2,R2,#1
  LOOP1 SUBS R1,R1,#1
        BNE LOOP0
  STOP B STOP
        END