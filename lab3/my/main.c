#include <at89x52.h>
#define uint unsigned int
#define uchar unsigned char

void Rled_Init()
{
    P0 = 0x2A;
}


//初始化UART
void UART_Init() 
{
SM0 = 0;
SM1 = 1;
// SM0=0, SM1=1: 选择模式1(常用)，8位数据，1位停止位，波特率可变
REN = 1;    // 开启接收开关 1是能接收能发，0是只能发不能接
TR1 = 1;    // 启动定时器产生波特率
// 注意：TI和RI初始化通常建议设为0，或者TI设为1以便触发第一次发送
TI = 1;// 设置TI为1，表示准备发送数据
RI = 0;
/*实际就是：
SCON = 0x50; //配置串口控制寄存器，模式1，允许接收
TI = 1; //设置TI为1，表示准备发送数据
*/
TMOD &= 0x0F; //清除定时器1的控制位
TMOD |= 0x20; //定时器1工作在模式2
TH1 = 0xCC;//24Mhz晶振下，波特率为1200
TL1 = 0xCC; //存储器初值，波特率为1200
/*
如果是在11.0592MHz的晶振下，TH1和TL1的值为0xCC，可以产生9600的波特率。
如果使用其他频率的晶振，需要根据公式计算TH1和TL1的值：
TH1 = TL0 = 256 - (晶振频率 / (32 * 波特率)) 
*/
TR1 = 1; //启动定时器1
}

void  UART_Send(uchar byte) {
    while (!TI); //等待发送完成
    TI = 0; //清除发送完成标志
    SBUF = byte; //将数据写入发送缓冲区
}
uchar UART_Recv(void) {
    while (!RI); //等待接收完成
    RI = 0; //清除接收完成标志
    return SBUF; //返回接收到的数据
}


//上面函数别动
void main() 
{
    Rled_Init(); //初始化LED
    UART_Init(); //初始化UART
    UART_Send(0x00);//发送初始值
    //signed char a, b, c;
    //uchar op;
    while (1) {
    	signed char a, b, c;
    	uchar op;
        a = UART_Recv(); //接收第一个数
        //SBUF = a; //发送第一个数回去
        op = UART_Recv(); //接收运算符
        //SBUF = op; //发送运算符回去
        b = UART_Recv(); //接收第二个数
        switch (op) {
            case '+':
                c = a + b;
                break;
            case '-':
                c = a - b;
                break;
            case '*':
                c = a * b;
                break;
            case '/':
                if (b != 0) {
                    c = a / b;
                } 
                else {
                    c = 0; //除数为0时返回0
                }
                break;
            default:
                c = 0; //无效运算符时返回0
        }
        UART_Send(c); //发送结果
    }
}
