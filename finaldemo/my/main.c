#include <AT89x52.h>
#define uchar unsigned char
#define uint unsigned int

// P0: 低4位(hex0), 高4位(hex1) -> 猜测数字
// P1: jdg[7..0] -> 中间 hex2 (状态显示)
// P2: 低4位(hex4), 高4位(hex5) -> 倒计时显示
// P3.2: Key1 (开始/确认), P3.3: Key2 (修改数字)
// P0 (输入模式): sw[7..0] 开关

// HEX2 状态显示定义
#define DISP_H 0x09   // 0001001 (Too High)
#define DISP_L 0x47   // 1000111 (Too Low)
#define DISP_Y 0x11   // 0010001 (Correct 'y')
#define DISP_OFF 0x7F // 1111111 (熄灭)
#define FAIL_1 0x36   // 0110110 (三横线 ≡)
#define FAIL_2 0x43   // 1000011 (两竖线 | |)

uchar timer = 60;      // 倒计时秒数
uchar target_num = 50; // 待猜数字 (实验要求初始为50)
uchar my_guess = 0;    // 玩家当前的猜测
uchar ms_tick = 0;     // 中断计数(25ms * 40 = 1s)
__bit game_running = 0;  // 游戏运行状态
__bit flash_state = 0;   // 失败闪烁切换位
void System_Init(void)
{
    P0 = 0xFF;     // 设定为输入模式以读取开关，同时显示初始数字
    P1 = DISP_OFF; // 初始状态显示熄灭
    P2 = 0x60;     // 初始显示 60 秒

    my_guess = 0;
    timer = 60;

    // 定时器0配置: 模式1 (16位定时器), 25ms中断周期
    TMOD &= 0xF0;
    TMOD |= 0x01;
    TH0 = 0x3C;
    TL0 = 0xB0;
    ET0 = 1; // 开启定时器中断
    IT0 = 1; // 开启外部中断0 (Key1)
    IT1 = 1; // 开启外部中断1 (Key2)
    EX0 = 1;  // 使能外部中断0
    EX1 = 1;  // 使能外部中断1
    EA = 1;  // 开启总中断
    TR0 = 0; // 初始不运行计时器
}

void update_display(void)
{
    // P2 更新倒计时 
    P2 = ((timer / 10) << 4) | (timer % 10);
    // P0 更新猜测数字 
    P0 = ((my_guess / 10) << 4) | (my_guess % 10);
}

// --- 定时器0 中断服务 (每25ms执行一次) ---
void Timer0_ISR(void) __interrupt (1)
{
    TH0 = 0x3C; // 重装初值
    TL0 = 0xB0;
    if (game_running)
    {
        ms_tick++;
        if (ms_tick >= 40)
        { // 累积到 1秒
            ms_tick = 0;
            // 每秒更新一次倒计时显示
            if (timer > 0)
            {
                timer--;
                P2 = ((timer / 10) << 4) | (timer % 10);
            }
            else
            {
                game_running = 0; 
                TR0 = 0; // 时间到，游戏结束
            }
        }
    }
    else if (timer == 0)
    {
        // 游戏失败后的闪烁逻辑
        ms_tick++;
        if (ms_tick >= 10)
        { // 每 250ms 闪烁一次
            ms_tick = 0;
            flash_state = !flash_state;
            P1 = flash_state ? FAIL_1 : FAIL_2;
        }
    }
}

void led_init(void)
{
    P3 = 0xAA;
}


void interrupt_start(void) __interrupt (0)
{
    if (!game_running && timer == 60)
    {
        game_running = 1;
        TR0 = 1; // 启动计时器
    }
    else if (game_running)
    {
        // 检查猜测结果
        if (my_guess > target_num)
            P1 = DISP_H;
        else if (my_guess < target_num)
            P1 = DISP_L;
        else
        {
            P1 = DISP_Y;
            game_running = 0; // 猜中，停止计时
            TR0 = 0;
        }
    }
}

void interrupt_modify(void) __interrupt (2)
{
    if (game_running)
    {
        // 读取开关状态更新猜测数字
        my_guess = P0; // 直接读取P0的输入值作为猜测
        update_display(); // 更新显示
    }
}

// --- 主程序循环 ---
void main()
{
    System_Init();
    update_display(); // 显示初始 60 00
    led_init();       // 初始化LED显示

    while (1)
    {
    }
}