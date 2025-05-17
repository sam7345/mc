    AREA ascending,CODE,READONLY
         ENTRY
         MOV R0,#5
outerloop MOV R5,#0X40000000
         ADD R6,R5,#4
         MOV R3,#4
innerloop LDR R1,[R5]
        LDR R2,[R6]
        CMP R1,R2
        BLD  LOOP3
        MOV R4,R2
        MOV R2,R1
        MOV R1,R4
LOOP3   STR R1,[R5]
        STR R2,[R6]
        ADD R5,R5,#4
        SUBS R3,R3,#01
        BNE innerloop
        SUBS R0,R0,#01
        BNE outerloop
STOP    B STOP
        END