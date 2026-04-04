                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Mar 13 17:00:20 2026
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _seg_table
                             13 	.globl _main
                             14 	.globl _key_scan
                             15 	.globl _timer0_ISR
                             16 	.globl _display
                             17 	.globl _timer0_init
                             18 	.globl _delay
                             19 	.globl _CY
                             20 	.globl _AC
                             21 	.globl _F0
                             22 	.globl _RS1
                             23 	.globl _RS0
                             24 	.globl _OV
                             25 	.globl _FL
                             26 	.globl _P
                             27 	.globl _TF2
                             28 	.globl _EXF2
                             29 	.globl _RCLK
                             30 	.globl _TCLK
                             31 	.globl _EXEN2
                             32 	.globl _TR2
                             33 	.globl _C_T2
                             34 	.globl _CP_RL2
                             35 	.globl _T2CON_7
                             36 	.globl _T2CON_6
                             37 	.globl _T2CON_5
                             38 	.globl _T2CON_4
                             39 	.globl _T2CON_3
                             40 	.globl _T2CON_2
                             41 	.globl _T2CON_1
                             42 	.globl _T2CON_0
                             43 	.globl _PT2
                             44 	.globl _PS
                             45 	.globl _PT1
                             46 	.globl _PX1
                             47 	.globl _PT0
                             48 	.globl _PX0
                             49 	.globl _RD
                             50 	.globl _WR
                             51 	.globl _T1
                             52 	.globl _T0
                             53 	.globl _INT1
                             54 	.globl _INT0
                             55 	.globl _TXD
                             56 	.globl _RXD
                             57 	.globl _P3_7
                             58 	.globl _P3_6
                             59 	.globl _P3_5
                             60 	.globl _P3_4
                             61 	.globl _P3_3
                             62 	.globl _P3_2
                             63 	.globl _P3_1
                             64 	.globl _P3_0
                             65 	.globl _EA
                             66 	.globl _ET2
                             67 	.globl _ES
                             68 	.globl _ET1
                             69 	.globl _EX1
                             70 	.globl _ET0
                             71 	.globl _EX0
                             72 	.globl _P2_7
                             73 	.globl _P2_6
                             74 	.globl _P2_5
                             75 	.globl _P2_4
                             76 	.globl _P2_3
                             77 	.globl _P2_2
                             78 	.globl _P2_1
                             79 	.globl _P2_0
                             80 	.globl _SM0
                             81 	.globl _SM1
                             82 	.globl _SM2
                             83 	.globl _REN
                             84 	.globl _TB8
                             85 	.globl _RB8
                             86 	.globl _TI
                             87 	.globl _RI
                             88 	.globl _T2EX
                             89 	.globl _T2
                             90 	.globl _P1_7
                             91 	.globl _P1_6
                             92 	.globl _P1_5
                             93 	.globl _P1_4
                             94 	.globl _P1_3
                             95 	.globl _P1_2
                             96 	.globl _P1_1
                             97 	.globl _P1_0
                             98 	.globl _TF1
                             99 	.globl _TR1
                            100 	.globl _TF0
                            101 	.globl _TR0
                            102 	.globl _IE1
                            103 	.globl _IT1
                            104 	.globl _IE0
                            105 	.globl _IT0
                            106 	.globl _P0_7
                            107 	.globl _P0_6
                            108 	.globl _P0_5
                            109 	.globl _P0_4
                            110 	.globl _P0_3
                            111 	.globl _P0_2
                            112 	.globl _P0_1
                            113 	.globl _P0_0
                            114 	.globl _B
                            115 	.globl _A
                            116 	.globl _ACC
                            117 	.globl _PSW
                            118 	.globl _TH2
                            119 	.globl _TL2
                            120 	.globl _RCAP2H
                            121 	.globl _RCAP2L
                            122 	.globl _T2MOD
                            123 	.globl _T2CON
                            124 	.globl _IP
                            125 	.globl _P3
                            126 	.globl _IE
                            127 	.globl _P2
                            128 	.globl _SBUF
                            129 	.globl _SCON
                            130 	.globl _P1
                            131 	.globl _TH1
                            132 	.globl _TH0
                            133 	.globl _TL1
                            134 	.globl _TL0
                            135 	.globl _TMOD
                            136 	.globl _TCON
                            137 	.globl _PCON
                            138 	.globl _DPH
                            139 	.globl _DPL
                            140 	.globl _SP
                            141 	.globl _P0
                            142 	.globl _running
                            143 	.globl _ms_count
                            144 	.globl _second
                            145 	.globl _minute
                            146 ;--------------------------------------------------------
                            147 ; special function registers
                            148 ;--------------------------------------------------------
                            149 	.area RSEG    (ABS,DATA)
   0000                     150 	.org 0x0000
                    0080    151 G$P0$0$0 == 0x0080
                    0080    152 _P0	=	0x0080
                    0081    153 G$SP$0$0 == 0x0081
                    0081    154 _SP	=	0x0081
                    0082    155 G$DPL$0$0 == 0x0082
                    0082    156 _DPL	=	0x0082
                    0083    157 G$DPH$0$0 == 0x0083
                    0083    158 _DPH	=	0x0083
                    0087    159 G$PCON$0$0 == 0x0087
                    0087    160 _PCON	=	0x0087
                    0088    161 G$TCON$0$0 == 0x0088
                    0088    162 _TCON	=	0x0088
                    0089    163 G$TMOD$0$0 == 0x0089
                    0089    164 _TMOD	=	0x0089
                    008A    165 G$TL0$0$0 == 0x008a
                    008A    166 _TL0	=	0x008a
                    008B    167 G$TL1$0$0 == 0x008b
                    008B    168 _TL1	=	0x008b
                    008C    169 G$TH0$0$0 == 0x008c
                    008C    170 _TH0	=	0x008c
                    008D    171 G$TH1$0$0 == 0x008d
                    008D    172 _TH1	=	0x008d
                    0090    173 G$P1$0$0 == 0x0090
                    0090    174 _P1	=	0x0090
                    0098    175 G$SCON$0$0 == 0x0098
                    0098    176 _SCON	=	0x0098
                    0099    177 G$SBUF$0$0 == 0x0099
                    0099    178 _SBUF	=	0x0099
                    00A0    179 G$P2$0$0 == 0x00a0
                    00A0    180 _P2	=	0x00a0
                    00A8    181 G$IE$0$0 == 0x00a8
                    00A8    182 _IE	=	0x00a8
                    00B0    183 G$P3$0$0 == 0x00b0
                    00B0    184 _P3	=	0x00b0
                    00B8    185 G$IP$0$0 == 0x00b8
                    00B8    186 _IP	=	0x00b8
                    00C8    187 G$T2CON$0$0 == 0x00c8
                    00C8    188 _T2CON	=	0x00c8
                    00C9    189 G$T2MOD$0$0 == 0x00c9
                    00C9    190 _T2MOD	=	0x00c9
                    00CA    191 G$RCAP2L$0$0 == 0x00ca
                    00CA    192 _RCAP2L	=	0x00ca
                    00CB    193 G$RCAP2H$0$0 == 0x00cb
                    00CB    194 _RCAP2H	=	0x00cb
                    00CC    195 G$TL2$0$0 == 0x00cc
                    00CC    196 _TL2	=	0x00cc
                    00CD    197 G$TH2$0$0 == 0x00cd
                    00CD    198 _TH2	=	0x00cd
                    00D0    199 G$PSW$0$0 == 0x00d0
                    00D0    200 _PSW	=	0x00d0
                    00E0    201 G$ACC$0$0 == 0x00e0
                    00E0    202 _ACC	=	0x00e0
                    00E0    203 G$A$0$0 == 0x00e0
                    00E0    204 _A	=	0x00e0
                    00F0    205 G$B$0$0 == 0x00f0
                    00F0    206 _B	=	0x00f0
                            207 ;--------------------------------------------------------
                            208 ; special function bits
                            209 ;--------------------------------------------------------
                            210 	.area RSEG    (ABS,DATA)
   0000                     211 	.org 0x0000
                    0080    212 G$P0_0$0$0 == 0x0080
                    0080    213 _P0_0	=	0x0080
                    0081    214 G$P0_1$0$0 == 0x0081
                    0081    215 _P0_1	=	0x0081
                    0082    216 G$P0_2$0$0 == 0x0082
                    0082    217 _P0_2	=	0x0082
                    0083    218 G$P0_3$0$0 == 0x0083
                    0083    219 _P0_3	=	0x0083
                    0084    220 G$P0_4$0$0 == 0x0084
                    0084    221 _P0_4	=	0x0084
                    0085    222 G$P0_5$0$0 == 0x0085
                    0085    223 _P0_5	=	0x0085
                    0086    224 G$P0_6$0$0 == 0x0086
                    0086    225 _P0_6	=	0x0086
                    0087    226 G$P0_7$0$0 == 0x0087
                    0087    227 _P0_7	=	0x0087
                    0088    228 G$IT0$0$0 == 0x0088
                    0088    229 _IT0	=	0x0088
                    0089    230 G$IE0$0$0 == 0x0089
                    0089    231 _IE0	=	0x0089
                    008A    232 G$IT1$0$0 == 0x008a
                    008A    233 _IT1	=	0x008a
                    008B    234 G$IE1$0$0 == 0x008b
                    008B    235 _IE1	=	0x008b
                    008C    236 G$TR0$0$0 == 0x008c
                    008C    237 _TR0	=	0x008c
                    008D    238 G$TF0$0$0 == 0x008d
                    008D    239 _TF0	=	0x008d
                    008E    240 G$TR1$0$0 == 0x008e
                    008E    241 _TR1	=	0x008e
                    008F    242 G$TF1$0$0 == 0x008f
                    008F    243 _TF1	=	0x008f
                    0090    244 G$P1_0$0$0 == 0x0090
                    0090    245 _P1_0	=	0x0090
                    0091    246 G$P1_1$0$0 == 0x0091
                    0091    247 _P1_1	=	0x0091
                    0092    248 G$P1_2$0$0 == 0x0092
                    0092    249 _P1_2	=	0x0092
                    0093    250 G$P1_3$0$0 == 0x0093
                    0093    251 _P1_3	=	0x0093
                    0094    252 G$P1_4$0$0 == 0x0094
                    0094    253 _P1_4	=	0x0094
                    0095    254 G$P1_5$0$0 == 0x0095
                    0095    255 _P1_5	=	0x0095
                    0096    256 G$P1_6$0$0 == 0x0096
                    0096    257 _P1_6	=	0x0096
                    0097    258 G$P1_7$0$0 == 0x0097
                    0097    259 _P1_7	=	0x0097
                    0090    260 G$T2$0$0 == 0x0090
                    0090    261 _T2	=	0x0090
                    0091    262 G$T2EX$0$0 == 0x0091
                    0091    263 _T2EX	=	0x0091
                    0098    264 G$RI$0$0 == 0x0098
                    0098    265 _RI	=	0x0098
                    0099    266 G$TI$0$0 == 0x0099
                    0099    267 _TI	=	0x0099
                    009A    268 G$RB8$0$0 == 0x009a
                    009A    269 _RB8	=	0x009a
                    009B    270 G$TB8$0$0 == 0x009b
                    009B    271 _TB8	=	0x009b
                    009C    272 G$REN$0$0 == 0x009c
                    009C    273 _REN	=	0x009c
                    009D    274 G$SM2$0$0 == 0x009d
                    009D    275 _SM2	=	0x009d
                    009E    276 G$SM1$0$0 == 0x009e
                    009E    277 _SM1	=	0x009e
                    009F    278 G$SM0$0$0 == 0x009f
                    009F    279 _SM0	=	0x009f
                    00A0    280 G$P2_0$0$0 == 0x00a0
                    00A0    281 _P2_0	=	0x00a0
                    00A1    282 G$P2_1$0$0 == 0x00a1
                    00A1    283 _P2_1	=	0x00a1
                    00A2    284 G$P2_2$0$0 == 0x00a2
                    00A2    285 _P2_2	=	0x00a2
                    00A3    286 G$P2_3$0$0 == 0x00a3
                    00A3    287 _P2_3	=	0x00a3
                    00A4    288 G$P2_4$0$0 == 0x00a4
                    00A4    289 _P2_4	=	0x00a4
                    00A5    290 G$P2_5$0$0 == 0x00a5
                    00A5    291 _P2_5	=	0x00a5
                    00A6    292 G$P2_6$0$0 == 0x00a6
                    00A6    293 _P2_6	=	0x00a6
                    00A7    294 G$P2_7$0$0 == 0x00a7
                    00A7    295 _P2_7	=	0x00a7
                    00A8    296 G$EX0$0$0 == 0x00a8
                    00A8    297 _EX0	=	0x00a8
                    00A9    298 G$ET0$0$0 == 0x00a9
                    00A9    299 _ET0	=	0x00a9
                    00AA    300 G$EX1$0$0 == 0x00aa
                    00AA    301 _EX1	=	0x00aa
                    00AB    302 G$ET1$0$0 == 0x00ab
                    00AB    303 _ET1	=	0x00ab
                    00AC    304 G$ES$0$0 == 0x00ac
                    00AC    305 _ES	=	0x00ac
                    00AD    306 G$ET2$0$0 == 0x00ad
                    00AD    307 _ET2	=	0x00ad
                    00AF    308 G$EA$0$0 == 0x00af
                    00AF    309 _EA	=	0x00af
                    00B0    310 G$P3_0$0$0 == 0x00b0
                    00B0    311 _P3_0	=	0x00b0
                    00B1    312 G$P3_1$0$0 == 0x00b1
                    00B1    313 _P3_1	=	0x00b1
                    00B2    314 G$P3_2$0$0 == 0x00b2
                    00B2    315 _P3_2	=	0x00b2
                    00B3    316 G$P3_3$0$0 == 0x00b3
                    00B3    317 _P3_3	=	0x00b3
                    00B4    318 G$P3_4$0$0 == 0x00b4
                    00B4    319 _P3_4	=	0x00b4
                    00B5    320 G$P3_5$0$0 == 0x00b5
                    00B5    321 _P3_5	=	0x00b5
                    00B6    322 G$P3_6$0$0 == 0x00b6
                    00B6    323 _P3_6	=	0x00b6
                    00B7    324 G$P3_7$0$0 == 0x00b7
                    00B7    325 _P3_7	=	0x00b7
                    00B0    326 G$RXD$0$0 == 0x00b0
                    00B0    327 _RXD	=	0x00b0
                    00B1    328 G$TXD$0$0 == 0x00b1
                    00B1    329 _TXD	=	0x00b1
                    00B2    330 G$INT0$0$0 == 0x00b2
                    00B2    331 _INT0	=	0x00b2
                    00B3    332 G$INT1$0$0 == 0x00b3
                    00B3    333 _INT1	=	0x00b3
                    00B4    334 G$T0$0$0 == 0x00b4
                    00B4    335 _T0	=	0x00b4
                    00B5    336 G$T1$0$0 == 0x00b5
                    00B5    337 _T1	=	0x00b5
                    00B6    338 G$WR$0$0 == 0x00b6
                    00B6    339 _WR	=	0x00b6
                    00B7    340 G$RD$0$0 == 0x00b7
                    00B7    341 _RD	=	0x00b7
                    00B8    342 G$PX0$0$0 == 0x00b8
                    00B8    343 _PX0	=	0x00b8
                    00B9    344 G$PT0$0$0 == 0x00b9
                    00B9    345 _PT0	=	0x00b9
                    00BA    346 G$PX1$0$0 == 0x00ba
                    00BA    347 _PX1	=	0x00ba
                    00BB    348 G$PT1$0$0 == 0x00bb
                    00BB    349 _PT1	=	0x00bb
                    00BC    350 G$PS$0$0 == 0x00bc
                    00BC    351 _PS	=	0x00bc
                    00BD    352 G$PT2$0$0 == 0x00bd
                    00BD    353 _PT2	=	0x00bd
                    00C8    354 G$T2CON_0$0$0 == 0x00c8
                    00C8    355 _T2CON_0	=	0x00c8
                    00C9    356 G$T2CON_1$0$0 == 0x00c9
                    00C9    357 _T2CON_1	=	0x00c9
                    00CA    358 G$T2CON_2$0$0 == 0x00ca
                    00CA    359 _T2CON_2	=	0x00ca
                    00CB    360 G$T2CON_3$0$0 == 0x00cb
                    00CB    361 _T2CON_3	=	0x00cb
                    00CC    362 G$T2CON_4$0$0 == 0x00cc
                    00CC    363 _T2CON_4	=	0x00cc
                    00CD    364 G$T2CON_5$0$0 == 0x00cd
                    00CD    365 _T2CON_5	=	0x00cd
                    00CE    366 G$T2CON_6$0$0 == 0x00ce
                    00CE    367 _T2CON_6	=	0x00ce
                    00CF    368 G$T2CON_7$0$0 == 0x00cf
                    00CF    369 _T2CON_7	=	0x00cf
                    00C8    370 G$CP_RL2$0$0 == 0x00c8
                    00C8    371 _CP_RL2	=	0x00c8
                    00C9    372 G$C_T2$0$0 == 0x00c9
                    00C9    373 _C_T2	=	0x00c9
                    00CA    374 G$TR2$0$0 == 0x00ca
                    00CA    375 _TR2	=	0x00ca
                    00CB    376 G$EXEN2$0$0 == 0x00cb
                    00CB    377 _EXEN2	=	0x00cb
                    00CC    378 G$TCLK$0$0 == 0x00cc
                    00CC    379 _TCLK	=	0x00cc
                    00CD    380 G$RCLK$0$0 == 0x00cd
                    00CD    381 _RCLK	=	0x00cd
                    00CE    382 G$EXF2$0$0 == 0x00ce
                    00CE    383 _EXF2	=	0x00ce
                    00CF    384 G$TF2$0$0 == 0x00cf
                    00CF    385 _TF2	=	0x00cf
                    00D0    386 G$P$0$0 == 0x00d0
                    00D0    387 _P	=	0x00d0
                    00D1    388 G$FL$0$0 == 0x00d1
                    00D1    389 _FL	=	0x00d1
                    00D2    390 G$OV$0$0 == 0x00d2
                    00D2    391 _OV	=	0x00d2
                    00D3    392 G$RS0$0$0 == 0x00d3
                    00D3    393 _RS0	=	0x00d3
                    00D4    394 G$RS1$0$0 == 0x00d4
                    00D4    395 _RS1	=	0x00d4
                    00D5    396 G$F0$0$0 == 0x00d5
                    00D5    397 _F0	=	0x00d5
                    00D6    398 G$AC$0$0 == 0x00d6
                    00D6    399 _AC	=	0x00d6
                    00D7    400 G$CY$0$0 == 0x00d7
                    00D7    401 _CY	=	0x00d7
                            402 ;--------------------------------------------------------
                            403 ; overlayable register banks
                            404 ;--------------------------------------------------------
                            405 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     406 	.ds 8
                            407 ;--------------------------------------------------------
                            408 ; internal ram data
                            409 ;--------------------------------------------------------
                            410 	.area DSEG    (DATA)
                    0000    411 G$minute$0$0==.
   0008                     412 _minute::
   0008                     413 	.ds 1
                    0001    414 G$second$0$0==.
   0009                     415 _second::
   0009                     416 	.ds 1
                    0002    417 G$ms_count$0$0==.
   000A                     418 _ms_count::
   000A                     419 	.ds 2
                            420 ;--------------------------------------------------------
                            421 ; overlayable items in internal ram 
                            422 ;--------------------------------------------------------
                            423 	.area OSEG    (OVR,DATA)
                            424 ;--------------------------------------------------------
                            425 ; Stack segment in internal ram 
                            426 ;--------------------------------------------------------
                            427 	.area	SSEG	(DATA)
   0021                     428 __start__stack:
   0021                     429 	.ds	1
                            430 
                            431 ;--------------------------------------------------------
                            432 ; indirectly addressable internal ram data
                            433 ;--------------------------------------------------------
                            434 	.area ISEG    (DATA)
                            435 ;--------------------------------------------------------
                            436 ; absolute internal ram data
                            437 ;--------------------------------------------------------
                            438 	.area IABS    (ABS,DATA)
                            439 	.area IABS    (ABS,DATA)
                            440 ;--------------------------------------------------------
                            441 ; bit data
                            442 ;--------------------------------------------------------
                            443 	.area BSEG    (BIT)
                    0000    444 G$running$0$0==.
   0000                     445 _running::
   0000                     446 	.ds 1
                            447 ;--------------------------------------------------------
                            448 ; paged external ram data
                            449 ;--------------------------------------------------------
                            450 	.area PSEG    (PAG,XDATA)
                            451 ;--------------------------------------------------------
                            452 ; external ram data
                            453 ;--------------------------------------------------------
                            454 	.area XSEG    (XDATA)
                            455 ;--------------------------------------------------------
                            456 ; absolute external ram data
                            457 ;--------------------------------------------------------
                            458 	.area XABS    (ABS,XDATA)
                            459 ;--------------------------------------------------------
                            460 ; external initialized ram data
                            461 ;--------------------------------------------------------
                            462 	.area XISEG   (XDATA)
                            463 	.area HOME    (CODE)
                            464 	.area GSINIT0 (CODE)
                            465 	.area GSINIT1 (CODE)
                            466 	.area GSINIT2 (CODE)
                            467 	.area GSINIT3 (CODE)
                            468 	.area GSINIT4 (CODE)
                            469 	.area GSINIT5 (CODE)
                            470 	.area GSINIT  (CODE)
                            471 	.area GSFINAL (CODE)
                            472 	.area CSEG    (CODE)
                            473 ;--------------------------------------------------------
                            474 ; interrupt vector 
                            475 ;--------------------------------------------------------
                            476 	.area HOME    (CODE)
   0000                     477 __interrupt_vect:
   0000 02 00 13            478 	ljmp	__sdcc_gsinit_startup
   0003 32                  479 	reti
   0004                     480 	.ds	7
   000B 02 00 EB            481 	ljmp	_timer0_ISR
                            482 ;--------------------------------------------------------
                            483 ; global & static initialisations
                            484 ;--------------------------------------------------------
                            485 	.area HOME    (CODE)
                            486 	.area GSINIT  (CODE)
                            487 	.area GSFINAL (CODE)
                            488 	.area GSINIT  (CODE)
                            489 	.globl __sdcc_gsinit_startup
                            490 	.globl __sdcc_program_startup
                            491 	.globl __start__stack
                            492 	.globl __mcs51_genXINIT
                            493 	.globl __mcs51_genXRAMCLEAR
                            494 	.globl __mcs51_genRAMCLEAR
                    0000    495 	G$main$0$0 ==.
                    0000    496 	C$main.c$16$1$1 ==.
                            497 ;	main.c:16: uchar minute = 0;
   006C 75 08 00            498 	mov	_minute,#0x00
                    0003    499 	G$main$0$0 ==.
                    0003    500 	C$main.c$17$1$1 ==.
                            501 ;	main.c:17: uchar second = 0;
   006F 75 09 00            502 	mov	_second,#0x00
                    0006    503 	G$main$0$0 ==.
                    0006    504 	C$main.c$19$1$1 ==.
                            505 ;	main.c:19: uint ms_count = 0;
   0072 E4                  506 	clr	a
   0073 F5 0A               507 	mov	_ms_count,a
   0075 F5 0B               508 	mov	(_ms_count + 1),a
                    000B    509 	G$main$0$0 ==.
                    000B    510 	C$main.c$20$1$1 ==.
                            511 ;	main.c:20: __bit running = 0;
   0077 C2 00               512 	clr	_running
                            513 	.area GSFINAL (CODE)
   0079 02 00 0E            514 	ljmp	__sdcc_program_startup
                            515 ;--------------------------------------------------------
                            516 ; Home
                            517 ;--------------------------------------------------------
                            518 	.area HOME    (CODE)
                            519 	.area HOME    (CODE)
   000E                     520 __sdcc_program_startup:
   000E 12 01 60            521 	lcall	_main
                            522 ;	return from main will lock up
   0011 80 FE               523 	sjmp .
                            524 ;--------------------------------------------------------
                            525 ; code
                            526 ;--------------------------------------------------------
                            527 	.area CSEG    (CODE)
                            528 ;------------------------------------------------------------
                            529 ;Allocation info for local variables in function 'delay'
                            530 ;------------------------------------------------------------
                            531 ;t                         Allocated to registers r2 r3 
                            532 ;i                         Allocated to registers r4 r5 
                            533 ;j                         Allocated to registers r6 r7 
                            534 ;------------------------------------------------------------
                    0000    535 	G$delay$0$0 ==.
                    0000    536 	C$main.c$22$0$0 ==.
                            537 ;	main.c:22: void delay(uint t)
                            538 ;	-----------------------------------------
                            539 ;	 function delay
                            540 ;	-----------------------------------------
   007C                     541 _delay:
                    0002    542 	ar2 = 0x02
                    0003    543 	ar3 = 0x03
                    0004    544 	ar4 = 0x04
                    0005    545 	ar5 = 0x05
                    0006    546 	ar6 = 0x06
                    0007    547 	ar7 = 0x07
                    0000    548 	ar0 = 0x00
                    0001    549 	ar1 = 0x01
   007C AA 82               550 	mov	r2,dpl
   007E AB 83               551 	mov	r3,dph
                    0004    552 	C$main.c$25$1$1 ==.
                            553 ;	main.c:25: for(i=0;i<t;i++)
   0080 7C 00               554 	mov	r4,#0x00
   0082 7D 00               555 	mov	r5,#0x00
   0084                     556 00104$:
   0084 C3                  557 	clr	c
   0085 EC                  558 	mov	a,r4
   0086 9A                  559 	subb	a,r2
   0087 ED                  560 	mov	a,r5
   0088 9B                  561 	subb	a,r3
   0089 50 14               562 	jnc	00108$
                    000F    563 	C$main.c$26$1$1 ==.
                            564 ;	main.c:26: for(j=0;j<240;j++);
   008B 7E F0               565 	mov	r6,#0xF0
   008D 7F 00               566 	mov	r7,#0x00
   008F                     567 00103$:
   008F 1E                  568 	dec	r6
   0090 BE FF 01            569 	cjne	r6,#0xff,00115$
   0093 1F                  570 	dec	r7
   0094                     571 00115$:
   0094 EE                  572 	mov	a,r6
   0095 4F                  573 	orl	a,r7
   0096 70 F7               574 	jnz	00103$
                    001C    575 	C$main.c$25$1$1 ==.
                            576 ;	main.c:25: for(i=0;i<t;i++)
   0098 0C                  577 	inc	r4
   0099 BC 00 E8            578 	cjne	r4,#0x00,00104$
   009C 0D                  579 	inc	r5
   009D 80 E5               580 	sjmp	00104$
   009F                     581 00108$:
                    0023    582 	C$main.c$27$1$1 ==.
                    0023    583 	XG$delay$0$0 ==.
   009F 22                  584 	ret
                            585 ;------------------------------------------------------------
                            586 ;Allocation info for local variables in function 'timer0_init'
                            587 ;------------------------------------------------------------
                            588 ;------------------------------------------------------------
                    0024    589 	G$timer0_init$0$0 ==.
                    0024    590 	C$main.c$29$1$1 ==.
                            591 ;	main.c:29: void timer0_init()
                            592 ;	-----------------------------------------
                            593 ;	 function timer0_init
                            594 ;	-----------------------------------------
   00A0                     595 _timer0_init:
                    0024    596 	C$main.c$31$1$1 ==.
                            597 ;	main.c:31: TMOD |= 0x01;
   00A0 43 89 01            598 	orl	_TMOD,#0x01
                    0027    599 	C$main.c$33$1$1 ==.
                            600 ;	main.c:33: TH0 = 0xF8;
   00A3 75 8C F8            601 	mov	_TH0,#0xF8
                    002A    602 	C$main.c$34$1$1 ==.
                            603 ;	main.c:34: TL0 = 0x30;
   00A6 75 8A 30            604 	mov	_TL0,#0x30
                    002D    605 	C$main.c$36$1$1 ==.
                            606 ;	main.c:36: ET0 = 1;
   00A9 D2 A9               607 	setb	_ET0
                    002F    608 	C$main.c$37$1$1 ==.
                            609 ;	main.c:37: EA  = 1;
   00AB D2 AF               610 	setb	_EA
                    0031    611 	C$main.c$38$1$1 ==.
                            612 ;	main.c:38: TR0 = 1;
   00AD D2 8C               613 	setb	_TR0
                    0033    614 	C$main.c$39$1$1 ==.
                    0033    615 	XG$timer0_init$0$0 ==.
   00AF 22                  616 	ret
                            617 ;------------------------------------------------------------
                            618 ;Allocation info for local variables in function 'display'
                            619 ;------------------------------------------------------------
                            620 ;m1                        Allocated to registers r2 
                            621 ;m2                        Allocated to registers r3 
                            622 ;s1                        Allocated to registers r4 
                            623 ;s2                        Allocated to registers r5 
                            624 ;------------------------------------------------------------
                    0034    625 	G$display$0$0 ==.
                    0034    626 	C$main.c$41$1$1 ==.
                            627 ;	main.c:41: void display()
                            628 ;	-----------------------------------------
                            629 ;	 function display
                            630 ;	-----------------------------------------
   00B0                     631 _display:
                    0034    632 	C$main.c$45$1$1 ==.
                            633 ;	main.c:45: m1 = minute/10;
   00B0 75 F0 0A            634 	mov	b,#0x0A
   00B3 E5 08               635 	mov	a,_minute
   00B5 84                  636 	div	ab
   00B6 FA                  637 	mov	r2,a
                    003B    638 	C$main.c$46$1$1 ==.
                            639 ;	main.c:46: m2 = minute%10;
   00B7 75 F0 0A            640 	mov	b,#0x0A
   00BA E5 08               641 	mov	a,_minute
   00BC 84                  642 	div	ab
   00BD AB F0               643 	mov	r3,b
                    0043    644 	C$main.c$47$1$1 ==.
                            645 ;	main.c:47: s1 = second/10;
   00BF 75 F0 0A            646 	mov	b,#0x0A
   00C2 E5 09               647 	mov	a,_second
   00C4 84                  648 	div	ab
   00C5 FC                  649 	mov	r4,a
                    004A    650 	C$main.c$48$1$1 ==.
                            651 ;	main.c:48: s2 = second%10;
   00C6 75 F0 0A            652 	mov	b,#0x0A
   00C9 E5 09               653 	mov	a,_second
   00CB 84                  654 	div	ab
   00CC AD F0               655 	mov	r5,b
                    0052    656 	C$main.c$49$1$1 ==.
                            657 ;	main.c:49: P3 = seg_table[m1];
   00CE EA                  658 	mov	a,r2
   00CF 90 01 72            659 	mov	dptr,#_seg_table
   00D2 93                  660 	movc	a,@a+dptr
   00D3 F5 B0               661 	mov	_P3,a
                    0059    662 	C$main.c$50$1$1 ==.
                            663 ;	main.c:50: P2 = seg_table[m2];
   00D5 EB                  664 	mov	a,r3
   00D6 90 01 72            665 	mov	dptr,#_seg_table
   00D9 93                  666 	movc	a,@a+dptr
   00DA F5 A0               667 	mov	_P2,a
                    0060    668 	C$main.c$51$1$1 ==.
                            669 ;	main.c:51: P1 = seg_table[s1];
   00DC EC                  670 	mov	a,r4
   00DD 90 01 72            671 	mov	dptr,#_seg_table
   00E0 93                  672 	movc	a,@a+dptr
   00E1 F5 90               673 	mov	_P1,a
                    0067    674 	C$main.c$52$1$1 ==.
                            675 ;	main.c:52: P0 = seg_table[s2];
   00E3 ED                  676 	mov	a,r5
   00E4 90 01 72            677 	mov	dptr,#_seg_table
   00E7 93                  678 	movc	a,@a+dptr
   00E8 F5 80               679 	mov	_P0,a
                    006E    680 	C$main.c$53$1$1 ==.
                    006E    681 	XG$display$0$0 ==.
   00EA 22                  682 	ret
                            683 ;------------------------------------------------------------
                            684 ;Allocation info for local variables in function 'timer0_ISR'
                            685 ;------------------------------------------------------------
                            686 ;------------------------------------------------------------
                    006F    687 	G$timer0_ISR$0$0 ==.
                    006F    688 	C$main.c$55$1$1 ==.
                            689 ;	main.c:55: void timer0_ISR(void) __interrupt(1)
                            690 ;	-----------------------------------------
                            691 ;	 function timer0_ISR
                            692 ;	-----------------------------------------
   00EB                     693 _timer0_ISR:
   00EB C0 E0               694 	push	acc
   00ED C0 D0               695 	push	psw
   00EF 75 D0 00            696 	mov	psw,#0x00
                    0076    697 	C$main.c$57$1$1 ==.
                            698 ;	main.c:57: TH0 = 0xF8;
   00F2 75 8C F8            699 	mov	_TH0,#0xF8
                    0079    700 	C$main.c$58$1$1 ==.
                            701 ;	main.c:58: TL0 = 0x30;
   00F5 75 8A 30            702 	mov	_TL0,#0x30
                    007C    703 	C$main.c$60$1$1 ==.
                            704 ;	main.c:60: if(running)
   00F8 30 00 2E            705 	jnb	_running,00109$
                    007F    706 	C$main.c$62$2$2 ==.
                            707 ;	main.c:62: ms_count++;
   00FB 05 0A               708 	inc	_ms_count
   00FD E4                  709 	clr	a
   00FE B5 0A 02            710 	cjne	a,_ms_count,00116$
   0101 05 0B               711 	inc	(_ms_count + 1)
   0103                     712 00116$:
                    0087    713 	C$main.c$64$2$2 ==.
                            714 ;	main.c:64: if(ms_count >= 1000)
   0103 C3                  715 	clr	c
   0104 E5 0A               716 	mov	a,_ms_count
   0106 94 E8               717 	subb	a,#0xE8
   0108 E5 0B               718 	mov	a,(_ms_count + 1)
   010A 94 03               719 	subb	a,#0x03
   010C 40 1B               720 	jc	00109$
                    0092    721 	C$main.c$66$3$3 ==.
                            722 ;	main.c:66: ms_count = 0;
   010E E4                  723 	clr	a
   010F F5 0A               724 	mov	_ms_count,a
   0111 F5 0B               725 	mov	(_ms_count + 1),a
                    0097    726 	C$main.c$67$3$3 ==.
                            727 ;	main.c:67: second++;
   0113 05 09               728 	inc	_second
                    0099    729 	C$main.c$69$3$3 ==.
                            730 ;	main.c:69: if(second >= 60)
   0115 74 C4               731 	mov	a,#0x100 - 0x3C
   0117 25 09               732 	add	a,_second
   0119 50 0E               733 	jnc	00109$
                    009F    734 	C$main.c$71$4$4 ==.
                            735 ;	main.c:71: second = 0;
   011B 75 09 00            736 	mov	_second,#0x00
                    00A2    737 	C$main.c$72$4$4 ==.
                            738 ;	main.c:72: minute++;
   011E 05 08               739 	inc	_minute
                    00A4    740 	C$main.c$74$4$4 ==.
                            741 ;	main.c:74: if(minute >= 60)
   0120 74 C4               742 	mov	a,#0x100 - 0x3C
   0122 25 08               743 	add	a,_minute
   0124 50 03               744 	jnc	00109$
                    00AA    745 	C$main.c$75$4$4 ==.
                            746 ;	main.c:75: minute = 0;
   0126 75 08 00            747 	mov	_minute,#0x00
   0129                     748 00109$:
   0129 D0 D0               749 	pop	psw
   012B D0 E0               750 	pop	acc
                    00B1    751 	C$main.c$79$1$1 ==.
                    00B1    752 	XG$timer0_ISR$0$0 ==.
   012D 32                  753 	reti
                            754 ;	eliminated unneeded push/pop dpl
                            755 ;	eliminated unneeded push/pop dph
                            756 ;	eliminated unneeded push/pop b
                            757 ;------------------------------------------------------------
                            758 ;Allocation info for local variables in function 'key_scan'
                            759 ;------------------------------------------------------------
                            760 ;------------------------------------------------------------
                    00B2    761 	G$key_scan$0$0 ==.
                    00B2    762 	C$main.c$81$1$1 ==.
                            763 ;	main.c:81: void key_scan()
                            764 ;	-----------------------------------------
                            765 ;	 function key_scan
                            766 ;	-----------------------------------------
   012E                     767 _key_scan:
                    00B2    768 	C$main.c$83$1$1 ==.
                            769 ;	main.c:83: if(START_STOP == 0)
   012E E5 A0               770 	mov	a,_P2
   0130 70 10               771 	jnz	00107$
                    00B6    772 	C$main.c$85$2$2 ==.
                            773 ;	main.c:85: delay(20);
   0132 90 00 14            774 	mov	dptr,#0x0014
   0135 12 00 7C            775 	lcall	_delay
                    00BC    776 	C$main.c$86$2$2 ==.
                            777 ;	main.c:86: if(START_STOP == 0)
   0138 E5 A0               778 	mov	a,_P2
   013A 70 06               779 	jnz	00107$
                    00C0    780 	C$main.c$88$3$3 ==.
                            781 ;	main.c:88: running = !running;
   013C B2 00               782 	cpl	_running
                    00C2    783 	C$main.c$89$3$3 ==.
                            784 ;	main.c:89: while(START_STOP == 0);
   013E                     785 00101$:
   013E E5 A0               786 	mov	a,_P2
   0140 60 FC               787 	jz	00101$
   0142                     788 00107$:
                    00C6    789 	C$main.c$93$1$1 ==.
                            790 ;	main.c:93: if(CLEAR_KEY == 0)
   0142 E5 90               791 	mov	a,_P1
   0144 70 19               792 	jnz	00115$
                    00CA    793 	C$main.c$95$2$4 ==.
                            794 ;	main.c:95: delay(20);
   0146 90 00 14            795 	mov	dptr,#0x0014
   0149 12 00 7C            796 	lcall	_delay
                    00D0    797 	C$main.c$96$2$4 ==.
                            798 ;	main.c:96: if(CLEAR_KEY == 0)
   014C E5 90               799 	mov	a,_P1
   014E 70 0F               800 	jnz	00115$
                    00D4    801 	C$main.c$98$3$5 ==.
                            802 ;	main.c:98: running = 0;
   0150 C2 00               803 	clr	_running
                    00D6    804 	C$main.c$99$3$5 ==.
                            805 ;	main.c:99: minute = 0;
                    00D6    806 	C$main.c$100$3$5 ==.
                            807 ;	main.c:100: second = 0;
                    00D6    808 	C$main.c$101$3$5 ==.
                            809 ;	main.c:101: ms_count = 0;
   0152 E4                  810 	clr	a
   0153 F5 08               811 	mov	_minute,a
   0155 F5 09               812 	mov	_second,a
   0157 F5 0A               813 	mov	_ms_count,a
   0159 F5 0B               814 	mov	(_ms_count + 1),a
                    00DF    815 	C$main.c$102$3$5 ==.
                            816 ;	main.c:102: while(CLEAR_KEY == 0);
   015B                     817 00108$:
   015B E5 90               818 	mov	a,_P1
   015D 60 FC               819 	jz	00108$
   015F                     820 00115$:
                    00E3    821 	C$main.c$105$1$1 ==.
                    00E3    822 	XG$key_scan$0$0 ==.
   015F 22                  823 	ret
                            824 ;------------------------------------------------------------
                            825 ;Allocation info for local variables in function 'main'
                            826 ;------------------------------------------------------------
                            827 ;i                         Allocated to registers 
                            828 ;------------------------------------------------------------
                    00E4    829 	G$main$0$0 ==.
                    00E4    830 	C$main.c$107$1$1 ==.
                            831 ;	main.c:107: void main()
                            832 ;	-----------------------------------------
                            833 ;	 function main
                            834 ;	-----------------------------------------
   0160                     835 _main:
                    00E4    836 	C$main.c$110$1$1 ==.
                            837 ;	main.c:110: timer0_init();
   0160 12 00 A0            838 	lcall	_timer0_init
                    00E7    839 	C$main.c$112$1$1 ==.
                            840 ;	main.c:112: while(1)
   0163                     841 00102$:
                    00E7    842 	C$main.c$114$2$2 ==.
                            843 ;	main.c:114: \\display();
   0163 12 00 B0            844 	lcall	_display
                    00EA    845 	C$main.c$115$2$2 ==.
                            846 ;	main.c:115: \\key_scan();
   0166 12 01 2E            847 	lcall	_key_scan
                    00ED    848 	C$main.c$116$2$2 ==.
                            849 ;	main.c:116: P0=i;
   0169 75 80 00            850 	mov	_P0,#0x00
                    00F0    851 	C$main.c$119$1$1 ==.
                    00F0    852 	XG$main$0$0 ==.
   016C 80 F5               853 	sjmp	00102$
                            854 	.area CSEG    (CODE)
                            855 	.area CONST   (CODE)
                    0000    856 G$seg_table$0$0 == .
   0172                     857 _seg_table:
   0172 C0                  858 	.db #0xC0	; 192
   0173 F9                  859 	.db #0xF9	; 249
   0174 A4                  860 	.db #0xA4	; 164
   0175 B0                  861 	.db #0xB0	; 176
   0176 99                  862 	.db #0x99	; 153
   0177 92                  863 	.db #0x92	; 146
   0178 82                  864 	.db #0x82	; 130
   0179 F8                  865 	.db #0xF8	; 248
   017A 80                  866 	.db #0x80	; 128
   017B 90                  867 	.db #0x90	; 144
                            868 	.area XINIT   (CODE)
                            869 	.area CABS    (ABS,CODE)
