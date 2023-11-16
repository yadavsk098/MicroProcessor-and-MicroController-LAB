;SQUARE WAVE CODE
MVI A,80H
OUT DB 

LOOP:	MVI A,00H
		OUT D8
        OUT D9
        CALL DELAY
        MVI A,FFH
        OUT D8
        OUT D9
        JNZ LOOP
		
DELAY:	MVI B,A0H
		BACK:	DCR B
        		JNZ BACK
        
        RET
hlt