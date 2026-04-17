#include <at89x52.h>
unsigned char duty = 75; // 占空比，范围0-100
sbit WAVE_OUT = P1^0;  // 方波输出
void init_system()
{
    TMOD &= 0xF0; // Clear lower 4 bits for Timer0
    TMOD |= 0x01; // Timer0 in mode 1 (16-bit timer)
    TH0 = (65536 - 2000) / 256;
    TL0 = (65536 - 2000) % 256; 
    ET0 = 1; // Enable Timer0 interrupt
    IT0 = 1; // Enable interrupt 0
    IT1 = 1; // Enable interrupt 1
    EX0 = 1; // Enable external interrupt 0
    EX1 = 1; // Enable external interrupt 1
    EA = 1; // Enable global interrupts
    TR0 = 1; // Start Timer0
}
void update_duty() {
    // 根据占空比计算定时器重载值
    /*
    计算过程：
    机器周期 = 1 / (24MHz / 12) = 0.5us
    1ms = 1000us
    需要的计数值 = 1000us / 0.5us = 2000
    */
    unsigned int on_time = (duty * 2000) / 100; // 占空时间对应的计数值
    unsigned int off_time = 2000 - on_time; // 关时间对应的计数值
    TH0 = (65536 - on_time) / 256;
    TL0 = (65536 - on_time) % 256;
}
void button_up() interrupt 0
{
    if (duty < 95) {
        duty += 1; // Increase duty cycle by 1%
    }
    else if (duty > 95) {
        duty = 95; // Reset to 95% if it exceeds 95%
    }
}
void button_down() interrupt 2
{
    if (duty > 5) {
        duty -= 1; // Decrease duty cycle by 1%
    }
}
void timer0_interrupt() interrupt 1
{
    WAVE_OUT = ~WAVE_OUT; // Toggle the output pin
    if (WAVE_OUT) {
        // 如果当前是高电平，设置下次中断为占空时间
        unsigned int on_time = (duty * 2000) / 100; // 占空时间对应的计数值
        TH0 = (65536 - on_time) / 256;
        TL0 = (65536 - on_time) % 256;
    } else {
        // 如果当前是低电平，设置下次中断为关时间
        unsigned int off_time = 2000 - ((duty * 2000) / 100); // 关时间对应的计数值
        TH0 = (65536 - off_time) / 256;
        TL0 = (65536 - off_time) % 256;
    }
}
void main()
{
    init_system();
    while (1) {
        // 主循环可以空着，所有操作都在中断中处理
    }
}