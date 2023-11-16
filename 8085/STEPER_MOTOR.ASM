;STEPER MOTOR CODE FOR 360 ROTATION

MVI A,80H
OUT DB 
MOV B,32H
BACK:	LXI H,F000H
        LOOP:	MOV A,M
        		OUT DA
        		CALL DELAY
                INX H
                MOV A,L
                CPI 08H
                JNZ LOOP
        DCR B
        JMP BACK
       
hlt

DELAY:	MOV B,A0H
		BACK:	DCR B
        JNZ BACK


;STEPER MOTOR CODE FOR 180 ROTATION

MVI A,80H
OUT DB 
MOV B,19H
BACK:	LXI H,F000H
        LOOP:	MOV A,M
        		OUT DA
        		CALL DELAY
                INX H
                MOV A,L
                CPI 08H
                JNZ LOOP
        DCR B
        JMP BACK
       
hlt

DELAY:	MOV B,A0H
		BACK:	DCR B
        JNZ BACK