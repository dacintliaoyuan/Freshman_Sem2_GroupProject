                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _UART_Recv
                                     13 	.globl _UART_Send
                                     14 	.globl _UART_Init
                                     15 	.globl _Rled_Init
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _FL
                                     23 	.globl _P
                                     24 	.globl _TF2
                                     25 	.globl _EXF2
                                     26 	.globl _RCLK
                                     27 	.globl _TCLK
                                     28 	.globl _EXEN2
                                     29 	.globl _TR2
                                     30 	.globl _C_T2
                                     31 	.globl _CP_RL2
                                     32 	.globl _T2CON_7
                                     33 	.globl _T2CON_6
                                     34 	.globl _T2CON_5
                                     35 	.globl _T2CON_4
                                     36 	.globl _T2CON_3
                                     37 	.globl _T2CON_2
                                     38 	.globl _T2CON_1
                                     39 	.globl _T2CON_0
                                     40 	.globl _PT2
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ET2
                                     64 	.globl _ES
                                     65 	.globl _ET1
                                     66 	.globl _EX1
                                     67 	.globl _ET0
                                     68 	.globl _EX0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _T2EX
                                     86 	.globl _T2
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _B
                                    112 	.globl _A
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _TH2
                                    116 	.globl _TL2
                                    117 	.globl _RCAP2H
                                    118 	.globl _RCAP2L
                                    119 	.globl _T2MOD
                                    120 	.globl _T2CON
                                    121 	.globl _IP
                                    122 	.globl _P3
                                    123 	.globl _IE
                                    124 	.globl _P2
                                    125 	.globl _SBUF
                                    126 	.globl _SCON
                                    127 	.globl _P1
                                    128 	.globl _TH1
                                    129 	.globl _TH0
                                    130 	.globl _TL1
                                    131 	.globl _TL0
                                    132 	.globl _TMOD
                                    133 	.globl _TCON
                                    134 	.globl _PCON
                                    135 	.globl _DPH
                                    136 	.globl _DPL
                                    137 	.globl _SP
                                    138 	.globl _P0
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000C8   162 _T2CON	=	0x00c8
                           0000C9   163 _T2MOD	=	0x00c9
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000E0   170 _A	=	0x00e0
                           0000F0   171 _B	=	0x00f0
                                    172 ;--------------------------------------------------------
                                    173 ; special function bits
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0_0	=	0x0080
                           000081   178 _P0_1	=	0x0081
                           000082   179 _P0_2	=	0x0082
                           000083   180 _P0_3	=	0x0083
                           000084   181 _P0_4	=	0x0084
                           000085   182 _P0_5	=	0x0085
                           000086   183 _P0_6	=	0x0086
                           000087   184 _P0_7	=	0x0087
                           000088   185 _IT0	=	0x0088
                           000089   186 _IE0	=	0x0089
                           00008A   187 _IT1	=	0x008a
                           00008B   188 _IE1	=	0x008b
                           00008C   189 _TR0	=	0x008c
                           00008D   190 _TF0	=	0x008d
                           00008E   191 _TR1	=	0x008e
                           00008F   192 _TF1	=	0x008f
                           000090   193 _P1_0	=	0x0090
                           000091   194 _P1_1	=	0x0091
                           000092   195 _P1_2	=	0x0092
                           000093   196 _P1_3	=	0x0093
                           000094   197 _P1_4	=	0x0094
                           000095   198 _P1_5	=	0x0095
                           000096   199 _P1_6	=	0x0096
                           000097   200 _P1_7	=	0x0097
                           000090   201 _T2	=	0x0090
                           000091   202 _T2EX	=	0x0091
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AD   224 _ET2	=	0x00ad
                           0000AF   225 _EA	=	0x00af
                           0000B0   226 _P3_0	=	0x00b0
                           0000B1   227 _P3_1	=	0x00b1
                           0000B2   228 _P3_2	=	0x00b2
                           0000B3   229 _P3_3	=	0x00b3
                           0000B4   230 _P3_4	=	0x00b4
                           0000B5   231 _P3_5	=	0x00b5
                           0000B6   232 _P3_6	=	0x00b6
                           0000B7   233 _P3_7	=	0x00b7
                           0000B0   234 _RXD	=	0x00b0
                           0000B1   235 _TXD	=	0x00b1
                           0000B2   236 _INT0	=	0x00b2
                           0000B3   237 _INT1	=	0x00b3
                           0000B4   238 _T0	=	0x00b4
                           0000B5   239 _T1	=	0x00b5
                           0000B6   240 _WR	=	0x00b6
                           0000B7   241 _RD	=	0x00b7
                           0000B8   242 _PX0	=	0x00b8
                           0000B9   243 _PT0	=	0x00b9
                           0000BA   244 _PX1	=	0x00ba
                           0000BB   245 _PT1	=	0x00bb
                           0000BC   246 _PS	=	0x00bc
                           0000BD   247 _PT2	=	0x00bd
                           0000C8   248 _T2CON_0	=	0x00c8
                           0000C9   249 _T2CON_1	=	0x00c9
                           0000CA   250 _T2CON_2	=	0x00ca
                           0000CB   251 _T2CON_3	=	0x00cb
                           0000CC   252 _T2CON_4	=	0x00cc
                           0000CD   253 _T2CON_5	=	0x00cd
                           0000CE   254 _T2CON_6	=	0x00ce
                           0000CF   255 _T2CON_7	=	0x00cf
                           0000C8   256 _CP_RL2	=	0x00c8
                           0000C9   257 _C_T2	=	0x00c9
                           0000CA   258 _TR2	=	0x00ca
                           0000CB   259 _EXEN2	=	0x00cb
                           0000CC   260 _TCLK	=	0x00cc
                           0000CD   261 _RCLK	=	0x00cd
                           0000CE   262 _EXF2	=	0x00ce
                           0000CF   263 _TF2	=	0x00cf
                           0000D0   264 _P	=	0x00d0
                           0000D1   265 _FL	=	0x00d1
                           0000D2   266 _OV	=	0x00d2
                           0000D3   267 _RS0	=	0x00d3
                           0000D4   268 _RS1	=	0x00d4
                           0000D5   269 _F0	=	0x00d5
                           0000D6   270 _AC	=	0x00d6
                           0000D7   271 _CY	=	0x00d7
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable items in internal ram
                                    283 ;--------------------------------------------------------
                                    284 	.area	OSEG    (OVR,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; Stack segment in internal ram
                                    287 ;--------------------------------------------------------
                                    288 	.area	SSEG
      000008                        289 __start__stack:
      000008                        290 	.ds	1
                                    291 
                                    292 ;--------------------------------------------------------
                                    293 ; indirectly addressable internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area ISEG    (DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; absolute internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area IABS    (ABS,DATA)
                                    300 	.area IABS    (ABS,DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; bit data
                                    303 ;--------------------------------------------------------
                                    304 	.area BSEG    (BIT)
                                    305 ;--------------------------------------------------------
                                    306 ; paged external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area PSEG    (PAG,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XSEG    (XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; absolute external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XABS    (ABS,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external initialized ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XISEG   (XDATA)
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT0 (CODE)
                                    323 	.area GSINIT1 (CODE)
                                    324 	.area GSINIT2 (CODE)
                                    325 	.area GSINIT3 (CODE)
                                    326 	.area GSINIT4 (CODE)
                                    327 	.area GSINIT5 (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.area GSFINAL (CODE)
                                    330 	.area CSEG    (CODE)
                                    331 ;--------------------------------------------------------
                                    332 ; interrupt vector
                                    333 ;--------------------------------------------------------
                                    334 	.area HOME    (CODE)
      000000                        335 __interrupt_vect:
      000000 02 00 06         [24]  336 	ljmp	__sdcc_gsinit_startup
                                    337 ;--------------------------------------------------------
                                    338 ; global & static initialisations
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.area GSFINAL (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.globl __sdcc_gsinit_startup
                                    345 	.globl __sdcc_program_startup
                                    346 	.globl __start__stack
                                    347 	.globl __mcs51_genXINIT
                                    348 	.globl __mcs51_genXRAMCLEAR
                                    349 	.globl __mcs51_genRAMCLEAR
                                    350 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  351 	ljmp	__sdcc_program_startup
                                    352 ;--------------------------------------------------------
                                    353 ; Home
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area HOME    (CODE)
      000003                        357 __sdcc_program_startup:
      000003 02 00 8A         [24]  358 	ljmp	_main
                                    359 ;	return from main will return to caller
                                    360 ;--------------------------------------------------------
                                    361 ; code
                                    362 ;--------------------------------------------------------
                                    363 	.area CSEG    (CODE)
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'Rled_Init'
                                    366 ;------------------------------------------------------------
                                    367 ;	main.c:5: void Rled_Init()
                                    368 ;	-----------------------------------------
                                    369 ;	 function Rled_Init
                                    370 ;	-----------------------------------------
      000062                        371 _Rled_Init:
                           000007   372 	ar7 = 0x07
                           000006   373 	ar6 = 0x06
                           000005   374 	ar5 = 0x05
                           000004   375 	ar4 = 0x04
                           000003   376 	ar3 = 0x03
                           000002   377 	ar2 = 0x02
                           000001   378 	ar1 = 0x01
                           000000   379 	ar0 = 0x00
                                    380 ;	main.c:7: P0 = 0x2A;
      000062 75 80 2A         [24]  381 	mov	_P0,#0x2a
                                    382 ;	main.c:8: }
      000065 22               [24]  383 	ret
                                    384 ;------------------------------------------------------------
                                    385 ;Allocation info for local variables in function 'UART_Init'
                                    386 ;------------------------------------------------------------
                                    387 ;	main.c:10: void UART_Init() {
                                    388 ;	-----------------------------------------
                                    389 ;	 function UART_Init
                                    390 ;	-----------------------------------------
      000066                        391 _UART_Init:
                                    392 ;	main.c:11: SCON = 0x50; //设置串口为模式1，8位数据，可变波特率
      000066 75 98 50         [24]  393 	mov	_SCON,#0x50
                                    394 ;	main.c:12: TMOD |= 0x20; //定时器1工作在模式2
      000069 43 89 20         [24]  395 	orl	_TMOD,#0x20
                                    396 ;	main.c:13: TH1 = 0xCC;
      00006C 75 8D CC         [24]  397 	mov	_TH1,#0xcc
                                    398 ;	main.c:14: TL1 = 0xCC; 
      00006F 75 8B CC         [24]  399 	mov	_TL1,#0xcc
                                    400 ;	main.c:15: TR1 = 1; //启动定时器1
                                    401 ;	assignBit
      000072 D2 8E            [12]  402 	setb	_TR1
                                    403 ;	main.c:16: TI = 1;
                                    404 ;	assignBit
      000074 D2 99            [12]  405 	setb	_TI
                                    406 ;	main.c:17: }
      000076 22               [24]  407 	ret
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'UART_Send'
                                    410 ;------------------------------------------------------------
                                    411 ;byte                      Allocated to registers r7 
                                    412 ;------------------------------------------------------------
                                    413 ;	main.c:19: void  UART_Send(uchar byte) {
                                    414 ;	-----------------------------------------
                                    415 ;	 function UART_Send
                                    416 ;	-----------------------------------------
      000077                        417 _UART_Send:
      000077 AF 82            [24]  418 	mov	r7,dpl
                                    419 ;	main.c:20: while (!TI); //等待发送完成
      000079                        420 00101$:
                                    421 ;	main.c:21: TI = 0; //清除发送完成标志
                                    422 ;	assignBit
      000079 10 99 02         [24]  423 	jbc	_TI,00114$
      00007C 80 FB            [24]  424 	sjmp	00101$
      00007E                        425 00114$:
                                    426 ;	main.c:22: SBUF = byte; //将数据写入发送缓冲区
      00007E 8F 99            [24]  427 	mov	_SBUF,r7
                                    428 ;	main.c:23: }
      000080 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'UART_Recv'
                                    432 ;------------------------------------------------------------
                                    433 ;	main.c:24: uchar UART_Recv(void) {
                                    434 ;	-----------------------------------------
                                    435 ;	 function UART_Recv
                                    436 ;	-----------------------------------------
      000081                        437 _UART_Recv:
                                    438 ;	main.c:25: while (!RI); //等待接收完成
      000081                        439 00101$:
                                    440 ;	main.c:26: RI = 0; //清除接收完成标志
                                    441 ;	assignBit
      000081 10 98 02         [24]  442 	jbc	_RI,00114$
      000084 80 FB            [24]  443 	sjmp	00101$
      000086                        444 00114$:
                                    445 ;	main.c:27: return SBUF; //返回接收到的数据
      000086 85 99 82         [24]  446 	mov	dpl,_SBUF
                                    447 ;	main.c:28: }
      000089 22               [24]  448 	ret
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'main'
                                    451 ;------------------------------------------------------------
                                    452 ;a                         Allocated to registers r7 
                                    453 ;b                         Allocated to registers r5 
                                    454 ;c                         Allocated to registers r6 
                                    455 ;op                        Allocated to registers r6 
                                    456 ;------------------------------------------------------------
                                    457 ;	main.c:30: void main() {
                                    458 ;	-----------------------------------------
                                    459 ;	 function main
                                    460 ;	-----------------------------------------
      00008A                        461 _main:
                                    462 ;	main.c:31: Rled_Init(); //初始化LED
      00008A 12 00 62         [24]  463 	lcall	_Rled_Init
                                    464 ;	main.c:32: UART_Init(); //初始化UART
      00008D 12 00 66         [24]  465 	lcall	_UART_Init
                                    466 ;	main.c:33: UART_Send(0x00);//发送初始值
      000090 75 82 00         [24]  467 	mov	dpl,#0x00
      000093 12 00 77         [24]  468 	lcall	_UART_Send
                                    469 ;	main.c:36: while (1) {
      000096                        470 00111$:
                                    471 ;	main.c:39: a = UART_Recv(); //接收第一个数
      000096 12 00 81         [24]  472 	lcall	_UART_Recv
      000099 AF 82            [24]  473 	mov	r7,dpl
                                    474 ;	main.c:41: op = UART_Recv(); //接收运算符
      00009B C0 07            [24]  475 	push	ar7
      00009D 12 00 81         [24]  476 	lcall	_UART_Recv
      0000A0 AE 82            [24]  477 	mov	r6,dpl
                                    478 ;	main.c:43: b = UART_Recv(); //接收第二个数
      0000A2 C0 06            [24]  479 	push	ar6
      0000A4 12 00 81         [24]  480 	lcall	_UART_Recv
      0000A7 AD 82            [24]  481 	mov	r5,dpl
      0000A9 D0 06            [24]  482 	pop	ar6
      0000AB D0 07            [24]  483 	pop	ar7
                                    484 ;	main.c:44: switch (op) {
      0000AD BE 2A 02         [24]  485 	cjne	r6,#0x2a,00139$
      0000B0 80 1A            [24]  486 	sjmp	00103$
      0000B2                        487 00139$:
      0000B2 BE 2B 02         [24]  488 	cjne	r6,#0x2b,00140$
      0000B5 80 0A            [24]  489 	sjmp	00101$
      0000B7                        490 00140$:
      0000B7 BE 2D 02         [24]  491 	cjne	r6,#0x2d,00141$
      0000BA 80 0A            [24]  492 	sjmp	00102$
      0000BC                        493 00141$:
                                    494 ;	main.c:45: case '+':
      0000BC BE 2F 38         [24]  495 	cjne	r6,#0x2f,00108$
      0000BF 80 12            [24]  496 	sjmp	00104$
      0000C1                        497 00101$:
                                    498 ;	main.c:46: c = a + b;
      0000C1 ED               [12]  499 	mov	a,r5
      0000C2 2F               [12]  500 	add	a,r7
      0000C3 FE               [12]  501 	mov	r6,a
                                    502 ;	main.c:47: break;
                                    503 ;	main.c:48: case '-':
      0000C4 80 33            [24]  504 	sjmp	00109$
      0000C6                        505 00102$:
                                    506 ;	main.c:49: c = a - b;
      0000C6 EF               [12]  507 	mov	a,r7
      0000C7 C3               [12]  508 	clr	c
      0000C8 9D               [12]  509 	subb	a,r5
      0000C9 FE               [12]  510 	mov	r6,a
                                    511 ;	main.c:50: break;
                                    512 ;	main.c:51: case '*':
      0000CA 80 2D            [24]  513 	sjmp	00109$
      0000CC                        514 00103$:
                                    515 ;	main.c:52: c = a * b;
      0000CC 8D F0            [24]  516 	mov	b,r5
      0000CE EF               [12]  517 	mov	a,r7
      0000CF A4               [48]  518 	mul	ab
      0000D0 FE               [12]  519 	mov	r6,a
                                    520 ;	main.c:53: break;
                                    521 ;	main.c:54: case '/':
      0000D1 80 26            [24]  522 	sjmp	00109$
      0000D3                        523 00104$:
                                    524 ;	main.c:55: if (b != 0) {
      0000D3 ED               [12]  525 	mov	a,r5
      0000D4 60 1D            [24]  526 	jz	00106$
                                    527 ;	main.c:56: c = a / b;
      0000D6 C2 D5            [12]  528 	clr	F0
      0000D8 ED               [12]  529 	mov	a,r5
      0000D9 30 E7 04         [24]  530 	jnb	acc.7,00144$
      0000DC B2 D5            [12]  531 	cpl	F0
      0000DE F4               [12]  532 	cpl	a
      0000DF 04               [12]  533 	inc	a
      0000E0                        534 00144$:
      0000E0 F5 F0            [12]  535 	mov	b,a
      0000E2 EF               [12]  536 	mov	a,r7
      0000E3 30 E7 04         [24]  537 	jnb	acc.7,00145$
      0000E6 B2 D5            [12]  538 	cpl	F0
      0000E8 F4               [12]  539 	cpl	a
      0000E9 04               [12]  540 	inc	a
      0000EA                        541 00145$:
      0000EA 84               [48]  542 	div	ab
      0000EB 30 D5 02         [24]  543 	jnb	F0,00146$
      0000EE F4               [12]  544 	cpl	a
      0000EF 04               [12]  545 	inc	a
      0000F0                        546 00146$:
      0000F0 FE               [12]  547 	mov	r6,a
      0000F1 80 06            [24]  548 	sjmp	00109$
      0000F3                        549 00106$:
                                    550 ;	main.c:59: c = 0; //除数为0时返回0
      0000F3 7E 00            [12]  551 	mov	r6,#0x00
                                    552 ;	main.c:61: break;
                                    553 ;	main.c:62: default:
      0000F5 80 02            [24]  554 	sjmp	00109$
      0000F7                        555 00108$:
                                    556 ;	main.c:63: c = 0; //无效运算符时返回0
      0000F7 7E 00            [12]  557 	mov	r6,#0x00
                                    558 ;	main.c:64: }
      0000F9                        559 00109$:
                                    560 ;	main.c:65: UART_Send(c); //发送结果
      0000F9 8E 82            [24]  561 	mov	dpl,r6
      0000FB 12 00 77         [24]  562 	lcall	_UART_Send
                                    563 ;	main.c:67: }
      0000FE 80 96            [24]  564 	sjmp	00111$
                                    565 	.area CSEG    (CODE)
                                    566 	.area CONST   (CODE)
                                    567 	.area XINIT   (CODE)
                                    568 	.area CABS    (ABS,CODE)
