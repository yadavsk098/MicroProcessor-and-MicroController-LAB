#include<reg51.h>

void delay(void)
{
	int i,j;
	
	for(i = 0;i<1275;i++)
		for(j = 0;j<10;j++);
	
	
}

void main(void)
{
	char binaryCounter = 0; // charcter is 8bit 
	while(1)
	{
		
		P1 = binaryCounter;
		delay();
		binaryCounter++;
		if(binaryCounter == 0){
			//reach to maximum value
			binaryCounter = 0;
		}
			
		delay();
		
	}
	
}