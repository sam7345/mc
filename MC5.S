    AREA SQUARE,CODE,READONLY
        ENTRY
        LDR R0,table
        MOV R1,#5
        MOV R1,R1,LSL #2
        ADD R0,R0,R1
        LDR R3,[R0]
    HERE B HERE
        table DCD 0,1,4,9,16,25,36,49,64,81,100
        END

