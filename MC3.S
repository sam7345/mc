    AREA FACTORIAL,CODE,READONLY
        ENTRY
        MOV R0,#5
        MOV R1,R0
    FACT SUBS R1,R1,#1
        CMP R1,#1
        BEQ STOP
        MUL R3,R0,R1
        MOV R0,R3
        BNE FACT
    STOP NOP
    HERE B HERE
        END