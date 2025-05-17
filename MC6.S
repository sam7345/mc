    AREA large,CODE,READONLY
        ENTRY
        LDR R1,=size 
        LDR R2,[R1]
        LDR R3,=array
        LDR R4,[R3]
        MOV R5,#1
   LOOP CMP R5,R2
        BGE end_loop
        LDR R6,[R3,R5,LSL #2]
        CMP R6,R4
        BLE next
        MOV R4,R6
   next ADD R5,R5,#1
        B LOOP
end_loop NOP
   HERE B HERE 
  array DCD 5,12,3,8,20,15,7
   size DCD 7
        END