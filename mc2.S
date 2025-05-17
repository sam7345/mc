    AREA sum10,CODE,READONLY
        ENTRY
        MOV R1,#10
        MOV R2,#0
    LOOP ADD R2,R2,R1
        SUBS R1,#0x01
        BNE LOOP
    HERE B HERE
        END