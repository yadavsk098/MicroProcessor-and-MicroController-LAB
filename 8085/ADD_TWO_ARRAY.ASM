LXI H,8000H  ; LOAD HL PAIR WITH 8000H I.E FIRST ARRAY ADDRESS
LXI D,8010H  ; DE PAIR WITH SECOND ARRAY ADDRESS
MVI C,03     ; COUNTER 

LOOP:	MOV A,M  ;FIRST ARRAY CONTENT TO MEMORY LOCATION 
        XCHG     ; XCHANGE HL REG WITH DE SO THAT WE CAN POINT SO SECOND ARRAY
        ADD M    ; AFTER EXCHANGE HL CONTAIN ADDRESS OF SECOND ARRAY SO WE CAN ADD 
        XCHG     ; NOW WE HAVE TO MOVE THE RESULT TO FIRST ARRAY MEM LOCATION SO POINTER 
        MOV M,A
        INX H
        INX D
        DCR C
        JNZ LOOP

hlt