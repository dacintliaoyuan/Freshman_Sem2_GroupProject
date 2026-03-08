// 来自于 SDCC 的 at89x52.h 头文件示例
#ifndef AT89X52_H
#define AT89X52_H

// 标准 8051 寄存器
sfr at 0x80 P0;
sfr at 0x81 SP;
sfr at 0x82 DPL;
sfr at 0x83 DPH;
sfr at 0x87 PCON;
sfr at 0x88 TCON;
sfr at 0x89 TMOD;
sfr at 0x8A TL0;
sfr at 0x8B TL1;
sfr at 0x8C TH0;
sfr at 0x8D TH1;
sfr at 0x90 P1;
sfr at 0x98 SCON;
sfr at 0x99 SBUF;
sfr at 0xA0 P2;
sfr at 0xA8 IE;
sfr at 0xB0 P3;
sfr at 0xB8 IP;
sfr at 0xD0 PSW;
sfr at 0xE0 ACC;
sfr at 0xF0 B;

// AT89C52 扩展的寄存器 (与 8052 兼容)
sfr at 0xC8 T2CON;
sfr at 0xCA RCAP2L;
sfr at 0xCB RCAP2H;
sfr at 0xCC TL2;
sfr at 0xCD TH2;

// 端口的位寻址定义 (可选)
// sbit P0_0 = P0^0;
// ...

#endif