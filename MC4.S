    AREA ARRAYADD,CODE,READONLY
        ENTRY
        MOV R1,#05
        SUB R1,#01
        MOV R0,#0x40000000
        LDRH R2,[R0]
    UP  ADD R0,R0,#2
        LDRH R3,[R0]
        ADD R2,R2,R3
        SUBS R1,#1
        BNE UP
        MOV R0,#0x40000020
        STR R2,[R0]
    HERE B HERE 
         END  