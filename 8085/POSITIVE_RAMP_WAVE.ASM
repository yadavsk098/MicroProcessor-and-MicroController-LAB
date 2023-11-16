;POSITIVE RAMP WAVE CODE
MVI A,80H
OUT DB 

BACK:	MVI A,00H
        LOOP:	OUT D8
                OUT D9
                INR A
                CPI FF
                JNZ LOOP
        JMP BACK
        
hlt