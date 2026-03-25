#include <AT89x52.h>
#define Min_disp_fen P3
#define Min_disp_miao P2
#define Sec_disp_fen P1
#define Sec_disp_miao P0
unsigned char second = 0, minute = 0;

void watch_init(void) {
    second = 0; minute = 0;
    Min_disp_fen = 0; 
    Min_disp_miao = 0;
    Sec_disp_fen = 0;
    Sec_disp_miao = 0;
}


void watch_start_stop(void) __interrupt 0 {
    TR0 = !TR0;
}


void watch_clear(void) __interrupt 2 {
    if (!TR0) 
    {
        watch_init();
    }
}

void disp_update(void) __interrupt 1 {
    static unsigned int count = 0;
    if (++count >= 8000) {  // 达到预定时间基准
        count = 0;
        second++;           // 秒增加
        
        if (second >= 60) {
            second = 0;
            minute++;       // 分增加
            if (minute >= 60) {
                minute = 0;
            }
        }
        
        // 建议：如果中断频率不高，可以在这里拆分；如果很高，请移至 main loop
        Sec_disp_miao = second % 10;
        Sec_disp_fen  = second / 10;
        Min_disp_miao = minute % 10;
        Min_disp_fen  = minute / 10;
    }
}
void init_timer0(void) 
    {
    TMOD = 0x02; 
    TH0 = 256 - 250; 
    TL0 = TH0;
    ET0 = 1; 
    TR0 = 1;
    IT0 = 1; 
    IT1 = 1;
    EX0 = 1;
    EX1 = 1; 
    EA = 1;
    }

void main(void) {
    init_timer0();
    watch_init();
    while(1);
    {

    }
}