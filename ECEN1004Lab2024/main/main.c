#include <at89x52.h>

// SDCC 绝对正确的位定义语法
__sbit __at (0xB2) BTN_START_STOP; // P3_2
__sbit __at (0xB3) BTN_CLEAR;      // P3_3

#define SEG_PORT P0
#define DIG_PORT P2

unsigned char sec = 0;
unsigned char min = 0;
unsigned char count_10ms = 0;
__bit is_running = 0;

// 这里的 __code 必须放在前面
__code unsigned char seg_code[] = {
    0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90
};

void delay(unsigned int t) {
    while(t--);
}

void display() {
    DIG_PORT = 0xFE; SEG_PORT = seg_code[min / 10]; delay(100); SEG_PORT = 0xFF;
    DIG_PORT = 0xFD; SEG_PORT = seg_code[min % 10]; delay(100); SEG_PORT = 0xFF;
    DIG_PORT = 0xFB; SEG_PORT = seg_code[sec / 10]; delay(100); SEG_PORT = 0xFF;
    DIG_PORT = 0xF7; SEG_PORT = seg_code[sec % 10]; delay(100); SEG_PORT = 0xFF;
}

void Timer0_Init() {
    TMOD &= 0xF0; TMOD |= 0x01;
    TH0 = 0xD8; TL0 = 0xF0;
    ET0 = 1; EA = 1; TR0 = 0;
}

void Timer0_ISR() __interrupt (1) {
    TH0 = 0xD8; TL0 = 0xF0;
    count_10ms++;
    if (count_10ms >= 100) {
        count_10ms = 0;
        if (++sec >= 60) { sec = 0; if (++min >= 60) min = 0; }
    }
}

void main() {
    Timer0_Init();
    while(1) {
        if (BTN_START_STOP == 0) {
            delay(1000);
            if (BTN_START_STOP == 0) {
                is_running = !is_running;
                TR0 = is_running;
                while(BTN_START_STOP == 0) display();
            }
        }
        if (!is_running && BTN_CLEAR == 0) {
            delay(1000);
            if (BTN_CLEAR == 0) {
                sec = 0; min = 0; count_10ms = 0;
                while(BTN_CLEAR == 0) display();
            }
        }
        display();
    }
}