#include<Arduino.h>                                                                
int A=2,B=3,C=4,D=5;
int W=9;
void setup()
{
    pinMode(A, INPUT);
    pinMode(B, INPUT);
    pinMode(C, INPUT);
    pinMode(D, INPUT);
    pinMode(W, OUTPUT);
}
void loop()
{
    A=digitalRead(2);
    B=digitalRead(3);
    C=digitalRead(4);
    D=digitalRead(5);
    W=((!A && B && D)||(!A && B && C)||(C && !D && !A));
    digitalWrite(9,W);
}
