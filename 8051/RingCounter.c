#include<reg51.h>

void delay(void)
{
	int i,j;
	
	for(i = 0;i<1275;i++)
		for(j = 0;j<100;j++);
	
	
}

void main(void)
{
	char ringCounter = 1; // charcter is 8bit 
	
	 while (1) {
        P1 = ringCounter;  // Output the current state of the ring counter to Port 1

        delay();  // Introduce a delay for visibility

        // Shift the ring counter to the left
        ringCounter = ringCounter << 1;

        // If the ring counter exceeds 8 (1000 in binary), reset it to 1 (0001 in binary)
        if (ringCounter > 8) {
            ringCounter = 1;
        }
    }
	
}