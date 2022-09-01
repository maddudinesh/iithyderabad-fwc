#include <avr/io.h>
#include <util/delay.h>
#include <stdbool.h>
int main (void)

{

bool A=0,B=0,C=0,D=0,W=0;

DDRB=0b11110000;

PORTB=0b00001111;

DDRD=0b00000100;


while(1)


{
 A = (PINB & (1 << PINB3)) == (1 << PINB3);

 B = (PINB & (1 << PINB2)) == (1 << PINB2);

 C = (PINB & (1 << PINB1)) == (1 << PINB1);

 D = (PINB & (1 << PINB0)) == (1 << PINB0);

 W=(!A&B&D)|(!A & B & C)|(C & !D & !A);

 PORTD |= (W << 2);
}
return 0;
}






