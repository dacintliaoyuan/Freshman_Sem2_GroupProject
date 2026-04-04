                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _interrupt_modify
                                     13 	.globl _interrupt_start
                                     14 	.globl _led_init
                                     15 	.globl _Timer0_ISR
                                     16 	.globl _update_display
                                     17 	.globl _System_Init
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ET2
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _T2EX
                                     88 	.globl _T2
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _B
                                    114 	.globl _A
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _flash_state
                                    142 	.globl _game_running
                                    143 	.globl _ms_tick
                                    144 	.globl _my_guess
                                    145 	.globl _target_num
                                    146 	.globl _timer
                                    147 ;--------------------------------------------------------
                                    148 ; special function registers
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0	=	0x0080
                           000081   153 _SP	=	0x0081
                           000082   154 _DPL	=	0x0082
                           000083   155 _DPH	=	0x0083
                           000087   156 _PCON	=	0x0087
                           000088   157 _TCON	=	0x0088
                           000089   158 _TMOD	=	0x0089
                           00008A   159 _TL0	=	0x008a
                           00008B   160 _TL1	=	0x008b
                           00008C   161 _TH0	=	0x008c
                           00008D   162 _TH1	=	0x008d
                           000090   163 _P1	=	0x0090
                           000098   164 _SCON	=	0x0098
                           000099   165 _SBUF	=	0x0099
                           0000A0   166 _P2	=	0x00a0
                           0000A8   167 _IE	=	0x00a8
                           0000B0   168 _P3	=	0x00b0
                           0000B8   169 _IP	=	0x00b8
                           0000C8   170 _T2CON	=	0x00c8
                           0000C9   171 _T2MOD	=	0x00c9
                           0000CA   172 _RCAP2L	=	0x00ca
                           0000CB   173 _RCAP2H	=	0x00cb
                           0000CC   174 _TL2	=	0x00cc
                           0000CD   175 _TH2	=	0x00cd
                           0000D0   176 _PSW	=	0x00d0
                           0000E0   177 _ACC	=	0x00e0
                           0000E0   178 _A	=	0x00e0
                           0000F0   179 _B	=	0x00f0
                                    180 ;--------------------------------------------------------
                                    181 ; special function bits
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000080   185 _P0_0	=	0x0080
                           000081   186 _P0_1	=	0x0081
                           000082   187 _P0_2	=	0x0082
                           000083   188 _P0_3	=	0x0083
                           000084   189 _P0_4	=	0x0084
                           000085   190 _P0_5	=	0x0085
                           000086   191 _P0_6	=	0x0086
                           000087   192 _P0_7	=	0x0087
                           000088   193 _IT0	=	0x0088
                           000089   194 _IE0	=	0x0089
                           00008A   195 _IT1	=	0x008a
                           00008B   196 _IE1	=	0x008b
                           00008C   197 _TR0	=	0x008c
                           00008D   198 _TF0	=	0x008d
                           00008E   199 _TR1	=	0x008e
                           00008F   200 _TF1	=	0x008f
                           000090   201 _P1_0	=	0x0090
                           000091   202 _P1_1	=	0x0091
                           000092   203 _P1_2	=	0x0092
                           000093   204 _P1_3	=	0x0093
                           000094   205 _P1_4	=	0x0094
                           000095   206 _P1_5	=	0x0095
                           000096   207 _P1_6	=	0x0096
                           000097   208 _P1_7	=	0x0097
                           000090   209 _T2	=	0x0090
                           000091   210 _T2EX	=	0x0091
                           000098   211 _RI	=	0x0098
                           000099   212 _TI	=	0x0099
                           00009A   213 _RB8	=	0x009a
                           00009B   214 _TB8	=	0x009b
                           00009C   215 _REN	=	0x009c
                           00009D   216 _SM2	=	0x009d
                           00009E   217 _SM1	=	0x009e
                           00009F   218 _SM0	=	0x009f
                           0000A0   219 _P2_0	=	0x00a0
                           0000A1   220 _P2_1	=	0x00a1
                           0000A2   221 _P2_2	=	0x00a2
                           0000A3   222 _P2_3	=	0x00a3
                           0000A4   223 _P2_4	=	0x00a4
                           0000A5   224 _P2_5	=	0x00a5
                           0000A6   225 _P2_6	=	0x00a6
                           0000A7   226 _P2_7	=	0x00a7
                           0000A8   227 _EX0	=	0x00a8
                           0000A9   228 _ET0	=	0x00a9
                           0000AA   229 _EX1	=	0x00aa
                           0000AB   230 _ET1	=	0x00ab
                           0000AC   231 _ES	=	0x00ac
                           0000AD   232 _ET2	=	0x00ad
                           0000AF   233 _EA	=	0x00af
                           0000B0   234 _P3_0	=	0x00b0
                           0000B1   235 _P3_1	=	0x00b1
                           0000B2   236 _P3_2	=	0x00b2
                           0000B3   237 _P3_3	=	0x00b3
                           0000B4   238 _P3_4	=	0x00b4
                           0000B5   239 _P3_5	=	0x00b5
                           0000B6   240 _P3_6	=	0x00b6
                           0000B7   241 _P3_7	=	0x00b7
                           0000B0   242 _RXD	=	0x00b0
                           0000B1   243 _TXD	=	0x00b1
                           0000B2   244 _INT0	=	0x00b2
                           0000B3   245 _INT1	=	0x00b3
                           0000B4   246 _T0	=	0x00b4
                           0000B5   247 _T1	=	0x00b5
                           0000B6   248 _WR	=	0x00b6
                           0000B7   249 _RD	=	0x00b7
                           0000B8   250 _PX0	=	0x00b8
                           0000B9   251 _PT0	=	0x00b9
                           0000BA   252 _PX1	=	0x00ba
                           0000BB   253 _PT1	=	0x00bb
                           0000BC   254 _PS	=	0x00bc
                           0000BD   255 _PT2	=	0x00bd
                           0000C8   256 _T2CON_0	=	0x00c8
                           0000C9   257 _T2CON_1	=	0x00c9
                           0000CA   258 _T2CON_2	=	0x00ca
                           0000CB   259 _T2CON_3	=	0x00cb
                           0000CC   260 _T2CON_4	=	0x00cc
                           0000CD   261 _T2CON_5	=	0x00cd
                           0000CE   262 _T2CON_6	=	0x00ce
                           0000CF   263 _T2CON_7	=	0x00cf
                           0000C8   264 _CP_RL2	=	0x00c8
                           0000C9   265 _C_T2	=	0x00c9
                           0000CA   266 _TR2	=	0x00ca
                           0000CB   267 _EXEN2	=	0x00cb
                           0000CC   268 _TCLK	=	0x00cc
                           0000CD   269 _RCLK	=	0x00cd
                           0000CE   270 _EXF2	=	0x00ce
                           0000CF   271 _TF2	=	0x00cf
                           0000D0   272 _P	=	0x00d0
                           0000D1   273 _FL	=	0x00d1
                           0000D2   274 _OV	=	0x00d2
                           0000D3   275 _RS0	=	0x00d3
                           0000D4   276 _RS1	=	0x00d4
                           0000D5   277 _F0	=	0x00d5
                           0000D6   278 _AC	=	0x00d6
                           0000D7   279 _CY	=	0x00d7
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable register banks
                                    282 ;--------------------------------------------------------
                                    283 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        284 	.ds 8
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable bit register bank
                                    287 ;--------------------------------------------------------
                                    288 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        289 bits:
      000021                        290 	.ds 1
                           008000   291 	b0 = bits[0]
                           008100   292 	b1 = bits[1]
                           008200   293 	b2 = bits[2]
                           008300   294 	b3 = bits[3]
                           008400   295 	b4 = bits[4]
                           008500   296 	b5 = bits[5]
                           008600   297 	b6 = bits[6]
                           008700   298 	b7 = bits[7]
                                    299 ;--------------------------------------------------------
                                    300 ; internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area DSEG    (DATA)
      000008                        303 _timer::
      000008                        304 	.ds 1
      000009                        305 _target_num::
      000009                        306 	.ds 1
      00000A                        307 _my_guess::
      00000A                        308 	.ds 1
      00000B                        309 _ms_tick::
      00000B                        310 	.ds 1
                                    311 ;--------------------------------------------------------
                                    312 ; overlayable items in internal ram
                                    313 ;--------------------------------------------------------
                                    314 ;--------------------------------------------------------
                                    315 ; Stack segment in internal ram
                                    316 ;--------------------------------------------------------
                                    317 	.area SSEG
      000022                        318 __start__stack:
      000022                        319 	.ds	1
                                    320 
                                    321 ;--------------------------------------------------------
                                    322 ; indirectly addressable internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area ISEG    (DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; absolute internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area IABS    (ABS,DATA)
                                    329 	.area IABS    (ABS,DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; bit data
                                    332 ;--------------------------------------------------------
                                    333 	.area BSEG    (BIT)
      000000                        334 _game_running::
      000000                        335 	.ds 1
      000001                        336 _flash_state::
      000001                        337 	.ds 1
                                    338 ;--------------------------------------------------------
                                    339 ; paged external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area PSEG    (PAG,XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; uninitialized external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XSEG    (XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; absolute external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XABS    (ABS,XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; initialized external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XISEG   (XDATA)
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT0 (CODE)
                                    356 	.area GSINIT1 (CODE)
                                    357 	.area GSINIT2 (CODE)
                                    358 	.area GSINIT3 (CODE)
                                    359 	.area GSINIT4 (CODE)
                                    360 	.area GSINIT5 (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.area GSFINAL (CODE)
                                    363 	.area CSEG    (CODE)
                                    364 ;--------------------------------------------------------
                                    365 ; interrupt vector
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME    (CODE)
      000000                        368 __interrupt_vect:
      000000 02 00 5C         [24]  369 	ljmp	__sdcc_gsinit_startup
      000003 02 01 92         [24]  370 	ljmp	_interrupt_start
      000006                        371 	.ds	5
      00000B 02 01 21         [24]  372 	ljmp	_Timer0_ISR
      00000E                        373 	.ds	5
      000013 02 01 CB         [24]  374 	ljmp	_interrupt_modify
                                    375 ; restartable atomic support routines
      000016                        376 	.ds	2
      000018                        377 sdcc_atomic_exchange_rollback_start::
      000018 00               [12]  378 	nop
      000019 00               [12]  379 	nop
      00001A                        380 sdcc_atomic_exchange_pdata_impl:
      00001A E2               [24]  381 	movx	a, @r0
      00001B FB               [12]  382 	mov	r3, a
      00001C EA               [12]  383 	mov	a, r2
      00001D F2               [24]  384 	movx	@r0, a
      00001E 80 2C            [24]  385 	sjmp	sdcc_atomic_exchange_exit
      000020 00               [12]  386 	nop
      000021 00               [12]  387 	nop
      000022                        388 sdcc_atomic_exchange_xdata_impl:
      000022 E0               [24]  389 	movx	a, @dptr
      000023 FB               [12]  390 	mov	r3, a
      000024 EA               [12]  391 	mov	a, r2
      000025 F0               [24]  392 	movx	@dptr, a
      000026 80 24            [24]  393 	sjmp	sdcc_atomic_exchange_exit
      000028                        394 sdcc_atomic_compare_exchange_idata_impl:
      000028 E6               [12]  395 	mov	a, @r0
      000029 B5 02 02         [24]  396 	cjne	a, ar2, .+#5
      00002C EB               [12]  397 	mov	a, r3
      00002D F6               [12]  398 	mov	@r0, a
      00002E 22               [24]  399 	ret
      00002F 00               [12]  400 	nop
      000030                        401 sdcc_atomic_compare_exchange_pdata_impl:
      000030 E2               [24]  402 	movx	a, @r0
      000031 B5 02 02         [24]  403 	cjne	a, ar2, .+#5
      000034 EB               [12]  404 	mov	a, r3
      000035 F2               [24]  405 	movx	@r0, a
      000036 22               [24]  406 	ret
      000037 00               [12]  407 	nop
      000038                        408 sdcc_atomic_compare_exchange_xdata_impl:
      000038 E0               [24]  409 	movx	a, @dptr
      000039 B5 02 02         [24]  410 	cjne	a, ar2, .+#5
      00003C EB               [12]  411 	mov	a, r3
      00003D F0               [24]  412 	movx	@dptr, a
      00003E 22               [24]  413 	ret
      00003F                        414 sdcc_atomic_exchange_rollback_end::
                                    415 
      00003F                        416 sdcc_atomic_exchange_gptr_impl::
      00003F 30 F6 E0         [24]  417 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000042 A8 82            [24]  418 	mov	r0, dpl
      000044 20 F5 D3         [24]  419 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000047                        420 sdcc_atomic_exchange_idata_impl:
      000047 EA               [12]  421 	mov	a, r2
      000048 C6               [12]  422 	xch	a, @r0
      000049 F5 82            [12]  423 	mov	dpl, a
      00004B 22               [24]  424 	ret
      00004C                        425 sdcc_atomic_exchange_exit:
      00004C 8B 82            [24]  426 	mov	dpl, r3
      00004E 22               [24]  427 	ret
      00004F                        428 sdcc_atomic_compare_exchange_gptr_impl::
      00004F 30 F6 E6         [24]  429 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000052 A8 82            [24]  430 	mov	r0, dpl
      000054 20 F5 D9         [24]  431 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000057 80 CF            [24]  432 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    433 ;--------------------------------------------------------
                                    434 ; global & static initialisations
                                    435 ;--------------------------------------------------------
                                    436 	.area HOME    (CODE)
                                    437 	.area GSINIT  (CODE)
                                    438 	.area GSFINAL (CODE)
                                    439 	.area GSINIT  (CODE)
                                    440 	.globl __sdcc_gsinit_startup
                                    441 	.globl __sdcc_program_startup
                                    442 	.globl __start__stack
                                    443 	.globl __mcs51_genXINIT
                                    444 	.globl __mcs51_genXRAMCLEAR
                                    445 	.globl __mcs51_genRAMCLEAR
                                    446 ;	main.c:19: uchar timer = 60;      // 倒计时秒数
      0000B5 75 08 3C         [24]  447 	mov	_timer,#0x3c
                                    448 ;	main.c:20: uchar target_num = 50; // 待猜数字 (实验要求初始为50)
      0000B8 75 09 32         [24]  449 	mov	_target_num,#0x32
                                    450 ;	main.c:21: uchar my_guess = 0;    // 玩家当前的猜测
      0000BB 75 0A 00         [24]  451 	mov	_my_guess,#0x00
                                    452 ;	main.c:22: uchar ms_tick = 0;     // 中断计数(25ms * 40 = 1s)
      0000BE 75 0B 00         [24]  453 	mov	_ms_tick,#0x00
                                    454 ;	main.c:23: __bit game_running = 0;  // 游戏运行状态
                                    455 ;	assignBit
      0000C1 C2 00            [12]  456 	clr	_game_running
                                    457 ;	main.c:24: __bit flash_state = 0;   // 失败闪烁切换位
                                    458 ;	assignBit
      0000C3 C2 01            [12]  459 	clr	_flash_state
                                    460 	.area GSFINAL (CODE)
      0000C5 02 00 59         [24]  461 	ljmp	__sdcc_program_startup
                                    462 ;--------------------------------------------------------
                                    463 ; Home
                                    464 ;--------------------------------------------------------
                                    465 	.area HOME    (CODE)
                                    466 	.area HOME    (CODE)
      000059                        467 __sdcc_program_startup:
      000059 02 02 10         [24]  468 	ljmp	_main
                                    469 ;	return from main will return to caller
                                    470 ;--------------------------------------------------------
                                    471 ; code
                                    472 ;--------------------------------------------------------
                                    473 	.area CSEG    (CODE)
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'System_Init'
                                    476 ;------------------------------------------------------------
                                    477 ;	main.c:25: void System_Init(void)
                                    478 ;	-----------------------------------------
                                    479 ;	 function System_Init
                                    480 ;	-----------------------------------------
      0000C8                        481 _System_Init:
                           000007   482 	ar7 = 0x07
                           000006   483 	ar6 = 0x06
                           000005   484 	ar5 = 0x05
                           000004   485 	ar4 = 0x04
                           000003   486 	ar3 = 0x03
                           000002   487 	ar2 = 0x02
                           000001   488 	ar1 = 0x01
                           000000   489 	ar0 = 0x00
                                    490 ;	main.c:27: P0 = 0xFF;     // 设定为输入模式以读取开关，同时显示初始数字
      0000C8 75 80 FF         [24]  491 	mov	_P0,#0xff
                                    492 ;	main.c:28: P1 = DISP_OFF; // 初始状态显示熄灭
      0000CB 75 90 7F         [24]  493 	mov	_P1,#0x7f
                                    494 ;	main.c:29: P2 = 0x60;     // 初始显示 60 秒
      0000CE 75 A0 60         [24]  495 	mov	_P2,#0x60
                                    496 ;	main.c:31: my_guess = 0;
      0000D1 75 0A 00         [24]  497 	mov	_my_guess,#0x00
                                    498 ;	main.c:32: timer = 60;
      0000D4 75 08 3C         [24]  499 	mov	_timer,#0x3c
                                    500 ;	main.c:35: TMOD &= 0xF0;
      0000D7 53 89 F0         [24]  501 	anl	_TMOD,#0xf0
                                    502 ;	main.c:36: TMOD |= 0x01;
      0000DA 43 89 01         [24]  503 	orl	_TMOD,#0x01
                                    504 ;	main.c:37: TH0 = 0x3C;
      0000DD 75 8C 3C         [24]  505 	mov	_TH0,#0x3c
                                    506 ;	main.c:38: TL0 = 0xB0;
      0000E0 75 8A B0         [24]  507 	mov	_TL0,#0xb0
                                    508 ;	main.c:39: ET0 = 1; // 开启定时器中断
                                    509 ;	assignBit
      0000E3 D2 A9            [12]  510 	setb	_ET0
                                    511 ;	main.c:40: IT0 = 1; // 开启外部中断0 (Key1)
                                    512 ;	assignBit
      0000E5 D2 88            [12]  513 	setb	_IT0
                                    514 ;	main.c:41: IT1 = 1; // 开启外部中断1 (Key2)
                                    515 ;	assignBit
      0000E7 D2 8A            [12]  516 	setb	_IT1
                                    517 ;	main.c:42: EX0 = 1;  // 使能外部中断0
                                    518 ;	assignBit
      0000E9 D2 A8            [12]  519 	setb	_EX0
                                    520 ;	main.c:43: EX1 = 1;  // 使能外部中断1
                                    521 ;	assignBit
      0000EB D2 AA            [12]  522 	setb	_EX1
                                    523 ;	main.c:44: EA = 1;  // 开启总中断
                                    524 ;	assignBit
      0000ED D2 AF            [12]  525 	setb	_EA
                                    526 ;	main.c:45: TR0 = 0; // 初始不运行计时器
                                    527 ;	assignBit
      0000EF C2 8C            [12]  528 	clr	_TR0
                                    529 ;	main.c:46: }
      0000F1 22               [24]  530 	ret
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'update_display'
                                    533 ;------------------------------------------------------------
                                    534 ;	main.c:48: void update_display(void)
                                    535 ;	-----------------------------------------
                                    536 ;	 function update_display
                                    537 ;	-----------------------------------------
      0000F2                        538 _update_display:
                                    539 ;	main.c:51: P2 = ((timer / 10) << 4) | (timer % 10);
      0000F2 AF 08            [24]  540 	mov	r7,_timer
      0000F4 8F 06            [24]  541 	mov	ar6,r7
      0000F6 75 F0 0A         [24]  542 	mov	b,#0x0a
      0000F9 EE               [12]  543 	mov	a,r6
      0000FA 84               [48]  544 	div	ab
      0000FB C4               [12]  545 	swap	a
      0000FC 54 F0            [12]  546 	anl	a,#0xf0
      0000FE FE               [12]  547 	mov	r6,a
      0000FF 75 F0 0A         [24]  548 	mov	b,#0x0a
      000102 EF               [12]  549 	mov	a,r7
      000103 84               [48]  550 	div	ab
      000104 E5 F0            [12]  551 	mov	a,b
      000106 4E               [12]  552 	orl	a,r6
      000107 F5 A0            [12]  553 	mov	_P2,a
                                    554 ;	main.c:53: P0 = ((my_guess / 10) << 4) | (my_guess % 10);
      000109 AF 0A            [24]  555 	mov	r7,_my_guess
      00010B 8F 06            [24]  556 	mov	ar6,r7
      00010D 75 F0 0A         [24]  557 	mov	b,#0x0a
      000110 EE               [12]  558 	mov	a,r6
      000111 84               [48]  559 	div	ab
      000112 C4               [12]  560 	swap	a
      000113 54 F0            [12]  561 	anl	a,#0xf0
      000115 FE               [12]  562 	mov	r6,a
      000116 75 F0 0A         [24]  563 	mov	b,#0x0a
      000119 EF               [12]  564 	mov	a,r7
      00011A 84               [48]  565 	div	ab
      00011B E5 F0            [12]  566 	mov	a,b
      00011D 4E               [12]  567 	orl	a,r6
      00011E F5 80            [12]  568 	mov	_P0,a
                                    569 ;	main.c:54: }
      000120 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'Timer0_ISR'
                                    573 ;------------------------------------------------------------
                                    574 ;	main.c:57: void Timer0_ISR(void) __interrupt (1)
                                    575 ;	-----------------------------------------
                                    576 ;	 function Timer0_ISR
                                    577 ;	-----------------------------------------
      000121                        578 _Timer0_ISR:
      000121 C0 E0            [24]  579 	push	acc
      000123 C0 F0            [24]  580 	push	b
      000125 C0 07            [24]  581 	push	ar7
      000127 C0 06            [24]  582 	push	ar6
      000129 C0 D0            [24]  583 	push	psw
      00012B 75 D0 00         [24]  584 	mov	psw,#0x00
                                    585 ;	main.c:59: TH0 = 0x3C; // 重装初值
      00012E 75 8C 3C         [24]  586 	mov	_TH0,#0x3c
                                    587 ;	main.c:60: TL0 = 0xB0;
      000131 75 8A B0         [24]  588 	mov	_TL0,#0xb0
                                    589 ;	main.c:61: if (game_running)
      000134 30 00 30         [24]  590 	jnb	_game_running,00111$
                                    591 ;	main.c:63: ms_tick++;
      000137 05 0B            [12]  592 	inc	_ms_tick
                                    593 ;	main.c:64: if (ms_tick >= 40)
      000139 74 D8            [12]  594 	mov	a,#0x100 - 0x28
      00013B 25 0B            [12]  595 	add	a,_ms_tick
      00013D 50 44            [24]  596 	jnc	00113$
                                    597 ;	main.c:66: ms_tick = 0;
      00013F 75 0B 00         [24]  598 	mov	_ms_tick,#0x00
                                    599 ;	main.c:68: if (timer > 0)
      000142 E5 08            [12]  600 	mov	a,_timer
      000144 60 1B            [24]  601 	jz	00102$
                                    602 ;	main.c:70: timer--;
      000146 15 08            [12]  603 	dec	_timer
                                    604 ;	main.c:71: P2 = ((timer / 10) << 4) | (timer % 10);
      000148 AF 08            [24]  605 	mov	r7,_timer
      00014A 8F 06            [24]  606 	mov	ar6,r7
      00014C 75 F0 0A         [24]  607 	mov	b,#0x0a
      00014F EE               [12]  608 	mov	a,r6
      000150 84               [48]  609 	div	ab
      000151 C4               [12]  610 	swap	a
      000152 54 F0            [12]  611 	anl	a,#0xf0
      000154 FE               [12]  612 	mov	r6,a
      000155 75 F0 0A         [24]  613 	mov	b,#0x0a
      000158 EF               [12]  614 	mov	a,r7
      000159 84               [48]  615 	div	ab
      00015A E5 F0            [12]  616 	mov	a,b
      00015C 4E               [12]  617 	orl	a,r6
      00015D F5 A0            [12]  618 	mov	_P2,a
      00015F 80 22            [24]  619 	sjmp	00113$
      000161                        620 00102$:
                                    621 ;	main.c:75: game_running = 0; 
                                    622 ;	assignBit
      000161 C2 00            [12]  623 	clr	_game_running
                                    624 ;	main.c:76: TR0 = 0; // 时间到，游戏结束
                                    625 ;	assignBit
      000163 C2 8C            [12]  626 	clr	_TR0
      000165 80 1C            [24]  627 	sjmp	00113$
      000167                        628 00111$:
                                    629 ;	main.c:80: else if (timer == 0)
      000167 E5 08            [12]  630 	mov	a,_timer
      000169 70 18            [24]  631 	jnz	00113$
                                    632 ;	main.c:83: ms_tick++;
      00016B 05 0B            [12]  633 	inc	_ms_tick
                                    634 ;	main.c:84: if (ms_tick >= 10)
      00016D 74 F6            [12]  635 	mov	a,#0x100 - 0x0a
      00016F 25 0B            [12]  636 	add	a,_ms_tick
      000171 50 10            [24]  637 	jnc	00113$
                                    638 ;	main.c:86: ms_tick = 0;
      000173 75 0B 00         [24]  639 	mov	_ms_tick,#0x00
                                    640 ;	main.c:87: flash_state = !flash_state;
      000176 B2 01            [12]  641 	cpl	_flash_state
                                    642 ;	main.c:88: P1 = flash_state ? FAIL_1 : FAIL_2;
      000178 30 01 04         [24]  643 	jnb	_flash_state,00115$
      00017B 7F 36            [12]  644 	mov	r7,#0x36
      00017D 80 02            [24]  645 	sjmp	00116$
      00017F                        646 00115$:
      00017F 7F 43            [12]  647 	mov	r7,#0x43
      000181                        648 00116$:
      000181 8F 90            [24]  649 	mov	_P1,r7
      000183                        650 00113$:
                                    651 ;	main.c:91: }
      000183 D0 D0            [24]  652 	pop	psw
      000185 D0 06            [24]  653 	pop	ar6
      000187 D0 07            [24]  654 	pop	ar7
      000189 D0 F0            [24]  655 	pop	b
      00018B D0 E0            [24]  656 	pop	acc
      00018D 32               [24]  657 	reti
                                    658 ;	eliminated unneeded push/pop dpl
                                    659 ;	eliminated unneeded push/pop dph
                                    660 ;------------------------------------------------------------
                                    661 ;Allocation info for local variables in function 'led_init'
                                    662 ;------------------------------------------------------------
                                    663 ;	main.c:93: void led_init(void)
                                    664 ;	-----------------------------------------
                                    665 ;	 function led_init
                                    666 ;	-----------------------------------------
      00018E                        667 _led_init:
                                    668 ;	main.c:95: P3 = 0xAA;
      00018E 75 B0 AA         [24]  669 	mov	_P3,#0xaa
                                    670 ;	main.c:96: }
      000191 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'interrupt_start'
                                    674 ;------------------------------------------------------------
                                    675 ;	main.c:99: void interrupt_start(void) __interrupt (0)
                                    676 ;	-----------------------------------------
                                    677 ;	 function interrupt_start
                                    678 ;	-----------------------------------------
      000192                        679 _interrupt_start:
      000192 C0 E0            [24]  680 	push	acc
      000194 C0 D0            [24]  681 	push	psw
                                    682 ;	main.c:101: if (!game_running && timer == 60)
      000196 20 00 0B         [24]  683 	jb	_game_running,00110$
      000199 74 3C            [12]  684 	mov	a,#0x3c
      00019B B5 08 06         [24]  685 	cjne	a,_timer,00110$
                                    686 ;	main.c:103: game_running = 1;
                                    687 ;	assignBit
      00019E D2 00            [12]  688 	setb	_game_running
                                    689 ;	main.c:104: TR0 = 1; // 启动计时器
                                    690 ;	assignBit
      0001A0 D2 8C            [12]  691 	setb	_TR0
      0001A2 80 22            [24]  692 	sjmp	00113$
      0001A4                        693 00110$:
                                    694 ;	main.c:106: else if (game_running)
      0001A4 30 00 1F         [24]  695 	jnb	_game_running,00113$
                                    696 ;	main.c:109: if (my_guess > target_num)
      0001A7 C3               [12]  697 	clr	c
      0001A8 E5 09            [12]  698 	mov	a,_target_num
      0001AA 95 0A            [12]  699 	subb	a,_my_guess
      0001AC 50 05            [24]  700 	jnc	00105$
                                    701 ;	main.c:110: P1 = DISP_H;
      0001AE 75 90 09         [24]  702 	mov	_P1,#0x09
      0001B1 80 13            [24]  703 	sjmp	00113$
      0001B3                        704 00105$:
                                    705 ;	main.c:111: else if (my_guess < target_num)
      0001B3 C3               [12]  706 	clr	c
      0001B4 E5 0A            [12]  707 	mov	a,_my_guess
      0001B6 95 09            [12]  708 	subb	a,_target_num
      0001B8 50 05            [24]  709 	jnc	00102$
                                    710 ;	main.c:112: P1 = DISP_L;
      0001BA 75 90 47         [24]  711 	mov	_P1,#0x47
      0001BD 80 07            [24]  712 	sjmp	00113$
      0001BF                        713 00102$:
                                    714 ;	main.c:115: P1 = DISP_Y;
      0001BF 75 90 11         [24]  715 	mov	_P1,#0x11
                                    716 ;	main.c:116: game_running = 0; // 猜中，停止计时
                                    717 ;	assignBit
      0001C2 C2 00            [12]  718 	clr	_game_running
                                    719 ;	main.c:117: TR0 = 0;
                                    720 ;	assignBit
      0001C4 C2 8C            [12]  721 	clr	_TR0
      0001C6                        722 00113$:
                                    723 ;	main.c:120: }
      0001C6 D0 D0            [24]  724 	pop	psw
      0001C8 D0 E0            [24]  725 	pop	acc
      0001CA 32               [24]  726 	reti
                                    727 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    728 ;	eliminated unneeded push/pop dpl
                                    729 ;	eliminated unneeded push/pop dph
                                    730 ;	eliminated unneeded push/pop b
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'interrupt_modify'
                                    733 ;------------------------------------------------------------
                                    734 ;	main.c:122: void interrupt_modify(void) __interrupt (2)
                                    735 ;	-----------------------------------------
                                    736 ;	 function interrupt_modify
                                    737 ;	-----------------------------------------
      0001CB                        738 _interrupt_modify:
      0001CB C0 21            [24]  739 	push	bits
      0001CD C0 E0            [24]  740 	push	acc
      0001CF C0 F0            [24]  741 	push	b
      0001D1 C0 82            [24]  742 	push	dpl
      0001D3 C0 83            [24]  743 	push	dph
      0001D5 C0 07            [24]  744 	push	(0+7)
      0001D7 C0 06            [24]  745 	push	(0+6)
      0001D9 C0 05            [24]  746 	push	(0+5)
      0001DB C0 04            [24]  747 	push	(0+4)
      0001DD C0 03            [24]  748 	push	(0+3)
      0001DF C0 02            [24]  749 	push	(0+2)
      0001E1 C0 01            [24]  750 	push	(0+1)
      0001E3 C0 00            [24]  751 	push	(0+0)
      0001E5 C0 D0            [24]  752 	push	psw
      0001E7 75 D0 00         [24]  753 	mov	psw,#0x00
                                    754 ;	main.c:124: if (game_running)
      0001EA 30 00 06         [24]  755 	jnb	_game_running,00103$
                                    756 ;	main.c:127: my_guess = P0; // 直接读取P0的输入值作为猜测
      0001ED 85 80 0A         [24]  757 	mov	_my_guess,_P0
                                    758 ;	main.c:128: update_display(); // 更新显示
      0001F0 12 00 F2         [24]  759 	lcall	_update_display
      0001F3                        760 00103$:
                                    761 ;	main.c:130: }
      0001F3 D0 D0            [24]  762 	pop	psw
      0001F5 D0 00            [24]  763 	pop	(0+0)
      0001F7 D0 01            [24]  764 	pop	(0+1)
      0001F9 D0 02            [24]  765 	pop	(0+2)
      0001FB D0 03            [24]  766 	pop	(0+3)
      0001FD D0 04            [24]  767 	pop	(0+4)
      0001FF D0 05            [24]  768 	pop	(0+5)
      000201 D0 06            [24]  769 	pop	(0+6)
      000203 D0 07            [24]  770 	pop	(0+7)
      000205 D0 83            [24]  771 	pop	dph
      000207 D0 82            [24]  772 	pop	dpl
      000209 D0 F0            [24]  773 	pop	b
      00020B D0 E0            [24]  774 	pop	acc
      00020D D0 21            [24]  775 	pop	bits
      00020F 32               [24]  776 	reti
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'main'
                                    779 ;------------------------------------------------------------
                                    780 ;	main.c:133: void main()
                                    781 ;	-----------------------------------------
                                    782 ;	 function main
                                    783 ;	-----------------------------------------
      000210                        784 _main:
                                    785 ;	main.c:135: System_Init();
      000210 12 00 C8         [24]  786 	lcall	_System_Init
                                    787 ;	main.c:136: update_display(); // 显示初始 60 00
      000213 12 00 F2         [24]  788 	lcall	_update_display
                                    789 ;	main.c:137: led_init();       // 初始化LED显示
      000216 12 01 8E         [24]  790 	lcall	_led_init
                                    791 ;	main.c:139: while (1)
      000219                        792 00102$:
                                    793 ;	main.c:142: }
      000219 80 FE            [24]  794 	sjmp	00102$
                                    795 	.area CSEG    (CODE)
                                    796 	.area CONST   (CODE)
                                    797 	.area XINIT   (CODE)
                                    798 	.area CABS    (ABS,CODE)
