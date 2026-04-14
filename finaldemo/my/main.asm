;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _interrupt_modify
	.globl _interrupt_start
	.globl _led_init
	.globl _Timer0_ISR
	.globl _update_display
	.globl _System_Init
	.globl _srand
	.globl _rand
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _flash_state
	.globl _game_running
	.globl _ms_tick
	.globl _my_guess
	.globl _target_num
	.globl _timer
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_timer::
	.ds 1
_target_num::
	.ds 1
_my_guess::
	.ds 1
_ms_tick::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_game_running::
	.ds 1
_flash_state::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_interrupt_start
	.ds	5
	ljmp	_Timer0_ISR
	.ds	5
	ljmp	_interrupt_modify
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:20: uchar timer = 60;      // 倒计时秒数
	mov	_timer,#0x3c
;	main.c:22: uchar my_guess = 0;    // 玩家当前的猜测
	mov	_my_guess,#0x00
;	main.c:23: uchar ms_tick = 0;     // 中断计数(25ms * 40 = 1s)
	mov	_ms_tick,#0x00
;	main.c:24: __bit game_running = 0;  // 游戏运行状态
;	assignBit
	clr	_game_running
;	main.c:25: __bit flash_state = 0;   // 失败闪烁切换位
;	assignBit
	clr	_flash_state
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'System_Init'
;------------------------------------------------------------
;	main.c:26: void System_Init(void)
;	-----------------------------------------
;	 function System_Init
;	-----------------------------------------
_System_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:28: P0 = 0xFF;     // 设定为输入模式以读取开关，同时显示初始数字
	mov	_P0,#0xff
;	main.c:29: P1 = DISP_OFF; // 初始状态显示熄灭
	mov	_P1,#0x7f
;	main.c:30: P2 = 0x60;     // 初始显示 60 秒
	mov	_P2,#0x60
;	main.c:32: my_guess = 0;
	mov	_my_guess,#0x00
;	main.c:33: timer = 60;
	mov	_timer,#0x3c
;	main.c:36: TMOD &= 0xF0;
	anl	_TMOD,#0xf0
;	main.c:37: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	main.c:38: TH0 = 0x3C;
	mov	_TH0,#0x3c
;	main.c:39: TL0 = 0xB0;
	mov	_TL0,#0xb0
;	main.c:40: ET0 = 1; // 开启定时器中断
;	assignBit
	setb	_ET0
;	main.c:41: IT0 = 1; // 开启外部中断0 (Key1)
;	assignBit
	setb	_IT0
;	main.c:42: IT1 = 1; // 开启外部中断1 (Key2)
;	assignBit
	setb	_IT1
;	main.c:43: EX0 = 1;  // 使能外部中断0
;	assignBit
	setb	_EX0
;	main.c:44: EX1 = 1;  // 使能外部中断1
;	assignBit
	setb	_EX1
;	main.c:45: EA = 1;  // 开启总中断
;	assignBit
	setb	_EA
;	main.c:46: TR0 = 1; // 启动定时器0
;	assignBit
	setb	_TR0
;	main.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_display'
;------------------------------------------------------------
;	main.c:49: void update_display(void)
;	-----------------------------------------
;	 function update_display
;	-----------------------------------------
_update_display:
;	main.c:52: P2 = ((timer / 10) << 4) | (timer % 10);
	mov	r6,_timer
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	pop	ar4
	mov	a,r6
	orl	a,r4
	mov	_P2,a
;	main.c:54: P0 = ((my_guess / 10) << 4) | (my_guess % 10);
	mov	r6,_my_guess
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	pop	ar4
	mov	a,r6
	orl	a,r4
	mov	_P0,a
;	main.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	main.c:58: void Timer0_ISR(void) __interrupt (1)
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:60: if (game_running)
	jnb	_game_running,00111$
;	main.c:62: ms_tick++;
	inc	_ms_tick
;	main.c:63: if (ms_tick >= 40)
	mov	a,#0x100 - 0x28
	add	a,_ms_tick
	jnc	00113$
