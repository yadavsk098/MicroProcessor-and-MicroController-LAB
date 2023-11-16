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
		P1 = 0x08;
		delay();
		P1 = 0x0C;
		delay();
		P1 = 0x0E;
		delay();
		P1 = 0x0F;
		delay();
		P1 = 0x07;
		delay();
		P1 = 0x03;
		delay();
		P1 = 0x01;
		delay();
		P1 = 0x00;
		delay();
		
	}
	
	
}