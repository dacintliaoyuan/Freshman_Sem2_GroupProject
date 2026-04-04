#include <at89x52.h>

#define uint unsigned int
#define uchar unsigned char
//buttons connected to P3.2 and P3.3
//这里可能要在DE-10上面编辑一下P3in的连接方式，确保START_STOP和CLEAR_KEY正确连接到P3.2和P3.3
#define START_STOP P2
#define CLEAR_KEY P1
//7-segment code for digits 0-9
__code uchar seg_table[] =
{
~0x3f,~0x06,~0x5b,~0x4f,~0x66,
~0x6d,~0x7d,~0x07,~0x7f,~0x6f
};

uchar minute = 0;
uchar second = 0;

uint ms_count = 0;
__bit running = 0;
//delay
void delay(uint t)
{
    uint i,j;
    for(i=0;i<t;i++)
        for(j=0;j<240;j++);
}
//timer0 initialization
void timer0_init()
{
    TMOD |= 0x01;

    TH0 = 0xF8;
    TL0 = 0x30;

    ET0 = 1;
    EA  = 1;
    TR0 = 1;
}
//display time on 7-segment
void display()
{
    uchar m1,m2,s1,s2;

    m1 = minute/10;
    m2 = minute%10;
    s1 = second/10;
    s2 = second%10;
    P3 = seg_table[m1];
    P2 = seg_table[m2];
    P1 = seg_table[s1];
    P0 = seg_table[s2];
}
//timer0 interrupt service routine
void timer0_ISR(void) __interrupt(1)
{
    TH0 = 0xF8;
    TL0 = 0x30;

    if(running)
    {
        ms_count++;

        if(ms_count >= 1000)
        {
            ms_count = 0;
            second++;

            if(second >= 60)
            {
                second = 0;
                minute++;

                if(minute >= 60)
                    minute = 0;
            }
        }
    }
}
//scan buttons
void key_scan()
{
    if(START_STOP == 0)
    {
        delay(20);
        if(START_STOP == 0)
        {
            running = !running;
            while(START_STOP == 0);
        }
    }

    if(CLEAR_KEY == 0)
    {
        delay(20);
        if(CLEAR_KEY == 0)
        {
            running = 0;
            minute = 0;
            second = 0;
            ms_count = 0;
            while(CLEAR_KEY == 0);
        }
    }
}
//main function
void main()
{
unsigned char i = 0;
    timer0_init();

    while(1)
    {
        \\display();
        \\key_scan();
	P0=i;

    }
}