;	main.c:65: ms_tick = 0;
	mov	_ms_tick,#0x00
;	main.c:67: if (timer > 0)
	mov	a,_timer
	jz	00102$
;	main.c:69: timer--;
	dec	_timer
;	main.c:70: P2 = ((timer / 10) << 4) | (timer % 10);
	mov	r6,_timer
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	mov	a,r6
	orl	a,r4
	mov	_P2,a
	sjmp	00113$
00102$:
;	main.c:74: game_running = 0; 
;	assignBit
	clr	_game_running
	sjmp	00113$
00111$:
;	main.c:79: else if (timer == 0)
	mov	a,_timer
	jnz	00113$
;	main.c:82: ms_tick++;
	inc	_ms_tick
;	main.c:83: if (ms_tick >= 10)
	mov	a,#0x100 - 0x0a
	add	a,_ms_tick
	jnc	00113$
;	main.c:85: ms_tick = 0;
	mov	_ms_tick,#0x00
;	main.c:86: flash_state = !flash_state;
	cpl	_flash_state
;	main.c:87: P1 = flash_state ? FAIL_1 : FAIL_2;
	jnb	_flash_state,00115$
	mov	r6,#0x36
	mov	r7,#0x00
	sjmp	00116$
00115$:
	mov	r6,#0x43
	mov	r7,#0x00
00116$:
	mov	_P1,r6
00113$:
;	main.c:90: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'led_init'
;------------------------------------------------------------
;	main.c:92: void led_init(void)
;	-----------------------------------------
;	 function led_init
;	-----------------------------------------
_led_init:
;	main.c:94: P3 = 0xAA;
	mov	_P3,#0xaa
;	main.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_start'
;------------------------------------------------------------
;	main.c:98: void interrupt_start(void) __interrupt (0)
;	-----------------------------------------
;	 function interrupt_start
;	-----------------------------------------
_interrupt_start:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:100: if (!game_running && timer == 60)
	jb	_game_running,00110$
	mov	a,#0x3c
	cjne	a,_timer,00110$
;	main.c:103: srand(TL0); 
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	main.c:104: target_num = rand() % 100; 
	lcall	_rand
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_target_num,r6
;	main.c:106: game_running = 1;
;	assignBit
	setb	_game_running
	sjmp	00113$
00110$:
;	main.c:108: else if (game_running)
	jnb	_game_running,00113$
;	main.c:111: if (my_guess > target_num)
	clr	c
	mov	a,_target_num
	subb	a,_my_guess
	jnc	00105$
;	main.c:112: P1 = DISP_H;
	mov	_P1,#0x09
	sjmp	00113$
00105$:
;	main.c:113: else if (my_guess < target_num)
	clr	c
	mov	a,_my_guess
	subb	a,_target_num
	jnc	00102$
;	main.c:114: P1 = DISP_L;
	mov	_P1,#0x47
	sjmp	00113$
00102$:
;	main.c:117: P1 = DISP_Y;
	mov	_P1,#0x11
;	main.c:118: game_running = 0; // 猜中，停止计时
;	assignBit
	clr	_game_running
00113$:
;	main.c:122: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_modify'
;------------------------------------------------------------
;	main.c:124: void interrupt_modify(void) __interrupt (2)
;	-----------------------------------------
;	 function interrupt_modify
;	-----------------------------------------
_interrupt_modify:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:126: if (game_running)
	jnb	_game_running,00103$
;	main.c:128: P0 = 0xFF;        // 先将P0设为输入模式以读取开关状态
	mov	_P0,#0xff
;	main.c:130: my_guess = P0; // 直接读取P0的输入值作为猜测
	mov	_my_guess,_P0
;	main.c:131: update_display(); // 更新显示
	lcall	_update_display
00103$:
;	main.c:133: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:136: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:138: System_Init();
	lcall	_System_Init
;	main.c:139: update_display(); // 显示初始 60 00
	lcall	_update_display
;	main.c:140: led_init();       // 初始化LED显示
	lcall	_led_init
;	main.c:142: while (1)
00102$:
;	main.c:145: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
