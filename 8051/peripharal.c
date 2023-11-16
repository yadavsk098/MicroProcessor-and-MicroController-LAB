#include<reg51.h>

void delay(void)
{
	int i,j;
	
	for(i = 0;i<1275;i++)
		for(j = 0;j<100;j++);
	
	
}

void main(void)
{
	while(1)
	{
		P1 = 0xFF;
		delay();
		P1 = 0x00;
		delay();
		
	}
	
}