.include "/home/dinesh38/dinesh/m328pdef.inc"

Start:
 ldi r30,0b11000011;     \\identifying input pins 2,3,4,5
 out DDRD,r30;            \\declaring pins as input
 ldi r30,0b11111111;
 out PORTD,r30;            \\activating internal-pullup for pins 2,3,4,5
 in r30,PIND
 ldi r16,0b00000010;        \\identifying output pins 9
 out DDRB,r16;
 ldi r17,0b00000100
 ldi r18,0b00000100
 ldi r19,0b00000100
 ldi r20,0b00000100

 AND r17,r30          ;r17=D
 LSR  r30
 AND r18,r30           ;r18=C
 LSR r30
 AND r19,r30           ;r19=B
 LSR r30
 AND r20,r30          ;r20=A

 ldi r21,0b00000100 
 eor r21,r17           ;r21=D'

 ldi r22,0b00000100
 eor r22,r18           ;r22=C'

 ldi r23,0b00000100
 eor r23,r19           ;r23=B'

 ldi r24,0b00000100
 eor r24,r20           ;r24=A'

 mov r0,r24            ;r0=A'
 mov r1,r19            ;r1=B
 AND r0,r1             ;r0=A'B
 AND r17,r0            ;r17=A'BD
 AND r18,r17           ;r18=A'BC
 OR  r17,r18           ;r17=A'BD+A'BC
 AND r24,r21           ;r24=A'D'
 AND r24,r18           ;r24=CD'A'
 OR  r24,r17           ;r24=A'BD+A'BC+CD'A'

mov r30,r24            ;r30=0000000y
LSL r30               ;r30=000000y0
out PortB,r30

rjmp Start

