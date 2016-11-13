#include<avr/io.h>
#include<util/delay.h>
#include<CLib/LCD.h>

int main(void)
{
	InitLCD();


	while(1)
	{
		SendString("Melvin Felix");
		CursorPos(1,1);
	}
}