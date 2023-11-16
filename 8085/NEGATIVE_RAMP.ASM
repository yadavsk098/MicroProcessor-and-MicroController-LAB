;NEGATIVE RAMP WAVE CODE
MVI A,80H
OUT DB 

BACK:	MVI A,FFH
        LOOP:	OUT D8
                OUT D9
                DCR A
                CPI 00H
                JNZ LOOP
        JMP BACK
        
hlt