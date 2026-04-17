#include <at89x52.h>
/*
    本代码实现了一个简单的方波发生器，使用定时器0来产生方波，并通过外部中断来调整频率。
    方波频率初始值为1000Hz，每次按下上键频率增加100Hz，按下下键频率减少100Hz，频率范围限制在1000Hz到5000Hz之间。
    定时器0的重载值根据当前频率计算，确保方波输出的频率正确。
    计算定时器重载值的公式：
    机器周期 = 1 / (24MHz / 12) = 0.5us
    半周期时间(us) = 1,000,000 / (freq * 2)
    需要计数的个数（计数值） = 半周期时间 / 0.5us = 1,000,000 / freq
    总结：输出频率 f = 1s / (2 x (计数值 x 机器周期) 
    初值 = 65536 - (1,000,000 / freq)
*/
sbit WAVE_OUT = P1^0;  // 方波输出
unsigned int freq = 1000; 
unsigned int reload_val; // 定时器重载值
void update_timer_val() {
    reload_val = 65536 - (1000000 / freq);
}
void init_system()
{
    TMOD &= 0xF0; // Clear lower 4 bits for Timer0
    TMOD |= 0x01; // Timer0 in mode 1 (16-bit timer)
    /*计算过程
    机器周期 = 1 / (24MHz / 12) = 0.5us
    1ms = 1000us
    需要的计数值 = 1000us / 0.5us = 2000
    TH0 = (65536 - 2000) / 256;
    TL0 = (65536 - 2000) % 256; 
    */
    update_timer_val();
    TH0 = reload_val >> 8;
    TL0 = reload_val & 0xFF;
    /*
    TH0 = reload_val / 256;
    TL0 = reload_val % 256;
    */
    ET0 = 1; // Enable Timer0 interrupt
    IT0 = 1; // Enable interrupt 0
    IT1 = 1; // Enable interrupt 1
    EX0 = 1; // Enable external interrupt 0
    EX1 = 1; // Enable external interrupt 1
    EA = 1; // Enable global interrupts
    TR0 = 1; // Start Timer0
}
void init_timer0() interrupt 1
{
    TH0 = reload_val >> 8;
    TL0 = reload_val & 0xFF;
    WAVE_OUT = ~WAVE_OUT; // Toggle the output pin
}
void button_up() interrupt 0
{
    freq += 100; // Increase frequency by 100Hz
    if (freq > 5000) {
        freq = 5000; // Reset to 5000Hz if it exceeds 5000Hz
    }
    update_timer_val();
}
void button_down() interrupt 2
{
    freq -= 100; // Decrease frequency by 100Hz
    if (freq < 1000) {
        freq = 1000; // Reset to 1000Hz if it goes below 1000Hz
    }
    update_timer_val();
}
void main()
{
    init_system();
    while (1) {
        // 主循环可以空着，所有操作都在中断中处理
    }
}