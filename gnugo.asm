; Compiled with 1.32.272
--------------------------------------------------------------------
startup: ; startup
0801 : 0b __ __ INV
0802 : 08 __ __ PHP
0803 : 0a __ __ ASL
0804 : 00 __ __ BRK
0805 : 9e __ __ INV
0806 : 32 __ __ INV
0807 : 30 36 __ BMI $083f ; (startup + 62)
0809 : 31 00 __ AND ($00),y 
080b : 00 __ __ BRK
080c : 00 __ __ BRK
080d : ba __ __ TSX
080e : 8e 27 54 STX $5427 ; (spentry + 0)
0811 : a2 68 __ LDX #$68
0813 : a0 3c __ LDY #$3c
0815 : a9 00 __ LDA #$00
0817 : 85 19 __ STA IP + 0 
0819 : 86 1a __ STX IP + 1 
081b : e0 9a __ CPX #$9a
081d : f0 0b __ BEQ $082a ; (startup + 41)
081f : 91 19 __ STA (IP + 0),y 
0821 : c8 __ __ INY
0822 : d0 fb __ BNE $081f ; (startup + 30)
0824 : e8 __ __ INX
0825 : d0 f2 __ BNE $0819 ; (startup + 24)
0827 : 91 19 __ STA (IP + 0),y 
0829 : c8 __ __ INY
082a : c0 7a __ CPY #$7a
082c : d0 f9 __ BNE $0827 ; (startup + 38)
082e : a9 00 __ LDA #$00
0830 : a2 f7 __ LDX #$f7
0832 : d0 03 __ BNE $0837 ; (startup + 54)
0834 : 95 00 __ STA $00,x 
0836 : e8 __ __ INX
0837 : e0 f7 __ CPX #$f7
0839 : d0 f9 __ BNE $0834 ; (startup + 51)
083b : a9 5a __ LDA #$5a
083d : 85 23 __ STA SP + 0 
083f : a9 cf __ LDA #$cf
0841 : 85 24 __ STA SP + 1 
0843 : 20 00 0a JSR $0a00 ; (main.s1 + 0)
0846 : a9 4c __ LDA #$4c
0848 : 85 54 __ STA $54 
084a : a9 00 __ LDA #$00
084c : 85 13 __ STA P6 
084e : a9 19 __ LDA #$19
0850 : 85 16 __ STA P9 
0852 : 60 __ __ RTS
--------------------------------------------------------------------
main: ; main()->i16
; 156, "/Users/emarti/Projects/gnugo-c64/main.c"
.s1:
0a00 : a2 0f __ LDX #$0f
0a02 : b5 53 __ LDA T0 + 0,x 
0a04 : 9d 5c cf STA $cf5c,x ; (main@stack + 0)
0a07 : ca __ __ DEX
0a08 : 10 f8 __ BPL $0a02 ; (main.s1 + 2)
0a0a : 38 __ __ SEC
0a0b : a5 23 __ LDA SP + 0 
0a0d : e9 08 __ SBC #$08
0a0f : 85 23 __ STA SP + 0 
0a11 : b0 02 __ BCS $0a15 ; (main.s4 + 0)
0a13 : c6 24 __ DEC SP + 1 
.s4:
0a15 : a5 01 __ LDA $01 
0a17 : 29 fe __ AND #$fe
0a19 : 85 01 __ STA $01 
0a1b : a9 28 __ LDA #$28
0a1d : 85 53 __ STA T0 + 0 
0a1f : a9 54 __ LDA #$54
0a21 : 85 54 __ STA T0 + 1 
0a23 : a9 00 __ LDA #$00
0a25 : 85 55 __ STA T1 + 0 
0a27 : a9 a0 __ LDA #$a0
0a29 : 85 56 __ STA T1 + 1 
.l5:
0a2b : a0 00 __ LDY #$00
.l110:
0a2d : b1 53 __ LDA (T0 + 0),y 
0a2f : 91 55 __ STA (T1 + 0),y 
0a31 : e6 53 __ INC T0 + 0 
0a33 : d0 02 __ BNE $0a37 ; (main.s119 + 0)
.s118:
0a35 : e6 54 __ INC T0 + 1 
.s119:
0a37 : e6 55 __ INC T1 + 0 
0a39 : d0 f2 __ BNE $0a2d ; (main.l110 + 0)
.s120:
0a3b : e6 56 __ INC T1 + 1 
0a3d : a5 56 __ LDA T1 + 1 
0a3f : c9 a8 __ CMP #$a8
0a41 : d0 e8 __ BNE $0a2b ; (main.l5 + 0)
.s6:
0a43 : a9 1b __ LDA #$1b
0a45 : 8d 11 d0 STA $d011 
0a48 : a9 08 __ LDA #$08
0a4a : 8d 16 d0 STA $d016 
0a4d : ad 00 dd LDA $dd00 
0a50 : 29 fc __ AND #$fc
0a52 : 09 01 __ ORA #$01
0a54 : 8d 00 dd STA $dd00 
0a57 : a9 e8 __ LDA #$e8
0a59 : 8d 18 d0 STA $d018 
0a5c : 8d 18 d0 STA $d018 
0a5f : a9 b8 __ LDA #$b8
0a61 : 8d 88 02 STA $0288 
0a64 : a2 00 __ LDX #$00
0a66 : 18 __ __ CLC
.l117:
0a67 : 85 54 __ STA T0 + 1 
0a69 : 99 d9 00 STA $00d9,y 
0a6c : 8a __ __ TXA
0a6d : 69 28 __ ADC #$28
0a6f : aa __ __ TAX
0a70 : a5 54 __ LDA T0 + 1 
0a72 : 69 00 __ ADC #$00
0a74 : c8 __ __ INY
0a75 : c0 19 __ CPY #$19
0a77 : 90 ee __ BCC $0a67 ; (main.l117 + 0)
.s111:
0a79 : a9 00 __ LDA #$00
0a7b : 85 d1 __ STA $d1 
0a7d : 85 d3 __ STA $d3 
0a7f : 85 d5 __ STA $d5 
0a81 : 85 f3 __ STA $f3 
0a83 : a9 b8 __ LDA #$b8
0a85 : 85 d2 __ STA $d2 
0a87 : 85 f4 __ STA $f4 
0a89 : a9 28 __ LDA #$28
0a8b : 85 d6 __ STA $d6 
0a8d : a9 60 __ LDA #$60
0a8f : 8d fa cf STA $cffa ; (sstack + 0)
0a92 : a9 1d __ LDA #$1d
0a94 : 8d fb cf STA $cffb ; (sstack + 1)
0a97 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0a9a : a9 01 __ LDA #$01
0a9c : 8d a6 02 STA $02a6 
0a9f : a9 e8 __ LDA #$e8
0aa1 : 8d 18 d0 STA $d018 
0aa4 : a9 08 __ LDA #$08
0aa6 : 8d 20 d0 STA $d020 
0aa9 : 8d 21 d0 STA $d021 
0aac : a9 09 __ LDA #$09
0aae : 8d 86 02 STA $0286 
0ab1 : a0 00 __ LDY #$00
.l112:
0ab3 : 98 __ __ TYA
0ab4 : 0a __ __ ASL
0ab5 : aa __ __ TAX
0ab6 : a9 01 __ LDA #$01
0ab8 : 9d 3c 68 STA $683c,x ; (opn[0] + 0)
0abb : a9 00 __ LDA #$00
0abd : 9d 3d 68 STA $683d,x ; (opn[0] + 1)
0ac0 : c8 __ __ INY
0ac1 : c0 09 __ CPY #$09
0ac3 : d0 ee __ BNE $0ab3 ; (main.l112 + 0)
.s113:
0ac5 : 8d 96 cf STA $cf96 ; (i + 0)
0ac8 : 8d 97 cf STA $cf97 ; (i + 1)
0acb : 8d 44 68 STA $6844 ; (opn[0] + 8)
0ace : 8d 45 68 STA $6845 ; (opn[0] + 9)
.l7:
0ad1 : ad 96 cf LDA $cf96 ; (i + 0)
0ad4 : 85 53 __ STA T0 + 0 
0ad6 : 85 1b __ STA ACCU + 0 
0ad8 : ad 97 cf LDA $cf97 ; (i + 1)
0adb : 85 1c __ STA ACCU + 1 
0add : a9 13 __ LDA #$13
0adf : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
0ae2 : 18 __ __ CLC
0ae3 : a9 4e __ LDA #$4e
0ae5 : 65 1b __ ADC ACCU + 0 
0ae7 : 85 55 __ STA T1 + 0 
0ae9 : a9 68 __ LDA #$68
0aeb : 65 1c __ ADC ACCU + 1 
0aed : 85 56 __ STA T1 + 1 
0aef : a9 00 __ LDA #$00
0af1 : a0 12 __ LDY #$12
.l115:
0af3 : 91 55 __ STA (T1 + 0),y 
0af5 : 88 __ __ DEY
0af6 : 10 fb __ BPL $0af3 ; (main.l115 + 0)
.s114:
0af8 : 8d 95 cf STA $cf95 ; (j + 1)
0afb : 8d 97 cf STA $cf97 ; (i + 1)
0afe : a9 13 __ LDA #$13
0b00 : 8d 94 cf STA $cf94 ; (j + 0)
0b03 : a6 53 __ LDX T0 + 0 
0b05 : e8 __ __ INX
0b06 : 8e 96 cf STX $cf96 ; (i + 0)
0b09 : e0 13 __ CPX #$13
0b0b : 90 c4 __ BCC $0ad1 ; (main.l7 + 0)
.s8:
0b0d : a9 ff __ LDA #$ff
0b0f : 8d c5 69 STA $69c5 ; (ujk + 0)
0b12 : 8d c6 69 STA $69c6 ; (ujk + 1)
0b15 : 8d c3 69 STA $69c3 ; (uik + 0)
0b18 : 8d c4 69 STA $69c4 ; (uik + 1)
0b1b : 8d c1 69 STA $69c1 ; (mjk + 0)
0b1e : 8d c2 69 STA $69c2 ; (mjk + 1)
0b21 : 8d bf 69 STA $69bf ; (mik + 0)
0b24 : 8d c0 69 STA $69c0 ; (mik + 1)
0b27 : a9 00 __ LDA #$00
0b29 : 8d bd 69 STA $69bd ; (pass + 0)
0b2c : 8d be 69 STA $69be ; (pass + 1)
0b2f : 8d bc 69 STA $69bc ; (play + 1)
0b32 : 8d b9 69 STA $69b9 ; (uk + 0)
0b35 : 8d ba 69 STA $69ba ; (uk + 1)
0b38 : 8d b7 69 STA $69b7 ; (mk + 0)
0b3b : 8d b8 69 STA $69b8 ; (mk + 1)
0b3e : a9 01 __ LDA #$01
0b40 : 8d bb 69 STA $69bb ; (play + 0)
0b43 : 20 63 1d JSR $1d63 ; (clock.s4 + 0)
0b46 : a9 00 __ LDA #$00
0b48 : 8d 96 cf STA $cf96 ; (i + 0)
0b4b : 8d 97 cf STA $cf97 ; (i + 1)
0b4e : a5 1b __ LDA ACCU + 0 
0b50 : 8d 44 5c STA $5c44 ; (seed + 0)
0b53 : a5 1c __ LDA ACCU + 1 
0b55 : 8d 45 5c STA $5c45 ; (seed + 1)
0b58 : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
0b5b : a9 24 __ LDA #$24
0b5d : 8d fa cf STA $cffa ; (sstack + 0)
0b60 : a9 20 __ LDA #$20
0b62 : 8d fb cf STA $cffb ; (sstack + 1)
0b65 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0b68 : a9 15 __ LDA #$15
0b6a : 8d fa cf STA $cffa ; (sstack + 0)
0b6d : a9 28 __ LDA #$28
0b6f : 8d fb cf STA $cffb ; (sstack + 1)
0b72 : a9 85 __ LDA #$85
0b74 : 8d fc cf STA $cffc ; (sstack + 2)
0b77 : a9 cf __ LDA #$cf
0b79 : 8d fd cf STA $cffd ; (sstack + 3)
0b7c : 20 3b 20 JSR $203b ; (scanf.s1 + 0)
0b7f : ad 85 cf LDA $cf85 ; (ans[0] + 0)
0b82 : c9 62 __ CMP #$62
0b84 : d0 03 __ BNE $0b89 ; (main.s107 + 0)
0b86 : 4c 41 13 JMP $1341 ; (main.s9 + 0)
.s107:
0b89 : c9 42 __ CMP #$42
0b8b : f0 f9 __ BEQ $0b86 ; (main.s8 + 121)
.s108:
0b8d : a9 00 __ LDA #$00
0b8f : 8d c8 69 STA $69c8 ; (umove + 1)
0b92 : 8d ca 69 STA $69ca ; (mymove + 1)
0b95 : a9 01 __ LDA #$01
0b97 : 8d c7 69 STA $69c7 ; (umove + 0)
0b9a : a9 02 __ LDA #$02
0b9c : 8d c9 69 STA $69c9 ; (mymove + 0)
0b9f : ad 97 cf LDA $cf97 ; (i + 1)
0ba2 : 0d 96 cf ORA $cf96 ; (i + 0)
0ba5 : d0 2c __ BNE $0bd3 ; (main.s104 + 0)
.s109:
0ba7 : 20 19 28 JSR $2819 ; (genmove@proxy + 0)
0baa : ad 96 cf LDA $cf96 ; (i + 0)
0bad : 85 1b __ STA ACCU + 0 
0baf : ad 97 cf LDA $cf97 ; (i + 1)
0bb2 : 85 1c __ STA ACCU + 1 
0bb4 : a9 13 __ LDA #$13
0bb6 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
0bb9 : 18 __ __ CLC
0bba : a9 4e __ LDA #$4e
0bbc : 65 1b __ ADC ACCU + 0 
0bbe : 85 53 __ STA T0 + 0 
0bc0 : a9 68 __ LDA #$68
0bc2 : 65 1c __ ADC ACCU + 1 
0bc4 : 85 54 __ STA T0 + 1 
0bc6 : a9 02 __ LDA #$02
0bc8 : ac 94 cf LDY $cf94 ; (j + 0)
0bcb : 91 53 __ STA (T0 + 0),y 
0bcd : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
0bd0 : 4c ef 0b JMP $0bef ; (main.s105 + 0)
.s104:
0bd3 : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
0bd6 : ad ca 69 LDA $69ca ; (mymove + 1)
0bd9 : d0 07 __ BNE $0be2 ; (main.s11 + 0)
.s106:
0bdb : ad c9 69 LDA $69c9 ; (mymove + 0)
0bde : c9 02 __ CMP #$02
0be0 : f0 0d __ BEQ $0bef ; (main.s105 + 0)
.s11:
0be2 : a9 b3 __ LDA #$b3
0be4 : 8d fa cf STA $cffa ; (sstack + 0)
0be7 : a9 42 __ LDA #$42
0be9 : 8d fb cf STA $cffb ; (sstack + 1)
0bec : 4c 16 0c JMP $0c16 ; (main.s12 + 0)
.s105:
0bef : a9 8a __ LDA #$8a
0bf1 : 8d fa cf STA $cffa ; (sstack + 0)
0bf4 : a9 42 __ LDA #$42
0bf6 : 8d fb cf STA $cffb ; (sstack + 1)
0bf9 : ae 94 cf LDX $cf94 ; (j + 0)
0bfc : bd 9f 42 LDA $429f,x 
0bff : 8d fc cf STA $cffc ; (sstack + 2)
0c02 : 38 __ __ SEC
0c03 : a9 13 __ LDA #$13
0c05 : ed 96 cf SBC $cf96 ; (i + 0)
0c08 : 8d fe cf STA $cffe ; (sstack + 4)
0c0b : a9 00 __ LDA #$00
0c0d : 8d fd cf STA $cffd ; (sstack + 3)
0c10 : ed 97 cf SBC $cf97 ; (i + 1)
0c13 : 8d ff cf STA $cfff ; (sstack + 5)
.s12:
0c16 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0c19 : ad bc 69 LDA $69bc ; (play + 1)
0c1c : 10 03 __ BPL $0c21 ; (main.l103 + 0)
0c1e : 4c 5c 0d JMP $0d5c ; (main.s29 + 0)
.l103:
0c21 : 0d bb 69 ORA $69bb ; (play + 0)
0c24 : f0 f8 __ BEQ $0c1e ; (main.s12 + 8)
.s14:
0c26 : a9 b5 __ LDA #$b5
0c28 : 8d fa cf STA $cffa ; (sstack + 0)
0c2b : a9 42 __ LDA #$42
0c2d : 8d fb cf STA $cffb ; (sstack + 1)
0c30 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0c33 : a9 c1 __ LDA #$c1
0c35 : 8d fa cf STA $cffa ; (sstack + 0)
0c38 : a9 42 __ LDA #$42
0c3a : 8d fb cf STA $cffb ; (sstack + 1)
0c3d : a9 8a __ LDA #$8a
0c3f : 8d fc cf STA $cffc ; (sstack + 2)
0c42 : a9 cf __ LDA #$cf
0c44 : 8d fd cf STA $cffd ; (sstack + 3)
0c47 : 20 3b 20 JSR $203b ; (scanf.s1 + 0)
0c4a : a9 8a __ LDA #$8a
0c4c : a0 02 __ LDY #$02
0c4e : 91 23 __ STA (SP + 0),y 
0c50 : a9 cf __ LDA #$cf
0c52 : c8 __ __ INY
0c53 : 91 23 __ STA (SP + 0),y 
0c55 : a9 96 __ LDA #$96
0c57 : c8 __ __ INY
0c58 : 91 23 __ STA (SP + 0),y 
0c5a : a9 cf __ LDA #$cf
0c5c : c8 __ __ INY
0c5d : 91 23 __ STA (SP + 0),y 
0c5f : a9 94 __ LDA #$94
0c61 : c8 __ __ INY
0c62 : 91 23 __ STA (SP + 0),y 
0c64 : a9 cf __ LDA #$cf
0c66 : c8 __ __ INY
0c67 : 91 23 __ STA (SP + 0),y 
0c69 : 20 c4 42 JSR $42c4 ; (getmove.s1 + 0)
0c6c : ad bc 69 LDA $69bc ; (play + 1)
0c6f : 10 03 __ BPL $0c74 ; (main.s28 + 0)
0c71 : 4c 40 0d JMP $0d40 ; (main.s23 + 0)
.s28:
0c74 : 0d bb 69 ORA $69bb ; (play + 0)
0c77 : f0 f8 __ BEQ $0c71 ; (main.s14 + 75)
.s15:
0c79 : 2c 97 cf BIT $cf97 ; (i + 1)
0c7c : 30 31 __ BMI $0caf ; (main.s17 + 0)
.s16:
0c7e : ad 96 cf LDA $cf96 ; (i + 0)
0c81 : 85 1b __ STA ACCU + 0 
0c83 : ad 97 cf LDA $cf97 ; (i + 1)
0c86 : 85 1c __ STA ACCU + 1 
0c88 : a9 13 __ LDA #$13
0c8a : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
0c8d : 18 __ __ CLC
0c8e : a9 4e __ LDA #$4e
0c90 : 65 1b __ ADC ACCU + 0 
0c92 : 85 53 __ STA T0 + 0 
0c94 : a9 68 __ LDA #$68
0c96 : 65 1c __ ADC ACCU + 1 
0c98 : 85 54 __ STA T0 + 1 
0c9a : ad c7 69 LDA $69c7 ; (umove + 0)
0c9d : ac 94 cf LDY $cf94 ; (j + 0)
0ca0 : 91 53 __ STA (T0 + 0),y 
0ca2 : ad c9 69 LDA $69c9 ; (mymove + 0)
0ca5 : 85 11 __ STA P4 
0ca7 : ad ca 69 LDA $69ca ; (mymove + 1)
0caa : 85 12 __ STA P5 
0cac : 20 dc 45 JSR $45dc ; (examboard.s1 + 0)
.s17:
0caf : ad be 69 LDA $69be ; (pass + 1)
0cb2 : d0 07 __ BNE $0cbb ; (main.s18 + 0)
.s27:
0cb4 : ad bd 69 LDA $69bd ; (pass + 0)
0cb7 : c9 02 __ CMP #$02
0cb9 : f0 46 __ BEQ $0d01 ; (main.s20 + 0)
.s18:
0cbb : a9 f2 __ LDA #$f2
0cbd : 8d fa cf STA $cffa ; (sstack + 0)
0cc0 : a9 46 __ LDA #$46
0cc2 : 8d fb cf STA $cffb ; (sstack + 1)
0cc5 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0cc8 : 20 19 28 JSR $2819 ; (genmove@proxy + 0)
0ccb : 2c 97 cf BIT $cf97 ; (i + 1)
0cce : 30 31 __ BMI $0d01 ; (main.s20 + 0)
.s19:
0cd0 : ad 96 cf LDA $cf96 ; (i + 0)
0cd3 : 85 1b __ STA ACCU + 0 
0cd5 : ad 97 cf LDA $cf97 ; (i + 1)
0cd8 : 85 1c __ STA ACCU + 1 
0cda : a9 13 __ LDA #$13
0cdc : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
0cdf : 18 __ __ CLC
0ce0 : a9 4e __ LDA #$4e
0ce2 : 65 1b __ ADC ACCU + 0 
0ce4 : 85 53 __ STA T0 + 0 
0ce6 : a9 68 __ LDA #$68
0ce8 : 65 1c __ ADC ACCU + 1 
0cea : 85 54 __ STA T0 + 1 
0cec : ad c9 69 LDA $69c9 ; (mymove + 0)
0cef : ac 94 cf LDY $cf94 ; (j + 0)
0cf2 : 91 53 __ STA (T0 + 0),y 
0cf4 : ad c7 69 LDA $69c7 ; (umove + 0)
0cf7 : 85 11 __ STA P4 
0cf9 : ad c8 69 LDA $69c8 ; (umove + 1)
0cfc : 85 12 __ STA P5 
0cfe : 20 dc 45 JSR $45dc ; (examboard.s1 + 0)
.s20:
0d01 : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
0d04 : 2c 97 cf BIT $cf97 ; (i + 1)
0d07 : 10 0d __ BPL $0d16 ; (main.s21 + 0)
.s26:
0d09 : a9 fe __ LDA #$fe
0d0b : 8d fa cf STA $cffa ; (sstack + 0)
0d0e : a9 46 __ LDA #$46
0d10 : 8d fb cf STA $cffb ; (sstack + 1)
0d13 : 4c 3d 0d JMP $0d3d ; (main.s22 + 0)
.s21:
0d16 : a9 8a __ LDA #$8a
0d18 : 8d fa cf STA $cffa ; (sstack + 0)
0d1b : a9 42 __ LDA #$42
0d1d : 8d fb cf STA $cffb ; (sstack + 1)
0d20 : ae 94 cf LDX $cf94 ; (j + 0)
0d23 : bd 9f 42 LDA $429f,x 
0d26 : 8d fc cf STA $cffc ; (sstack + 2)
0d29 : 38 __ __ SEC
0d2a : a9 13 __ LDA #$13
0d2c : ed 96 cf SBC $cf96 ; (i + 0)
0d2f : 8d fe cf STA $cffe ; (sstack + 4)
0d32 : a9 00 __ LDA #$00
0d34 : 8d fd cf STA $cffd ; (sstack + 3)
0d37 : ed 97 cf SBC $cf97 ; (i + 1)
0d3a : 8d ff cf STA $cfff ; (sstack + 5)
.s22:
0d3d : 20 8a 13 JSR $138a ; (printf.s1 + 0)
.s23:
0d40 : ad be 69 LDA $69be ; (pass + 1)
0d43 : d0 12 __ BNE $0d57 ; (main.s13 + 0)
.s25:
0d45 : ad bd 69 LDA $69bd ; (pass + 0)
0d48 : c9 02 __ CMP #$02
0d4a : d0 0b __ BNE $0d57 ; (main.s13 + 0)
.s24:
0d4c : a9 00 __ LDA #$00
0d4e : 8d bb 69 STA $69bb ; (play + 0)
0d51 : 8d bc 69 STA $69bc ; (play + 1)
0d54 : 4c 21 0c JMP $0c21 ; (main.l103 + 0)
.s13:
0d57 : ad bc 69 LDA $69bc ; (play + 1)
0d5a : 10 f8 __ BPL $0d54 ; (main.s24 + 8)
.s29:
0d5c : ad bb 69 LDA $69bb ; (play + 0)
0d5f : 0d bc 69 ORA $69bc ; (play + 1)
0d62 : d0 2e __ BNE $0d92 ; (main.s3 + 0)
.s30:
0d64 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
0d67 : a9 13 __ LDA #$13
0d69 : 8d fa cf STA $cffa ; (sstack + 0)
0d6c : a9 47 __ LDA #$47
0d6e : 8d fb cf STA $cffb ; (sstack + 1)
0d71 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0d74 : a9 39 __ LDA #$39
0d76 : 8d fa cf STA $cffa ; (sstack + 0)
0d79 : a9 47 __ LDA #$47
0d7b : 8d fb cf STA $cffb ; (sstack + 1)
0d7e : a9 85 __ LDA #$85
0d80 : 8d fc cf STA $cffc ; (sstack + 2)
0d83 : a9 cf __ LDA #$cf
0d85 : 8d fd cf STA $cffd ; (sstack + 3)
0d88 : 20 3b 20 JSR $203b ; (scanf.s1 + 0)
0d8b : ad 85 cf LDA $cf85 ; (ans[0] + 0)
0d8e : c9 79 __ CMP #$79
0d90 : f0 1c __ BEQ $0dae ; (main.s31 + 0)
.s3:
0d92 : a9 00 __ LDA #$00
0d94 : 85 1b __ STA ACCU + 0 
0d96 : 85 1c __ STA ACCU + 1 
0d98 : 18 __ __ CLC
0d99 : a5 23 __ LDA SP + 0 
0d9b : 69 08 __ ADC #$08
0d9d : 85 23 __ STA SP + 0 
0d9f : 90 02 __ BCC $0da3 ; (main.s3 + 17)
0da1 : e6 24 __ INC SP + 1 
0da3 : a2 0f __ LDX #$0f
0da5 : bd 5c cf LDA $cf5c,x ; (main@stack + 0)
0da8 : 95 53 __ STA T0 + 0,x 
0daa : ca __ __ DEX
0dab : 10 f8 __ BPL $0da5 ; (main.s3 + 19)
0dad : 60 __ __ RTS
.s31:
0dae : a9 3c __ LDA #$3c
0db0 : 8d fa cf STA $cffa ; (sstack + 0)
0db3 : a9 47 __ LDA #$47
0db5 : 8d fb cf STA $cffb ; (sstack + 1)
0db8 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0dbb : a9 6b __ LDA #$6b
0dbd : 8d fa cf STA $cffa ; (sstack + 0)
0dc0 : a9 47 __ LDA #$47
0dc2 : 8d fb cf STA $cffb ; (sstack + 1)
0dc5 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0dc8 : a9 a6 __ LDA #$a6
0dca : 8d fa cf STA $cffa ; (sstack + 0)
0dcd : a9 47 __ LDA #$47
0dcf : 8d fb cf STA $cffb ; (sstack + 1)
0dd2 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0dd5 : a9 de __ LDA #$de
0dd7 : 8d fa cf STA $cffa ; (sstack + 0)
0dda : a9 47 __ LDA #$47
0ddc : 8d fb cf STA $cffb ; (sstack + 1)
0ddf : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0de2 : a9 e7 __ LDA #$e7
0de4 : 8d fa cf STA $cffa ; (sstack + 0)
0de7 : a9 47 __ LDA #$47
0de9 : 8d fb cf STA $cffb ; (sstack + 1)
0dec : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0def : a9 21 __ LDA #$21
0df1 : 8d fa cf STA $cffa ; (sstack + 0)
0df4 : a9 48 __ LDA #$48
0df6 : 8d fb cf STA $cffb ; (sstack + 1)
0df9 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0dfc : a9 5f __ LDA #$5f
0dfe : 8d fa cf STA $cffa ; (sstack + 0)
0e01 : a9 48 __ LDA #$48
0e03 : 8d fb cf STA $cffb ; (sstack + 1)
0e06 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0e09 : a9 74 __ LDA #$74
0e0b : 8d fa cf STA $cffa ; (sstack + 0)
0e0e : a9 48 __ LDA #$48
0e10 : 8d fb cf STA $cffb ; (sstack + 1)
0e13 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0e16 : ad c9 69 LDA $69c9 ; (mymove + 0)
0e19 : 85 5f __ STA T9 + 0 
0e1b : 85 0d __ STA P0 
0e1d : ad ca 69 LDA $69ca ; (mymove + 1)
0e20 : 85 60 __ STA T9 + 1 
0e22 : 85 0e __ STA P1 
0e24 : a9 72 __ LDA #$72
0e26 : 85 0f __ STA P2 
0e28 : a9 77 __ LDA #$77
0e2a : 85 10 __ STA P3 
0e2c : 20 95 48 JSR $4895 ; (createlist.s4 + 0)
0e2f : ad c7 69 LDA $69c7 ; (umove + 0)
0e32 : 85 61 __ STA T10 + 0 
0e34 : 85 0d __ STA P0 
0e36 : ad c8 69 LDA $69c8 ; (umove + 1)
0e39 : 85 62 __ STA T10 + 1 
0e3b : 85 0e __ STA P1 
0e3d : a9 8c __ LDA #$8c
0e3f : 85 0f __ STA P2 
0e41 : a9 85 __ LDA #$85
0e43 : 85 10 __ STA P3 
0e45 : 20 95 48 JSR $4895 ; (createlist.s4 + 0)
.l32:
0e48 : a9 86 __ LDA #$86
0e4a : 8d fa cf STA $cffa ; (sstack + 0)
0e4d : a9 4a __ LDA #$4a
0e4f : 8d fb cf STA $cffb ; (sstack + 1)
0e52 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0e55 : a9 c1 __ LDA #$c1
0e57 : 8d fa cf STA $cffa ; (sstack + 0)
0e5a : a9 42 __ LDA #$42
0e5c : 8d fb cf STA $cffb ; (sstack + 1)
0e5f : a9 7b __ LDA #$7b
0e61 : 8d fc cf STA $cffc ; (sstack + 2)
0e64 : a9 cf __ LDA #$cf
0e66 : 8d fd cf STA $cffd ; (sstack + 3)
0e69 : 20 3b 20 JSR $203b ; (scanf.s1 + 0)
0e6c : 20 b4 44 JSR $44b4 ; (strcmp@proxy + 0)
0e6f : aa __ __ TAX
0e70 : f0 03 __ BEQ $0e75 ; (main.s48 + 0)
0e72 : 4c 97 11 JMP $1197 ; (main.s33 + 0)
.s48:
0e75 : a9 ce __ LDA #$ce
0e77 : 8d fa cf STA $cffa ; (sstack + 0)
0e7a : a9 4c __ LDA #$4c
0e7c : 8d fb cf STA $cffb ; (sstack + 1)
0e7f : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0e82 : a9 10 __ LDA #$10
0e84 : 8d fa cf STA $cffa ; (sstack + 0)
0e87 : a9 4d __ LDA #$4d
0e89 : 8d fb cf STA $cffb ; (sstack + 1)
0e8c : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0e8f : a9 1f __ LDA #$1f
0e91 : 8d fa cf STA $cffa ; (sstack + 0)
0e94 : a9 4d __ LDA #$4d
0e96 : 8d fb cf STA $cffb ; (sstack + 1)
0e99 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0e9c : a9 48 __ LDA #$48
0e9e : 8d fa cf STA $cffa ; (sstack + 0)
0ea1 : a9 4d __ LDA #$4d
0ea3 : 8d fb cf STA $cffb ; (sstack + 1)
0ea6 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0ea9 : a9 00 __ LDA #$00
0eab : 85 59 __ STA T3 + 0 
0ead : 85 5a __ STA T3 + 1 
0eaf : a9 01 __ LDA #$01
0eb1 : 85 57 __ STA T2 + 0 
.l49:
0eb3 : a5 59 __ LDA T3 + 0 
0eb5 : 85 1b __ STA ACCU + 0 
0eb7 : a5 5a __ LDA T3 + 1 
0eb9 : 85 1c __ STA ACCU + 1 
0ebb : a9 02 __ LDA #$02
0ebd : 85 03 __ STA WORK + 0 
0ebf : 20 d7 51 JSR $51d7 ; (mods16@proxy + 0)
0ec2 : a5 05 __ LDA WORK + 2 
0ec4 : 05 06 __ ORA WORK + 3 
0ec6 : d0 03 __ BNE $0ecb ; (main.s101 + 0)
0ec8 : 4c 46 11 JMP $1146 ; (main.s50 + 0)
.s101:
0ecb : a9 70 __ LDA #$70
0ecd : 8d fa cf STA $cffa ; (sstack + 0)
0ed0 : a9 4d __ LDA #$4d
0ed2 : 8d fb cf STA $cffb ; (sstack + 1)
0ed5 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
0ed8 : a9 7b __ LDA #$7b
0eda : 8d fc cf STA $cffc ; (sstack + 2)
0edd : a9 cf __ LDA #$cf
0edf : 8d fd cf STA $cffd ; (sstack + 3)
0ee2 : a9 c1 __ LDA #$c1
0ee4 : 8d fa cf STA $cffa ; (sstack + 0)
0ee7 : a9 42 __ LDA #$42
0ee9 : 8d fb cf STA $cffb ; (sstack + 1)
0eec : 20 3b 20 JSR $203b ; (scanf.s1 + 0)
0eef : 20 b4 44 JSR $44b4 ; (strcmp@proxy + 0)
0ef2 : aa __ __ TAX
0ef3 : d0 05 __ BNE $0efa ; (main.s102 + 0)
.s100:
0ef5 : 85 57 __ STA T2 + 0 
0ef7 : 4c 23 0f JMP $0f23 ; (main.s53 + 0)
.s102:
0efa : 20 fb 44 JSR $44fb ; (getij@proxy + 0)
0efd : ad 78 cf LDA $cf78 ; (i + 0)
0f00 : 85 1b __ STA ACCU + 0 
0f02 : ad 79 cf LDA $cf79 ; (i + 1)
0f05 : 85 1c __ STA ACCU + 1 
0f07 : a9 13 __ LDA #$13
0f09 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
0f0c : 18 __ __ CLC
0f0d : a9 4e __ LDA #$4e
0f0f : 65 1b __ ADC ACCU + 0 
0f11 : 85 53 __ STA T0 + 0 
0f13 : a9 68 __ LDA #$68
0f15 : 65 1c __ ADC ACCU + 1 
0f17 : 85 54 __ STA T0 + 1 
0f19 : a5 5f __ LDA T9 + 0 
.s52:
0f1b : ac 76 cf LDY $cf76 ; (j + 0)
0f1e : 91 53 __ STA (T0 + 0),y 
0f20 : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
.s53:
0f23 : e6 59 __ INC T3 + 0 
0f25 : d0 02 __ BNE $0f29 ; (main.s136 + 0)
.s135:
0f27 : e6 5a __ INC T3 + 1 
.s136:
0f29 : a5 57 __ LDA T2 + 0 
0f2b : d0 86 __ BNE $0eb3 ; (main.l49 + 0)
.s54:
0f2d : 8d 78 cf STA $cf78 ; (i + 0)
0f30 : 8d 79 cf STA $cf79 ; (i + 1)
.l55:
0f33 : 8d 76 cf STA $cf76 ; (j + 0)
0f36 : 8d 77 cf STA $cf77 ; (j + 1)
0f39 : ad 78 cf LDA $cf78 ; (i + 0)
0f3c : 85 53 __ STA T0 + 0 
0f3e : 85 1b __ STA ACCU + 0 
0f40 : ad 79 cf LDA $cf79 ; (i + 1)
0f43 : 85 54 __ STA T0 + 1 
0f45 : 85 1c __ STA ACCU + 1 
0f47 : a9 13 __ LDA #$13
0f49 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
0f4c : a5 1b __ LDA ACCU + 0 
0f4e : 85 55 __ STA T1 + 0 
0f50 : a5 1c __ LDA ACCU + 1 
0f52 : 85 56 __ STA T1 + 1 
0f54 : 18 __ __ CLC
0f55 : a9 4e __ LDA #$4e
0f57 : 65 1b __ ADC ACCU + 0 
0f59 : 85 57 __ STA T2 + 0 
0f5b : a9 68 __ LDA #$68
0f5d : 65 1c __ ADC ACCU + 1 
0f5f : 85 58 __ STA T2 + 1 
.l56:
0f61 : ac 76 cf LDY $cf76 ; (j + 0)
0f64 : b1 57 __ LDA (T2 + 0),y 
0f66 : d0 03 __ BNE $0f6b ; (main.s57 + 0)
0f68 : 4c 32 10 JMP $1032 ; (main.s70 + 0)
.s57:
0f6b : a9 00 __ LDA #$00
0f6d : 8d 77 cf STA $cf77 ; (j + 1)
0f70 : c8 __ __ INY
0f71 : 8c 76 cf STY $cf76 ; (j + 0)
0f74 : c0 13 __ CPY #$13
0f76 : 90 e9 __ BCC $0f61 ; (main.l56 + 0)
.s58:
0f78 : 8d 79 cf STA $cf79 ; (i + 1)
0f7b : a6 53 __ LDX T0 + 0 
0f7d : e8 __ __ INX
0f7e : 8e 78 cf STX $cf78 ; (i + 0)
0f81 : e0 13 __ CPX #$13
0f83 : 90 ae __ BCC $0f33 ; (main.l55 + 0)
.s59:
0f85 : 8d 78 cf STA $cf78 ; (i + 0)
0f88 : 8d 79 cf STA $cf79 ; (i + 1)
0f8b : 85 5b __ STA T4 + 0 
0f8d : 85 5c __ STA T4 + 1 
0f8f : 85 5d __ STA T5 + 0 
0f91 : 85 5e __ STA T5 + 1 
.l60:
0f93 : 8d 76 cf STA $cf76 ; (j + 0)
0f96 : 8d 77 cf STA $cf77 ; (j + 1)
0f99 : ad 78 cf LDA $cf78 ; (i + 0)
0f9c : 85 53 __ STA T0 + 0 
0f9e : 85 1b __ STA ACCU + 0 
0fa0 : ad 79 cf LDA $cf79 ; (i + 1)
0fa3 : 85 1c __ STA ACCU + 1 
0fa5 : a9 13 __ LDA #$13
0fa7 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
0faa : 18 __ __ CLC
0fab : a9 4e __ LDA #$4e
0fad : 65 1b __ ADC ACCU + 0 
0faf : 85 55 __ STA T1 + 0 
0fb1 : a9 68 __ LDA #$68
0fb3 : 65 1c __ ADC ACCU + 1 
0fb5 : 85 56 __ STA T1 + 1 
0fb7 : a6 5b __ LDX T4 + 0 
.l61:
0fb9 : a9 00 __ LDA #$00
0fbb : 8d 77 cf STA $cf77 ; (j + 1)
0fbe : ac 76 cf LDY $cf76 ; (j + 0)
0fc1 : ee 76 cf INC $cf76 ; (j + 0)
0fc4 : a5 60 __ LDA T9 + 1 
0fc6 : d0 06 __ BNE $0fce ; (main.s66 + 0)
.s69:
0fc8 : a5 5f __ LDA T9 + 0 
0fca : d1 55 __ CMP (T1 + 0),y 
0fcc : f0 5c __ BEQ $102a ; (main.s62 + 0)
.s66:
0fce : a5 62 __ LDA T10 + 1 
0fd0 : d0 0c __ BNE $0fde ; (main.s63 + 0)
.s68:
0fd2 : a5 61 __ LDA T10 + 0 
0fd4 : d1 55 __ CMP (T1 + 0),y 
0fd6 : d0 06 __ BNE $0fde ; (main.s63 + 0)
.s67:
0fd8 : e6 5d __ INC T5 + 0 
0fda : d0 02 __ BNE $0fde ; (main.s63 + 0)
.s137:
0fdc : e6 5e __ INC T5 + 1 
.s63:
0fde : ad 76 cf LDA $cf76 ; (j + 0)
0fe1 : c9 13 __ CMP #$13
0fe3 : 90 d4 __ BCC $0fb9 ; (main.l61 + 0)
.s64:
0fe5 : 86 5b __ STX T4 + 0 
0fe7 : a9 00 __ LDA #$00
0fe9 : 8d 79 cf STA $cf79 ; (i + 1)
0fec : a6 53 __ LDX T0 + 0 
0fee : e8 __ __ INX
0fef : 8e 78 cf STX $cf78 ; (i + 0)
0ff2 : e0 13 __ CPX #$13
0ff4 : 90 9d __ BCC $0f93 ; (main.l60 + 0)
.s65:
0ff6 : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
0ff9 : a5 5d __ LDA T5 + 0 
0ffb : 8d fc cf STA $cffc ; (sstack + 2)
0ffe : a5 5e __ LDA T5 + 1 
1000 : 8d fd cf STA $cffd ; (sstack + 3)
1003 : a9 7b __ LDA #$7b
1005 : 8d fa cf STA $cffa ; (sstack + 0)
1008 : a9 4d __ LDA #$4d
100a : 8d fb cf STA $cffb ; (sstack + 1)
100d : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1010 : a5 5b __ LDA T4 + 0 
1012 : 8d fc cf STA $cffc ; (sstack + 2)
1015 : a5 5c __ LDA T4 + 1 
1017 : 8d fd cf STA $cffd ; (sstack + 3)
101a : a9 9b __ LDA #$9b
101c : 8d fa cf STA $cffa ; (sstack + 0)
101f : a9 4d __ LDA #$4d
1021 : 8d fb cf STA $cffb ; (sstack + 1)
1024 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1027 : 4c 92 0d JMP $0d92 ; (main.s3 + 0)
.s62:
102a : e8 __ __ INX
102b : d0 b1 __ BNE $0fde ; (main.s63 + 0)
.s138:
102d : e6 5c __ INC T4 + 1 
102f : 4c de 0f JMP $0fde ; (main.s63 + 0)
.s70:
1032 : 84 59 __ STY T3 + 0 
1034 : 85 5d __ STA T5 + 0 
1036 : 85 5e __ STA T5 + 1 
1038 : a5 53 __ LDA T0 + 0 
103a : d0 0d __ BNE $1049 ; (main.s71 + 0)
.s99:
103c : 8d 6e cf STA $cf6e ; (color[0] + 0)
103f : 8d 6f cf STA $cf6f ; (color[0] + 1)
.s74:
1042 : 85 43 __ STA T6 + 0 
1044 : a6 54 __ LDX T0 + 1 
1046 : 4c 19 11 JMP $1119 ; (main.l75 + 0)
.s71:
1049 : 85 43 __ STA T6 + 0 
104b : a6 54 __ LDX T0 + 1 
.l72:
104d : 86 1c __ STX ACCU + 1 
104f : a5 43 __ LDA T6 + 0 
1051 : 85 1b __ STA ACCU + 0 
1053 : a9 13 __ LDA #$13
1055 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
1058 : 18 __ __ CLC
1059 : a9 3b __ LDA #$3b
105b : 65 1b __ ADC ACCU + 0 
105d : 85 45 __ STA T7 + 0 
105f : a9 68 __ LDA #$68
1061 : 65 1c __ ADC ACCU + 1 
1063 : 85 46 __ STA T7 + 1 
1065 : a4 59 __ LDY T3 + 0 
1067 : b1 45 __ LDA (T7 + 0),y 
1069 : d0 05 __ BNE $1070 ; (main.s73 + 0)
.s98:
106b : aa __ __ TAX
106c : c6 43 __ DEC T6 + 0 
106e : d0 dd __ BNE $104d ; (main.l72 + 0)
.s73:
1070 : 8d 6e cf STA $cf6e ; (color[0] + 0)
1073 : a9 00 __ LDA #$00
1075 : 8d 6f cf STA $cf6f ; (color[0] + 1)
1078 : a5 53 __ LDA T0 + 0 
107a : c9 12 __ CMP #$12
107c : 90 c4 __ BCC $1042 ; (main.s74 + 0)
.s97:
107e : b9 a4 69 LDA $69a4,y ; (p[0][0] + 342)
.s140:
1081 : a2 00 __ LDX #$00
.s76:
1083 : 8e 71 cf STX $cf71 ; (color[0] + 3)
1086 : 8d 70 cf STA $cf70 ; (color[0] + 2)
1089 : 98 __ __ TYA
108a : d0 18 __ BNE $10a4 ; (main.l77 + 0)
.s95:
108c : b1 57 __ LDA (T2 + 0),y 
108e : 8c 73 cf STY $cf73 ; (color[0] + 5)
1091 : 8d 72 cf STA $cf72 ; (color[0] + 4)
.s79:
1094 : 18 __ __ CLC
1095 : a9 4f __ LDA #$4f
1097 : 65 55 __ ADC T1 + 0 
1099 : 85 43 __ STA T6 + 0 
109b : a9 68 __ LDA #$68
109d : 65 56 __ ADC T1 + 1 
109f : 85 44 __ STA T6 + 1 
10a1 : 4c 0e 11 JMP $110e ; (main.l80 + 0)
.l77:
10a4 : 88 __ __ DEY
10a5 : b1 57 __ LDA (T2 + 0),y 
10a7 : d0 04 __ BNE $10ad ; (main.s78 + 0)
.s94:
10a9 : c0 00 __ CPY #$00
10ab : d0 f7 __ BNE $10a4 ; (main.l77 + 0)
.s78:
10ad : 8e 73 cf STX $cf73 ; (color[0] + 5)
10b0 : 8d 72 cf STA $cf72 ; (color[0] + 4)
10b3 : a4 59 __ LDY T3 + 0 
10b5 : c0 12 __ CPY #$12
10b7 : 90 db __ BCC $1094 ; (main.s79 + 0)
.s93:
10b9 : b1 57 __ LDA (T2 + 0),y 
.s81:
10bb : 8e 75 cf STX $cf75 ; (color[0] + 7)
10be : 8d 74 cf STA $cf74 ; (color[0] + 6)
10c1 : 8a __ __ TXA
10c2 : a8 __ __ TAY
.l82:
10c3 : 0a __ __ ASL
10c4 : aa __ __ TAX
10c5 : bd 6f cf LDA $cf6f,x ; (color[0] + 1)
10c8 : 1d 6e cf ORA $cf6e,x ; (color[0] + 0)
10cb : d0 34 __ BNE $1101 ; (main.s91 + 0)
.s83:
10cd : c8 __ __ INY
10ce : 98 __ __ TYA
10cf : c0 04 __ CPY #$04
10d1 : 90 f0 __ BCC $10c3 ; (main.l82 + 0)
.s84:
10d3 : a9 00 __ LDA #$00
10d5 : a8 __ __ TAY
.l85:
10d6 : 0a __ __ ASL
10d7 : aa __ __ TAX
10d8 : bd 6f cf LDA $cf6f,x ; (color[0] + 1)
10db : 1d 6e cf ORA $cf6e,x ; (color[0] + 0)
10de : f0 0e __ BEQ $10ee ; (main.s89 + 0)
.s86:
10e0 : a5 5e __ LDA T5 + 1 
10e2 : dd 6f cf CMP $cf6f,x ; (color[0] + 1)
10e5 : d0 16 __ BNE $10fd ; (main.s87 + 0)
.s90:
10e7 : a5 5d __ LDA T5 + 0 
10e9 : dd 6e cf CMP $cf6e,x ; (color[0] + 0)
10ec : d0 0f __ BNE $10fd ; (main.s87 + 0)
.s89:
10ee : c8 __ __ INY
10ef : 98 __ __ TYA
10f0 : c0 04 __ CPY #$04
10f2 : 90 e2 __ BCC $10d6 ; (main.l85 + 0)
.s88:
10f4 : a5 5d __ LDA T5 + 0 
.s116:
10f6 : a4 59 __ LDY T3 + 0 
10f8 : 91 57 __ STA (T2 + 0),y 
10fa : 4c 6b 0f JMP $0f6b ; (main.s57 + 0)
.s87:
10fd : a9 00 __ LDA #$00
10ff : f0 f5 __ BEQ $10f6 ; (main.s116 + 0)
.s91:
1101 : bd 6e cf LDA $cf6e,x ; (color[0] + 0)
1104 : 85 5d __ STA T5 + 0 
1106 : bd 6f cf LDA $cf6f,x ; (color[0] + 1)
1109 : 85 5e __ STA T5 + 1 
110b : 4c d3 10 JMP $10d3 ; (main.s84 + 0)
.l80:
110e : b1 43 __ LDA (T6 + 0),y 
1110 : d0 a9 __ BNE $10bb ; (main.s81 + 0)
.s92:
1112 : c8 __ __ INY
1113 : c0 12 __ CPY #$12
1115 : 90 f7 __ BCC $110e ; (main.l80 + 0)
1117 : b0 a2 __ BCS $10bb ; (main.s81 + 0)
.l75:
1119 : 86 1c __ STX ACCU + 1 
111b : 85 1b __ STA ACCU + 0 
111d : a9 13 __ LDA #$13
111f : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
1122 : 18 __ __ CLC
1123 : a9 61 __ LDA #$61
1125 : 65 1b __ ADC ACCU + 0 
1127 : 85 45 __ STA T7 + 0 
1129 : a9 68 __ LDA #$68
112b : 65 1c __ ADC ACCU + 1 
112d : 85 46 __ STA T7 + 1 
112f : a4 59 __ LDY T3 + 0 
1131 : b1 45 __ LDA (T7 + 0),y 
1133 : f0 03 __ BEQ $1138 ; (main.s96 + 0)
1135 : 4c 81 10 JMP $1081 ; (main.s140 + 0)
.s96:
1138 : e6 43 __ INC T6 + 0 
113a : a5 43 __ LDA T6 + 0 
113c : c9 12 __ CMP #$12
113e : a2 00 __ LDX #$00
1140 : 90 d7 __ BCC $1119 ; (main.l75 + 0)
.s139:
1142 : 8a __ __ TXA
1143 : 4c 83 10 JMP $1083 ; (main.s76 + 0)
.s50:
1146 : a9 63 __ LDA #$63
1148 : 8d fa cf STA $cffa ; (sstack + 0)
114b : a9 4d __ LDA #$4d
114d : 8d fb cf STA $cffb ; (sstack + 1)
1150 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1153 : a9 7b __ LDA #$7b
1155 : 8d fc cf STA $cffc ; (sstack + 2)
1158 : a9 cf __ LDA #$cf
115a : 8d fd cf STA $cffd ; (sstack + 3)
115d : a9 c1 __ LDA #$c1
115f : 8d fa cf STA $cffa ; (sstack + 0)
1162 : a9 42 __ LDA #$42
1164 : 8d fb cf STA $cffb ; (sstack + 1)
1167 : 20 3b 20 JSR $203b ; (scanf.s1 + 0)
116a : 20 b4 44 JSR $44b4 ; (strcmp@proxy + 0)
116d : aa __ __ TAX
116e : d0 03 __ BNE $1173 ; (main.s51 + 0)
1170 : 4c f5 0e JMP $0ef5 ; (main.s100 + 0)
.s51:
1173 : 20 fb 44 JSR $44fb ; (getij@proxy + 0)
1176 : ad 78 cf LDA $cf78 ; (i + 0)
1179 : 85 1b __ STA ACCU + 0 
117b : ad 79 cf LDA $cf79 ; (i + 1)
117e : 85 1c __ STA ACCU + 1 
1180 : a9 13 __ LDA #$13
1182 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
1185 : 18 __ __ CLC
1186 : a9 4e __ LDA #$4e
1188 : 65 1b __ ADC ACCU + 0 
118a : 85 53 __ STA T0 + 0 
118c : a9 68 __ LDA #$68
118e : 65 1c __ ADC ACCU + 1 
1190 : 85 54 __ STA T0 + 1 
1192 : a5 61 __ LDA T10 + 0 
1194 : 4c 1b 0f JMP $0f1b ; (main.s52 + 0)
.s33:
1197 : 20 fb 44 JSR $44fb ; (getij@proxy + 0)
119a : ad 78 cf LDA $cf78 ; (i + 0)
119d : 85 1b __ STA ACCU + 0 
119f : ad 79 cf LDA $cf79 ; (i + 1)
11a2 : 85 1c __ STA ACCU + 1 
11a4 : a9 13 __ LDA #$13
11a6 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
11a9 : 18 __ __ CLC
11aa : a9 4e __ LDA #$4e
11ac : 65 1b __ ADC ACCU + 0 
11ae : 85 55 __ STA T1 + 0 
11b0 : a9 68 __ LDA #$68
11b2 : 65 1c __ ADC ACCU + 1 
11b4 : 85 56 __ STA T1 + 1 
11b6 : ac 76 cf LDY $cf76 ; (j + 0)
11b9 : b1 55 __ LDA (T1 + 0),y 
11bb : aa __ __ TAX
11bc : a5 60 __ LDA T9 + 1 
11be : d0 07 __ BNE $11c7 ; (main.s40 + 0)
.s47:
11c0 : e4 5f __ CPX T9 + 0 
11c2 : d0 03 __ BNE $11c7 ; (main.s40 + 0)
11c4 : 4c 8b 12 JMP $128b ; (main.s34 + 0)
.s40:
11c7 : a5 62 __ LDA T10 + 1 
11c9 : d0 1d __ BNE $11e8 ; (main.s38 + 0)
.s46:
11cb : e4 61 __ CPX T10 + 0 
11cd : d0 19 __ BNE $11e8 ; (main.s38 + 0)
.s41:
11cf : 85 10 __ STA P3 
11d1 : 85 12 __ STA P5 
11d3 : a9 8c __ LDA #$8c
11d5 : 85 13 __ STA P6 
11d7 : a9 85 __ LDA #$85
11d9 : 85 14 __ STA P7 
11db : 20 93 4a JSR $4a93 ; (bfslist@proxy + 0)
11de : a5 1c __ LDA ACCU + 1 
11e0 : 30 06 __ BMI $11e8 ; (main.s38 + 0)
.s45:
11e2 : 85 54 __ STA T0 + 1 
11e4 : 05 1b __ ORA ACCU + 0 
11e6 : d0 06 __ BNE $11ee ; (main.s42 + 0)
.s38:
11e8 : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
11eb : 4c 48 0e JMP $0e48 ; (main.l32 + 0)
.s42:
11ee : a5 1b __ LDA ACCU + 0 
11f0 : 85 53 __ STA T0 + 0 
11f2 : ad b9 69 LDA $69b9 ; (uk + 0)
11f5 : 85 57 __ STA T2 + 0 
11f7 : a9 a8 __ LDA #$a8
11f9 : 85 55 __ STA T1 + 0 
11fb : a9 97 __ LDA #$97
11fd : 85 56 __ STA T1 + 1 
11ff : ad ba 69 LDA $69ba ; (uk + 1)
1202 : 85 58 __ STA T2 + 1 
.l43:
1204 : a0 00 __ LDY #$00
1206 : 84 04 __ STY WORK + 1 
1208 : b1 55 __ LDA (T1 + 0),y 
120a : 85 59 __ STA T3 + 0 
120c : 85 1b __ STA ACCU + 0 
120e : c8 __ __ INY
120f : b1 55 __ LDA (T1 + 0),y 
1211 : 85 5a __ STA T3 + 1 
1213 : 85 1c __ STA ACCU + 1 
1215 : 20 11 51 JSR $5111 ; (divs16@proxy + 0)
1218 : a5 1b __ LDA ACCU + 0 
121a : 8d 78 cf STA $cf78 ; (i + 0)
121d : a5 1c __ LDA ACCU + 1 
121f : 85 5c __ STA T4 + 1 
1221 : a5 59 __ LDA T3 + 0 
1223 : 85 1b __ STA ACCU + 0 
1225 : a5 5a __ LDA T3 + 1 
1227 : 85 1c __ STA ACCU + 1 
1229 : a9 00 __ LDA #$00
122b : 8d 79 cf STA $cf79 ; (i + 1)
122e : 85 04 __ STA WORK + 1 
1230 : 20 0a 54 JSR $540a ; (mods16@proxy + 0)
1233 : a5 05 __ LDA WORK + 2 
1235 : 8d 76 cf STA $cf76 ; (j + 0)
1238 : a9 00 __ LDA #$00
123a : 8d 77 cf STA $cf77 ; (j + 1)
123d : ad 78 cf LDA $cf78 ; (i + 0)
1240 : 85 1b __ STA ACCU + 0 
1242 : a5 5c __ LDA T4 + 1 
1244 : 85 1c __ STA ACCU + 1 
1246 : a9 13 __ LDA #$13
1248 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
124b : 18 __ __ CLC
124c : a9 4e __ LDA #$4e
124e : 65 1b __ ADC ACCU + 0 
1250 : 85 5b __ STA T4 + 0 
1252 : a9 68 __ LDA #$68
1254 : 65 1c __ ADC ACCU + 1 
1256 : 85 5c __ STA T4 + 1 
1258 : a9 00 __ LDA #$00
125a : ac 76 cf LDY $cf76 ; (j + 0)
125d : 91 5b __ STA (T4 + 0),y 
125f : e6 57 __ INC T2 + 0 
1261 : d0 02 __ BNE $1265 ; (main.s125 + 0)
.s124:
1263 : e6 58 __ INC T2 + 1 
.s125:
1265 : 18 __ __ CLC
1266 : a5 55 __ LDA T1 + 0 
1268 : 69 02 __ ADC #$02
126a : 85 55 __ STA T1 + 0 
126c : 90 02 __ BCC $1270 ; (main.s127 + 0)
.s126:
126e : e6 56 __ INC T1 + 1 
.s127:
1270 : a5 53 __ LDA T0 + 0 
1272 : d0 02 __ BNE $1276 ; (main.s122 + 0)
.s121:
1274 : c6 54 __ DEC T0 + 1 
.s122:
1276 : c6 53 __ DEC T0 + 0 
1278 : d0 8a __ BNE $1204 ; (main.l43 + 0)
.s123:
127a : a5 54 __ LDA T0 + 1 
127c : d0 86 __ BNE $1204 ; (main.l43 + 0)
.s44:
127e : a5 57 __ LDA T2 + 0 
1280 : 8d b9 69 STA $69b9 ; (uk + 0)
1283 : a5 58 __ LDA T2 + 1 
1285 : 8d ba 69 STA $69ba ; (uk + 1)
1288 : 4c e8 11 JMP $11e8 ; (main.s38 + 0)
.s34:
128b : 85 10 __ STA P3 
128d : 85 12 __ STA P5 
128f : a9 72 __ LDA #$72
1291 : 85 13 __ STA P6 
1293 : a9 77 __ LDA #$77
1295 : 85 14 __ STA P7 
1297 : 20 93 4a JSR $4a93 ; (bfslist@proxy + 0)
129a : a5 1c __ LDA ACCU + 1 
129c : 30 ea __ BMI $1288 ; (main.s44 + 10)
.s39:
129e : 85 54 __ STA T0 + 1 
12a0 : 05 1b __ ORA ACCU + 0 
12a2 : f0 e4 __ BEQ $1288 ; (main.s44 + 10)
.s35:
12a4 : a5 1b __ LDA ACCU + 0 
12a6 : 85 53 __ STA T0 + 0 
12a8 : ad b7 69 LDA $69b7 ; (mk + 0)
12ab : 85 57 __ STA T2 + 0 
12ad : a9 a8 __ LDA #$a8
12af : 85 55 __ STA T1 + 0 
12b1 : a9 97 __ LDA #$97
12b3 : 85 56 __ STA T1 + 1 
12b5 : ad b8 69 LDA $69b8 ; (mk + 1)
12b8 : 85 58 __ STA T2 + 1 
.l36:
12ba : a0 00 __ LDY #$00
12bc : 84 04 __ STY WORK + 1 
12be : b1 55 __ LDA (T1 + 0),y 
12c0 : 85 59 __ STA T3 + 0 
12c2 : 85 1b __ STA ACCU + 0 
12c4 : c8 __ __ INY
12c5 : b1 55 __ LDA (T1 + 0),y 
12c7 : 85 5a __ STA T3 + 1 
12c9 : 85 1c __ STA ACCU + 1 
12cb : 20 11 51 JSR $5111 ; (divs16@proxy + 0)
12ce : a5 1b __ LDA ACCU + 0 
12d0 : 8d 78 cf STA $cf78 ; (i + 0)
12d3 : a5 1c __ LDA ACCU + 1 
12d5 : 85 5c __ STA T4 + 1 
12d7 : a5 59 __ LDA T3 + 0 
12d9 : 85 1b __ STA ACCU + 0 
12db : a5 5a __ LDA T3 + 1 
12dd : 85 1c __ STA ACCU + 1 
12df : a9 00 __ LDA #$00
12e1 : 8d 79 cf STA $cf79 ; (i + 1)
12e4 : 85 04 __ STA WORK + 1 
12e6 : 20 0a 54 JSR $540a ; (mods16@proxy + 0)
12e9 : a5 05 __ LDA WORK + 2 
12eb : 8d 76 cf STA $cf76 ; (j + 0)
12ee : a9 00 __ LDA #$00
12f0 : 8d 77 cf STA $cf77 ; (j + 1)
12f3 : ad 78 cf LDA $cf78 ; (i + 0)
12f6 : 85 1b __ STA ACCU + 0 
12f8 : a5 5c __ LDA T4 + 1 
12fa : 85 1c __ STA ACCU + 1 
12fc : a9 13 __ LDA #$13
12fe : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
1301 : 18 __ __ CLC
1302 : a9 4e __ LDA #$4e
1304 : 65 1b __ ADC ACCU + 0 
1306 : 85 5b __ STA T4 + 0 
1308 : a9 68 __ LDA #$68
130a : 65 1c __ ADC ACCU + 1 
130c : 85 5c __ STA T4 + 1 
130e : a9 00 __ LDA #$00
1310 : ac 76 cf LDY $cf76 ; (j + 0)
1313 : 91 5b __ STA (T4 + 0),y 
1315 : e6 57 __ INC T2 + 0 
1317 : d0 02 __ BNE $131b ; (main.s132 + 0)
.s131:
1319 : e6 58 __ INC T2 + 1 
.s132:
131b : 18 __ __ CLC
131c : a5 55 __ LDA T1 + 0 
131e : 69 02 __ ADC #$02
1320 : 85 55 __ STA T1 + 0 
1322 : 90 02 __ BCC $1326 ; (main.s134 + 0)
.s133:
1324 : e6 56 __ INC T1 + 1 
.s134:
1326 : a5 53 __ LDA T0 + 0 
1328 : d0 02 __ BNE $132c ; (main.s129 + 0)
.s128:
132a : c6 54 __ DEC T0 + 1 
.s129:
132c : c6 53 __ DEC T0 + 0 
132e : d0 8a __ BNE $12ba ; (main.l36 + 0)
.s130:
1330 : a5 54 __ LDA T0 + 1 
1332 : d0 86 __ BNE $12ba ; (main.l36 + 0)
.s37:
1334 : a5 57 __ LDA T2 + 0 
1336 : 8d b7 69 STA $69b7 ; (mk + 0)
1339 : a5 58 __ LDA T2 + 1 
133b : 8d b8 69 STA $69b8 ; (mk + 1)
133e : 4c e8 11 JMP $11e8 ; (main.s38 + 0)
.s9:
1341 : a9 00 __ LDA #$00
1343 : 8d c8 69 STA $69c8 ; (umove + 1)
1346 : 8d ca 69 STA $69ca ; (mymove + 1)
1349 : a9 02 __ LDA #$02
134b : 8d c7 69 STA $69c7 ; (umove + 0)
134e : a9 01 __ LDA #$01
1350 : 8d c9 69 STA $69c9 ; (mymove + 0)
1353 : ad 97 cf LDA $cf97 ; (i + 1)
1356 : 0d 96 cf ORA $cf96 ; (i + 0)
1359 : d0 03 __ BNE $135e ; (main.s10 + 0)
135b : 4c d3 0b JMP $0bd3 ; (main.s104 + 0)
.s10:
135e : 20 19 28 JSR $2819 ; (genmove@proxy + 0)
1361 : ad 96 cf LDA $cf96 ; (i + 0)
1364 : 85 1b __ STA ACCU + 0 
1366 : ad 97 cf LDA $cf97 ; (i + 1)
1369 : 85 1c __ STA ACCU + 1 
136b : a9 13 __ LDA #$13
136d : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
1370 : 18 __ __ CLC
1371 : a9 4e __ LDA #$4e
1373 : 65 1b __ ADC ACCU + 0 
1375 : 85 53 __ STA T0 + 0 
1377 : a9 68 __ LDA #$68
1379 : 65 1c __ ADC ACCU + 1 
137b : 85 54 __ STA T0 + 1 
137d : a9 01 __ LDA #$01
137f : ac 94 cf LDY $cf94 ; (j + 0)
1382 : 91 53 __ STA (T0 + 0),y 
1384 : 20 74 1d JSR $1d74 ; (showboard.s1 + 0)
1387 : 4c e2 0b JMP $0be2 ; (main.s11 + 0)
--------------------------------------------------------------------
printf: ; printf(const u8*)->void
;  18, "/usr/local/include/oscar64/stdio.h"
.s1:
138a : a2 08 __ LDX #$08
138c : b5 53 __ LDA T4 + 0,x 
138e : 9d a3 cf STA $cfa3,x ; (printf@stack + 0)
1391 : ca __ __ DEX
1392 : 10 f8 __ BPL $138c ; (printf.s1 + 2)
.s4:
1394 : ad fa cf LDA $cffa ; (sstack + 0)
1397 : 85 58 __ STA T10 + 0 
1399 : a9 fc __ LDA #$fc
139b : 85 56 __ STA T8 + 0 
139d : a9 cf __ LDA #$cf
139f : 85 57 __ STA T8 + 1 
13a1 : a9 00 __ LDA #$00
13a3 : 85 52 __ STA T6 + 0 
13a5 : ad fb cf LDA $cffb ; (sstack + 1)
13a8 : 85 59 __ STA T10 + 1 
.l5:
13aa : a0 00 __ LDY #$00
13ac : b1 58 __ LDA (T10 + 0),y 
13ae : d0 16 __ BNE $13c6 ; (printf.s6 + 0)
.s166:
13b0 : a6 52 __ LDX T6 + 0 
13b2 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
13b5 : 8a __ __ TXA
13b6 : f0 03 __ BEQ $13bb ; (printf.s3 + 0)
.s167:
13b8 : 20 c0 1a JSR $1ac0 ; (puts@proxy + 0)
.s3:
13bb : a2 08 __ LDX #$08
13bd : bd a3 cf LDA $cfa3,x ; (printf@stack + 0)
13c0 : 95 53 __ STA T4 + 0,x 
13c2 : ca __ __ DEX
13c3 : 10 f8 __ BPL $13bd ; (printf.s3 + 2)
13c5 : 60 __ __ RTS
.s6:
13c6 : c9 25 __ CMP #$25
13c8 : f0 28 __ BEQ $13f2 ; (printf.s7 + 0)
.s164:
13ca : a6 52 __ LDX T6 + 0 
13cc : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
13cf : e6 58 __ INC T10 + 0 
13d1 : d0 02 __ BNE $13d5 ; (printf.s210 + 0)
.s209:
13d3 : e6 59 __ INC T10 + 1 
.s210:
13d5 : e8 __ __ INX
13d6 : 86 52 __ STX T6 + 0 
13d8 : e0 28 __ CPX #$28
13da : 90 ce __ BCC $13aa ; (printf.l5 + 0)
.s165:
13dc : a9 b8 __ LDA #$b8
13de : 85 0d __ STA P0 
13e0 : a9 cf __ LDA #$cf
13e2 : 85 0e __ STA P1 
13e4 : 98 __ __ TYA
13e5 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
.s156:
13e8 : 20 c8 1a JSR $1ac8 ; (puts.l4 + 0)
13eb : a9 00 __ LDA #$00
.s180:
13ed : 85 52 __ STA T6 + 0 
13ef : 4c aa 13 JMP $13aa ; (printf.l5 + 0)
.s7:
13f2 : a5 52 __ LDA T6 + 0 
13f4 : f0 0c __ BEQ $1402 ; (printf.s9 + 0)
.s8:
13f6 : aa __ __ TAX
13f7 : 98 __ __ TYA
13f8 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
13fb : 20 c0 1a JSR $1ac0 ; (puts@proxy + 0)
13fe : a9 00 __ LDA #$00
1400 : 85 52 __ STA T6 + 0 
.s9:
1402 : 8d b5 cf STA $cfb5 ; (si.sign + 0)
1405 : 8d b6 cf STA $cfb6 ; (si.left + 0)
1408 : 8d b7 cf STA $cfb7 ; (si.prefix + 0)
140b : a0 01 __ LDY #$01
140d : b1 58 __ LDA (T10 + 0),y 
140f : a2 20 __ LDX #$20
1411 : 8e b0 cf STX $cfb0 ; (si.fill + 0)
1414 : a2 00 __ LDX #$00
1416 : 8e b1 cf STX $cfb1 ; (si.width + 0)
1419 : ca __ __ DEX
141a : 8e b2 cf STX $cfb2 ; (si.precision + 0)
141d : a2 0a __ LDX #$0a
141f : 8e b4 cf STX $cfb4 ; (si.base + 0)
1422 : aa __ __ TAX
1423 : a9 02 __ LDA #$02
1425 : d0 07 __ BNE $142e ; (printf.l10 + 0)
.s12:
1427 : a0 00 __ LDY #$00
1429 : b1 58 __ LDA (T10 + 0),y 
142b : aa __ __ TAX
142c : a9 01 __ LDA #$01
.l10:
142e : 18 __ __ CLC
142f : 65 58 __ ADC T10 + 0 
1431 : 85 58 __ STA T10 + 0 
1433 : 90 02 __ BCC $1437 ; (printf.s185 + 0)
.s184:
1435 : e6 59 __ INC T10 + 1 
.s185:
1437 : e0 2b __ CPX #$2b
1439 : d0 07 __ BNE $1442 ; (printf.s13 + 0)
.s11:
143b : a9 01 __ LDA #$01
143d : 8d b5 cf STA $cfb5 ; (si.sign + 0)
1440 : d0 e5 __ BNE $1427 ; (printf.s12 + 0)
.s13:
1442 : 8a __ __ TXA
1443 : e0 30 __ CPX #$30
1445 : d0 06 __ BNE $144d ; (printf.s15 + 0)
.s14:
1447 : 8d b0 cf STA $cfb0 ; (si.fill + 0)
144a : 4c 27 14 JMP $1427 ; (printf.s12 + 0)
.s15:
144d : c9 23 __ CMP #$23
144f : d0 07 __ BNE $1458 ; (printf.s17 + 0)
.s16:
1451 : a9 01 __ LDA #$01
1453 : 8d b7 cf STA $cfb7 ; (si.prefix + 0)
1456 : d0 cf __ BNE $1427 ; (printf.s12 + 0)
.s17:
1458 : c9 2d __ CMP #$2d
145a : d0 07 __ BNE $1463 ; (printf.s19 + 0)
.s18:
145c : a9 01 __ LDA #$01
145e : 8d b6 cf STA $cfb6 ; (si.left + 0)
1461 : d0 c4 __ BNE $1427 ; (printf.s12 + 0)
.s19:
1463 : 85 4a __ STA T1 + 0 
1465 : c9 30 __ CMP #$30
1467 : 90 33 __ BCC $149c ; (printf.s25 + 0)
.s20:
1469 : c9 3a __ CMP #$3a
146b : b0 60 __ BCS $14cd ; (printf.s31 + 0)
.s21:
146d : a0 00 __ LDY #$00
146f : 84 46 __ STY T0 + 0 
1471 : c9 3a __ CMP #$3a
1473 : b0 22 __ BCS $1497 ; (printf.s24 + 0)
.l23:
1475 : a5 46 __ LDA T0 + 0 
1477 : 0a __ __ ASL
1478 : 0a __ __ ASL
1479 : 18 __ __ CLC
147a : 65 46 __ ADC T0 + 0 
147c : 0a __ __ ASL
147d : 18 __ __ CLC
147e : 65 4a __ ADC T1 + 0 
1480 : 38 __ __ SEC
1481 : e9 30 __ SBC #$30
1483 : 85 46 __ STA T0 + 0 
1485 : b1 58 __ LDA (T10 + 0),y 
1487 : 85 4a __ STA T1 + 0 
1489 : e6 58 __ INC T10 + 0 
148b : d0 02 __ BNE $148f ; (printf.s208 + 0)
.s207:
148d : e6 59 __ INC T10 + 1 
.s208:
148f : c9 30 __ CMP #$30
1491 : 90 04 __ BCC $1497 ; (printf.s24 + 0)
.s22:
1493 : c9 3a __ CMP #$3a
1495 : 90 de __ BCC $1475 ; (printf.l23 + 0)
.s24:
1497 : a6 46 __ LDX T0 + 0 
1499 : 8e b1 cf STX $cfb1 ; (si.width + 0)
.s25:
149c : c9 2e __ CMP #$2e
149e : d0 2d __ BNE $14cd ; (printf.s31 + 0)
.s26:
14a0 : a9 00 __ LDA #$00
14a2 : f0 0e __ BEQ $14b2 ; (printf.l27 + 0)
.s29:
14a4 : a5 46 __ LDA T0 + 0 
14a6 : 0a __ __ ASL
14a7 : 0a __ __ ASL
14a8 : 18 __ __ CLC
14a9 : 65 46 __ ADC T0 + 0 
14ab : 0a __ __ ASL
14ac : 18 __ __ CLC
14ad : 65 4a __ ADC T1 + 0 
14af : 38 __ __ SEC
14b0 : e9 30 __ SBC #$30
.l27:
14b2 : 85 46 __ STA T0 + 0 
14b4 : a0 00 __ LDY #$00
14b6 : b1 58 __ LDA (T10 + 0),y 
14b8 : 85 4a __ STA T1 + 0 
14ba : e6 58 __ INC T10 + 0 
14bc : d0 02 __ BNE $14c0 ; (printf.s187 + 0)
.s186:
14be : e6 59 __ INC T10 + 1 
.s187:
14c0 : c9 30 __ CMP #$30
14c2 : 90 04 __ BCC $14c8 ; (printf.s30 + 0)
.s28:
14c4 : c9 3a __ CMP #$3a
14c6 : 90 dc __ BCC $14a4 ; (printf.s29 + 0)
.s30:
14c8 : a6 46 __ LDX T0 + 0 
14ca : 8e b2 cf STX $cfb2 ; (si.precision + 0)
.s31:
14cd : c9 64 __ CMP #$64
14cf : f0 0c __ BEQ $14dd ; (printf.s32 + 0)
.s34:
14d1 : c9 44 __ CMP #$44
14d3 : f0 08 __ BEQ $14dd ; (printf.s32 + 0)
.s35:
14d5 : c9 69 __ CMP #$69
14d7 : f0 04 __ BEQ $14dd ; (printf.s32 + 0)
.s36:
14d9 : c9 49 __ CMP #$49
14db : d0 11 __ BNE $14ee ; (printf.s37 + 0)
.s32:
14dd : a0 00 __ LDY #$00
14df : b1 56 __ LDA (T8 + 0),y 
14e1 : 85 11 __ STA P4 
14e3 : c8 __ __ INY
14e4 : b1 56 __ LDA (T8 + 0),y 
14e6 : 85 12 __ STA P5 
14e8 : 98 __ __ TYA
.s177:
14e9 : 85 13 __ STA P6 
14eb : 4c a6 1a JMP $1aa6 ; (printf.s33 + 0)
.s37:
14ee : c9 75 __ CMP #$75
14f0 : f0 04 __ BEQ $14f6 ; (printf.s38 + 0)
.s39:
14f2 : c9 55 __ CMP #$55
14f4 : d0 0f __ BNE $1505 ; (printf.s40 + 0)
.s38:
14f6 : a0 00 __ LDY #$00
14f8 : b1 56 __ LDA (T8 + 0),y 
14fa : 85 11 __ STA P4 
14fc : c8 __ __ INY
14fd : b1 56 __ LDA (T8 + 0),y 
14ff : 85 12 __ STA P5 
1501 : a9 00 __ LDA #$00
1503 : f0 e4 __ BEQ $14e9 ; (printf.s177 + 0)
.s40:
1505 : c9 78 __ CMP #$78
1507 : f0 04 __ BEQ $150d ; (printf.s41 + 0)
.s42:
1509 : c9 58 __ CMP #$58
150b : d0 1e __ BNE $152b ; (printf.s43 + 0)
.s41:
150d : a0 00 __ LDY #$00
150f : 84 13 __ STY P6 
1511 : a9 10 __ LDA #$10
1513 : 8d b4 cf STA $cfb4 ; (si.base + 0)
1516 : b1 56 __ LDA (T8 + 0),y 
1518 : 85 11 __ STA P4 
151a : c8 __ __ INY
151b : b1 56 __ LDA (T8 + 0),y 
151d : 85 12 __ STA P5 
151f : a5 4a __ LDA T1 + 0 
1521 : 29 e0 __ AND #$e0
1523 : 09 01 __ ORA #$01
1525 : 8d b3 cf STA $cfb3 ; (si.cha + 0)
1528 : 4c a6 1a JMP $1aa6 ; (printf.s33 + 0)
.s43:
152b : c9 6c __ CMP #$6c
152d : d0 03 __ BNE $1532 ; (printf.s56 + 0)
152f : 4c 28 1a JMP $1a28 ; (printf.s44 + 0)
.s56:
1532 : c9 4c __ CMP #$4c
1534 : f0 f9 __ BEQ $152f ; (printf.s43 + 4)
.s57:
1536 : c9 66 __ CMP #$66
1538 : d0 03 __ BNE $153d ; (printf.s142 + 0)
153a : 4c 0d 16 JMP $160d ; (printf.s58 + 0)
.s142:
153d : c9 67 __ CMP #$67
153f : f0 f9 __ BEQ $153a ; (printf.s57 + 4)
.s143:
1541 : c9 65 __ CMP #$65
1543 : f0 f5 __ BEQ $153a ; (printf.s57 + 4)
.s144:
1545 : c9 46 __ CMP #$46
1547 : f0 f1 __ BEQ $153a ; (printf.s57 + 4)
.s145:
1549 : c9 47 __ CMP #$47
154b : f0 ed __ BEQ $153a ; (printf.s57 + 4)
.s146:
154d : c9 45 __ CMP #$45
154f : f0 e9 __ BEQ $153a ; (printf.s57 + 4)
.s147:
1551 : c9 73 __ CMP #$73
1553 : f0 2d __ BEQ $1582 ; (printf.s148 + 0)
.s157:
1555 : c9 53 __ CMP #$53
1557 : f0 29 __ BEQ $1582 ; (printf.s148 + 0)
.s158:
1559 : c9 63 __ CMP #$63
155b : f0 12 __ BEQ $156f ; (printf.s159 + 0)
.s161:
155d : c9 43 __ CMP #$43
155f : f0 0e __ BEQ $156f ; (printf.s159 + 0)
.s162:
1561 : aa __ __ TAX
1562 : d0 03 __ BNE $1567 ; (printf.s163 + 0)
1564 : 4c aa 13 JMP $13aa ; (printf.l5 + 0)
.s163:
1567 : 8d b8 cf STA $cfb8 ; (buff[0] + 0)
.s160:
156a : a9 01 __ LDA #$01
156c : 4c ed 13 JMP $13ed ; (printf.s180 + 0)
.s159:
156f : a0 00 __ LDY #$00
1571 : b1 56 __ LDA (T8 + 0),y 
1573 : 8d b8 cf STA $cfb8 ; (buff[0] + 0)
1576 : a5 56 __ LDA T8 + 0 
1578 : 69 01 __ ADC #$01
157a : 85 56 __ STA T8 + 0 
157c : 90 ec __ BCC $156a ; (printf.s160 + 0)
.s206:
157e : e6 57 __ INC T8 + 1 
1580 : b0 e8 __ BCS $156a ; (printf.s160 + 0)
.s148:
1582 : a0 00 __ LDY #$00
1584 : 84 50 __ STY T3 + 0 
1586 : b1 56 __ LDA (T8 + 0),y 
1588 : 85 4a __ STA T1 + 0 
158a : c8 __ __ INY
158b : b1 56 __ LDA (T8 + 0),y 
158d : 85 4b __ STA T1 + 1 
158f : a5 56 __ LDA T8 + 0 
1591 : 69 01 __ ADC #$01
1593 : 85 56 __ STA T8 + 0 
1595 : 90 02 __ BCC $1599 ; (printf.s205 + 0)
.s204:
1597 : e6 57 __ INC T8 + 1 
.s205:
1599 : ad b1 cf LDA $cfb1 ; (si.width + 0)
159c : f0 0d __ BEQ $15ab ; (printf.s150 + 0)
.s182:
159e : a0 00 __ LDY #$00
15a0 : b1 4a __ LDA (T1 + 0),y 
15a2 : f0 05 __ BEQ $15a9 ; (printf.s183 + 0)
.l149:
15a4 : c8 __ __ INY
15a5 : b1 4a __ LDA (T1 + 0),y 
15a7 : d0 fb __ BNE $15a4 ; (printf.l149 + 0)
.s183:
15a9 : 84 50 __ STY T3 + 0 
.s150:
15ab : ad b6 cf LDA $cfb6 ; (si.left + 0)
15ae : 85 4e __ STA T2 + 0 
15b0 : d0 07 __ BNE $15b9 ; (printf.s151 + 0)
.s154:
15b2 : a4 50 __ LDY T3 + 0 
15b4 : cc b1 cf CPY $cfb1 ; (si.width + 0)
15b7 : 90 2a __ BCC $15e3 ; (printf.s155 + 0)
.s151:
15b9 : a5 4a __ LDA T1 + 0 
15bb : 85 0d __ STA P0 
15bd : a5 4b __ LDA T1 + 1 
15bf : 85 0e __ STA P1 
15c1 : 20 c8 1a JSR $1ac8 ; (puts.l4 + 0)
15c4 : a5 4e __ LDA T2 + 0 
15c6 : f0 9c __ BEQ $1564 ; (printf.s162 + 3)
.s152:
15c8 : a4 50 __ LDY T3 + 0 
15ca : cc b1 cf CPY $cfb1 ; (si.width + 0)
15cd : b0 95 __ BCS $1564 ; (printf.s162 + 3)
.s153:
15cf : ad b0 cf LDA $cfb0 ; (si.fill + 0)
15d2 : a2 00 __ LDX #$00
.l173:
15d4 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
15d7 : e8 __ __ INX
15d8 : c8 __ __ INY
15d9 : cc b1 cf CPY $cfb1 ; (si.width + 0)
15dc : 90 f6 __ BCC $15d4 ; (printf.l173 + 0)
.s171:
15de : 86 52 __ STX T6 + 0 
15e0 : 4c aa 13 JMP $13aa ; (printf.l5 + 0)
.s155:
15e3 : ad b0 cf LDA $cfb0 ; (si.fill + 0)
15e6 : a2 00 __ LDX #$00
.l174:
15e8 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
15eb : e8 __ __ INX
15ec : c8 __ __ INY
15ed : cc b1 cf CPY $cfb1 ; (si.width + 0)
15f0 : 90 f6 __ BCC $15e8 ; (printf.l174 + 0)
.s172:
15f2 : a9 b8 __ LDA #$b8
15f4 : 85 0d __ STA P0 
15f6 : a9 cf __ LDA #$cf
15f8 : 85 0e __ STA P1 
15fa : a9 00 __ LDA #$00
15fc : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
15ff : 20 c8 1a JSR $1ac8 ; (puts.l4 + 0)
1602 : a5 4a __ LDA T1 + 0 
1604 : 85 0d __ STA P0 
1606 : a5 4b __ LDA T1 + 1 
1608 : 85 0e __ STA P1 
160a : 4c e8 13 JMP $13e8 ; (printf.s156 + 0)
.s58:
160d : 29 e0 __ AND #$e0
160f : 09 01 __ ORA #$01
1611 : 85 4e __ STA T2 + 0 
1613 : 8d b3 cf STA $cfb3 ; (si.cha + 0)
1616 : a5 4a __ LDA T1 + 0 
1618 : e5 4e __ SBC T2 + 0 
161a : 18 __ __ CLC
161b : 69 61 __ ADC #$61
161d : 85 4a __ STA T1 + 0 
161f : a0 00 __ LDY #$00
1621 : b1 56 __ LDA (T8 + 0),y 
1623 : 85 46 __ STA T0 + 0 
1625 : c8 __ __ INY
1626 : b1 56 __ LDA (T8 + 0),y 
1628 : 85 47 __ STA T0 + 1 
162a : c8 __ __ INY
162b : b1 56 __ LDA (T8 + 0),y 
162d : 85 48 __ STA T0 + 2 
162f : c8 __ __ INY
1630 : b1 56 __ LDA (T8 + 0),y 
1632 : 85 49 __ STA T0 + 3 
1634 : 29 7f __ AND #$7f
1636 : 05 48 __ ORA T0 + 2 
1638 : 05 47 __ ORA T0 + 1 
163a : 05 46 __ ORA T0 + 0 
163c : f0 13 __ BEQ $1651 ; (printf.s139 + 0)
.s141:
163e : 24 49 __ BIT T0 + 3 
1640 : 10 0f __ BPL $1651 ; (printf.s139 + 0)
.s59:
1642 : a5 49 __ LDA T0 + 3 
1644 : 49 80 __ EOR #$80
1646 : 85 49 __ STA T0 + 3 
1648 : a9 2d __ LDA #$2d
.s60:
164a : 8d b8 cf STA $cfb8 ; (buff[0] + 0)
164d : a9 01 __ LDA #$01
164f : d0 09 __ BNE $165a ; (printf.s61 + 0)
.s139:
1651 : ad b5 cf LDA $cfb5 ; (si.sign + 0)
1654 : f0 04 __ BEQ $165a ; (printf.s61 + 0)
.s140:
1656 : a9 2b __ LDA #$2b
1658 : d0 f0 __ BNE $164a ; (printf.s60 + 0)
.s61:
165a : 85 45 __ STA T11 + 0 
165c : a5 48 __ LDA T0 + 2 
165e : 0a __ __ ASL
165f : a5 49 __ LDA T0 + 3 
1661 : 2a __ __ ROL
1662 : c9 ff __ CMP #$ff
1664 : d0 1b __ BNE $1681 ; (printf.s71 + 0)
.s62:
1666 : a5 4e __ LDA T2 + 0 
1668 : 09 08 __ ORA #$08
166a : a6 45 __ LDX T11 + 0 
166c : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
166f : 69 04 __ ADC #$04
1671 : 9d b9 cf STA $cfb9,x ; (buff[0] + 1)
1674 : 18 __ __ CLC
1675 : 69 f8 __ ADC #$f8
1677 : 9d ba cf STA $cfba,x ; (buff[0] + 2)
167a : 8a __ __ TXA
167b : 18 __ __ CLC
167c : 69 03 __ ADC #$03
167e : 4c 42 19 JMP $1942 ; (printf.s179 + 0)
.s71:
1681 : ad b2 cf LDA $cfb2 ; (si.precision + 0)
1684 : c9 ff __ CMP #$ff
1686 : d0 02 __ BNE $168a ; (printf.s72 + 0)
.s138:
1688 : a9 06 __ LDA #$06
.s72:
168a : 85 50 __ STA T3 + 0 
168c : 85 55 __ STA T7 + 0 
168e : a9 00 __ LDA #$00
1690 : 85 53 __ STA T4 + 0 
1692 : 85 54 __ STA T4 + 1 
1694 : a5 49 __ LDA T0 + 3 
1696 : 29 7f __ AND #$7f
1698 : 05 48 __ ORA T0 + 2 
169a : 05 47 __ ORA T0 + 1 
169c : 05 46 __ ORA T0 + 0 
169e : d0 03 __ BNE $16a3 ; (printf.s73 + 0)
16a0 : 4c 81 17 JMP $1781 ; (printf.s79 + 0)
.s73:
16a3 : a5 49 __ LDA T0 + 3 
16a5 : 30 5c __ BMI $1703 ; (printf.l76 + 0)
.s135:
16a7 : c9 44 __ CMP #$44
16a9 : d0 06 __ BNE $16b1 ; (printf.l137 + 0)
.s136:
16ab : a5 48 __ LDA T0 + 2 
16ad : c9 7a __ CMP #$7a
16af : f0 02 __ BEQ $16b3 ; (printf.l74 + 0)
.l137:
16b1 : 90 40 __ BCC $16f3 ; (printf.s75 + 0)
.l74:
16b3 : 18 __ __ CLC
16b4 : a5 53 __ LDA T4 + 0 
16b6 : 69 03 __ ADC #$03
16b8 : 85 53 __ STA T4 + 0 
16ba : 90 02 __ BCC $16be ; (printf.s203 + 0)
.s202:
16bc : e6 54 __ INC T4 + 1 
.s203:
16be : a2 46 __ LDX #$46
16c0 : 20 df 53 JSR $53df ; (load32 + 0)
16c3 : a9 00 __ LDA #$00
16c5 : 85 03 __ STA WORK + 0 
16c7 : 85 04 __ STA WORK + 1 
16c9 : a9 7a __ LDA #$7a
16cb : 85 05 __ STA WORK + 2 
16cd : a9 44 __ LDA #$44
16cf : 85 06 __ STA WORK + 3 
16d1 : 20 3b 4e JSR $4e3b ; (freg + 20)
16d4 : 20 21 50 JSR $5021 ; (crt_fdiv + 0)
16d7 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
16d9 : 85 46 __ STA T0 + 0 
16db : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
16dd : 85 47 __ STA T0 + 1 
16df : a6 1d __ LDX ACCU + 2 
16e1 : 86 48 __ STX T0 + 2 
16e3 : a5 1e __ LDA ACCU + 3 
16e5 : 85 49 __ STA T0 + 3 
16e7 : 30 0a __ BMI $16f3 ; (printf.s75 + 0)
.s133:
16e9 : c9 44 __ CMP #$44
16eb : d0 c4 __ BNE $16b1 ; (printf.l137 + 0)
.s134:
16ed : e0 7a __ CPX #$7a
16ef : f0 c2 __ BEQ $16b3 ; (printf.l74 + 0)
16f1 : d0 be __ BNE $16b1 ; (printf.l137 + 0)
.s75:
16f3 : a5 49 __ LDA T0 + 3 
16f5 : 30 0c __ BMI $1703 ; (printf.l76 + 0)
.s131:
16f7 : c9 3f __ CMP #$3f
16f9 : d0 06 __ BNE $1701 ; (printf.s130 + 0)
.s132:
16fb : a5 48 __ LDA T0 + 2 
16fd : c9 80 __ CMP #$80
16ff : f0 3d __ BEQ $173e ; (printf.s77 + 0)
.s130:
1701 : b0 3b __ BCS $173e ; (printf.s77 + 0)
.l76:
1703 : 38 __ __ SEC
1704 : a5 53 __ LDA T4 + 0 
1706 : e9 03 __ SBC #$03
1708 : 85 53 __ STA T4 + 0 
170a : b0 02 __ BCS $170e ; (printf.s198 + 0)
.s197:
170c : c6 54 __ DEC T4 + 1 
.s198:
170e : a9 00 __ LDA #$00
1710 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
1712 : 85 1c __ STA ACCU + 1 ; (fmt + 3)
1714 : a9 7a __ LDA #$7a
1716 : 85 1d __ STA ACCU + 2 
1718 : a9 44 __ LDA #$44
171a : 85 1e __ STA ACCU + 3 
171c : a2 46 __ LDX #$46
171e : 20 2b 4e JSR $4e2b ; (freg + 4)
1721 : 20 59 4f JSR $4f59 ; (crt_fmul + 0)
1724 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
1726 : 85 46 __ STA T0 + 0 
1728 : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
172a : 85 47 __ STA T0 + 1 
172c : a6 1d __ LDX ACCU + 2 
172e : 86 48 __ STX T0 + 2 
1730 : a5 1e __ LDA ACCU + 3 
1732 : 85 49 __ STA T0 + 3 
1734 : 30 cd __ BMI $1703 ; (printf.l76 + 0)
.s128:
1736 : c9 3f __ CMP #$3f
1738 : d0 c7 __ BNE $1701 ; (printf.s130 + 0)
.s129:
173a : e0 80 __ CPX #$80
173c : d0 c3 __ BNE $1701 ; (printf.s130 + 0)
.s77:
173e : a5 49 __ LDA T0 + 3 
1740 : 30 3f __ BMI $1781 ; (printf.s79 + 0)
.s125:
1742 : c9 41 __ CMP #$41
1744 : d0 06 __ BNE $174c ; (printf.l127 + 0)
.s126:
1746 : a5 48 __ LDA T0 + 2 
1748 : c9 20 __ CMP #$20
174a : f0 02 __ BEQ $174e ; (printf.l78 + 0)
.l127:
174c : 90 33 __ BCC $1781 ; (printf.s79 + 0)
.l78:
174e : e6 53 __ INC T4 + 0 
1750 : d0 02 __ BNE $1754 ; (printf.s201 + 0)
.s200:
1752 : e6 54 __ INC T4 + 1 
.s201:
1754 : a2 46 __ LDX #$46
1756 : 20 df 53 JSR $53df ; (load32 + 0)
1759 : a9 00 __ LDA #$00
175b : 85 03 __ STA WORK + 0 
175d : 85 04 __ STA WORK + 1 
175f : 20 11 54 JSR $5411 ; (freg@proxy + 0)
1762 : 20 21 50 JSR $5021 ; (crt_fdiv + 0)
1765 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
1767 : 85 46 __ STA T0 + 0 
1769 : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
176b : 85 47 __ STA T0 + 1 
176d : a6 1d __ LDX ACCU + 2 
176f : 86 48 __ STX T0 + 2 
1771 : a5 1e __ LDA ACCU + 3 
1773 : 85 49 __ STA T0 + 3 
1775 : 30 0a __ BMI $1781 ; (printf.s79 + 0)
.s123:
1777 : c9 41 __ CMP #$41
1779 : d0 d1 __ BNE $174c ; (printf.l127 + 0)
.s124:
177b : e0 20 __ CPX #$20
177d : f0 cf __ BEQ $174e ; (printf.l78 + 0)
177f : d0 cb __ BNE $174c ; (printf.l127 + 0)
.s79:
1781 : a5 4a __ LDA T1 + 0 
1783 : c9 65 __ CMP #$65
1785 : d0 04 __ BNE $178b ; (printf.s81 + 0)
.s80:
1787 : a9 01 __ LDA #$01
1789 : d0 02 __ BNE $178d ; (printf.s82 + 0)
.s81:
178b : a9 00 __ LDA #$00
.s82:
178d : 85 5a __ STA T12 + 0 
178f : a6 50 __ LDX T3 + 0 
1791 : e8 __ __ INX
1792 : 86 52 __ STX T6 + 0 
1794 : a5 4a __ LDA T1 + 0 
1796 : c9 67 __ CMP #$67
1798 : d0 13 __ BNE $17ad ; (printf.s110 + 0)
.s83:
179a : a5 54 __ LDA T4 + 1 
179c : 30 08 __ BMI $17a6 ; (printf.s84 + 0)
.s122:
179e : d0 06 __ BNE $17a6 ; (printf.s84 + 0)
.s121:
17a0 : a5 53 __ LDA T4 + 0 
17a2 : c9 04 __ CMP #$04
17a4 : 90 07 __ BCC $17ad ; (printf.s110 + 0)
.s84:
17a6 : a9 01 __ LDA #$01
17a8 : 85 5a __ STA T12 + 0 
17aa : 4c c4 19 JMP $19c4 ; (printf.s85 + 0)
.s110:
17ad : a5 5a __ LDA T12 + 0 
17af : d0 f9 __ BNE $17aa ; (printf.s84 + 4)
.s111:
17b1 : 24 54 __ BIT T4 + 1 
17b3 : 10 30 __ BPL $17e5 ; (printf.s113 + 0)
.s112:
17b5 : a2 46 __ LDX #$46
17b7 : 20 df 53 JSR $53df ; (load32 + 0)
.l169:
17ba : a9 00 __ LDA #$00
17bc : 85 03 __ STA WORK + 0 
17be : 85 04 __ STA WORK + 1 
17c0 : 20 11 54 JSR $5411 ; (freg@proxy + 0)
17c3 : 20 21 50 JSR $5021 ; (crt_fdiv + 0)
17c6 : 18 __ __ CLC
17c7 : a5 53 __ LDA T4 + 0 
17c9 : 69 01 __ ADC #$01
17cb : 85 53 __ STA T4 + 0 
17cd : a5 54 __ LDA T4 + 1 
17cf : 69 00 __ ADC #$00
17d1 : 85 54 __ STA T4 + 1 
17d3 : 30 e5 __ BMI $17ba ; (printf.l169 + 0)
.s170:
17d5 : a5 1e __ LDA ACCU + 3 
17d7 : 85 49 __ STA T0 + 3 
17d9 : a5 1d __ LDA ACCU + 2 
17db : 85 48 __ STA T0 + 2 
17dd : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
17df : 85 47 __ STA T0 + 1 
17e1 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
17e3 : 85 46 __ STA T0 + 0 
.s113:
17e5 : 18 __ __ CLC
17e6 : a5 50 __ LDA T3 + 0 
17e8 : 65 53 __ ADC T4 + 0 
17ea : 18 __ __ CLC
17eb : 69 01 __ ADC #$01
17ed : 85 52 __ STA T6 + 0 
17ef : c9 07 __ CMP #$07
17f1 : 90 0f __ BCC $1802 ; (printf.s114 + 0)
.s120:
17f3 : a2 02 __ LDX #$02
17f5 : bd 40 5c LDA $5c40,x ; (fround5[0] + 24)
17f8 : 95 4a __ STA T1 + 0,x 
17fa : ca __ __ DEX
17fb : 10 f8 __ BPL $17f5 ; (printf.s120 + 2)
17fd : ad 43 5c LDA $5c43 ; (fround5[0] + 27)
1800 : b0 15 __ BCS $1817 ; (printf.s115 + 0)
.s114:
1802 : 0a __ __ ASL
1803 : 0a __ __ ASL
1804 : aa __ __ TAX
1805 : bd 24 5c LDA $5c24,x ; (zxfonttr_bin[0] + 2044)
1808 : 85 4a __ STA T1 + 0 
180a : bd 25 5c LDA $5c25,x ; (zxfonttr_bin[0] + 2045)
180d : 85 4b __ STA T1 + 1 
180f : bd 26 5c LDA $5c26,x ; (zxfonttr_bin[0] + 2046)
1812 : 85 4c __ STA T1 + 2 
1814 : bd 27 5c LDA $5c27,x ; (zxfonttr_bin[0] + 2047)
.s115:
1817 : 85 4d __ STA T1 + 3 
1819 : a2 46 __ LDX #$46
181b : 20 df 53 JSR $53df ; (load32 + 0)
181e : a2 4a __ LDX #$4a
1820 : 20 2b 4e JSR $4e2b ; (freg + 4)
1823 : 20 72 4e JSR $4e72 ; (faddsub + 6)
1826 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
1828 : 85 46 __ STA T0 + 0 
182a : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
182c : 85 47 __ STA T0 + 1 
182e : a6 1d __ LDX ACCU + 2 
1830 : 86 48 __ STX T0 + 2 
1832 : a5 1e __ LDA ACCU + 3 
1834 : 85 49 __ STA T0 + 3 
1836 : 30 20 __ BMI $1858 ; (printf.s90 + 0)
.s117:
1838 : c9 41 __ CMP #$41
183a : d0 04 __ BNE $1840 ; (printf.s119 + 0)
.s118:
183c : e0 20 __ CPX #$20
183e : f0 02 __ BEQ $1842 ; (printf.s116 + 0)
.s119:
1840 : 90 16 __ BCC $1858 ; (printf.s90 + 0)
.s116:
1842 : a6 50 __ LDX T3 + 0 
1844 : ca __ __ DEX
1845 : 86 55 __ STX T7 + 0 
.s89:
1847 : a9 00 __ LDA #$00
1849 : 85 03 __ STA WORK + 0 
184b : 85 04 __ STA WORK + 1 
184d : 20 11 54 JSR $5411 ; (freg@proxy + 0)
1850 : 20 21 50 JSR $5021 ; (crt_fdiv + 0)
1853 : a2 46 __ LDX #$46
1855 : 20 ce 53 JSR $53ce ; (store32 + 0)
.s90:
1858 : 38 __ __ SEC
1859 : a5 52 __ LDA T6 + 0 
185b : e5 55 __ SBC T7 + 0 
185d : 85 50 __ STA T3 + 0 
185f : a5 52 __ LDA T6 + 0 
1861 : c9 15 __ CMP #$15
1863 : 90 04 __ BCC $1869 ; (printf.s105 + 0)
.s91:
1865 : a9 14 __ LDA #$14
1867 : 85 52 __ STA T6 + 0 
.s105:
1869 : a5 50 __ LDA T3 + 0 
186b : d0 09 __ BNE $1876 ; (printf.s92 + 0)
.s104:
186d : a9 30 __ LDA #$30
186f : a6 45 __ LDX T11 + 0 
1871 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
1874 : e6 45 __ INC T11 + 0 
.s92:
1876 : a9 00 __ LDA #$00
1878 : 85 5b __ STA T13 + 0 
187a : c5 50 __ CMP T3 + 0 
187c : f0 4f __ BEQ $18cd ; (printf.l94 + 0)
.s95:
187e : c9 07 __ CMP #$07
1880 : 90 09 __ BCC $188b ; (printf.s103 + 0)
.l96:
1882 : a9 30 __ LDA #$30
1884 : a6 45 __ LDX T11 + 0 
1886 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
1889 : b0 34 __ BCS $18bf ; (printf.l97 + 0)
.s103:
188b : a2 46 __ LDX #$46
188d : 20 df 53 JSR $53df ; (load32 + 0)
1890 : 20 36 52 JSR $5236 ; (f32_to_i16 + 0)
1893 : 18 __ __ CLC
1894 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
1896 : 69 30 __ ADC #$30
1898 : a6 45 __ LDX T11 + 0 
189a : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
189d : 20 82 52 JSR $5282 ; (sint16_to_float + 0)
18a0 : a2 46 __ LDX #$46
18a2 : 20 2b 4e JSR $4e2b ; (freg + 4)
18a5 : a5 1e __ LDA ACCU + 3 
18a7 : 49 80 __ EOR #$80
18a9 : 85 1e __ STA ACCU + 3 
18ab : 20 72 4e JSR $4e72 ; (faddsub + 6)
18ae : a9 00 __ LDA #$00
18b0 : 85 03 __ STA WORK + 0 
18b2 : 85 04 __ STA WORK + 1 
18b4 : 20 11 54 JSR $5411 ; (freg@proxy + 0)
18b7 : 20 59 4f JSR $4f59 ; (crt_fmul + 0)
18ba : a2 46 __ LDX #$46
18bc : 20 ce 53 JSR $53ce ; (store32 + 0)
.l97:
18bf : e6 45 __ INC T11 + 0 
18c1 : e6 5b __ INC T13 + 0 
18c3 : a5 5b __ LDA T13 + 0 
18c5 : c5 52 __ CMP T6 + 0 
18c7 : b0 15 __ BCS $18de ; (printf.s98 + 0)
.s93:
18c9 : c5 50 __ CMP T3 + 0 
18cb : d0 b1 __ BNE $187e ; (printf.s95 + 0)
.l94:
18cd : a9 2e __ LDA #$2e
18cf : a6 45 __ LDX T11 + 0 
18d1 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
18d4 : a5 5b __ LDA T13 + 0 
18d6 : c9 07 __ CMP #$07
18d8 : e6 45 __ INC T11 + 0 
18da : 90 af __ BCC $188b ; (printf.s103 + 0)
18dc : b0 a4 __ BCS $1882 ; (printf.l96 + 0)
.s98:
18de : a5 5a __ LDA T12 + 0 
18e0 : f0 62 __ BEQ $1944 ; (printf.s63 + 0)
.s99:
18e2 : a5 4e __ LDA T2 + 0 
18e4 : 69 03 __ ADC #$03
18e6 : a6 45 __ LDX T11 + 0 
18e8 : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
18eb : 24 54 __ BIT T4 + 1 
18ed : 30 07 __ BMI $18f6 ; (printf.s100 + 0)
.s102:
18ef : a9 2b __ LDA #$2b
18f1 : 9d b9 cf STA $cfb9,x ; (buff[0] + 1)
18f4 : d0 12 __ BNE $1908 ; (printf.s101 + 0)
.s100:
18f6 : a9 2d __ LDA #$2d
18f8 : 9d b9 cf STA $cfb9,x ; (buff[0] + 1)
18fb : 38 __ __ SEC
18fc : a9 00 __ LDA #$00
18fe : e5 53 __ SBC T4 + 0 
1900 : 85 53 __ STA T4 + 0 
1902 : a9 00 __ LDA #$00
1904 : e5 54 __ SBC T4 + 1 
1906 : 85 54 __ STA T4 + 1 
.s101:
1908 : a5 53 __ LDA T4 + 0 
190a : 85 1b __ STA ACCU + 0 ; (fmt + 2)
190c : a5 54 __ LDA T4 + 1 
190e : 85 1c __ STA ACCU + 1 ; (fmt + 3)
1910 : a9 0a __ LDA #$0a
1912 : 85 03 __ STA WORK + 0 
1914 : a9 00 __ LDA #$00
1916 : 85 04 __ STA WORK + 1 
1918 : 20 15 51 JSR $5115 ; (divs16 + 0)
191b : 18 __ __ CLC
191c : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
191e : 69 30 __ ADC #$30
1920 : a6 45 __ LDX T11 + 0 
1922 : 9d ba cf STA $cfba,x ; (buff[0] + 2)
1925 : a5 53 __ LDA T4 + 0 
1927 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
1929 : a5 54 __ LDA T4 + 1 
192b : 85 1c __ STA ACCU + 1 ; (fmt + 3)
192d : a9 0a __ LDA #$0a
192f : 85 03 __ STA WORK + 0 
1931 : 20 d7 51 JSR $51d7 ; (mods16@proxy + 0)
1934 : 18 __ __ CLC
1935 : a5 05 __ LDA WORK + 2 
1937 : 69 30 __ ADC #$30
1939 : a6 45 __ LDX T11 + 0 
193b : 9d bb cf STA $cfbb,x ; (buff[0] + 3)
193e : 8a __ __ TXA
193f : 18 __ __ CLC
1940 : 69 04 __ ADC #$04
.s179:
1942 : 85 45 __ STA T11 + 0 
.s63:
1944 : ad b1 cf LDA $cfb1 ; (si.width + 0)
1947 : 85 52 __ STA T6 + 0 
1949 : a5 45 __ LDA T11 + 0 
194b : c5 52 __ CMP T6 + 0 
194d : 90 06 __ BCC $1955 ; (printf.s64 + 0)
.s70:
194f : 85 52 __ STA T6 + 0 
.s66:
1951 : a9 04 __ LDA #$04
1953 : d0 60 __ BNE $19b5 ; (printf.s176 + 0)
.s64:
1955 : aa __ __ TAX
1956 : ad b6 cf LDA $cfb6 ; (si.left + 0)
1959 : d0 4e __ BNE $19a9 ; (printf.s65 + 0)
.s67:
195b : a5 52 __ LDA T6 + 0 
195d : 69 b7 __ ADC #$b7
195f : 85 4e __ STA T2 + 0 
1961 : a9 cf __ LDA #$cf
1963 : 69 00 __ ADC #$00
1965 : 85 4f __ STA T2 + 1 
1967 : 18 __ __ CLC
1968 : a9 b7 __ LDA #$b7
196a : 65 45 __ ADC T11 + 0 
196c : 85 50 __ STA T3 + 0 
196e : a9 cf __ LDA #$cf
1970 : 69 00 __ ADC #$00
1972 : 85 51 __ STA T3 + 1 
1974 : a9 01 __ LDA #$01
1976 : 85 53 __ STA T4 + 0 
1978 : a0 00 __ LDY #$00
.l168:
197a : b1 50 __ LDA (T3 + 0),y 
197c : 91 4e __ STA (T2 + 0),y 
197e : a5 50 __ LDA T3 + 0 
1980 : d0 02 __ BNE $1984 ; (printf.s194 + 0)
.s193:
1982 : c6 51 __ DEC T3 + 1 
.s194:
1984 : c6 50 __ DEC T3 + 0 
1986 : a5 4e __ LDA T2 + 0 
1988 : d0 02 __ BNE $198c ; (printf.s196 + 0)
.s195:
198a : c6 4f __ DEC T2 + 1 
.s196:
198c : c6 4e __ DEC T2 + 0 
198e : e6 53 __ INC T4 + 0 
1990 : e4 53 __ CPX T4 + 0 
1992 : b0 e6 __ BCS $197a ; (printf.l168 + 0)
.s68:
1994 : 38 __ __ SEC
1995 : a5 52 __ LDA T6 + 0 
1997 : e5 45 __ SBC T11 + 0 
1999 : f0 b6 __ BEQ $1951 ; (printf.s66 + 0)
.s69:
199b : 85 46 __ STA T0 + 0 
199d : a9 20 __ LDA #$20
.l181:
199f : 99 b8 cf STA $cfb8,y ; (buff[0] + 0)
19a2 : c8 __ __ INY
19a3 : c4 46 __ CPY T0 + 0 
19a5 : 90 f8 __ BCC $199f ; (printf.l181 + 0)
19a7 : b0 a8 __ BCS $1951 ; (printf.s66 + 0)
.s65:
19a9 : a9 20 __ LDA #$20
.l175:
19ab : 9d b8 cf STA $cfb8,x ; (buff[0] + 0)
19ae : e8 __ __ INX
19af : e4 52 __ CPX T6 + 0 
19b1 : 90 f8 __ BCC $19ab ; (printf.l175 + 0)
19b3 : b0 9c __ BCS $1951 ; (printf.s66 + 0)
.s176:
19b5 : 18 __ __ CLC
19b6 : 65 56 __ ADC T8 + 0 
19b8 : 85 56 __ STA T8 + 0 
19ba : b0 03 __ BCS $19bf ; (printf.s188 + 0)
19bc : 4c aa 13 JMP $13aa ; (printf.l5 + 0)
.s188:
19bf : e6 57 __ INC T8 + 1 
19c1 : 4c aa 13 JMP $13aa ; (printf.l5 + 0)
.s85:
19c4 : a5 52 __ LDA T6 + 0 
19c6 : c9 07 __ CMP #$07
19c8 : 90 0f __ BCC $19d9 ; (printf.s86 + 0)
.s109:
19ca : a2 02 __ LDX #$02
19cc : bd 40 5c LDA $5c40,x ; (fround5[0] + 24)
19cf : 95 4a __ STA T1 + 0,x 
19d1 : ca __ __ DEX
19d2 : 10 f8 __ BPL $19cc ; (printf.s109 + 2)
19d4 : ad 43 5c LDA $5c43 ; (fround5[0] + 27)
19d7 : b0 15 __ BCS $19ee ; (printf.s87 + 0)
.s86:
19d9 : 0a __ __ ASL
19da : 0a __ __ ASL
19db : aa __ __ TAX
19dc : bd 24 5c LDA $5c24,x ; (zxfonttr_bin[0] + 2044)
19df : 85 4a __ STA T1 + 0 
19e1 : bd 25 5c LDA $5c25,x ; (zxfonttr_bin[0] + 2045)
19e4 : 85 4b __ STA T1 + 1 
19e6 : bd 26 5c LDA $5c26,x ; (zxfonttr_bin[0] + 2046)
19e9 : 85 4c __ STA T1 + 2 
19eb : bd 27 5c LDA $5c27,x ; (zxfonttr_bin[0] + 2047)
.s87:
19ee : 85 4d __ STA T1 + 3 
19f0 : a2 46 __ LDX #$46
19f2 : 20 df 53 JSR $53df ; (load32 + 0)
19f5 : a2 4a __ LDX #$4a
19f7 : 20 2b 4e JSR $4e2b ; (freg + 4)
19fa : 20 72 4e JSR $4e72 ; (faddsub + 6)
19fd : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
19ff : 85 46 __ STA T0 + 0 
1a01 : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
1a03 : 85 47 __ STA T0 + 1 
1a05 : a6 1d __ LDX ACCU + 2 
1a07 : 86 48 __ STX T0 + 2 
1a09 : a5 1e __ LDA ACCU + 3 
1a0b : 85 49 __ STA T0 + 3 
1a0d : 10 03 __ BPL $1a12 ; (printf.s106 + 0)
1a0f : 4c 58 18 JMP $1858 ; (printf.s90 + 0)
.s106:
1a12 : c9 41 __ CMP #$41
1a14 : d0 04 __ BNE $1a1a ; (printf.s108 + 0)
.s107:
1a16 : e0 20 __ CPX #$20
1a18 : f0 02 __ BEQ $1a1c ; (printf.s88 + 0)
.s108:
1a1a : 90 f3 __ BCC $1a0f ; (printf.s87 + 33)
.s88:
1a1c : e6 53 __ INC T4 + 0 
1a1e : f0 03 __ BEQ $1a23 ; (printf.s199 + 0)
1a20 : 4c 47 18 JMP $1847 ; (printf.s89 + 0)
.s199:
1a23 : e6 54 __ INC T4 + 1 
1a25 : 4c 47 18 JMP $1847 ; (printf.s89 + 0)
.s44:
1a28 : a0 00 __ LDY #$00
1a2a : b1 56 __ LDA (T8 + 0),y 
1a2c : 85 11 __ STA P4 
1a2e : c8 __ __ INY
1a2f : b1 56 __ LDA (T8 + 0),y 
1a31 : 85 12 __ STA P5 
1a33 : c8 __ __ INY
1a34 : b1 56 __ LDA (T8 + 0),y 
1a36 : 85 13 __ STA P6 
1a38 : c8 __ __ INY
1a39 : b1 56 __ LDA (T8 + 0),y 
1a3b : 85 14 __ STA P7 
1a3d : a5 56 __ LDA T8 + 0 
1a3f : 69 03 __ ADC #$03
1a41 : 85 56 __ STA T8 + 0 
1a43 : 90 02 __ BCC $1a47 ; (printf.s190 + 0)
.s189:
1a45 : e6 57 __ INC T8 + 1 
.s190:
1a47 : a0 00 __ LDY #$00
1a49 : b1 58 __ LDA (T10 + 0),y 
1a4b : aa __ __ TAX
1a4c : e6 58 __ INC T10 + 0 
1a4e : d0 02 __ BNE $1a52 ; (printf.s192 + 0)
.s191:
1a50 : e6 59 __ INC T10 + 1 
.s192:
1a52 : e0 64 __ CPX #$64
1a54 : f0 0c __ BEQ $1a62 ; (printf.s45 + 0)
.s47:
1a56 : e0 44 __ CPX #$44
1a58 : f0 08 __ BEQ $1a62 ; (printf.s45 + 0)
.s48:
1a5a : e0 69 __ CPX #$69
1a5c : f0 04 __ BEQ $1a62 ; (printf.s45 + 0)
.s49:
1a5e : e0 49 __ CPX #$49
1a60 : d0 1c __ BNE $1a7e ; (printf.s50 + 0)
.s45:
1a62 : a9 01 __ LDA #$01
.s178:
1a64 : 85 15 __ STA P8 
.s46:
1a66 : a9 b8 __ LDA #$b8
1a68 : 85 0f __ STA P2 
1a6a : a9 cf __ LDA #$cf
1a6c : 85 0e __ STA P1 
1a6e : a9 cf __ LDA #$cf
1a70 : 85 10 __ STA P3 
1a72 : a9 b0 __ LDA #$b0
1a74 : 85 0d __ STA P0 
1a76 : 20 24 1c JSR $1c24 ; (nforml.s4 + 0)
1a79 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
1a7b : 4c ed 13 JMP $13ed ; (printf.s180 + 0)
.s50:
1a7e : e0 75 __ CPX #$75
1a80 : f0 04 __ BEQ $1a86 ; (printf.s51 + 0)
.s52:
1a82 : e0 55 __ CPX #$55
1a84 : d0 03 __ BNE $1a89 ; (printf.s53 + 0)
.s51:
1a86 : 98 __ __ TYA
1a87 : f0 db __ BEQ $1a64 ; (printf.s178 + 0)
.s53:
1a89 : e0 78 __ CPX #$78
1a8b : f0 07 __ BEQ $1a94 ; (printf.s54 + 0)
.s55:
1a8d : e0 58 __ CPX #$58
1a8f : f0 03 __ BEQ $1a94 ; (printf.s54 + 0)
1a91 : 4c aa 13 JMP $13aa ; (printf.l5 + 0)
.s54:
1a94 : 84 15 __ STY P8 
1a96 : a9 10 __ LDA #$10
1a98 : 8d b4 cf STA $cfb4 ; (si.base + 0)
1a9b : 8a __ __ TXA
1a9c : 29 e0 __ AND #$e0
1a9e : 09 01 __ ORA #$01
1aa0 : 8d b3 cf STA $cfb3 ; (si.cha + 0)
1aa3 : 4c 66 1a JMP $1a66 ; (printf.s46 + 0)
.s33:
1aa6 : a9 b8 __ LDA #$b8
1aa8 : 85 0f __ STA P2 
1aaa : a9 cf __ LDA #$cf
1aac : 85 0e __ STA P1 
1aae : a9 cf __ LDA #$cf
1ab0 : 85 10 __ STA P3 
1ab2 : a9 b0 __ LDA #$b0
1ab4 : 85 0d __ STA P0 
1ab6 : 20 0f 1b JSR $1b0f ; (nformi.s4 + 0)
1ab9 : 85 52 __ STA T6 + 0 
1abb : a9 02 __ LDA #$02
1abd : 4c b5 19 JMP $19b5 ; (printf.s176 + 0)
--------------------------------------------------------------------
puts@proxy: ; puts@proxy
1ac0 : a9 b8 __ LDA #$b8
1ac2 : 85 0d __ STA P0 
1ac4 : a9 cf __ LDA #$cf
1ac6 : 85 0e __ STA P1 
--------------------------------------------------------------------
puts: ; puts(const u8*)->void
;  12, "/usr/local/include/oscar64/stdio.h"
.l4:
1ac8 : a0 00 __ LDY #$00
1aca : b1 0d __ LDA (P0),y ; (str + 0)
1acc : 85 43 __ STA T0 + 0 
1ace : a8 __ __ TAY
1acf : 18 __ __ CLC
1ad0 : a5 0d __ LDA P0 ; (str + 0)
1ad2 : 69 01 __ ADC #$01
1ad4 : 85 0d __ STA P0 ; (str + 0)
1ad6 : a5 0e __ LDA P1 ; (str + 1)
1ad8 : 69 00 __ ADC #$00
1ada : c0 00 __ CPY #$00
1adc : d0 01 __ BNE $1adf ; (puts.s5 + 0)
.s3:
1ade : 60 __ __ RTS
.s5:
1adf : 85 0e __ STA P1 ; (str + 1)
1ae1 : 98 __ __ TYA
1ae2 : c0 0a __ CPY #$0a
1ae4 : d0 0c __ BNE $1af2 ; (puts.s8 + 0)
.s6:
1ae6 : a9 0d __ LDA #$0d
1ae8 : 85 43 __ STA T0 + 0 
.s7:
1aea : a5 43 __ LDA T0 + 0 
1aec : 20 d2 ff JSR $ffd2 
1aef : 4c c8 1a JMP $1ac8 ; (puts.l4 + 0)
.s8:
1af2 : c9 09 __ CMP #$09
1af4 : d0 f4 __ BNE $1aea ; (puts.s7 + 0)
.s9:
1af6 : a5 d3 __ LDA $d3 
1af8 : 29 03 __ AND #$03
1afa : 85 43 __ STA T0 + 0 
1afc : a9 20 __ LDA #$20
1afe : 85 44 __ STA T1 + 0 
.l10:
1b00 : a5 44 __ LDA T1 + 0 
1b02 : 20 d2 ff JSR $ffd2 
1b05 : e6 43 __ INC T0 + 0 
1b07 : a5 43 __ LDA T0 + 0 
1b09 : c9 04 __ CMP #$04
1b0b : 90 f3 __ BCC $1b00 ; (puts.l10 + 0)
1b0d : b0 b9 __ BCS $1ac8 ; (puts.l4 + 0)
--------------------------------------------------------------------
nformi: ; nformi(const struct sinfo*,u8*,i16,bool)->u8
;  79, "/usr/local/include/oscar64/stdio.c"
.s4:
1b0f : a9 00 __ LDA #$00
1b11 : 85 43 __ STA T5 + 0 
1b13 : a0 04 __ LDY #$04
1b15 : b1 0d __ LDA (P0),y ; (si + 0)
1b17 : 85 44 __ STA T6 + 0 
1b19 : a5 13 __ LDA P6 ; (s + 0)
1b1b : f0 13 __ BEQ $1b30 ; (nformi.s7 + 0)
.s5:
1b1d : 24 12 __ BIT P5 ; (v + 1)
1b1f : 10 0f __ BPL $1b30 ; (nformi.s7 + 0)
.s6:
1b21 : 38 __ __ SEC
1b22 : a9 00 __ LDA #$00
1b24 : e5 11 __ SBC P4 ; (v + 0)
1b26 : 85 11 __ STA P4 ; (v + 0)
1b28 : a9 00 __ LDA #$00
1b2a : e5 12 __ SBC P5 ; (v + 1)
1b2c : 85 12 __ STA P5 ; (v + 1)
1b2e : e6 43 __ INC T5 + 0 
.s7:
1b30 : a9 10 __ LDA #$10
1b32 : 85 45 __ STA T7 + 0 
1b34 : a5 11 __ LDA P4 ; (v + 0)
1b36 : 05 12 __ ORA P5 ; (v + 1)
1b38 : f0 2d __ BEQ $1b67 ; (nformi.s12 + 0)
.s8:
1b3a : a5 11 __ LDA P4 ; (v + 0)
1b3c : 85 1b __ STA ACCU + 0 
1b3e : a5 12 __ LDA P5 ; (v + 1)
1b40 : 85 1c __ STA ACCU + 1 
.l9:
1b42 : a5 44 __ LDA T6 + 0 
1b44 : 20 81 51 JSR $5181 ; (divmod + 53)
1b47 : a5 05 __ LDA WORK + 2 
1b49 : c9 0a __ CMP #$0a
1b4b : b0 04 __ BCS $1b51 ; (nformi.s10 + 0)
.s34:
1b4d : a9 30 __ LDA #$30
1b4f : 90 06 __ BCC $1b57 ; (nformi.s11 + 0)
.s10:
1b51 : a0 03 __ LDY #$03
1b53 : b1 0d __ LDA (P0),y ; (si + 0)
1b55 : e9 0a __ SBC #$0a
.s11:
1b57 : 18 __ __ CLC
1b58 : 65 05 __ ADC WORK + 2 
1b5a : a6 45 __ LDX T7 + 0 
1b5c : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1b5f : c6 45 __ DEC T7 + 0 
1b61 : a5 1b __ LDA ACCU + 0 
1b63 : 05 1c __ ORA ACCU + 1 
1b65 : d0 db __ BNE $1b42 ; (nformi.l9 + 0)
.s12:
1b67 : a0 02 __ LDY #$02
1b69 : b1 0d __ LDA (P0),y ; (si + 0)
1b6b : c9 ff __ CMP #$ff
1b6d : d0 04 __ BNE $1b73 ; (nformi.s13 + 0)
.s33:
1b6f : a9 0f __ LDA #$0f
1b71 : d0 05 __ BNE $1b78 ; (nformi.s39 + 0)
.s13:
1b73 : 38 __ __ SEC
1b74 : a9 10 __ LDA #$10
1b76 : f1 0d __ SBC (P0),y ; (si + 0)
.s39:
1b78 : a8 __ __ TAY
1b79 : c4 45 __ CPY T7 + 0 
1b7b : b0 0d __ BCS $1b8a ; (nformi.s15 + 0)
.s14:
1b7d : a9 30 __ LDA #$30
.l40:
1b7f : a6 45 __ LDX T7 + 0 
1b81 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1b84 : c6 45 __ DEC T7 + 0 
1b86 : c4 45 __ CPY T7 + 0 
1b88 : 90 f5 __ BCC $1b7f ; (nformi.l40 + 0)
.s15:
1b8a : a0 07 __ LDY #$07
1b8c : b1 0d __ LDA (P0),y ; (si + 0)
1b8e : f0 1c __ BEQ $1bac ; (nformi.s18 + 0)
.s16:
1b90 : a5 44 __ LDA T6 + 0 
1b92 : c9 10 __ CMP #$10
1b94 : d0 16 __ BNE $1bac ; (nformi.s18 + 0)
.s17:
1b96 : a0 03 __ LDY #$03
1b98 : b1 0d __ LDA (P0),y ; (si + 0)
1b9a : a8 __ __ TAY
1b9b : a9 30 __ LDA #$30
1b9d : a6 45 __ LDX T7 + 0 
1b9f : 9d e8 cf STA $cfe8,x ; (buff[0] + 48)
1ba2 : 98 __ __ TYA
1ba3 : 69 16 __ ADC #$16
1ba5 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1ba8 : ca __ __ DEX
1ba9 : ca __ __ DEX
1baa : 86 45 __ STX T7 + 0 
.s18:
1bac : a9 00 __ LDA #$00
1bae : 85 1b __ STA ACCU + 0 
1bb0 : a5 43 __ LDA T5 + 0 
1bb2 : f0 0c __ BEQ $1bc0 ; (nformi.s31 + 0)
.s19:
1bb4 : a9 2d __ LDA #$2d
.s20:
1bb6 : a6 45 __ LDX T7 + 0 
1bb8 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1bbb : c6 45 __ DEC T7 + 0 
1bbd : 4c ca 1b JMP $1bca ; (nformi.s21 + 0)
.s31:
1bc0 : a0 05 __ LDY #$05
1bc2 : b1 0d __ LDA (P0),y ; (si + 0)
1bc4 : f0 04 __ BEQ $1bca ; (nformi.s21 + 0)
.s32:
1bc6 : a9 2b __ LDA #$2b
1bc8 : d0 ec __ BNE $1bb6 ; (nformi.s20 + 0)
.s21:
1bca : a0 06 __ LDY #$06
1bcc : a6 45 __ LDX T7 + 0 
1bce : b1 0d __ LDA (P0),y ; (si + 0)
1bd0 : d0 2b __ BNE $1bfd ; (nformi.s22 + 0)
.l26:
1bd2 : 8a __ __ TXA
1bd3 : 18 __ __ CLC
1bd4 : a0 01 __ LDY #$01
1bd6 : 71 0d __ ADC (P0),y ; (si + 0)
1bd8 : b0 04 __ BCS $1bde ; (nformi.s27 + 0)
.s30:
1bda : c9 11 __ CMP #$11
1bdc : 90 0a __ BCC $1be8 ; (nformi.s28 + 0)
.s27:
1bde : a0 00 __ LDY #$00
1be0 : b1 0d __ LDA (P0),y ; (si + 0)
1be2 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1be5 : ca __ __ DEX
1be6 : b0 ea __ BCS $1bd2 ; (nformi.l26 + 0)
.s28:
1be8 : e0 10 __ CPX #$10
1bea : b0 0e __ BCS $1bfa ; (nformi.s41 + 0)
.s29:
1bec : 88 __ __ DEY
.l37:
1bed : bd ea cf LDA $cfea,x ; (buffer[0] + 0)
1bf0 : 91 0f __ STA (P2),y ; (str + 0)
1bf2 : c8 __ __ INY
1bf3 : e8 __ __ INX
1bf4 : e0 10 __ CPX #$10
1bf6 : 90 f5 __ BCC $1bed ; (nformi.l37 + 0)
.s38:
1bf8 : 84 1b __ STY ACCU + 0 
.s41:
1bfa : a5 1b __ LDA ACCU + 0 
.s3:
1bfc : 60 __ __ RTS
.s22:
1bfd : e0 10 __ CPX #$10
1bff : b0 1a __ BCS $1c1b ; (nformi.l24 + 0)
.s23:
1c01 : a0 00 __ LDY #$00
.l35:
1c03 : bd ea cf LDA $cfea,x ; (buffer[0] + 0)
1c06 : 91 0f __ STA (P2),y ; (str + 0)
1c08 : c8 __ __ INY
1c09 : e8 __ __ INX
1c0a : e0 10 __ CPX #$10
1c0c : 90 f5 __ BCC $1c03 ; (nformi.l35 + 0)
.s36:
1c0e : 84 1b __ STY ACCU + 0 
1c10 : b0 09 __ BCS $1c1b ; (nformi.l24 + 0)
.s25:
1c12 : 88 __ __ DEY
1c13 : b1 0d __ LDA (P0),y ; (si + 0)
1c15 : a4 1b __ LDY ACCU + 0 
1c17 : 91 0f __ STA (P2),y ; (str + 0)
1c19 : e6 1b __ INC ACCU + 0 
.l24:
1c1b : a5 1b __ LDA ACCU + 0 
1c1d : a0 01 __ LDY #$01
1c1f : d1 0d __ CMP (P0),y ; (si + 0)
1c21 : 90 ef __ BCC $1c12 ; (nformi.s25 + 0)
1c23 : 60 __ __ RTS
--------------------------------------------------------------------
nforml: ; nforml(const struct sinfo*,u8*,i32,bool)->u8
; 137, "/usr/local/include/oscar64/stdio.c"
.s4:
1c24 : a9 00 __ LDA #$00
1c26 : 85 43 __ STA T4 + 0 
1c28 : a5 15 __ LDA P8 ; (s + 0)
1c2a : f0 1f __ BEQ $1c4b ; (nforml.s7 + 0)
.s5:
1c2c : 24 14 __ BIT P7 ; (v + 3)
1c2e : 10 1b __ BPL $1c4b ; (nforml.s7 + 0)
.s6:
1c30 : 38 __ __ SEC
1c31 : a9 00 __ LDA #$00
1c33 : e5 11 __ SBC P4 ; (v + 0)
1c35 : 85 11 __ STA P4 ; (v + 0)
1c37 : a9 00 __ LDA #$00
1c39 : e5 12 __ SBC P5 ; (v + 1)
1c3b : 85 12 __ STA P5 ; (v + 1)
1c3d : a9 00 __ LDA #$00
1c3f : e5 13 __ SBC P6 ; (v + 2)
1c41 : 85 13 __ STA P6 ; (v + 2)
1c43 : a9 00 __ LDA #$00
1c45 : e5 14 __ SBC P7 ; (v + 3)
1c47 : 85 14 __ STA P7 ; (v + 3)
1c49 : e6 43 __ INC T4 + 0 
.s7:
1c4b : a9 10 __ LDA #$10
1c4d : 85 44 __ STA T5 + 0 
1c4f : a5 14 __ LDA P7 ; (v + 3)
1c51 : d0 0c __ BNE $1c5f ; (nforml.l43 + 0)
.s33:
1c53 : a5 13 __ LDA P6 ; (v + 2)
1c55 : d0 08 __ BNE $1c5f ; (nforml.l43 + 0)
.s34:
1c57 : a5 12 __ LDA P5 ; (v + 1)
1c59 : d0 04 __ BNE $1c5f ; (nforml.l43 + 0)
.s35:
1c5b : c5 11 __ CMP P4 ; (v + 0)
1c5d : b0 08 __ BCS $1c67 ; (nforml.s11 + 0)
.l43:
1c5f : a2 11 __ LDX #$11
1c61 : 20 df 53 JSR $53df ; (load32 + 0)
1c64 : 4c 23 1d JMP $1d23 ; (nforml.l8 + 0)
.s11:
1c67 : a0 02 __ LDY #$02
1c69 : b1 0d __ LDA (P0),y ; (si + 0)
1c6b : c9 ff __ CMP #$ff
1c6d : d0 04 __ BNE $1c73 ; (nforml.s12 + 0)
.s32:
1c6f : a9 0f __ LDA #$0f
1c71 : d0 05 __ BNE $1c78 ; (nforml.s41 + 0)
.s12:
1c73 : 38 __ __ SEC
1c74 : a9 10 __ LDA #$10
1c76 : f1 0d __ SBC (P0),y ; (si + 0)
.s41:
1c78 : a8 __ __ TAY
1c79 : c4 44 __ CPY T5 + 0 
1c7b : b0 0d __ BCS $1c8a ; (nforml.s14 + 0)
.s13:
1c7d : a9 30 __ LDA #$30
.l42:
1c7f : a6 44 __ LDX T5 + 0 
1c81 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1c84 : c6 44 __ DEC T5 + 0 
1c86 : c4 44 __ CPY T5 + 0 
1c88 : 90 f5 __ BCC $1c7f ; (nforml.l42 + 0)
.s14:
1c8a : a0 07 __ LDY #$07
1c8c : b1 0d __ LDA (P0),y ; (si + 0)
1c8e : f0 1d __ BEQ $1cad ; (nforml.s17 + 0)
.s15:
1c90 : a0 04 __ LDY #$04
1c92 : b1 0d __ LDA (P0),y ; (si + 0)
1c94 : c9 10 __ CMP #$10
1c96 : d0 15 __ BNE $1cad ; (nforml.s17 + 0)
.s16:
1c98 : 88 __ __ DEY
1c99 : b1 0d __ LDA (P0),y ; (si + 0)
1c9b : a8 __ __ TAY
1c9c : a9 30 __ LDA #$30
1c9e : a6 44 __ LDX T5 + 0 
1ca0 : 9d e8 cf STA $cfe8,x ; (buff[0] + 48)
1ca3 : 98 __ __ TYA
1ca4 : 69 16 __ ADC #$16
1ca6 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1ca9 : ca __ __ DEX
1caa : ca __ __ DEX
1cab : 86 44 __ STX T5 + 0 
.s17:
1cad : a9 00 __ LDA #$00
1caf : 85 1b __ STA ACCU + 0 
1cb1 : a5 43 __ LDA T4 + 0 
1cb3 : f0 0c __ BEQ $1cc1 ; (nforml.s30 + 0)
.s18:
1cb5 : a9 2d __ LDA #$2d
.s19:
1cb7 : a6 44 __ LDX T5 + 0 
1cb9 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1cbc : c6 44 __ DEC T5 + 0 
1cbe : 4c cb 1c JMP $1ccb ; (nforml.s20 + 0)
.s30:
1cc1 : a0 05 __ LDY #$05
1cc3 : b1 0d __ LDA (P0),y ; (si + 0)
1cc5 : f0 04 __ BEQ $1ccb ; (nforml.s20 + 0)
.s31:
1cc7 : a9 2b __ LDA #$2b
1cc9 : d0 ec __ BNE $1cb7 ; (nforml.s19 + 0)
.s20:
1ccb : a6 44 __ LDX T5 + 0 
1ccd : a0 06 __ LDY #$06
1ccf : b1 0d __ LDA (P0),y ; (si + 0)
1cd1 : d0 29 __ BNE $1cfc ; (nforml.s21 + 0)
.l25:
1cd3 : 8a __ __ TXA
1cd4 : 18 __ __ CLC
1cd5 : a0 01 __ LDY #$01
1cd7 : 71 0d __ ADC (P0),y ; (si + 0)
1cd9 : b0 04 __ BCS $1cdf ; (nforml.s26 + 0)
.s29:
1cdb : c9 11 __ CMP #$11
1cdd : 90 0a __ BCC $1ce9 ; (nforml.s27 + 0)
.s26:
1cdf : a0 00 __ LDY #$00
1ce1 : b1 0d __ LDA (P0),y ; (si + 0)
1ce3 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1ce6 : ca __ __ DEX
1ce7 : b0 ea __ BCS $1cd3 ; (nforml.l25 + 0)
.s27:
1ce9 : e0 10 __ CPX #$10
1ceb : b0 0e __ BCS $1cfb ; (nforml.s3 + 0)
.s28:
1ced : 88 __ __ DEY
.l39:
1cee : bd ea cf LDA $cfea,x ; (buffer[0] + 0)
1cf1 : 91 0f __ STA (P2),y ; (str + 0)
1cf3 : c8 __ __ INY
1cf4 : e8 __ __ INX
1cf5 : e0 10 __ CPX #$10
1cf7 : 90 f5 __ BCC $1cee ; (nforml.l39 + 0)
.s40:
1cf9 : 84 1b __ STY ACCU + 0 
.s3:
1cfb : 60 __ __ RTS
.s21:
1cfc : e0 10 __ CPX #$10
1cfe : b0 1a __ BCS $1d1a ; (nforml.l23 + 0)
.s22:
1d00 : a0 00 __ LDY #$00
.l37:
1d02 : bd ea cf LDA $cfea,x ; (buffer[0] + 0)
1d05 : 91 0f __ STA (P2),y ; (str + 0)
1d07 : c8 __ __ INY
1d08 : e8 __ __ INX
1d09 : e0 10 __ CPX #$10
1d0b : 90 f5 __ BCC $1d02 ; (nforml.l37 + 0)
.s38:
1d0d : 84 1b __ STY ACCU + 0 
1d0f : b0 09 __ BCS $1d1a ; (nforml.l23 + 0)
.s24:
1d11 : 88 __ __ DEY
1d12 : b1 0d __ LDA (P0),y ; (si + 0)
1d14 : a4 1b __ LDY ACCU + 0 
1d16 : 91 0f __ STA (P2),y ; (str + 0)
1d18 : e6 1b __ INC ACCU + 0 
.l23:
1d1a : a5 1b __ LDA ACCU + 0 
1d1c : a0 01 __ LDY #$01
1d1e : d1 0d __ CMP (P0),y ; (si + 0)
1d20 : 90 ef __ BCC $1d11 ; (nforml.s24 + 0)
1d22 : 60 __ __ RTS
.l8:
1d23 : a0 04 __ LDY #$04
1d25 : b1 0d __ LDA (P0),y ; (si + 0)
1d27 : 85 03 __ STA WORK + 0 
1d29 : a9 00 __ LDA #$00
1d2b : 85 04 __ STA WORK + 1 
1d2d : 85 05 __ STA WORK + 2 
1d2f : 85 06 __ STA WORK + 3 
1d31 : 20 e7 52 JSR $52e7 ; (divmod32 + 0)
1d34 : a5 07 __ LDA WORK + 4 
1d36 : c9 0a __ CMP #$0a
1d38 : b0 04 __ BCS $1d3e ; (nforml.s9 + 0)
.s36:
1d3a : a9 30 __ LDA #$30
1d3c : 90 06 __ BCC $1d44 ; (nforml.s10 + 0)
.s9:
1d3e : a0 03 __ LDY #$03
1d40 : b1 0d __ LDA (P0),y ; (si + 0)
1d42 : e9 0a __ SBC #$0a
.s10:
1d44 : 18 __ __ CLC
1d45 : 65 07 __ ADC WORK + 4 
1d47 : a6 44 __ LDX T5 + 0 
1d49 : 9d e9 cf STA $cfe9,x ; (buff[0] + 49)
1d4c : a2 02 __ LDX #$02
1d4e : b5 1b __ LDA ACCU + 0,x 
1d50 : 95 11 __ STA P4,x ; (v + 0)
1d52 : ca __ __ DEX
1d53 : 10 f9 __ BPL $1d4e ; (nforml.s10 + 10)
1d55 : c6 44 __ DEC T5 + 0 
1d57 : a5 1e __ LDA ACCU + 3 
1d59 : 85 14 __ STA P7 ; (v + 3)
1d5b : d0 c6 __ BNE $1d23 ; (nforml.l8 + 0)
1d5d : 4c 53 1c JMP $1c53 ; (nforml.s33 + 0)
--------------------------------------------------------------------
1d60 : __ __ __ BYT 93 0e 00                                        : ...
--------------------------------------------------------------------
clock: ; clock()->i32
;   8, "/usr/local/include/oscar64/time.h"
.s4:
1d63 : a5 a2 __ LDA $a2 
1d65 : 85 1b __ STA ACCU + 0 
1d67 : a5 a1 __ LDA $a1 
1d69 : 85 1c __ STA ACCU + 1 
1d6b : a5 a0 __ LDA $a0 
1d6d : 85 1d __ STA ACCU + 2 
1d6f : a9 00 __ LDA #$00
1d71 : 85 1e __ STA ACCU + 3 
.s3:
1d73 : 60 __ __ RTS
--------------------------------------------------------------------
showboard: ; showboard()->void
; 116, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s1:
1d74 : a2 05 __ LDX #$05
1d76 : b5 53 __ LDA T1 + 0,x 
1d78 : 9d 99 cf STA $cf99,x ; (showboard@stack + 0)
1d7b : ca __ __ DEX
1d7c : 10 f8 __ BPL $1d76 ; (showboard.s1 + 2)
.s4:
1d7e : a9 20 __ LDA #$20
1d80 : a2 00 __ LDX #$00
.l55:
1d82 : 9d 48 bb STA $bb48,x 
1d85 : e8 __ __ INX
1d86 : e0 a0 __ CPX #$a0
1d88 : d0 f8 __ BNE $1d82 ; (showboard.l55 + 0)
.s56:
1d8a : a9 cc __ LDA #$cc
1d8c : 8d fa cf STA $cffa ; (sstack + 0)
1d8f : a9 1f __ LDA #$1f
1d91 : 8d fb cf STA $cffb ; (sstack + 1)
1d94 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1d97 : a9 09 __ LDA #$09
1d99 : 8d 86 02 STA $0286 
1d9c : a9 ce __ LDA #$ce
1d9e : 8d fa cf STA $cffa ; (sstack + 0)
1da1 : a9 1f __ LDA #$1f
1da3 : 8d fb cf STA $cffb ; (sstack + 1)
1da6 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1da9 : a9 00 __ LDA #$00
1dab : 85 53 __ STA T1 + 0 
1dad : a9 4e __ LDA #$4e
1daf : 85 55 __ STA T2 + 0 
1db1 : a9 68 __ LDA #$68
1db3 : 85 56 __ STA T2 + 1 
.l5:
1db5 : a9 e7 __ LDA #$e7
1db7 : 8d fa cf STA $cffa ; (sstack + 0)
1dba : a9 1f __ LDA #$1f
1dbc : 8d fb cf STA $cffb ; (sstack + 1)
1dbf : 38 __ __ SEC
1dc0 : a9 13 __ LDA #$13
1dc2 : e5 53 __ SBC T1 + 0 
1dc4 : 85 57 __ STA T4 + 0 
1dc6 : 8d fc cf STA $cffc ; (sstack + 2)
1dc9 : a9 00 __ LDA #$00
1dcb : 8d fd cf STA $cffd ; (sstack + 3)
1dce : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1dd1 : a0 00 __ LDY #$00
.l6:
1dd3 : 84 58 __ STY T5 + 0 
1dd5 : b1 55 __ LDA (T2 + 0),y 
1dd7 : f0 03 __ BEQ $1ddc ; (showboard.s28 + 0)
1dd9 : 4c ba 1f JMP $1fba ; (showboard.s7 + 0)
.s28:
1ddc : c5 53 __ CMP T1 + 0 
1dde : 2a __ __ ROL
1ddf : 85 43 __ STA T0 + 0 
1de1 : d0 05 __ BNE $1de8 ; (showboard.s29 + 0)
.s63:
1de3 : a5 53 __ LDA T1 + 0 
1de5 : 4c 01 1e JMP $1e01 ; (showboard.s33 + 0)
.s29:
1de8 : a9 00 __ LDA #$00
1dea : 85 53 __ STA T1 + 0 
1dec : c0 00 __ CPY #$00
1dee : d0 06 __ BNE $1df6 ; (showboard.s31 + 0)
.s30:
1df0 : a9 1f __ LDA #$1f
1df2 : a2 eb __ LDX #$eb
1df4 : b0 7a __ BCS $1e70 ; (showboard.s9 + 0)
.s31:
1df6 : c0 12 __ CPY #$12
1df8 : d0 07 __ BNE $1e01 ; (showboard.s33 + 0)
.s32:
1dfa : a9 1f __ LDA #$1f
1dfc : a2 ee __ LDX #$ee
1dfe : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s33:
1e01 : c9 12 __ CMP #$12
1e03 : f0 04 __ BEQ $1e09 ; (showboard.s34 + 0)
.s35:
1e05 : a2 00 __ LDX #$00
1e07 : f0 17 __ BEQ $1e20 ; (showboard.s39 + 0)
.s34:
1e09 : 98 __ __ TYA
1e0a : d0 07 __ BNE $1e13 ; (showboard.s37 + 0)
.s36:
1e0c : a9 1f __ LDA #$1f
1e0e : a2 f0 __ LDX #$f0
1e10 : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s37:
1e13 : a2 01 __ LDX #$01
1e15 : c0 12 __ CPY #$12
1e17 : d0 07 __ BNE $1e20 ; (showboard.s39 + 0)
.s38:
1e19 : a9 1f __ LDA #$1f
1e1b : a2 f2 __ LDX #$f2
1e1d : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s39:
1e20 : a5 43 __ LDA T0 + 0 
1e22 : f0 07 __ BEQ $1e2b ; (showboard.s41 + 0)
.s40:
1e24 : a9 1f __ LDA #$1f
1e26 : a2 f4 __ LDX #$f4
1e28 : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s41:
1e2b : 8a __ __ TXA
1e2c : f0 07 __ BEQ $1e35 ; (showboard.s43 + 0)
.s42:
1e2e : a9 1f __ LDA #$1f
1e30 : a2 f6 __ LDX #$f6
1e32 : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s43:
1e35 : 98 __ __ TYA
1e36 : d0 07 __ BNE $1e3f ; (showboard.s45 + 0)
.s44:
1e38 : a9 1f __ LDA #$1f
1e3a : a2 f8 __ LDX #$f8
1e3c : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s45:
1e3f : c0 12 __ CPY #$12
1e41 : d0 07 __ BNE $1e4a ; (showboard.s47 + 0)
.s46:
1e43 : a9 1f __ LDA #$1f
1e45 : a2 fa __ LDX #$fa
1e47 : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s47:
1e4a : a5 53 __ LDA T1 + 0 
1e4c : c9 03 __ CMP #$03
1e4e : f0 08 __ BEQ $1e58 ; (showboard.s48 + 0)
.s53:
1e50 : c9 09 __ CMP #$09
1e52 : f0 04 __ BEQ $1e58 ; (showboard.s48 + 0)
.s54:
1e54 : c9 0f __ CMP #$0f
1e56 : d0 0d __ BNE $1e65 ; (showboard.s52 + 0)
.s48:
1e58 : 98 __ __ TYA
1e59 : c0 03 __ CPY #$03
1e5b : f0 0f __ BEQ $1e6c ; (showboard.s49 + 0)
.s50:
1e5d : c9 09 __ CMP #$09
1e5f : f0 0b __ BEQ $1e6c ; (showboard.s49 + 0)
.s51:
1e61 : c9 0f __ CMP #$0f
1e63 : f0 07 __ BEQ $1e6c ; (showboard.s49 + 0)
.s52:
1e65 : a9 1f __ LDA #$1f
1e67 : a2 fe __ LDX #$fe
1e69 : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s49:
1e6c : a9 1f __ LDA #$1f
1e6e : a2 fc __ LDX #$fc
.s9:
1e70 : 8e fa cf STX $cffa ; (sstack + 0)
1e73 : 8d fb cf STA $cffb ; (sstack + 1)
1e76 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1e79 : a4 58 __ LDY T5 + 0 
1e7b : c8 __ __ INY
1e7c : c0 13 __ CPY #$13
1e7e : b0 03 __ BCS $1e83 ; (showboard.s10 + 0)
1e80 : 4c d3 1d JMP $1dd3 ; (showboard.l6 + 0)
.s10:
1e83 : a5 57 __ LDA T4 + 0 
1e85 : 8d fc cf STA $cffc ; (sstack + 2)
1e88 : a9 00 __ LDA #$00
1e8a : 8d fd cf STA $cffd ; (sstack + 3)
1e8d : a9 04 __ LDA #$04
1e8f : 8d fa cf STA $cffa ; (sstack + 0)
1e92 : a9 20 __ LDA #$20
1e94 : 8d fb cf STA $cffb ; (sstack + 1)
1e97 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1e9a : 18 __ __ CLC
1e9b : a5 55 __ LDA T2 + 0 
1e9d : 69 13 __ ADC #$13
1e9f : 85 55 __ STA T2 + 0 
1ea1 : 90 02 __ BCC $1ea5 ; (showboard.s62 + 0)
.s61:
1ea3 : e6 56 __ INC T2 + 1 
.s62:
1ea5 : e6 53 __ INC T1 + 0 
1ea7 : a5 53 __ LDA T1 + 0 
1ea9 : c9 13 __ CMP #$13
1eab : b0 03 __ BCS $1eb0 ; (showboard.s11 + 0)
1ead : 4c b5 1d JMP $1db5 ; (showboard.l5 + 0)
.s11:
1eb0 : a9 ce __ LDA #$ce
1eb2 : 8d fa cf STA $cffa ; (sstack + 0)
1eb5 : a9 1f __ LDA #$1f
1eb7 : 8d fb cf STA $cffb ; (sstack + 1)
1eba : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1ebd : a9 0f __ LDA #$0f
1ebf : 8d 86 02 STA $0286 
1ec2 : a9 09 __ LDA #$09
1ec4 : 8d fa cf STA $cffa ; (sstack + 0)
1ec7 : a9 20 __ LDA #$20
1ec9 : 8d fb cf STA $cffb ; (sstack + 1)
1ecc : ad c8 69 LDA $69c8 ; (umove + 1)
1ecf : d0 18 __ BNE $1ee9 ; (showboard.s12 + 0)
.s26:
1ed1 : ad c7 69 LDA $69c7 ; (umove + 0)
1ed4 : c9 01 __ CMP #$01
1ed6 : f0 0e __ BEQ $1ee6 ; (showboard.s58 + 0)
.s23:
1ed8 : ad c8 69 LDA $69c8 ; (umove + 1)
1edb : d0 0c __ BNE $1ee9 ; (showboard.s12 + 0)
.s25:
1edd : ad c7 69 LDA $69c7 ; (umove + 0)
1ee0 : c9 02 __ CMP #$02
1ee2 : d0 05 __ BNE $1ee9 ; (showboard.s12 + 0)
.s24:
1ee4 : a9 00 __ LDA #$00
.s58:
1ee6 : 8d 86 02 STA $0286 
.s12:
1ee9 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1eec : a9 0f __ LDA #$0f
1eee : 8d 86 02 STA $0286 
1ef1 : a9 0e __ LDA #$0e
1ef3 : 8d fa cf STA $cffa ; (sstack + 0)
1ef6 : a9 20 __ LDA #$20
1ef8 : 8d fb cf STA $cffb ; (sstack + 1)
1efb : ad b9 69 LDA $69b9 ; (uk + 0)
1efe : 8d fc cf STA $cffc ; (sstack + 2)
1f01 : ad ba 69 LDA $69ba ; (uk + 1)
1f04 : 8d fd cf STA $cffd ; (sstack + 3)
1f07 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1f0a : a9 15 __ LDA #$15
1f0c : 8d fa cf STA $cffa ; (sstack + 0)
1f0f : a9 20 __ LDA #$20
1f11 : 8d fb cf STA $cffb ; (sstack + 1)
1f14 : ad ca 69 LDA $69ca ; (mymove + 1)
1f17 : d0 18 __ BNE $1f31 ; (showboard.s13 + 0)
.s22:
1f19 : ad c9 69 LDA $69c9 ; (mymove + 0)
1f1c : c9 01 __ CMP #$01
1f1e : f0 0e __ BEQ $1f2e ; (showboard.s59 + 0)
.s19:
1f20 : ad ca 69 LDA $69ca ; (mymove + 1)
1f23 : d0 0c __ BNE $1f31 ; (showboard.s13 + 0)
.s21:
1f25 : ad c9 69 LDA $69c9 ; (mymove + 0)
1f28 : c9 02 __ CMP #$02
1f2a : d0 05 __ BNE $1f31 ; (showboard.s13 + 0)
.s20:
1f2c : a9 00 __ LDA #$00
.s59:
1f2e : 8d 86 02 STA $0286 
.s13:
1f31 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1f34 : a9 0f __ LDA #$0f
1f36 : 8d 86 02 STA $0286 
1f39 : a9 1e __ LDA #$1e
1f3b : 8d fa cf STA $cffa ; (sstack + 0)
1f3e : a9 20 __ LDA #$20
1f40 : 8d fb cf STA $cffb ; (sstack + 1)
1f43 : ad b7 69 LDA $69b7 ; (mk + 0)
1f46 : 8d fc cf STA $cffc ; (sstack + 2)
1f49 : ad b8 69 LDA $69b8 ; (mk + 1)
1f4c : 8d fd cf STA $cffd ; (sstack + 3)
1f4f : 20 8a 13 JSR $138a ; (printf.s1 + 0)
1f52 : a9 00 __ LDA #$00
1f54 : 85 43 __ STA T0 + 0 
.l14:
1f56 : 85 1b __ STA ACCU + 0 
1f58 : a9 00 __ LDA #$00
1f5a : 85 1c __ STA ACCU + 1 
1f5c : a9 13 __ LDA #$13
1f5e : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
1f61 : 18 __ __ CLC
1f62 : a9 4e __ LDA #$4e
1f64 : 65 1b __ ADC ACCU + 0 
1f66 : 85 53 __ STA T1 + 0 
1f68 : a9 68 __ LDA #$68
1f6a : 65 1c __ ADC ACCU + 1 
1f6c : 85 54 __ STA T1 + 1 
1f6e : a5 43 __ LDA T0 + 0 
1f70 : 0a __ __ ASL
1f71 : 0a __ __ ASL
1f72 : 65 43 __ ADC T0 + 0 
1f74 : 0a __ __ ASL
1f75 : 0a __ __ ASL
1f76 : 85 55 __ STA T2 + 0 
1f78 : a9 00 __ LDA #$00
1f7a : 2a __ __ ROL
1f7b : 06 55 __ ASL T2 + 0 
1f7d : 2a __ __ ROL
1f7e : aa __ __ TAX
1f7f : a5 55 __ LDA T2 + 0 
1f81 : 69 2a __ ADC #$2a
1f83 : 85 55 __ STA T2 + 0 
1f85 : 8a __ __ TXA
1f86 : 69 d8 __ ADC #$d8
1f88 : 85 56 __ STA T2 + 1 
1f8a : e6 43 __ INC T0 + 0 
1f8c : a0 00 __ LDY #$00
1f8e : b1 53 __ LDA (T1 + 0),y 
1f90 : d0 04 __ BNE $1f96 ; (showboard.l15 + 0)
.s18:
1f92 : a9 09 __ LDA #$09
1f94 : d0 06 __ BNE $1f9c ; (showboard.l57 + 0)
.l15:
1f96 : c9 01 __ CMP #$01
1f98 : f0 02 __ BEQ $1f9c ; (showboard.l57 + 0)
.s17:
1f9a : a9 00 __ LDA #$00
.l57:
1f9c : 91 55 __ STA (T2 + 0),y 
1f9e : c8 __ __ INY
1f9f : c0 13 __ CPY #$13
1fa1 : b0 06 __ BCS $1fa9 ; (showboard.s16 + 0)
.s60:
1fa3 : b1 53 __ LDA (T1 + 0),y 
1fa5 : d0 ef __ BNE $1f96 ; (showboard.l15 + 0)
1fa7 : f0 e9 __ BEQ $1f92 ; (showboard.s18 + 0)
.s16:
1fa9 : a5 43 __ LDA T0 + 0 
1fab : c9 13 __ CMP #$13
1fad : 90 a7 __ BCC $1f56 ; (showboard.l14 + 0)
.s3:
1faf : a2 05 __ LDX #$05
1fb1 : bd 99 cf LDA $cf99,x ; (showboard@stack + 0)
1fb4 : 95 53 __ STA T1 + 0,x 
1fb6 : ca __ __ DEX
1fb7 : 10 f8 __ BPL $1fb1 ; (showboard.s3 + 2)
1fb9 : 60 __ __ RTS
.s7:
1fba : c9 01 __ CMP #$01
1fbc : f0 07 __ BEQ $1fc5 ; (showboard.s8 + 0)
.s27:
1fbe : a9 20 __ LDA #$20
1fc0 : a2 02 __ LDX #$02
1fc2 : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
.s8:
1fc5 : a9 20 __ LDA #$20
1fc7 : a2 00 __ LDX #$00
1fc9 : 4c 70 1e JMP $1e70 ; (showboard.s9 + 0)
--------------------------------------------------------------------
1fcc : __ __ __ BYT 13 00                                           : ..
--------------------------------------------------------------------
1fce : __ __ __ BYT 20 20 61 62 63 64 65 66 67 68 6a 6b 6c 6d 6e 6f :   abcdefghjklmno
1fde : __ __ __ BYT 70 71 72 73 74 20 20 0a 00                      : pqrst  ..
--------------------------------------------------------------------
1fe7 : __ __ __ BYT 25 32 64 00                                     : %2d.
--------------------------------------------------------------------
1feb : __ __ __ BYT 25 25 00                                        : %%.
--------------------------------------------------------------------
1fee : __ __ __ BYT 27 00                                           : '.
--------------------------------------------------------------------
1ff0 : __ __ __ BYT 2b 00                                           : +.
--------------------------------------------------------------------
1ff2 : __ __ __ BYT 29 00                                           : ).
--------------------------------------------------------------------
1ff4 : __ __ __ BYT 26 00                                           : &.
--------------------------------------------------------------------
1ff6 : __ __ __ BYT 2a 00                                           : *.
--------------------------------------------------------------------
1ff8 : __ __ __ BYT 2c 00                                           : ,.
--------------------------------------------------------------------
1ffa : __ __ __ BYT 28 00                                           : (.
--------------------------------------------------------------------
1ffc : __ __ __ BYT 2d 00                                           : -.
--------------------------------------------------------------------
1ffe : __ __ __ BYT 21 00                                           : !.
--------------------------------------------------------------------
2000 : __ __ __ BYT 24 00                                           : $.
--------------------------------------------------------------------
2002 : __ __ __ BYT 23 00                                           : #.
--------------------------------------------------------------------
2004 : __ __ __ BYT 25 32 64 0a 00                                  : %2d..
--------------------------------------------------------------------
2009 : __ __ __ BYT 0a 79 4f 55 00                                  : .yOU.
--------------------------------------------------------------------
200e : __ __ __ BYT 3a 20 25 64 20 20 00                            : : %d  .
--------------------------------------------------------------------
2015 : __ __ __ BYT 63 4f 4d 50 55 54 45 52 00                      : cOMPUTER.
--------------------------------------------------------------------
201e : __ __ __ BYT 3a 20 25 64 0a 00                               : : %d..
--------------------------------------------------------------------
2024 : __ __ __ BYT 0a 63 48 4f 4f 53 45 20 53 49 44 45 5b 42 20 4f : .cHOOSE SIDE[B O
2034 : __ __ __ BYT 52 20 57 5d 3f 20 00                            : R W]? .
--------------------------------------------------------------------
scanf: ; scanf(const u8*)->void
;  26, "/usr/local/include/oscar64/stdio.h"
.s1:
203b : a2 08 __ LDX #$08
203d : b5 53 __ LDA T5 + 0,x 
203f : 9d cd cf STA $cfcd,x ; (scanf@stack + 0)
2042 : ca __ __ DEX
2043 : 10 f8 __ BPL $203d ; (scanf.s1 + 2)
.s4:
2045 : ad fa cf LDA $cffa ; (sstack + 0)
2048 : 85 4f __ STA T3 + 0 
204a : ad fb cf LDA $cffb ; (sstack + 1)
204d : 85 50 __ STA T3 + 1 
204f : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
2052 : 85 51 __ STA T4 + 0 
2054 : a2 fc __ LDX #$fc
2056 : 86 53 __ STX T5 + 0 
2058 : a2 cf __ LDX #$cf
205a : 86 54 __ STX T5 + 1 
205c : a2 00 __ LDX #$00
205e : 86 56 __ STX T7 + 1 
2060 : e8 __ __ INX
2061 : 86 55 __ STX T7 + 0 
2063 : aa __ __ TAX
2064 : f0 3a __ BEQ $20a0 ; (scanf.s3 + 0)
.l6:
2066 : a0 00 __ LDY #$00
2068 : b1 4f __ LDA (T3 + 0),y 
206a : f0 34 __ BEQ $20a0 ; (scanf.s3 + 0)
.s7:
206c : 85 47 __ STA T1 + 0 
206e : a5 4f __ LDA T3 + 0 
2070 : 85 43 __ STA T0 + 0 
2072 : 18 __ __ CLC
2073 : 69 01 __ ADC #$01
2075 : 85 4f __ STA T3 + 0 
2077 : a5 50 __ LDA T3 + 1 
2079 : 85 44 __ STA T0 + 1 
207b : 69 00 __ ADC #$00
207d : 85 50 __ STA T3 + 1 
207f : a5 47 __ LDA T1 + 0 
2081 : c9 20 __ CMP #$20
2083 : d0 03 __ BNE $2088 ; (scanf.s13 + 0)
2085 : 4c a8 27 JMP $27a8 ; (scanf.l8 + 0)
.s13:
2088 : c9 25 __ CMP #$25
208a : f0 1f __ BEQ $20ab ; (scanf.s14 + 0)
.s152:
208c : a5 51 __ LDA T4 + 0 
208e : c5 47 __ CMP T1 + 0 
2090 : d0 0e __ BNE $20a0 ; (scanf.s3 + 0)
.s153:
2092 : e6 55 __ INC T7 + 0 
2094 : d0 02 __ BNE $2098 ; (scanf.s208 + 0)
.s207:
2096 : e6 56 __ INC T7 + 1 
.s208:
2098 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
209b : 85 51 __ STA T4 + 0 
209d : aa __ __ TAX
209e : d0 c6 __ BNE $2066 ; (scanf.l6 + 0)
.s3:
20a0 : a2 08 __ LDX #$08
20a2 : bd cd cf LDA $cfcd,x ; (scanf@stack + 0)
20a5 : 95 53 __ STA T5 + 0,x 
20a7 : ca __ __ DEX
20a8 : 10 f8 __ BPL $20a2 ; (scanf.s3 + 2)
20aa : 60 __ __ RTS
.s14:
20ab : c8 __ __ INY
20ac : b1 43 __ LDA (T0 + 0),y 
20ae : c9 2a __ CMP #$2a
20b0 : f0 14 __ BEQ $20c6 ; (scanf.s15 + 0)
.s151:
20b2 : aa __ __ TAX
20b3 : 18 __ __ CLC
20b4 : a5 43 __ LDA T0 + 0 
20b6 : 69 02 __ ADC #$02
20b8 : 85 4f __ STA T3 + 0 
20ba : a5 44 __ LDA T0 + 1 
20bc : 69 00 __ ADC #$00
20be : 85 50 __ STA T3 + 1 
20c0 : a9 00 __ LDA #$00
20c2 : 85 5b __ STA T13 + 0 
20c4 : f0 12 __ BEQ $20d8 ; (scanf.s16 + 0)
.s15:
20c6 : 84 5b __ STY T13 + 0 
20c8 : a5 43 __ LDA T0 + 0 
20ca : 69 02 __ ADC #$02
20cc : 85 4f __ STA T3 + 0 
20ce : a5 44 __ LDA T0 + 1 
20d0 : 69 00 __ ADC #$00
20d2 : 85 50 __ STA T3 + 1 
20d4 : c8 __ __ INY
20d5 : b1 43 __ LDA (T0 + 0),y 
20d7 : aa __ __ TAX
.s16:
20d8 : a9 ff __ LDA #$ff
20da : 85 57 __ STA T8 + 0 
20dc : a9 7f __ LDA #$7f
20de : 85 58 __ STA T8 + 1 
20e0 : a9 01 __ LDA #$01
20e2 : 85 52 __ STA T10 + 0 
20e4 : a9 00 __ LDA #$00
20e6 : 85 59 __ STA T11 + 0 
20e8 : a9 0a __ LDA #$0a
20ea : 85 4b __ STA T2 + 0 
20ec : 8a __ __ TXA
20ed : e0 30 __ CPX #$30
20ef : 90 4f __ BCC $2140 ; (scanf.s149 + 0)
.s17:
20f1 : c9 3a __ CMP #$3a
20f3 : b0 44 __ BCS $2139 ; (scanf.s22 + 0)
.s18:
20f5 : e9 2f __ SBC #$2f
20f7 : 85 57 __ STA T8 + 0 
20f9 : a9 00 __ LDA #$00
.l19:
20fb : 85 58 __ STA T8 + 1 
20fd : a0 00 __ LDY #$00
20ff : b1 4f __ LDA (T3 + 0),y 
2101 : aa __ __ TAX
2102 : e6 4f __ INC T3 + 0 
2104 : d0 02 __ BNE $2108 ; (scanf.s206 + 0)
.s205:
2106 : e6 50 __ INC T3 + 1 
.s206:
2108 : e0 30 __ CPX #$30
210a : 90 34 __ BCC $2140 ; (scanf.s149 + 0)
.s20:
210c : c9 3a __ CMP #$3a
210e : b0 29 __ BCS $2139 ; (scanf.s22 + 0)
.s21:
2110 : a5 57 __ LDA T8 + 0 
2112 : 0a __ __ ASL
2113 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
2115 : a5 58 __ LDA T8 + 1 
2117 : 2a __ __ ROL
2118 : 06 1b __ ASL ACCU + 0 ; (fmt + 2)
211a : 2a __ __ ROL
211b : a8 __ __ TAY
211c : 18 __ __ CLC
211d : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
211f : 65 57 __ ADC T8 + 0 
2121 : 85 43 __ STA T0 + 0 
2123 : 98 __ __ TYA
2124 : 65 58 __ ADC T8 + 1 
2126 : 06 43 __ ASL T0 + 0 
2128 : 2a __ __ ROL
2129 : a8 __ __ TAY
212a : 8a __ __ TXA
212b : 38 __ __ SEC
212c : e9 30 __ SBC #$30
212e : 18 __ __ CLC
212f : 65 43 __ ADC T0 + 0 
2131 : 85 57 __ STA T8 + 0 
2133 : 98 __ __ TYA
2134 : 69 00 __ ADC #$00
2136 : 4c fb 20 JMP $20fb ; (scanf.l19 + 0)
.s22:
2139 : c9 6c __ CMP #$6c
213b : d0 03 __ BNE $2140 ; (scanf.s149 + 0)
213d : 4c 92 27 JMP $2792 ; (scanf.s23 + 0)
.s149:
2140 : c9 4c __ CMP #$4c
2142 : f0 f9 __ BEQ $213d ; (scanf.s22 + 4)
.s150:
2144 : c9 5b __ CMP #$5b
2146 : d0 03 __ BNE $214b ; (scanf.s46 + 0)
2148 : 4c 88 26 JMP $2688 ; (scanf.s24 + 0)
.s46:
214b : c9 5b __ CMP #$5b
214d : b0 03 __ BCS $2152 ; (scanf.s138 + 0)
214f : 4c 48 26 JMP $2648 ; (scanf.s47 + 0)
.s138:
2152 : c9 6e __ CMP #$6e
2154 : d0 15 __ BNE $216b ; (scanf.s139 + 0)
.s48:
2156 : a0 00 __ LDY #$00
2158 : b1 53 __ LDA (T5 + 0),y 
215a : 85 43 __ STA T0 + 0 
215c : c8 __ __ INY
215d : b1 53 __ LDA (T5 + 0),y 
215f : 85 44 __ STA T0 + 1 
2161 : a5 55 __ LDA T7 + 0 
2163 : 88 __ __ DEY
2164 : 91 43 __ STA (T0 + 0),y 
2166 : a5 56 __ LDA T7 + 1 
2168 : 4c 19 22 JMP $2219 ; (scanf.s161 + 0)
.s139:
216b : b0 03 __ BCS $2170 ; (scanf.s145 + 0)
216d : 4c 6f 23 JMP $236f ; (scanf.s140 + 0)
.s145:
2170 : c9 75 __ CMP #$75
2172 : f0 17 __ BEQ $218b ; (scanf.s123 + 0)
.s146:
2174 : b0 03 __ BCS $2179 ; (scanf.s148 + 0)
2176 : 4c 10 23 JMP $2310 ; (scanf.s147 + 0)
.s148:
2179 : c9 78 __ CMP #$78
217b : f0 0a __ BEQ $2187 ; (scanf.s137 + 0)
.s5:
217d : a5 51 __ LDA T4 + 0 
217f : d0 03 __ BNE $2184 ; (scanf.s5 + 7)
2181 : 4c a0 20 JMP $20a0 ; (scanf.s3 + 0)
2184 : 4c 66 20 JMP $2066 ; (scanf.l6 + 0)
.s137:
2187 : a9 10 __ LDA #$10
2189 : 85 4b __ STA T2 + 0 
.s123:
218b : c6 52 __ DEC T10 + 0 
.s63:
218d : a5 51 __ LDA T4 + 0 
218f : c9 2d __ CMP #$2d
2191 : d0 03 __ BNE $2196 ; (scanf.s83 + 0)
2193 : 4c 00 23 JMP $2300 ; (scanf.s64 + 0)
.s83:
2196 : a2 00 __ LDX #$00
2198 : 86 5a __ STX T12 + 0 
219a : c9 2b __ CMP #$2b
219c : d0 09 __ BNE $21a7 ; (scanf.s159 + 0)
.s84:
219e : e6 55 __ INC T7 + 0 
21a0 : d0 02 __ BNE $21a4 ; (scanf.s189 + 0)
.s188:
21a2 : e6 56 __ INC T7 + 1 
.s189:
21a4 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
.s159:
21a7 : 20 dc 27 JSR $27dc ; (hexch.s4 + 0)
21aa : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
21ac : 30 d3 __ BMI $2181 ; (scanf.s5 + 4)
.s65:
21ae : 85 48 __ STA T1 + 1 
21b0 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
21b2 : 85 47 __ STA T1 + 0 
21b4 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
21b7 : 85 51 __ STA T4 + 0 
21b9 : aa __ __ TAX
21ba : a5 55 __ LDA T7 + 0 
21bc : a8 __ __ TAY
21bd : 18 __ __ CLC
21be : 69 01 __ ADC #$01
21c0 : 85 55 __ STA T7 + 0 
21c2 : a5 56 __ LDA T7 + 1 
21c4 : 85 44 __ STA T0 + 1 
21c6 : 69 00 __ ADC #$00
21c8 : 85 56 __ STA T7 + 1 
21ca : a5 47 __ LDA T1 + 0 
21cc : 05 48 __ ORA T1 + 1 
21ce : d0 0b __ BNE $21db ; (scanf.s82 + 0)
.s66:
21d0 : 85 47 __ STA T1 + 0 
21d2 : 85 48 __ STA T1 + 1 
21d4 : e0 78 __ CPX #$78
21d6 : d0 03 __ BNE $21db ; (scanf.s82 + 0)
21d8 : 4c e1 22 JMP $22e1 ; (scanf.s67 + 0)
.s82:
21db : a5 59 __ LDA T11 + 0 
21dd : f0 06 __ BEQ $21e5 ; (scanf.l75 + 0)
.s68:
21df : a9 00 __ LDA #$00
21e1 : 85 49 __ STA T1 + 2 
21e3 : f0 77 __ BEQ $225c ; (scanf.l69 + 0)
.l75:
21e5 : a5 51 __ LDA T4 + 0 
21e7 : 20 dc 27 JSR $27dc ; (hexch.s4 + 0)
21ea : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
21ec : 10 40 __ BPL $222e ; (scanf.s76 + 0)
.s77:
21ee : a5 5b __ LDA T13 + 0 
21f0 : d0 8b __ BNE $217d ; (scanf.s5 + 0)
.s78:
21f2 : 24 5a __ BIT T12 + 0 
21f4 : 10 11 __ BPL $2207 ; (scanf.s81 + 0)
.s79:
21f6 : a5 52 __ LDA T10 + 0 
21f8 : f0 0d __ BEQ $2207 ; (scanf.s81 + 0)
.s80:
21fa : 38 __ __ SEC
21fb : a9 00 __ LDA #$00
21fd : e5 47 __ SBC T1 + 0 
21ff : 85 47 __ STA T1 + 0 
2201 : a9 00 __ LDA #$00
2203 : e5 48 __ SBC T1 + 1 
2205 : 85 48 __ STA T1 + 1 
.s81:
2207 : a0 00 __ LDY #$00
2209 : b1 53 __ LDA (T5 + 0),y 
220b : 85 43 __ STA T0 + 0 
220d : c8 __ __ INY
220e : b1 53 __ LDA (T5 + 0),y 
2210 : 85 44 __ STA T0 + 1 
2212 : a5 47 __ LDA T1 + 0 
2214 : 88 __ __ DEY
2215 : 91 43 __ STA (T0 + 0),y 
2217 : a5 48 __ LDA T1 + 1 
.s161:
2219 : a0 01 __ LDY #$01
.s160:
221b : 91 43 __ STA (T0 + 0),y 
.s41:
221d : 18 __ __ CLC
221e : a5 53 __ LDA T5 + 0 
2220 : 69 02 __ ADC #$02
2222 : 85 53 __ STA T5 + 0 
2224 : b0 03 __ BCS $2229 ; (scanf.s177 + 0)
2226 : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s177:
2229 : e6 54 __ INC T5 + 1 
222b : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s76:
222e : 85 58 __ STA T8 + 1 
2230 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
2232 : 85 57 __ STA T8 + 0 
2234 : e6 55 __ INC T7 + 0 
2236 : d0 02 __ BNE $223a ; (scanf.s187 + 0)
.s186:
2238 : e6 56 __ INC T7 + 1 
.s187:
223a : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
223d : 85 51 __ STA T4 + 0 
223f : a5 47 __ LDA T1 + 0 
2241 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
2243 : a5 48 __ LDA T1 + 1 
2245 : 85 1c __ STA ACCU + 1 ; (fmt + 3)
2247 : a5 4b __ LDA T2 + 0 
2249 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
224c : 18 __ __ CLC
224d : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
224f : 65 57 __ ADC T8 + 0 
2251 : 85 47 __ STA T1 + 0 
2253 : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
2255 : 65 58 __ ADC T8 + 1 
2257 : 85 48 __ STA T1 + 1 
2259 : 4c e5 21 JMP $21e5 ; (scanf.l75 + 0)
.l69:
225c : 85 4a __ STA T1 + 3 
225e : a5 51 __ LDA T4 + 0 
2260 : 20 dc 27 JSR $27dc ; (hexch.s4 + 0)
2263 : a5 1c __ LDA ACCU + 1 ; (fmt + 3)
2265 : 10 45 __ BPL $22ac ; (scanf.s70 + 0)
.s71:
2267 : a5 5b __ LDA T13 + 0 
2269 : d0 c0 __ BNE $222b ; (scanf.s177 + 2)
.s72:
226b : 24 5a __ BIT T12 + 0 
226d : 10 1d __ BPL $228c ; (scanf.s162 + 0)
.s73:
226f : a5 52 __ LDA T10 + 0 
2271 : f0 19 __ BEQ $228c ; (scanf.s162 + 0)
.s74:
2273 : 38 __ __ SEC
2274 : a9 00 __ LDA #$00
2276 : e5 47 __ SBC T1 + 0 
2278 : 85 47 __ STA T1 + 0 
227a : a9 00 __ LDA #$00
227c : e5 48 __ SBC T1 + 1 
227e : 85 48 __ STA T1 + 1 
2280 : a9 00 __ LDA #$00
2282 : e5 49 __ SBC T1 + 2 
2284 : 85 49 __ STA T1 + 2 
2286 : a9 00 __ LDA #$00
2288 : e5 4a __ SBC T1 + 3 
.s163:
228a : 85 4a __ STA T1 + 3 
.s162:
228c : a0 00 __ LDY #$00
228e : b1 53 __ LDA (T5 + 0),y 
2290 : 85 43 __ STA T0 + 0 
2292 : c8 __ __ INY
2293 : b1 53 __ LDA (T5 + 0),y 
2295 : 85 44 __ STA T0 + 1 
2297 : a5 47 __ LDA T1 + 0 
2299 : 88 __ __ DEY
229a : 91 43 __ STA (T0 + 0),y 
229c : a5 48 __ LDA T1 + 1 
229e : c8 __ __ INY
229f : 91 43 __ STA (T0 + 0),y 
22a1 : a5 49 __ LDA T1 + 2 
22a3 : c8 __ __ INY
22a4 : 91 43 __ STA (T0 + 0),y 
22a6 : a5 4a __ LDA T1 + 3 
22a8 : c8 __ __ INY
22a9 : 4c 1b 22 JMP $221b ; (scanf.s160 + 0)
.s70:
22ac : 85 58 __ STA T8 + 1 
22ae : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
22b0 : 85 57 __ STA T8 + 0 
22b2 : e6 55 __ INC T7 + 0 
22b4 : d0 02 __ BNE $22b8 ; (scanf.s185 + 0)
.s184:
22b6 : e6 56 __ INC T7 + 1 
.s185:
22b8 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
22bb : 85 51 __ STA T4 + 0 
22bd : a2 47 __ LDX #$47
22bf : 20 df 53 JSR $53df ; (load32 + 0)
22c2 : a5 4b __ LDA T2 + 0 
22c4 : 20 f1 4d JSR $4df1 ; (mul32by8 + 0)
22c7 : 18 __ __ CLC
22c8 : a5 57 __ LDA T8 + 0 
22ca : 65 07 __ ADC WORK + 4 
22cc : 85 47 __ STA T1 + 0 
22ce : a5 58 __ LDA T8 + 1 
22d0 : 65 08 __ ADC WORK + 5 
22d2 : 85 48 __ STA T1 + 1 
22d4 : a5 09 __ LDA WORK + 6 
22d6 : 69 00 __ ADC #$00
22d8 : 85 49 __ STA T1 + 2 
22da : a5 0a __ LDA WORK + 7 
22dc : 69 00 __ ADC #$00
22de : 4c 5c 22 JMP $225c ; (scanf.l69 + 0)
.s67:
22e1 : 98 __ __ TYA
22e2 : 18 __ __ CLC
22e3 : 69 02 __ ADC #$02
22e5 : 85 55 __ STA T7 + 0 
22e7 : a5 44 __ LDA T0 + 1 
22e9 : 69 00 __ ADC #$00
22eb : 85 56 __ STA T7 + 1 
22ed : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
22f0 : 85 51 __ STA T4 + 0 
22f2 : a9 10 __ LDA #$10
22f4 : 85 4b __ STA T2 + 0 
22f6 : a5 59 __ LDA T11 + 0 
22f8 : d0 03 __ BNE $22fd ; (scanf.s67 + 28)
22fa : 4c e5 21 JMP $21e5 ; (scanf.l75 + 0)
22fd : 4c df 21 JMP $21df ; (scanf.s68 + 0)
.s64:
2300 : e6 55 __ INC T7 + 0 
2302 : d0 02 __ BNE $2306 ; (scanf.s183 + 0)
.s182:
2304 : e6 56 __ INC T7 + 1 
.s183:
2306 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
2309 : a2 ff __ LDX #$ff
230b : 86 5a __ STX T12 + 0 
230d : 4c a7 21 JMP $21a7 ; (scanf.s159 + 0)
.s147:
2310 : c9 73 __ CMP #$73
2312 : f0 03 __ BEQ $2317 ; (scanf.s126 + 0)
2314 : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s126:
2317 : a0 00 __ LDY #$00
2319 : b1 53 __ LDA (T5 + 0),y 
231b : 85 4b __ STA T2 + 0 
231d : c8 __ __ INY
231e : b1 53 __ LDA (T5 + 0),y 
2320 : 85 4c __ STA T2 + 1 
2322 : a5 58 __ LDA T8 + 1 
2324 : 30 3f __ BMI $2365 ; (scanf.s39 + 0)
.l135:
2326 : 05 57 __ ORA T8 + 0 
2328 : f0 3b __ BEQ $2365 ; (scanf.s39 + 0)
.s127:
232a : a5 51 __ LDA T4 + 0 
232c : f0 37 __ BEQ $2365 ; (scanf.s39 + 0)
.s128:
232e : c9 20 __ CMP #$20
2330 : f0 33 __ BEQ $2365 ; (scanf.s39 + 0)
.s129:
2332 : c9 09 __ CMP #$09
2334 : f0 2f __ BEQ $2365 ; (scanf.s39 + 0)
.s130:
2336 : c9 0a __ CMP #$0a
2338 : f0 2b __ BEQ $2365 ; (scanf.s39 + 0)
.s131:
233a : c9 0d __ CMP #$0d
233c : f0 27 __ BEQ $2365 ; (scanf.s39 + 0)
.s132:
233e : a5 5b __ LDA T13 + 0 
2340 : d0 0c __ BNE $234e ; (scanf.s133 + 0)
.s134:
2342 : a5 51 __ LDA T4 + 0 
2344 : a0 00 __ LDY #$00
2346 : 91 4b __ STA (T2 + 0),y 
2348 : e6 4b __ INC T2 + 0 
234a : d0 02 __ BNE $234e ; (scanf.s133 + 0)
.s204:
234c : e6 4c __ INC T2 + 1 
.s133:
234e : a5 57 __ LDA T8 + 0 
2350 : d0 02 __ BNE $2354 ; (scanf.s201 + 0)
.s200:
2352 : c6 58 __ DEC T8 + 1 
.s201:
2354 : c6 57 __ DEC T8 + 0 
2356 : e6 55 __ INC T7 + 0 
2358 : d0 02 __ BNE $235c ; (scanf.s203 + 0)
.s202:
235a : e6 56 __ INC T7 + 1 
.s203:
235c : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
235f : 85 51 __ STA T4 + 0 
2361 : a5 58 __ LDA T8 + 1 
2363 : 10 c1 __ BPL $2326 ; (scanf.l135 + 0)
.s39:
2365 : a5 5b __ LDA T13 + 0 
2367 : d0 ab __ BNE $2314 ; (scanf.s147 + 4)
.s40:
2369 : a8 __ __ TAY
236a : 91 4b __ STA (T2 + 0),y 
236c : 4c 1d 22 JMP $221d ; (scanf.s41 + 0)
.s140:
236f : c9 65 __ CMP #$65
2371 : b0 03 __ BCS $2376 ; (scanf.s143 + 0)
2373 : 4c e2 25 JMP $25e2 ; (scanf.s141 + 0)
.s143:
2376 : c9 68 __ CMP #$68
2378 : 90 07 __ BCC $2381 ; (scanf.s86 + 0)
.s144:
237a : c9 69 __ CMP #$69
237c : d0 96 __ BNE $2314 ; (scanf.s147 + 4)
237e : 4c 8d 21 JMP $218d ; (scanf.s63 + 0)
.s86:
2381 : a5 51 __ LDA T4 + 0 
2383 : c9 2d __ CMP #$2d
2385 : f0 06 __ BEQ $238d ; (scanf.s87 + 0)
.s119:
2387 : c6 52 __ DEC T10 + 0 
2389 : c9 2b __ CMP #$2b
238b : d0 0b __ BNE $2398 ; (scanf.s120 + 0)
.s87:
238d : e6 55 __ INC T7 + 0 
238f : d0 02 __ BNE $2393 ; (scanf.s191 + 0)
.s190:
2391 : e6 56 __ INC T7 + 1 
.s191:
2393 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
2396 : 85 51 __ STA T4 + 0 
.s120:
2398 : c9 30 __ CMP #$30
239a : 90 03 __ BCC $239f ; (scanf.s118 + 0)
239c : 4c d8 25 JMP $25d8 ; (scanf.s88 + 0)
.s118:
239f : c9 2e __ CMP #$2e
23a1 : f0 03 __ BEQ $23a6 ; (scanf.s89 + 0)
23a3 : 4c a0 20 JMP $20a0 ; (scanf.s3 + 0)
.s89:
23a6 : a9 00 __ LDA #$00
23a8 : 85 47 __ STA T1 + 0 
23aa : 85 48 __ STA T1 + 1 
23ac : 85 49 __ STA T1 + 2 
23ae : 85 4a __ STA T1 + 3 
23b0 : a5 51 __ LDA T4 + 0 
23b2 : c9 30 __ CMP #$30
23b4 : 90 4c __ BCC $2402 ; (scanf.s92 + 0)
.l90:
23b6 : c9 3a __ CMP #$3a
23b8 : 90 03 __ BCC $23bd ; (scanf.s91 + 0)
23ba : 4c 82 24 JMP $2482 ; (scanf.s98 + 0)
.s91:
23bd : e6 55 __ INC T7 + 0 
23bf : d0 02 __ BNE $23c3 ; (scanf.s199 + 0)
.s198:
23c1 : e6 56 __ INC T7 + 1 
.s199:
23c3 : a5 51 __ LDA T4 + 0 
23c5 : 85 4b __ STA T2 + 0 
23c7 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
23ca : 85 51 __ STA T4 + 0 
23cc : a9 00 __ LDA #$00
23ce : 85 1b __ STA ACCU + 0 ; (fmt + 2)
23d0 : 85 1c __ STA ACCU + 1 ; (fmt + 3)
23d2 : a2 47 __ LDX #$47
23d4 : 20 1c 54 JSR $541c ; (freg@proxy + 0)
23d7 : 20 59 4f JSR $4f59 ; (crt_fmul + 0)
23da : a2 43 __ LDX #$43
23dc : 20 ce 53 JSR $53ce ; (store32 + 0)
23df : 38 __ __ SEC
23e0 : a5 4b __ LDA T2 + 0 
23e2 : e9 30 __ SBC #$30
23e4 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
23e6 : a9 00 __ LDA #$00
23e8 : e9 00 __ SBC #$00
23ea : 85 1c __ STA ACCU + 1 ; (fmt + 3)
23ec : 20 82 52 JSR $5282 ; (sint16_to_float + 0)
23ef : a2 43 __ LDX #$43
23f1 : 20 2b 4e JSR $4e2b ; (freg + 4)
23f4 : 20 72 4e JSR $4e72 ; (faddsub + 6)
23f7 : a2 47 __ LDX #$47
23f9 : 20 ce 53 JSR $53ce ; (store32 + 0)
23fc : a5 51 __ LDA T4 + 0 
23fe : c9 30 __ CMP #$30
2400 : b0 b4 __ BCS $23b6 ; (scanf.l90 + 0)
.s92:
2402 : c9 2e __ CMP #$2e
2404 : d0 7c __ BNE $2482 ; (scanf.s98 + 0)
.s93:
2406 : a9 00 __ LDA #$00
2408 : 85 4b __ STA T2 + 0 
240a : 85 4c __ STA T2 + 1 
240c : a9 80 __ LDA #$80
240e : 85 4d __ STA T2 + 2 
2410 : a9 3f __ LDA #$3f
2412 : 85 4e __ STA T2 + 3 
.l94:
2414 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
2417 : 85 51 __ STA T4 + 0 
2419 : c9 30 __ CMP #$30
241b : 90 04 __ BCC $2421 ; (scanf.s97 + 0)
.s95:
241d : c9 3a __ CMP #$3a
241f : 90 15 __ BCC $2436 ; (scanf.s96 + 0)
.s97:
2421 : a2 47 __ LDX #$47
2423 : 20 df 53 JSR $53df ; (load32 + 0)
2426 : a2 4b __ LDX #$4b
2428 : 20 2b 4e JSR $4e2b ; (freg + 4)
242b : 20 21 50 JSR $5021 ; (crt_fdiv + 0)
242e : a2 47 __ LDX #$47
2430 : 20 ce 53 JSR $53ce ; (store32 + 0)
2433 : 4c 82 24 JMP $2482 ; (scanf.s98 + 0)
.s96:
2436 : e6 55 __ INC T7 + 0 
2438 : d0 02 __ BNE $243c ; (scanf.s197 + 0)
.s196:
243a : e6 56 __ INC T7 + 1 
.s197:
243c : a9 00 __ LDA #$00
243e : 85 1b __ STA ACCU + 0 ; (fmt + 2)
2440 : 85 1c __ STA ACCU + 1 ; (fmt + 3)
2442 : a2 4b __ LDX #$4b
2444 : 20 1c 54 JSR $541c ; (freg@proxy + 0)
2447 : 20 59 4f JSR $4f59 ; (crt_fmul + 0)
244a : a2 4b __ LDX #$4b
244c : 20 ce 53 JSR $53ce ; (store32 + 0)
244f : a9 00 __ LDA #$00
2451 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
2453 : 85 1c __ STA ACCU + 1 ; (fmt + 3)
2455 : a2 47 __ LDX #$47
2457 : 20 1c 54 JSR $541c ; (freg@proxy + 0)
245a : 20 59 4f JSR $4f59 ; (crt_fmul + 0)
245d : a2 43 __ LDX #$43
245f : 20 ce 53 JSR $53ce ; (store32 + 0)
2462 : 38 __ __ SEC
2463 : a5 51 __ LDA T4 + 0 
2465 : e9 30 __ SBC #$30
2467 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
2469 : a9 00 __ LDA #$00
246b : e9 00 __ SBC #$00
246d : 85 1c __ STA ACCU + 1 ; (fmt + 3)
246f : 20 82 52 JSR $5282 ; (sint16_to_float + 0)
2472 : a2 43 __ LDX #$43
2474 : 20 2b 4e JSR $4e2b ; (freg + 4)
2477 : 20 72 4e JSR $4e72 ; (faddsub + 6)
247a : a2 47 __ LDX #$47
247c : 20 ce 53 JSR $53ce ; (store32 + 0)
247f : 4c 14 24 JMP $2414 ; (scanf.l94 + 0)
.s98:
2482 : a9 00 __ LDA #$00
2484 : 85 4b __ STA T2 + 0 
2486 : 85 59 __ STA T11 + 0 
2488 : a5 51 __ LDA T4 + 0 
248a : c9 65 __ CMP #$65
248c : f0 04 __ BEQ $2492 ; (scanf.s99 + 0)
.s117:
248e : c9 45 __ CMP #$45
2490 : d0 5d __ BNE $24ef ; (scanf.s104 + 0)
.s99:
2492 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
2495 : c9 2d __ CMP #$2d
2497 : d0 03 __ BNE $249c ; (scanf.s115 + 0)
2499 : 4c c4 25 JMP $25c4 ; (scanf.s100 + 0)
.s115:
249c : 85 51 __ STA T4 + 0 
249e : a5 55 __ LDA T7 + 0 
24a0 : aa __ __ TAX
24a1 : 18 __ __ CLC
24a2 : 69 01 __ ADC #$01
24a4 : 85 55 __ STA T7 + 0 
24a6 : a5 56 __ LDA T7 + 1 
24a8 : a8 __ __ TAY
24a9 : 69 00 __ ADC #$00
24ab : 85 56 __ STA T7 + 1 
24ad : a5 51 __ LDA T4 + 0 
24af : c9 2b __ CMP #$2b
24b1 : d0 0f __ BNE $24c2 ; (scanf.s101 + 0)
.s116:
24b3 : 8a __ __ TXA
24b4 : 69 01 __ ADC #$01
24b6 : 85 55 __ STA T7 + 0 
24b8 : 90 01 __ BCC $24bb ; (scanf.s210 + 0)
.s209:
24ba : c8 __ __ INY
.s210:
24bb : 84 56 __ STY T7 + 1 
24bd : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
24c0 : 85 51 __ STA T4 + 0 
.s101:
24c2 : c9 30 __ CMP #$30
24c4 : 90 29 __ BCC $24ef ; (scanf.s104 + 0)
.l102:
24c6 : c9 3a __ CMP #$3a
24c8 : b0 25 __ BCS $24ef ; (scanf.s104 + 0)
.s103:
24ca : e6 55 __ INC T7 + 0 
24cc : d0 02 __ BNE $24d0 ; (scanf.s195 + 0)
.s194:
24ce : e6 56 __ INC T7 + 1 
.s195:
24d0 : a5 51 __ LDA T4 + 0 
24d2 : 85 57 __ STA T8 + 0 
24d4 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
24d7 : 85 51 __ STA T4 + 0 
24d9 : a5 4b __ LDA T2 + 0 
24db : 0a __ __ ASL
24dc : 0a __ __ ASL
24dd : 18 __ __ CLC
24de : 65 4b __ ADC T2 + 0 
24e0 : 0a __ __ ASL
24e1 : 18 __ __ CLC
24e2 : 65 57 __ ADC T8 + 0 
24e4 : 38 __ __ SEC
24e5 : e9 30 __ SBC #$30
24e7 : 85 4b __ STA T2 + 0 
24e9 : a5 51 __ LDA T4 + 0 
24eb : c9 30 __ CMP #$30
24ed : b0 d7 __ BCS $24c6 ; (scanf.l102 + 0)
.s104:
24ef : a5 5b __ LDA T13 + 0 
24f1 : f0 03 __ BEQ $24f6 ; (scanf.s105 + 0)
24f3 : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s105:
24f6 : a5 4b __ LDA T2 + 0 
24f8 : f0 5a __ BEQ $2554 ; (scanf.s114 + 0)
.s106:
24fa : a5 59 __ LDA T11 + 0 
24fc : d0 64 __ BNE $2562 ; (scanf.s107 + 0)
.s111:
24fe : a5 4b __ LDA T2 + 0 
2500 : c9 07 __ CMP #$07
2502 : 90 28 __ BCC $252c ; (scanf.s113 + 0)
.l112:
2504 : a9 00 __ LDA #$00
2506 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
2508 : a9 49 __ LDA #$49
250a : 85 1e __ STA ACCU + 3 
250c : a9 24 __ LDA #$24
250e : 85 1c __ STA ACCU + 1 ; (fmt + 3)
2510 : a9 74 __ LDA #$74
2512 : 85 1d __ STA ACCU + 2 
2514 : a2 47 __ LDX #$47
2516 : 20 2b 4e JSR $4e2b ; (freg + 4)
2519 : 20 59 4f JSR $4f59 ; (crt_fmul + 0)
251c : a2 47 __ LDX #$47
251e : 20 ce 53 JSR $53ce ; (store32 + 0)
2521 : 38 __ __ SEC
2522 : a5 4b __ LDA T2 + 0 
2524 : e9 06 __ SBC #$06
2526 : 85 4b __ STA T2 + 0 
2528 : c9 07 __ CMP #$07
252a : b0 d8 __ BCS $2504 ; (scanf.l112 + 0)
.s113:
252c : 0a __ __ ASL
252d : 0a __ __ ASL
252e : aa __ __ TAX
252f : a9 00 __ LDA #$00
2531 : 85 43 __ STA T0 + 0 
2533 : bd 47 5c LDA $5c47,x ; (tpow10[0] + 1)
2536 : 85 44 __ STA T0 + 1 
2538 : bd 48 5c LDA $5c48,x ; (tpow10[0] + 2)
253b : 85 45 __ STA T0 + 2 
253d : bd 49 5c LDA $5c49,x ; (tpow10[0] + 3)
2540 : 85 46 __ STA T0 + 3 
2542 : a2 47 __ LDX #$47
2544 : 20 df 53 JSR $53df ; (load32 + 0)
2547 : a2 43 __ LDX #$43
2549 : 20 2b 4e JSR $4e2b ; (freg + 4)
254c : 20 59 4f JSR $4f59 ; (crt_fmul + 0)
.s170:
254f : a2 47 __ LDX #$47
2551 : 20 ce 53 JSR $53ce ; (store32 + 0)
.s114:
2554 : a5 52 __ LDA T10 + 0 
2556 : d0 03 __ BNE $255b ; (scanf.s110 + 0)
2558 : 4c 8c 22 JMP $228c ; (scanf.s162 + 0)
.s110:
255b : a5 4a __ LDA T1 + 3 
255d : 49 80 __ EOR #$80
255f : 4c 8a 22 JMP $228a ; (scanf.s163 + 0)
.s107:
2562 : a5 4b __ LDA T2 + 0 
2564 : c9 07 __ CMP #$07
2566 : 90 36 __ BCC $259e ; (scanf.s109 + 0)
.s108:
2568 : a2 47 __ LDX #$47
256a : 20 df 53 JSR $53df ; (load32 + 0)
.l157:
256d : a9 00 __ LDA #$00
256f : 85 03 __ STA WORK + 0 
2571 : a9 49 __ LDA #$49
2573 : 85 06 __ STA WORK + 3 
2575 : a9 24 __ LDA #$24
2577 : 85 04 __ STA WORK + 1 
2579 : a9 74 __ LDA #$74
257b : 85 05 __ STA WORK + 2 
257d : 20 3b 4e JSR $4e3b ; (freg + 20)
2580 : 20 21 50 JSR $5021 ; (crt_fdiv + 0)
2583 : 38 __ __ SEC
2584 : a5 4b __ LDA T2 + 0 
2586 : e9 06 __ SBC #$06
2588 : 85 4b __ STA T2 + 0 
258a : c9 07 __ CMP #$07
258c : b0 df __ BCS $256d ; (scanf.l157 + 0)
.s158:
258e : a6 1e __ LDX ACCU + 3 
2590 : 86 4a __ STX T1 + 3 
2592 : a6 1d __ LDX ACCU + 2 
2594 : 86 49 __ STX T1 + 2 
2596 : a6 1c __ LDX ACCU + 1 ; (fmt + 3)
2598 : 86 48 __ STX T1 + 1 
259a : a6 1b __ LDX ACCU + 0 ; (fmt + 2)
259c : 86 47 __ STX T1 + 0 
.s109:
259e : 0a __ __ ASL
259f : 0a __ __ ASL
25a0 : aa __ __ TAX
25a1 : a9 00 __ LDA #$00
25a3 : 85 43 __ STA T0 + 0 
25a5 : bd 47 5c LDA $5c47,x ; (tpow10[0] + 1)
25a8 : 85 44 __ STA T0 + 1 
25aa : bd 48 5c LDA $5c48,x ; (tpow10[0] + 2)
25ad : 85 45 __ STA T0 + 2 
25af : bd 49 5c LDA $5c49,x ; (tpow10[0] + 3)
25b2 : 85 46 __ STA T0 + 3 
25b4 : a2 47 __ LDX #$47
25b6 : 20 df 53 JSR $53df ; (load32 + 0)
25b9 : a2 43 __ LDX #$43
25bb : 20 2b 4e JSR $4e2b ; (freg + 4)
25be : 20 21 50 JSR $5021 ; (crt_fdiv + 0)
25c1 : 4c 4f 25 JMP $254f ; (scanf.s170 + 0)
.s100:
25c4 : a5 55 __ LDA T7 + 0 
25c6 : 69 01 __ ADC #$01
25c8 : 85 55 __ STA T7 + 0 
25ca : 90 02 __ BCC $25ce ; (scanf.s193 + 0)
.s192:
25cc : e6 56 __ INC T7 + 1 
.s193:
25ce : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
25d1 : 85 51 __ STA T4 + 0 
25d3 : e6 59 __ INC T11 + 0 
25d5 : 4c c2 24 JMP $24c2 ; (scanf.s101 + 0)
.s88:
25d8 : c9 3a __ CMP #$3a
25da : b0 03 __ BCS $25df ; (scanf.s88 + 7)
25dc : 4c a6 23 JMP $23a6 ; (scanf.s89 + 0)
25df : 4c a0 20 JMP $20a0 ; (scanf.s3 + 0)
.s141:
25e2 : c9 63 __ CMP #$63
25e4 : f0 0a __ BEQ $25f0 ; (scanf.s52 + 0)
.s142:
25e6 : c9 64 __ CMP #$64
25e8 : d0 03 __ BNE $25ed ; (scanf.s142 + 7)
25ea : 4c 8d 21 JMP $218d ; (scanf.s63 + 0)
25ed : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s52:
25f0 : a0 00 __ LDY #$00
25f2 : b1 53 __ LDA (T5 + 0),y 
25f4 : 85 43 __ STA T0 + 0 
25f6 : c8 __ __ INY
25f7 : b1 53 __ LDA (T5 + 0),y 
25f9 : 85 44 __ STA T0 + 1 
25fb : a5 58 __ LDA T8 + 1 
25fd : c9 7f __ CMP #$7f
25ff : d0 0c __ BNE $260d ; (scanf.s59 + 0)
.s61:
2601 : a6 57 __ LDX T8 + 0 
2603 : e8 __ __ INX
2604 : d0 07 __ BNE $260d ; (scanf.s59 + 0)
.s53:
2606 : 86 58 __ STX T8 + 1 
2608 : 84 57 __ STY T8 + 0 
260a : 4c 14 26 JMP $2614 ; (scanf.l54 + 0)
.s59:
260d : aa __ __ TAX
260e : 30 31 __ BMI $2641 ; (scanf.s57 + 0)
.s60:
2610 : 05 57 __ ORA T8 + 0 
2612 : f0 2d __ BEQ $2641 ; (scanf.s57 + 0)
.l54:
2614 : a5 51 __ LDA T4 + 0 
2616 : f0 29 __ BEQ $2641 ; (scanf.s57 + 0)
.s55:
2618 : a5 5b __ LDA T13 + 0 
261a : d0 0c __ BNE $2628 ; (scanf.s56 + 0)
.s58:
261c : a5 51 __ LDA T4 + 0 
261e : a0 00 __ LDY #$00
2620 : 91 43 __ STA (T0 + 0),y 
2622 : e6 43 __ INC T0 + 0 
2624 : d0 02 __ BNE $2628 ; (scanf.s56 + 0)
.s181:
2626 : e6 44 __ INC T0 + 1 
.s56:
2628 : e6 55 __ INC T7 + 0 
262a : d0 02 __ BNE $262e ; (scanf.s180 + 0)
.s179:
262c : e6 56 __ INC T7 + 1 
.s180:
262e : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
2631 : 85 51 __ STA T4 + 0 
2633 : a5 57 __ LDA T8 + 0 
2635 : d0 02 __ BNE $2639 ; (scanf.s168 + 0)
.s167:
2637 : c6 58 __ DEC T8 + 1 
.s168:
2639 : c6 57 __ DEC T8 + 0 
263b : d0 d7 __ BNE $2614 ; (scanf.l54 + 0)
.s169:
263d : a5 58 __ LDA T8 + 1 
263f : d0 d3 __ BNE $2614 ; (scanf.l54 + 0)
.s57:
2641 : a5 5b __ LDA T13 + 0 
2643 : d0 a8 __ BNE $25ed ; (scanf.s142 + 7)
2645 : 4c 1d 22 JMP $221d ; (scanf.s41 + 0)
.s47:
2648 : c9 4e __ CMP #$4e
264a : d0 03 __ BNE $264f ; (scanf.s49 + 0)
264c : 4c 56 21 JMP $2156 ; (scanf.s48 + 0)
.s49:
264f : 90 17 __ BCC $2668 ; (scanf.s50 + 0)
.s122:
2651 : c9 55 __ CMP #$55
2653 : d0 03 __ BNE $2658 ; (scanf.s124 + 0)
2655 : 4c 8b 21 JMP $218b ; (scanf.s123 + 0)
.s124:
2658 : b0 07 __ BCS $2661 ; (scanf.s136 + 0)
.s125:
265a : c9 53 __ CMP #$53
265c : d0 8f __ BNE $25ed ; (scanf.s142 + 7)
265e : 4c 17 23 JMP $2317 ; (scanf.s126 + 0)
.s136:
2661 : c9 58 __ CMP #$58
2663 : d0 88 __ BNE $25ed ; (scanf.s142 + 7)
2665 : 4c 87 21 JMP $2187 ; (scanf.s137 + 0)
.s50:
2668 : c9 45 __ CMP #$45
266a : b0 0e __ BCS $267a ; (scanf.s85 + 0)
.s51:
266c : c9 43 __ CMP #$43
266e : f0 80 __ BEQ $25f0 ; (scanf.s52 + 0)
.s62:
2670 : c9 44 __ CMP #$44
2672 : d0 03 __ BNE $2677 ; (scanf.s62 + 7)
2674 : 4c 8d 21 JMP $218d ; (scanf.s63 + 0)
2677 : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s85:
267a : c9 48 __ CMP #$48
267c : b0 03 __ BCS $2681 ; (scanf.s121 + 0)
267e : 4c 81 23 JMP $2381 ; (scanf.s86 + 0)
.s121:
2681 : c9 49 __ CMP #$49
2683 : f0 ef __ BEQ $2674 ; (scanf.s62 + 4)
2685 : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s24:
2688 : a9 00 __ LDA #$00
268a : a2 1f __ LDX #$1f
.l154:
268c : 9d da cf STA $cfda,x ; (pat[0] + 0)
268f : ca __ __ DEX
2690 : 10 fa __ BPL $268c ; (scanf.l154 + 0)
.s155:
2692 : a8 __ __ TAY
2693 : b1 4f __ LDA (T3 + 0),y 
2695 : c9 5e __ CMP #$5e
2697 : f0 16 __ BEQ $26af ; (scanf.s25 + 0)
.s44:
2699 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
269b : 18 __ __ CLC
269c : a5 4f __ LDA T3 + 0 
269e : 69 01 __ ADC #$01
26a0 : 85 43 __ STA T0 + 0 
26a2 : a5 50 __ LDA T3 + 1 
26a4 : 69 00 __ ADC #$00
26a6 : 85 44 __ STA T0 + 1 
26a8 : c6 52 __ DEC T10 + 0 
26aa : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
26ac : 4c c3 26 JMP $26c3 ; (scanf.l26 + 0)
.s25:
26af : a5 4f __ LDA T3 + 0 
26b1 : 69 01 __ ADC #$01
26b3 : 85 43 __ STA T0 + 0 
26b5 : a5 50 __ LDA T3 + 1 
26b7 : 69 00 __ ADC #$00
26b9 : 85 44 __ STA T0 + 1 
26bb : a0 01 __ LDY #$01
26bd : 84 52 __ STY T10 + 0 
26bf : b1 4f __ LDA (T3 + 0),y 
26c1 : 85 1b __ STA ACCU + 0 ; (fmt + 2)
.l26:
26c3 : 85 59 __ STA T11 + 0 
26c5 : a5 43 __ LDA T0 + 0 
26c7 : 85 47 __ STA T1 + 0 
26c9 : 18 __ __ CLC
26ca : 69 01 __ ADC #$01
26cc : 85 43 __ STA T0 + 0 
26ce : a5 44 __ LDA T0 + 1 
26d0 : 85 48 __ STA T1 + 1 
26d2 : 69 00 __ ADC #$00
26d4 : 85 44 __ STA T0 + 1 
26d6 : a0 00 __ LDY #$00
26d8 : b1 47 __ LDA (T1 + 0),y 
26da : c9 2d __ CMP #$2d
26dc : d0 19 __ BNE $26f7 ; (scanf.s211 + 0)
.s27:
26de : c8 __ __ INY
26df : b1 47 __ LDA (T1 + 0),y 
26e1 : c9 5d __ CMP #$5d
26e3 : f0 12 __ BEQ $26f7 ; (scanf.s211 + 0)
.s28:
26e5 : 85 59 __ STA T11 + 0 
26e7 : 18 __ __ CLC
26e8 : a5 47 __ LDA T1 + 0 
26ea : 69 03 __ ADC #$03
26ec : 85 43 __ STA T0 + 0 
26ee : a5 48 __ LDA T1 + 1 
26f0 : 69 00 __ ADC #$00
26f2 : 85 44 __ STA T0 + 1 
26f4 : c8 __ __ INY
26f5 : b1 47 __ LDA (T1 + 0),y 
.s211:
26f7 : 85 5a __ STA T12 + 0 
26f9 : 4c 12 27 JMP $2712 ; (scanf.l29 + 0)
.s30:
26fc : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
26fe : 4a __ __ LSR
26ff : 4a __ __ LSR
2700 : 4a __ __ LSR
2701 : a8 __ __ TAY
2702 : a5 1b __ LDA ACCU + 0 ; (fmt + 2)
2704 : 29 07 __ AND #$07
2706 : aa __ __ TAX
2707 : b9 da cf LDA $cfda,y ; (pat[0] + 0)
270a : 1d 0c 68 ORA $680c,x ; (bitshift[0] + 8)
270d : 99 da cf STA $cfda,y ; (pat[0] + 0)
2710 : e6 1b __ INC ACCU + 0 ; (fmt + 2)
.l29:
2712 : a5 59 __ LDA T11 + 0 
2714 : c5 1b __ CMP ACCU + 0 ; (fmt + 2)
2716 : b0 e4 __ BCS $26fc ; (scanf.s30 + 0)
.s31:
2718 : a5 5a __ LDA T12 + 0 
271a : f0 06 __ BEQ $2722 ; (scanf.s33 + 0)
.s32:
271c : 85 1b __ STA ACCU + 0 ; (fmt + 2)
271e : c9 5d __ CMP #$5d
2720 : d0 a1 __ BNE $26c3 ; (scanf.l26 + 0)
.s33:
2722 : a5 52 __ LDA T10 + 0 
2724 : f0 0f __ BEQ $2735 ; (scanf.s35 + 0)
.s34:
2726 : a2 04 __ LDX #$04
.l156:
2728 : bd da cf LDA $cfda,x ; (pat[0] + 0)
272b : 49 ff __ EOR #$ff
272d : 9d da cf STA $cfda,x ; (pat[0] + 0)
2730 : e8 __ __ INX
2731 : e0 20 __ CPX #$20
2733 : d0 f3 __ BNE $2728 ; (scanf.l156 + 0)
.s35:
2735 : a5 43 __ LDA T0 + 0 
2737 : 85 4f __ STA T3 + 0 
2739 : a5 44 __ LDA T0 + 1 
273b : 85 50 __ STA T3 + 1 
273d : a0 00 __ LDY #$00
273f : b1 53 __ LDA (T5 + 0),y 
2741 : 85 4b __ STA T2 + 0 
2743 : c8 __ __ INY
2744 : b1 53 __ LDA (T5 + 0),y 
2746 : 85 4c __ STA T2 + 1 
2748 : a5 58 __ LDA T8 + 1 
274a : 10 03 __ BPL $274f ; (scanf.s43 + 0)
274c : 4c 65 23 JMP $2365 ; (scanf.s39 + 0)
.s43:
274f : 05 57 __ ORA T8 + 0 
2751 : f0 f9 __ BEQ $274c ; (scanf.s35 + 23)
.l36:
2753 : a5 51 __ LDA T4 + 0 
2755 : 4a __ __ LSR
2756 : 4a __ __ LSR
2757 : 4a __ __ LSR
2758 : a8 __ __ TAY
2759 : a5 51 __ LDA T4 + 0 
275b : 29 07 __ AND #$07
275d : aa __ __ TAX
275e : b9 da cf LDA $cfda,y ; (pat[0] + 0)
2761 : 3d 0c 68 AND $680c,x ; (bitshift[0] + 8)
2764 : f0 e6 __ BEQ $274c ; (scanf.s35 + 23)
.s37:
2766 : a5 5b __ LDA T13 + 0 
2768 : d0 0c __ BNE $2776 ; (scanf.s38 + 0)
.s42:
276a : a5 51 __ LDA T4 + 0 
276c : a0 00 __ LDY #$00
276e : 91 4b __ STA (T2 + 0),y 
2770 : e6 4b __ INC T2 + 0 
2772 : d0 02 __ BNE $2776 ; (scanf.s38 + 0)
.s178:
2774 : e6 4c __ INC T2 + 1 
.s38:
2776 : e6 55 __ INC T7 + 0 
2778 : d0 02 __ BNE $277c ; (scanf.s176 + 0)
.s175:
277a : e6 56 __ INC T7 + 1 
.s176:
277c : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
277f : 85 51 __ STA T4 + 0 
2781 : a5 57 __ LDA T8 + 0 
2783 : d0 02 __ BNE $2787 ; (scanf.s165 + 0)
.s164:
2785 : c6 58 __ DEC T8 + 1 
.s165:
2787 : c6 57 __ DEC T8 + 0 
2789 : d0 c8 __ BNE $2753 ; (scanf.l36 + 0)
.s166:
278b : a5 58 __ LDA T8 + 1 
278d : d0 c4 __ BNE $2753 ; (scanf.l36 + 0)
278f : 4c 65 23 JMP $2365 ; (scanf.s39 + 0)
.s23:
2792 : a0 00 __ LDY #$00
2794 : b1 4f __ LDA (T3 + 0),y 
2796 : e6 4f __ INC T3 + 0 
2798 : d0 02 __ BNE $279c ; (scanf.s174 + 0)
.s173:
279a : e6 50 __ INC T3 + 1 
.s174:
279c : c9 5b __ CMP #$5b
279e : d0 03 __ BNE $27a3 ; (scanf.s45 + 0)
27a0 : 4c 88 26 JMP $2688 ; (scanf.s24 + 0)
.s45:
27a3 : e6 59 __ INC T11 + 0 
27a5 : 4c 4b 21 JMP $214b ; (scanf.s46 + 0)
.l8:
27a8 : a5 51 __ LDA T4 + 0 
27aa : c9 20 __ CMP #$20
27ac : f0 0f __ BEQ $27bd ; (scanf.s9 + 0)
.s10:
27ae : c9 09 __ CMP #$09
27b0 : f0 0b __ BEQ $27bd ; (scanf.s9 + 0)
.s11:
27b2 : c9 0a __ CMP #$0a
27b4 : f0 07 __ BEQ $27bd ; (scanf.s9 + 0)
.s12:
27b6 : c9 0d __ CMP #$0d
27b8 : f0 03 __ BEQ $27bd ; (scanf.s9 + 0)
27ba : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
.s9:
27bd : e6 55 __ INC T7 + 0 
27bf : d0 02 __ BNE $27c3 ; (scanf.s172 + 0)
.s171:
27c1 : e6 56 __ INC T7 + 1 
.s172:
27c3 : 20 ce 27 JSR $27ce ; (getchar.s4 + 0)
27c6 : 85 51 __ STA T4 + 0 
27c8 : aa __ __ TAX
27c9 : d0 dd __ BNE $27a8 ; (scanf.l8 + 0)
27cb : 4c 7d 21 JMP $217d ; (scanf.s5 + 0)
--------------------------------------------------------------------
getchar: ; getchar()->u8
;  10, "/usr/local/include/oscar64/stdio.h"
.s4:
27ce : 20 cf ff JSR $ffcf 
27d1 : 85 1b __ STA ACCU + 0 
27d3 : a5 1b __ LDA ACCU + 0 
27d5 : c9 0d __ CMP #$0d
27d7 : d0 02 __ BNE $27db ; (getchar.s3 + 0)
.s5:
27d9 : a9 0a __ LDA #$0a
.s3:
27db : 60 __ __ RTS
--------------------------------------------------------------------
hexch: ; hexch(u8)->i16
; 584, "/usr/local/include/oscar64/stdio.c"
.s4:
27dc : c9 30 __ CMP #$30
27de : 90 2a __ BCC $280a ; (hexch.s13 + 0)
.s5:
27e0 : c9 3a __ CMP #$3a
27e2 : b0 0b __ BCS $27ef ; (hexch.s7 + 0)
.s6:
27e4 : e9 2f __ SBC #$2f
27e6 : 85 1b __ STA ACCU + 0 
27e8 : a9 00 __ LDA #$00
27ea : e9 00 __ SBC #$00
.s3:
27ec : 85 1c __ STA ACCU + 1 
27ee : 60 __ __ RTS
.s7:
27ef : c9 61 __ CMP #$61
27f1 : 90 0f __ BCC $2802 ; (hexch.s10 + 0)
.s8:
27f3 : c9 67 __ CMP #$67
27f5 : b0 0b __ BCS $2802 ; (hexch.s10 + 0)
.s9:
27f7 : 69 a9 __ ADC #$a9
.s14:
27f9 : 85 1b __ STA ACCU + 0 
27fb : a9 00 __ LDA #$00
27fd : 69 ff __ ADC #$ff
27ff : 4c ec 27 JMP $27ec ; (hexch.s3 + 0)
.s10:
2802 : c9 41 __ CMP #$41
2804 : 90 04 __ BCC $280a ; (hexch.s13 + 0)
.s11:
2806 : c9 47 __ CMP #$47
2808 : 90 06 __ BCC $2810 ; (hexch.s12 + 0)
.s13:
280a : a9 ff __ LDA #$ff
280c : 85 1b __ STA ACCU + 0 
280e : d0 dc __ BNE $27ec ; (hexch.s3 + 0)
.s12:
2810 : 69 c9 __ ADC #$c9
2812 : 4c f9 27 JMP $27f9 ; (hexch.s14 + 0)
--------------------------------------------------------------------
2815 : __ __ __ BYT 20 25 63 00                                     :  %c.
--------------------------------------------------------------------
genmove@proxy: ; genmove@proxy
2819 : a9 96 __ LDA #$96
281b : 85 15 __ STA P8 
281d : a9 cf __ LDA #$cf
281f : 85 16 __ STA P9 
2821 : a9 94 __ LDA #$94
2823 : 85 17 __ STA P10 
2825 : a9 cf __ LDA #$cf
2827 : 85 18 __ STA P11 
--------------------------------------------------------------------
genmove: ; genmove(i16*,i16*)->void
;  91, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s1:
2829 : a2 2d __ LDX #$2d
282b : b5 53 __ LDA T1 + 0,x 
282d : 9d aa cf STA $cfaa,x ; (genmove@stack + 0)
2830 : ca __ __ DEX
2831 : 10 f8 __ BPL $282b ; (genmove.s1 + 2)
.s4:
2833 : a9 ff __ LDA #$ff
2835 : a0 00 __ LDY #$00
2837 : 91 15 __ STA (P8),y ; (i + 0)
2839 : c8 __ __ INY
283a : 91 15 __ STA (P8),y ; (i + 0)
283c : 88 __ __ DEY
283d : 91 17 __ STA (P10),y ; (j + 0)
283f : c8 __ __ INY
2840 : 91 17 __ STA (P10),y ; (j + 0)
2842 : ad c7 69 LDA $69c7 ; (umove + 0)
2845 : 85 69 __ STA T14 + 0 
2847 : 85 11 __ STA P4 
2849 : ad c8 69 LDA $69c8 ; (umove + 1)
284c : 85 6a __ STA T14 + 1 
284e : 85 12 __ STA P5 
2850 : 20 ca 3a JSR $3aca ; (eval.s1 + 0)
2853 : a9 ff __ LDA #$ff
2855 : 8d ee cf STA $cfee ; (ti + 0)
2858 : 8d ef cf STA $cfef ; (ti + 1)
285b : 8d ec cf STA $cfec ; (tj + 0)
285e : 8d ed cf STA $cfed ; (tj + 1)
2861 : a9 00 __ LDA #$00
2863 : 85 6b __ STA T15 + 0 
2865 : 85 6c __ STA T15 + 1 
2867 : 85 6f __ STA T17 + 0 
2869 : 85 70 __ STA T17 + 1 
286b : a9 4e __ LDA #$4e
286d : 85 6d __ STA T16 + 0 
286f : a9 68 __ LDA #$68
2871 : 85 6e __ STA T16 + 1 
2873 : a9 ff __ LDA #$ff
2875 : 85 71 __ STA T18 + 0 
2877 : 85 72 __ STA T18 + 1 
2879 : 85 73 __ STA T19 + 0 
287b : 85 74 __ STA T19 + 1 
.l5:
287d : a9 00 __ LDA #$00
287f : 85 75 __ STA T20 + 0 
2881 : a5 6a __ LDA T14 + 1 
2883 : d0 4e __ BNE $28d3 ; (genmove.l30 + 0)
.s322:
2885 : a5 69 __ LDA T14 + 0 
2887 : a4 75 __ LDY T20 + 0 
2889 : d1 6d __ CMP (T16 + 0),y 
288b : d0 46 __ BNE $28d3 ; (genmove.l30 + 0)
.s7:
288d : 18 __ __ CLC
288e : a9 58 __ LDA #$58
2890 : 65 6b __ ADC T15 + 0 
2892 : 85 43 __ STA T0 + 0 
2894 : a9 6e __ LDA #$6e
2896 : 65 6c __ ADC T15 + 1 
2898 : 85 44 __ STA T0 + 1 
289a : b1 43 __ LDA (T0 + 0),y 
289c : c9 04 __ CMP #$04
289e : b0 33 __ BCS $28d3 ; (genmove.l30 + 0)
.s8:
28a0 : 85 78 __ STA T22 + 0 
28a2 : 20 3a 3e JSR $3e3a ; (initmark.s4 + 0)
28a5 : a9 01 __ LDA #$01
28a7 : 8d 2a 71 STA $712a ; (osp + 0)
28aa : 18 __ __ CLC
28ab : a5 6b __ LDA T15 + 0 
28ad : 65 75 __ ADC T20 + 0 
28af : 8d 2c 71 STA $712c ; (ostack[0] + 0)
28b2 : a5 6c __ LDA T15 + 1 
28b4 : 69 00 __ ADC #$00
28b6 : 8d 2d 71 STA $712d ; (ostack[0] + 1)
28b9 : a9 00 __ LDA #$00
28bb : 8d 2b 71 STA $712b ; (osp + 1)
28be : 85 43 __ STA T0 + 0 
.l9:
28c0 : ad 2a 71 LDA $712a ; (osp + 0)
28c3 : 85 53 __ STA T1 + 0 
28c5 : ad 2b 71 LDA $712b ; (osp + 1)
28c8 : 30 09 __ BMI $28d3 ; (genmove.l30 + 0)
.s321:
28ca : 85 54 __ STA T1 + 1 
28cc : 05 53 __ ORA T1 + 0 
28ce : f0 03 __ BEQ $28d3 ; (genmove.l30 + 0)
28d0 : 4c 50 36 JMP $3650 ; (genmove.s10 + 0)
.l30:
28d3 : e6 75 __ INC T20 + 0 
28d5 : a5 75 __ LDA T20 + 0 
28d7 : c9 13 __ CMP #$13
28d9 : b0 06 __ BCS $28e1 ; (genmove.s31 + 0)
.s6:
28db : a5 6a __ LDA T14 + 1 
28dd : d0 f4 __ BNE $28d3 ; (genmove.l30 + 0)
28df : f0 a4 __ BEQ $2885 ; (genmove.s322 + 0)
.s31:
28e1 : a5 6d __ LDA T16 + 0 
28e3 : 69 12 __ ADC #$12
28e5 : 85 6d __ STA T16 + 0 
28e7 : 90 03 __ BCC $28ec ; (genmove.s336 + 0)
.s335:
28e9 : e6 6e __ INC T16 + 1 
28eb : 18 __ __ CLC
.s336:
28ec : a5 6b __ LDA T15 + 0 
28ee : 69 13 __ ADC #$13
28f0 : 85 6b __ STA T15 + 0 
28f2 : a5 6c __ LDA T15 + 1 
28f4 : 69 00 __ ADC #$00
28f6 : 85 6c __ STA T15 + 1 
28f8 : c9 01 __ CMP #$01
28fa : d0 81 __ BNE $287d ; (genmove.l5 + 0)
.s273:
28fc : a5 6b __ LDA T15 + 0 
28fe : c9 69 __ CMP #$69
2900 : f0 03 __ BEQ $2905 ; (genmove.s32 + 0)
2902 : 4c 7d 28 JMP $287d ; (genmove.l5 + 0)
.s32:
2905 : a5 74 __ LDA T19 + 1 
2907 : 30 25 __ BMI $292e ; (genmove.s34 + 0)
.s272:
2909 : 05 73 __ ORA T19 + 0 
290b : f0 21 __ BEQ $292e ; (genmove.s34 + 0)
.s33:
290d : a5 73 __ LDA T19 + 0 
290f : 85 71 __ STA T18 + 0 
2911 : a5 74 __ LDA T19 + 1 
2913 : 85 72 __ STA T18 + 1 
2915 : ad ee cf LDA $cfee ; (ti + 0)
2918 : a0 00 __ LDY #$00
291a : 91 15 __ STA (P8),y ; (i + 0)
291c : ad ef cf LDA $cfef ; (ti + 1)
291f : c8 __ __ INY
2920 : 91 15 __ STA (P8),y ; (i + 0)
2922 : ad ec cf LDA $cfec ; (tj + 0)
2925 : 88 __ __ DEY
2926 : 91 17 __ STA (P10),y ; (j + 0)
2928 : ad ed cf LDA $cfed ; (tj + 1)
292b : c8 __ __ INY
292c : 91 17 __ STA (P10),y ; (j + 0)
.s34:
292e : a9 ff __ LDA #$ff
2930 : 8d ee cf STA $cfee ; (ti + 0)
2933 : 8d ef cf STA $cfef ; (ti + 1)
2936 : 8d ec cf STA $cfec ; (tj + 0)
2939 : 8d ed cf STA $cfed ; (tj + 1)
293c : 85 57 __ STA T3 + 0 
293e : 85 58 __ STA T3 + 1 
2940 : ad c9 69 LDA $69c9 ; (mymove + 0)
2943 : 85 5d __ STA T6 + 0 
2945 : a9 01 __ LDA #$01
2947 : 85 59 __ STA T4 + 0 
2949 : ad ca 69 LDA $69ca ; (mymove + 1)
294c : 85 5e __ STA T6 + 1 
.l35:
294e : a9 00 __ LDA #$00
2950 : 85 5b __ STA T5 + 0 
2952 : 85 5c __ STA T5 + 1 
2954 : a9 4e __ LDA #$4e
2956 : 85 5f __ STA T7 + 0 
2958 : a9 68 __ LDA #$68
295a : 85 60 __ STA T7 + 1 
.l36:
295c : a9 00 __ LDA #$00
295e : 85 61 __ STA T8 + 0 
2960 : a5 5e __ LDA T6 + 1 
2962 : f0 03 __ BEQ $2967 ; (genmove.s271 + 0)
2964 : 4c f1 29 JMP $29f1 ; (genmove.l98 + 0)
.s271:
2967 : a5 5d __ LDA T6 + 0 
2969 : a4 61 __ LDY T8 + 0 
296b : d1 5f __ CMP (T7 + 0),y 
296d : d0 f5 __ BNE $2964 ; (genmove.l36 + 8)
.s38:
296f : 18 __ __ CLC
2970 : a9 58 __ LDA #$58
2972 : 65 5b __ ADC T5 + 0 
2974 : 85 43 __ STA T0 + 0 
2976 : a9 6e __ LDA #$6e
2978 : 65 5c __ ADC T5 + 1 
297a : 85 44 __ STA T0 + 1 
297c : a5 59 __ LDA T4 + 0 
297e : d1 43 __ CMP (T0 + 0),y 
2980 : d0 6f __ BNE $29f1 ; (genmove.l98 + 0)
.s39:
2982 : 20 3a 3e JSR $3e3a ; (initmark.s4 + 0)
2985 : a9 01 __ LDA #$01
2987 : 8d 4c 74 STA $744c ; (fsp + 0)
298a : a9 00 __ LDA #$00
298c : 8d 4d 74 STA $744d ; (fsp + 1)
298f : 18 __ __ CLC
2990 : a5 5b __ LDA T5 + 0 
2992 : 65 61 __ ADC T8 + 0 
2994 : 8d 4e 74 STA $744e ; (fstack[0] + 0)
2997 : a5 5c __ LDA T5 + 1 
2999 : 69 00 __ ADC #$00
299b : 8d 4f 74 STA $744f ; (fstack[0] + 1)
299e : a9 ff __ LDA #$ff
29a0 : 85 63 __ STA T9 + 0 
29a2 : 85 64 __ STA T9 + 1 
29a4 : 85 65 __ STA T10 + 0 
29a6 : 85 66 __ STA T10 + 1 
29a8 : 85 67 __ STA T11 + 0 
.l332:
29aa : 85 68 __ STA T11 + 1 
.l40:
29ac : ad 4c 74 LDA $744c ; (fsp + 0)
29af : 85 43 __ STA T0 + 0 
29b1 : ad 4d 74 LDA $744d ; (fsp + 1)
29b4 : 30 09 __ BMI $29bf ; (genmove.s95 + 0)
.s270:
29b6 : 85 44 __ STA T0 + 1 
29b8 : 05 43 __ ORA T0 + 0 
29ba : f0 03 __ BEQ $29bf ; (genmove.s95 + 0)
29bc : 4c d4 32 JMP $32d4 ; (genmove.s41 + 0)
.s95:
29bf : a5 64 __ LDA T9 + 1 
29c1 : 30 2e __ BMI $29f1 ; (genmove.l98 + 0)
.s269:
29c3 : 05 63 __ ORA T9 + 0 
29c5 : f0 2a __ BEQ $29f1 ; (genmove.l98 + 0)
.s96:
29c7 : a5 58 __ LDA T3 + 1 
29c9 : 30 0a __ BMI $29d5 ; (genmove.s97 + 0)
.s268:
29cb : c5 64 __ CMP T9 + 1 
29cd : d0 04 __ BNE $29d3 ; (genmove.s267 + 0)
.s266:
29cf : a5 57 __ LDA T3 + 0 
29d1 : c5 63 __ CMP T9 + 0 
.s267:
29d3 : b0 1c __ BCS $29f1 ; (genmove.l98 + 0)
.s97:
29d5 : a5 65 __ LDA T10 + 0 
29d7 : 8d ee cf STA $cfee ; (ti + 0)
29da : a5 66 __ LDA T10 + 1 
29dc : 8d ef cf STA $cfef ; (ti + 1)
29df : a5 67 __ LDA T11 + 0 
29e1 : 8d ec cf STA $cfec ; (tj + 0)
29e4 : a5 68 __ LDA T11 + 1 
29e6 : 8d ed cf STA $cfed ; (tj + 1)
29e9 : a5 63 __ LDA T9 + 0 
29eb : 85 57 __ STA T3 + 0 
29ed : a5 64 __ LDA T9 + 1 
29ef : 85 58 __ STA T3 + 1 
.l98:
29f1 : e6 61 __ INC T8 + 0 
29f3 : a5 61 __ LDA T8 + 0 
29f5 : c9 13 __ CMP #$13
29f7 : b0 07 __ BCS $2a00 ; (genmove.s99 + 0)
.s37:
29f9 : a5 5e __ LDA T6 + 1 
29fb : d0 f4 __ BNE $29f1 ; (genmove.l98 + 0)
29fd : 4c 67 29 JMP $2967 ; (genmove.s271 + 0)
.s99:
2a00 : a5 5f __ LDA T7 + 0 
2a02 : 69 12 __ ADC #$12
2a04 : 85 5f __ STA T7 + 0 
2a06 : 90 03 __ BCC $2a0b ; (genmove.s342 + 0)
.s341:
2a08 : e6 60 __ INC T7 + 1 
2a0a : 18 __ __ CLC
.s342:
2a0b : a5 5b __ LDA T5 + 0 
2a0d : 69 13 __ ADC #$13
2a0f : 85 5b __ STA T5 + 0 
2a11 : a5 5c __ LDA T5 + 1 
2a13 : 69 00 __ ADC #$00
2a15 : 85 5c __ STA T5 + 1 
2a17 : c9 01 __ CMP #$01
2a19 : f0 03 __ BEQ $2a1e ; (genmove.s265 + 0)
2a1b : 4c 5c 29 JMP $295c ; (genmove.l36 + 0)
.s265:
2a1e : a5 5b __ LDA T5 + 0 
2a20 : c9 69 __ CMP #$69
2a22 : d0 f7 __ BNE $2a1b ; (genmove.s342 + 16)
.s100:
2a24 : e6 59 __ INC T4 + 0 
2a26 : a5 59 __ LDA T4 + 0 
2a28 : c9 04 __ CMP #$04
2a2a : b0 03 __ BCS $2a2f ; (genmove.s101 + 0)
2a2c : 4c 4e 29 JMP $294e ; (genmove.l35 + 0)
.s101:
2a2f : a5 58 __ LDA T3 + 1 
2a31 : 30 33 __ BMI $2a66 ; (genmove.s104 + 0)
.s264:
2a33 : 05 57 __ ORA T3 + 0 
2a35 : f0 2f __ BEQ $2a66 ; (genmove.s104 + 0)
.s102:
2a37 : a5 72 __ LDA T18 + 1 
2a39 : 30 0a __ BMI $2a45 ; (genmove.s103 + 0)
.s263:
2a3b : c5 58 __ CMP T3 + 1 
2a3d : d0 04 __ BNE $2a43 ; (genmove.s262 + 0)
.s261:
2a3f : a5 71 __ LDA T18 + 0 
2a41 : c5 57 __ CMP T3 + 0 
.s262:
2a43 : b0 21 __ BCS $2a66 ; (genmove.s104 + 0)
.s103:
2a45 : a5 57 __ LDA T3 + 0 
2a47 : 85 71 __ STA T18 + 0 
2a49 : a5 58 __ LDA T3 + 1 
2a4b : 85 72 __ STA T18 + 1 
2a4d : ad ee cf LDA $cfee ; (ti + 0)
2a50 : a0 00 __ LDY #$00
2a52 : 91 15 __ STA (P8),y ; (i + 0)
2a54 : ad ef cf LDA $cfef ; (ti + 1)
2a57 : c8 __ __ INY
2a58 : 91 15 __ STA (P8),y ; (i + 0)
2a5a : ad ec cf LDA $cfec ; (tj + 0)
2a5d : 88 __ __ DEY
2a5e : 91 17 __ STA (P10),y ; (j + 0)
2a60 : ad ed cf LDA $cfed ; (tj + 1)
2a63 : c8 __ __ INY
2a64 : 91 17 __ STA (P10),y ; (j + 0)
.s104:
2a66 : ad 45 68 LDA $6845 ; (opn[0] + 9)
2a69 : 0d 44 68 ORA $6844 ; (opn[0] + 8)
2a6c : f0 6b __ BEQ $2ad9 ; (genmove.s109 + 0)
.s105:
2a6e : a9 00 __ LDA #$00
2a70 : 8d 44 68 STA $6844 ; (opn[0] + 8)
2a73 : 8d 45 68 STA $6845 ; (opn[0] + 9)
2a76 : a9 ee __ LDA #$ee
2a78 : 85 0d __ STA P0 
2a7a : a9 cf __ LDA #$cf
2a7c : 85 0e __ STA P1 
2a7e : a9 ec __ LDA #$ec
2a80 : 85 0f __ STA P2 
2a82 : a9 cf __ LDA #$cf
2a84 : 85 10 __ STA P3 
2a86 : ad 70 77 LDA $7770 ; (mtype + 0)
2a89 : 85 11 __ STA P4 
2a8b : ad 71 77 LDA $7771 ; (mtype + 1)
2a8e : 85 12 __ STA P5 
2a90 : 20 ba 40 JSR $40ba ; (opening.s4 + 0)
2a93 : a5 1b __ LDA ACCU + 0 
2a95 : 05 1c __ ORA ACCU + 1 
2a97 : f0 0a __ BEQ $2aa3 ; (genmove.s107 + 0)
.s106:
2a99 : a9 01 __ LDA #$01
2a9b : 8d 44 68 STA $6844 ; (opn[0] + 8)
2a9e : a9 00 __ LDA #$00
2aa0 : 8d 45 68 STA $6845 ; (opn[0] + 9)
.s107:
2aa3 : ad ee cf LDA $cfee ; (ti + 0)
2aa6 : 85 1b __ STA ACCU + 0 
2aa8 : ad ef cf LDA $cfef ; (ti + 1)
2aab : 85 1c __ STA ACCU + 1 
2aad : a9 13 __ LDA #$13
2aaf : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
2ab2 : 18 __ __ CLC
2ab3 : a9 4e __ LDA #$4e
2ab5 : 65 1b __ ADC ACCU + 0 
2ab7 : 85 43 __ STA T0 + 0 
2ab9 : a9 68 __ LDA #$68
2abb : 65 1c __ ADC ACCU + 1 
2abd : 85 44 __ STA T0 + 1 
2abf : ac ec cf LDY $cfec ; (tj + 0)
2ac2 : b1 43 __ LDA (T0 + 0),y 
2ac4 : d0 0b __ BNE $2ad1 ; (genmove.s108 + 0)
.s156:
2ac6 : a9 50 __ LDA #$50
2ac8 : 85 5f __ STA T7 + 0 
2aca : a9 00 __ LDA #$00
2acc : 85 60 __ STA T7 + 1 
2ace : 4c a5 2d JMP $2da5 ; (genmove.s114 + 0)
.s108:
2ad1 : a9 00 __ LDA #$00
2ad3 : 8d 44 68 STA $6844 ; (opn[0] + 8)
2ad6 : 8d 45 68 STA $6845 ; (opn[0] + 9)
.s109:
2ad9 : ad 3d 68 LDA $683d ; (opn[0] + 1)
2adc : 0d 3c 68 ORA $683c ; (opn[0] + 0)
2adf : f0 3f __ BEQ $2b20 ; (genmove.s143 + 0)
.s110:
2ae1 : a9 00 __ LDA #$00
2ae3 : 85 0d __ STA P0 
2ae5 : 85 0e __ STA P1 
2ae7 : 85 0f __ STA P2 
2ae9 : 85 10 __ STA P3 
2aeb : 85 12 __ STA P5 
2aed : 85 14 __ STA P7 
2aef : a9 05 __ LDA #$05
2af1 : 85 11 __ STA P4 
2af3 : 85 13 __ STA P6 
2af5 : a9 00 __ LDA #$00
2af7 : 8d 3c 68 STA $683c ; (opn[0] + 0)
2afa : 8d 3d 68 STA $683d ; (opn[0] + 1)
2afd : 20 15 42 JSR $4215 ; (openregion.s4 + 0)
2b00 : a5 1b __ LDA ACCU + 0 
2b02 : 05 1c __ ORA ACCU + 1 
2b04 : f0 1a __ BEQ $2b20 ; (genmove.s143 + 0)
.s111:
2b06 : a9 ee __ LDA #$ee
2b08 : 85 0d __ STA P0 
2b0a : a9 cf __ LDA #$cf
2b0c : 85 0e __ STA P1 
2b0e : a9 ec __ LDA #$ec
2b10 : 85 0f __ STA P2 
2b12 : a9 cf __ LDA #$cf
2b14 : 85 10 __ STA P3 
2b16 : a9 00 __ LDA #$00
2b18 : 85 11 __ STA P4 
2b1a : 8d 70 77 STA $7770 ; (mtype + 0)
2b1d : 4c a7 32 JMP $32a7 ; (genmove.s112 + 0)
.s143:
2b20 : ad 3f 68 LDA $683f ; (opn[0] + 3)
2b23 : 0d 3e 68 ORA $683e ; (opn[0] + 2)
2b26 : f0 43 __ BEQ $2b6b ; (genmove.s146 + 0)
.s144:
2b28 : a9 00 __ LDA #$00
2b2a : 85 0e __ STA P1 
2b2c : 85 0f __ STA P2 
2b2e : 85 10 __ STA P3 
2b30 : 85 12 __ STA P5 
2b32 : 85 14 __ STA P7 
2b34 : 8d 3e 68 STA $683e ; (opn[0] + 2)
2b37 : 8d 3f 68 STA $683f ; (opn[0] + 3)
2b3a : a9 0d __ LDA #$0d
2b3c : 85 0d __ STA P0 
2b3e : a9 12 __ LDA #$12
2b40 : 85 11 __ STA P4 
2b42 : a9 05 __ LDA #$05
2b44 : 85 13 __ STA P6 
2b46 : 20 15 42 JSR $4215 ; (openregion.s4 + 0)
2b49 : a5 1b __ LDA ACCU + 0 
2b4b : 05 1c __ ORA ACCU + 1 
2b4d : f0 1c __ BEQ $2b6b ; (genmove.s146 + 0)
.s145:
2b4f : a9 ee __ LDA #$ee
2b51 : 85 0d __ STA P0 
2b53 : a9 cf __ LDA #$cf
2b55 : 85 0e __ STA P1 
2b57 : a9 ec __ LDA #$ec
2b59 : 85 0f __ STA P2 
2b5b : a9 01 __ LDA #$01
.s329:
2b5d : 85 11 __ STA P4 
2b5f : 8d 70 77 STA $7770 ; (mtype + 0)
2b62 : a9 cf __ LDA #$cf
2b64 : 85 10 __ STA P3 
2b66 : a9 00 __ LDA #$00
2b68 : 4c a7 32 JMP $32a7 ; (genmove.s112 + 0)
.s146:
2b6b : ad 41 68 LDA $6841 ; (opn[0] + 5)
2b6e : 0d 40 68 ORA $6840 ; (opn[0] + 4)
2b71 : f0 37 __ BEQ $2baa ; (genmove.s149 + 0)
.s147:
2b73 : a9 00 __ LDA #$00
2b75 : 85 0d __ STA P0 
2b77 : 85 0e __ STA P1 
2b79 : 85 10 __ STA P3 
2b7b : 85 12 __ STA P5 
2b7d : 85 14 __ STA P7 
2b7f : 8d 40 68 STA $6840 ; (opn[0] + 4)
2b82 : 8d 41 68 STA $6841 ; (opn[0] + 5)
2b85 : a9 0d __ LDA #$0d
2b87 : 85 0f __ STA P2 
2b89 : a9 05 __ LDA #$05
2b8b : 85 11 __ STA P4 
2b8d : a9 12 __ LDA #$12
2b8f : 85 13 __ STA P6 
2b91 : 20 15 42 JSR $4215 ; (openregion.s4 + 0)
2b94 : a5 1b __ LDA ACCU + 0 
2b96 : 05 1c __ ORA ACCU + 1 
2b98 : f0 10 __ BEQ $2baa ; (genmove.s149 + 0)
.s148:
2b9a : a9 ee __ LDA #$ee
2b9c : 85 0d __ STA P0 
2b9e : a9 cf __ LDA #$cf
2ba0 : 85 0e __ STA P1 
2ba2 : a9 ec __ LDA #$ec
2ba4 : 85 0f __ STA P2 
2ba6 : a9 02 __ LDA #$02
2ba8 : d0 b3 __ BNE $2b5d ; (genmove.s329 + 0)
.s149:
2baa : ad 43 68 LDA $6843 ; (opn[0] + 7)
2bad : 0d 42 68 ORA $6842 ; (opn[0] + 6)
2bb0 : f0 38 __ BEQ $2bea ; (genmove.s152 + 0)
.s150:
2bb2 : a9 0d __ LDA #$0d
2bb4 : 85 0d __ STA P0 
2bb6 : 85 0f __ STA P2 
2bb8 : a9 00 __ LDA #$00
2bba : 85 0e __ STA P1 
2bbc : 85 10 __ STA P3 
2bbe : 85 12 __ STA P5 
2bc0 : 85 14 __ STA P7 
2bc2 : a9 12 __ LDA #$12
2bc4 : 85 11 __ STA P4 
2bc6 : 85 13 __ STA P6 
2bc8 : a9 00 __ LDA #$00
2bca : 8d 42 68 STA $6842 ; (opn[0] + 6)
2bcd : 8d 43 68 STA $6843 ; (opn[0] + 7)
2bd0 : 20 15 42 JSR $4215 ; (openregion.s4 + 0)
2bd3 : a5 1b __ LDA ACCU + 0 
2bd5 : 05 1c __ ORA ACCU + 1 
2bd7 : f0 11 __ BEQ $2bea ; (genmove.s152 + 0)
.s151:
2bd9 : a9 ee __ LDA #$ee
2bdb : 85 0d __ STA P0 
2bdd : a9 cf __ LDA #$cf
2bdf : 85 0e __ STA P1 
2be1 : a9 ec __ LDA #$ec
2be3 : 85 0f __ STA P2 
2be5 : a9 03 __ LDA #$03
2be7 : 4c 5d 2b JMP $2b5d ; (genmove.s329 + 0)
.s152:
2bea : ad 47 68 LDA $6847 ; (opn[0] + 11)
2bed : 0d 46 68 ORA $6846 ; (opn[0] + 10)
2bf0 : f0 34 __ BEQ $2c26 ; (genmove.s157 + 0)
.s153:
2bf2 : a9 00 __ LDA #$00
2bf4 : 85 0d __ STA P0 
2bf6 : 85 0e __ STA P1 
2bf8 : 85 10 __ STA P3 
2bfa : 85 12 __ STA P5 
2bfc : 85 14 __ STA P7 
2bfe : 8d 46 68 STA $6846 ; (opn[0] + 10)
2c01 : 8d 47 68 STA $6847 ; (opn[0] + 11)
2c04 : a9 04 __ LDA #$04
2c06 : 85 11 __ STA P4 
2c08 : 20 f0 53 JSR $53f0 ; (openregion@proxy + 0)
2c0b : a5 1b __ LDA ACCU + 0 
2c0d : 05 1c __ ORA ACCU + 1 
2c0f : f0 15 __ BEQ $2c26 ; (genmove.s157 + 0)
.s154:
2c11 : a9 03 __ LDA #$03
.s155:
2c13 : 8d ee cf STA $cfee ; (ti + 0)
2c16 : a9 00 __ LDA #$00
2c18 : 8d ef cf STA $cfef ; (ti + 1)
2c1b : 8d ed cf STA $cfed ; (tj + 1)
2c1e : a9 09 __ LDA #$09
2c20 : 8d ec cf STA $cfec ; (tj + 0)
2c23 : 4c c6 2a JMP $2ac6 ; (genmove.s156 + 0)
.s157:
2c26 : ad 49 68 LDA $6849 ; (opn[0] + 13)
2c29 : 0d 48 68 ORA $6848 ; (opn[0] + 12)
2c2c : f0 25 __ BEQ $2c53 ; (genmove.s160 + 0)
.s158:
2c2e : a9 00 __ LDA #$00
2c30 : 85 0e __ STA P1 
2c32 : 85 10 __ STA P3 
2c34 : 85 12 __ STA P5 
2c36 : 85 14 __ STA P7 
2c38 : 8d 48 68 STA $6848 ; (opn[0] + 12)
2c3b : 8d 49 68 STA $6849 ; (opn[0] + 13)
2c3e : a9 12 __ LDA #$12
2c40 : 85 0d __ STA P0 
2c42 : a9 0e __ LDA #$0e
2c44 : 85 11 __ STA P4 
2c46 : 20 f0 53 JSR $53f0 ; (openregion@proxy + 0)
2c49 : a5 1b __ LDA ACCU + 0 
2c4b : 05 1c __ ORA ACCU + 1 
2c4d : f0 04 __ BEQ $2c53 ; (genmove.s160 + 0)
.s159:
2c4f : a9 0f __ LDA #$0f
2c51 : d0 c0 __ BNE $2c13 ; (genmove.s155 + 0)
.s160:
2c53 : ad 4b 68 LDA $684b ; (opn[0] + 15)
2c56 : 0d 4a 68 ORA $684a ; (opn[0] + 14)
2c59 : f0 34 __ BEQ $2c8f ; (genmove.s164 + 0)
.s161:
2c5b : a9 00 __ LDA #$00
2c5d : 85 0e __ STA P1 
2c5f : 85 0f __ STA P2 
2c61 : 85 10 __ STA P3 
2c63 : 85 12 __ STA P5 
2c65 : 85 14 __ STA P7 
2c67 : 8d 4a 68 STA $684a ; (opn[0] + 14)
2c6a : 8d 4b 68 STA $684b ; (opn[0] + 15)
2c6d : a9 04 __ LDA #$04
2c6f : 85 13 __ STA P6 
2c71 : 20 0d 42 JSR $420d ; (openregion@proxy + 0)
2c74 : a5 1b __ LDA ACCU + 0 
2c76 : 05 1c __ ORA ACCU + 1 
2c78 : f0 15 __ BEQ $2c8f ; (genmove.s164 + 0)
.s162:
2c7a : a9 03 __ LDA #$03
.s163:
2c7c : 8d ec cf STA $cfec ; (tj + 0)
2c7f : a9 00 __ LDA #$00
2c81 : 8d ed cf STA $cfed ; (tj + 1)
2c84 : 8d ef cf STA $cfef ; (ti + 1)
2c87 : a9 09 __ LDA #$09
2c89 : 8d ee cf STA $cfee ; (ti + 0)
2c8c : 4c c6 2a JMP $2ac6 ; (genmove.s156 + 0)
.s164:
2c8f : ad 4d 68 LDA $684d ; (opn[0] + 17)
2c92 : 0d 4c 68 ORA $684c ; (opn[0] + 16)
2c95 : f0 25 __ BEQ $2cbc ; (genmove.s167 + 0)
.s165:
2c97 : a9 00 __ LDA #$00
2c99 : 85 0e __ STA P1 
2c9b : 85 10 __ STA P3 
2c9d : 85 12 __ STA P5 
2c9f : 85 14 __ STA P7 
2ca1 : 8d 4c 68 STA $684c ; (opn[0] + 16)
2ca4 : 8d 4d 68 STA $684d ; (opn[0] + 17)
2ca7 : a9 12 __ LDA #$12
2ca9 : 85 0f __ STA P2 
2cab : a9 0e __ LDA #$0e
2cad : 85 13 __ STA P6 
2caf : 20 0d 42 JSR $420d ; (openregion@proxy + 0)
2cb2 : a5 1b __ LDA ACCU + 0 
2cb4 : 05 1c __ ORA ACCU + 1 
2cb6 : f0 04 __ BEQ $2cbc ; (genmove.s167 + 0)
.s166:
2cb8 : a9 0f __ LDA #$0f
2cba : d0 c0 __ BNE $2c7c ; (genmove.s163 + 0)
.s167:
2cbc : a9 ff __ LDA #$ff
2cbe : 8d ee cf STA $cfee ; (ti + 0)
2cc1 : 8d ef cf STA $cfef ; (ti + 1)
2cc4 : 8d ec cf STA $cfec ; (tj + 0)
2cc7 : 8d ed cf STA $cfed ; (tj + 1)
2cca : 85 5f __ STA T7 + 0 
2ccc : 85 60 __ STA T7 + 1 
2cce : a9 4e __ LDA #$4e
2cd0 : 85 63 __ STA T9 + 0 
2cd2 : a9 68 __ LDA #$68
2cd4 : 85 64 __ STA T9 + 1 
2cd6 : a9 00 __ LDA #$00
2cd8 : 85 61 __ STA T8 + 0 
2cda : 85 12 __ STA P5 
.l168:
2cdc : a9 00 __ LDA #$00
2cde : 85 65 __ STA T10 + 0 
2ce0 : a5 5e __ LDA T6 + 1 
2ce2 : f0 03 __ BEQ $2ce7 ; (genmove.s260 + 0)
2ce4 : 4c 79 2d JMP $2d79 ; (genmove.l249 + 0)
.s260:
2ce7 : a5 5d __ LDA T6 + 0 
2ce9 : a4 65 __ LDY T10 + 0 
2ceb : d1 63 __ CMP (T9 + 0),y 
2ced : d0 f5 __ BNE $2ce4 ; (genmove.l168 + 8)
.s170:
2cef : a9 00 __ LDA #$00
2cf1 : 85 67 __ STA T11 + 0 
2cf3 : 85 68 __ STA T11 + 1 
2cf5 : 85 6b __ STA T15 + 0 
2cf7 : 85 6c __ STA T15 + 1 
2cf9 : 85 77 __ STA T21 + 0 
2cfb : a9 ff __ LDA #$ff
2cfd : 85 6d __ STA T16 + 0 
2cff : 85 6e __ STA T16 + 1 
2d01 : 85 73 __ STA T19 + 0 
2d03 : 85 74 __ STA T19 + 1 
2d05 : 85 75 __ STA T20 + 0 
2d07 : 85 76 __ STA T20 + 1 
.l171:
2d09 : a9 00 __ LDA #$00
2d0b : 85 78 __ STA T22 + 0 
2d0d : 85 79 __ STA T22 + 1 
.l345:
2d0f : a5 77 __ LDA T21 + 0 
2d11 : 85 1b __ STA ACCU + 0 
2d13 : a9 00 __ LDA #$00
2d15 : 85 1c __ STA ACCU + 1 
2d17 : a9 66 __ LDA #$66
2d19 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
2d1c : 18 __ __ CLC
2d1d : a9 d2 __ LDA #$d2
2d1f : 65 1b __ ADC ACCU + 0 
2d21 : 85 53 __ STA T1 + 0 
2d23 : a9 5e __ LDA #$5e
2d25 : 65 1c __ ADC ACCU + 1 
2d27 : 85 54 __ STA T1 + 1 
2d29 : a0 01 __ LDY #$01
2d2b : b1 53 __ LDA (T1 + 0),y 
2d2d : 30 10 __ BMI $2d3f ; (genmove.s245 + 0)
.s259:
2d2f : a5 79 __ LDA T22 + 1 
2d31 : d1 53 __ CMP (T1 + 0),y 
2d33 : d0 05 __ BNE $2d3a ; (genmove.s258 + 0)
.s257:
2d35 : a5 78 __ LDA T22 + 0 
2d37 : 88 __ __ DEY
2d38 : d1 53 __ CMP (T1 + 0),y 
.s258:
2d3a : b0 03 __ BCS $2d3f ; (genmove.s245 + 0)
2d3c : 4c 21 2f JMP $2f21 ; (genmove.s172 + 0)
.s245:
2d3f : e6 77 __ INC T21 + 0 
2d41 : a5 77 __ LDA T21 + 0 
2d43 : c9 18 __ CMP #$18
2d45 : 90 c2 __ BCC $2d09 ; (genmove.l171 + 0)
.s246:
2d47 : a5 76 __ LDA T20 + 1 
2d49 : 30 2e __ BMI $2d79 ; (genmove.l249 + 0)
.s256:
2d4b : 05 75 __ ORA T20 + 0 
2d4d : f0 2a __ BEQ $2d79 ; (genmove.l249 + 0)
.s247:
2d4f : a5 60 __ LDA T7 + 1 
2d51 : 30 0a __ BMI $2d5d ; (genmove.s248 + 0)
.s255:
2d53 : c5 76 __ CMP T20 + 1 
2d55 : d0 04 __ BNE $2d5b ; (genmove.s254 + 0)
.s253:
2d57 : a5 5f __ LDA T7 + 0 
2d59 : c5 75 __ CMP T20 + 0 
.s254:
2d5b : b0 1c __ BCS $2d79 ; (genmove.l249 + 0)
.s248:
2d5d : a5 6d __ LDA T16 + 0 
2d5f : 8d ee cf STA $cfee ; (ti + 0)
2d62 : a5 6e __ LDA T16 + 1 
2d64 : 8d ef cf STA $cfef ; (ti + 1)
2d67 : a5 73 __ LDA T19 + 0 
2d69 : 8d ec cf STA $cfec ; (tj + 0)
2d6c : a5 74 __ LDA T19 + 1 
2d6e : 8d ed cf STA $cfed ; (tj + 1)
2d71 : a5 75 __ LDA T20 + 0 
2d73 : 85 5f __ STA T7 + 0 
2d75 : a5 76 __ LDA T20 + 1 
2d77 : 85 60 __ STA T7 + 1 
.l249:
2d79 : e6 65 __ INC T10 + 0 
2d7b : a5 65 __ LDA T10 + 0 
2d7d : c9 13 __ CMP #$13
2d7f : b0 07 __ BCS $2d88 ; (genmove.s250 + 0)
.s169:
2d81 : a5 5e __ LDA T6 + 1 
2d83 : d0 f4 __ BNE $2d79 ; (genmove.l249 + 0)
2d85 : 4c e7 2c JMP $2ce7 ; (genmove.s260 + 0)
.s250:
2d88 : a5 63 __ LDA T9 + 0 
2d8a : 69 12 __ ADC #$12
2d8c : 85 63 __ STA T9 + 0 
2d8e : 90 02 __ BCC $2d92 ; (genmove.s350 + 0)
.s349:
2d90 : e6 64 __ INC T9 + 1 
.s350:
2d92 : e6 61 __ INC T8 + 0 
2d94 : a5 61 __ LDA T8 + 0 
2d96 : c9 13 __ CMP #$13
2d98 : b0 03 __ BCS $2d9d ; (genmove.s251 + 0)
2d9a : 4c dc 2c JMP $2cdc ; (genmove.l168 + 0)
.s251:
2d9d : a5 60 __ LDA T7 + 1 
2d9f : 30 33 __ BMI $2dd4 ; (genmove.s117 + 0)
.s252:
2da1 : 05 5f __ ORA T7 + 0 
2da3 : f0 2f __ BEQ $2dd4 ; (genmove.s117 + 0)
.s114:
2da5 : a5 72 __ LDA T18 + 1 
2da7 : 30 0a __ BMI $2db3 ; (genmove.s115 + 0)
.s142:
2da9 : c5 60 __ CMP T7 + 1 
2dab : d0 04 __ BNE $2db1 ; (genmove.s141 + 0)
.s140:
2dad : a5 71 __ LDA T18 + 0 
2daf : c5 5f __ CMP T7 + 0 
.s141:
2db1 : b0 21 __ BCS $2dd4 ; (genmove.s117 + 0)
.s115:
2db3 : ad ee cf LDA $cfee ; (ti + 0)
2db6 : a0 00 __ LDY #$00
2db8 : 91 15 __ STA (P8),y ; (i + 0)
2dba : ad ef cf LDA $cfef ; (ti + 1)
2dbd : c8 __ __ INY
2dbe : 91 15 __ STA (P8),y ; (i + 0)
2dc0 : ad ec cf LDA $cfec ; (tj + 0)
2dc3 : 88 __ __ DEY
2dc4 : 91 17 __ STA (P10),y ; (j + 0)
2dc6 : ad ed cf LDA $cfed ; (tj + 1)
2dc9 : c8 __ __ INY
2dca : 91 17 __ STA (P10),y ; (j + 0)
.s116:
2dcc : a9 00 __ LDA #$00
2dce : 8d bd 69 STA $69bd ; (pass + 0)
2dd1 : 4c 13 2f JMP $2f13 ; (genmove.s3 + 0)
.s117:
2dd4 : 24 72 __ BIT T18 + 1 
2dd6 : 10 f4 __ BPL $2dcc ; (genmove.s116 + 0)
.l118:
2dd8 : 20 ef 41 JSR $41ef ; (rand.s4 + 0)
2ddb : a9 13 __ LDA #$13
2ddd : 20 81 51 JSR $5181 ; (divmod + 53)
2de0 : a5 05 __ LDA WORK + 2 
2de2 : a0 00 __ LDY #$00
2de4 : 91 15 __ STA (P8),y ; (i + 0)
2de6 : a5 06 __ LDA WORK + 3 
2de8 : c8 __ __ INY
2de9 : 91 15 __ STA (P8),y ; (i + 0)
2deb : a5 05 __ LDA WORK + 2 
2ded : c9 02 __ CMP #$02
2def : 90 0c __ BCC $2dfd ; (genmove.s119 + 0)
.s137:
2df1 : c9 11 __ CMP #$11
2df3 : b0 08 __ BCS $2dfd ; (genmove.s119 + 0)
.s138:
2df5 : c9 06 __ CMP #$06
2df7 : 90 34 __ BCC $2e2d ; (genmove.s121 + 0)
.s139:
2df9 : c9 0d __ CMP #$0d
2dfb : b0 30 __ BCS $2e2d ; (genmove.s121 + 0)
.s119:
2dfd : 20 ef 41 JSR $41ef ; (rand.s4 + 0)
2e00 : a9 13 __ LDA #$13
2e02 : 20 81 51 JSR $5181 ; (divmod + 53)
2e05 : a5 05 __ LDA WORK + 2 
2e07 : a0 00 __ LDY #$00
2e09 : 91 15 __ STA (P8),y ; (i + 0)
2e0b : a5 06 __ LDA WORK + 3 
2e0d : c8 __ __ INY
2e0e : 91 15 __ STA (P8),y ; (i + 0)
2e10 : a5 05 __ LDA WORK + 2 
2e12 : c9 02 __ CMP #$02
2e14 : 90 04 __ BCC $2e1a ; (genmove.s120 + 0)
.s136:
2e16 : c9 11 __ CMP #$11
2e18 : 90 13 __ BCC $2e2d ; (genmove.s121 + 0)
.s120:
2e1a : 20 ef 41 JSR $41ef ; (rand.s4 + 0)
2e1d : a9 13 __ LDA #$13
2e1f : 20 81 51 JSR $5181 ; (divmod + 53)
2e22 : a5 05 __ LDA WORK + 2 
2e24 : a0 00 __ LDY #$00
2e26 : 91 15 __ STA (P8),y ; (i + 0)
2e28 : a5 06 __ LDA WORK + 3 
2e2a : c8 __ __ INY
2e2b : 91 15 __ STA (P8),y ; (i + 0)
.s121:
2e2d : 20 ef 41 JSR $41ef ; (rand.s4 + 0)
2e30 : a9 13 __ LDA #$13
2e32 : 20 81 51 JSR $5181 ; (divmod + 53)
2e35 : a5 05 __ LDA WORK + 2 
2e37 : a0 00 __ LDY #$00
2e39 : 91 17 __ STA (P10),y ; (j + 0)
2e3b : a5 06 __ LDA WORK + 3 
2e3d : c8 __ __ INY
2e3e : 91 17 __ STA (P10),y ; (j + 0)
2e40 : a5 05 __ LDA WORK + 2 
2e42 : c9 02 __ CMP #$02
2e44 : 90 0c __ BCC $2e52 ; (genmove.s122 + 0)
.s133:
2e46 : c9 11 __ CMP #$11
2e48 : b0 08 __ BCS $2e52 ; (genmove.s122 + 0)
.s134:
2e4a : c9 06 __ CMP #$06
2e4c : 90 34 __ BCC $2e82 ; (genmove.s124 + 0)
.s135:
2e4e : c9 0d __ CMP #$0d
2e50 : b0 30 __ BCS $2e82 ; (genmove.s124 + 0)
.s122:
2e52 : 20 ef 41 JSR $41ef ; (rand.s4 + 0)
2e55 : a9 13 __ LDA #$13
2e57 : 20 81 51 JSR $5181 ; (divmod + 53)
2e5a : a5 05 __ LDA WORK + 2 
2e5c : a0 00 __ LDY #$00
2e5e : 91 17 __ STA (P10),y ; (j + 0)
2e60 : a5 06 __ LDA WORK + 3 
2e62 : c8 __ __ INY
2e63 : 91 17 __ STA (P10),y ; (j + 0)
2e65 : a5 05 __ LDA WORK + 2 
2e67 : c9 02 __ CMP #$02
2e69 : 90 04 __ BCC $2e6f ; (genmove.s123 + 0)
.s132:
2e6b : c9 11 __ CMP #$11
2e6d : 90 13 __ BCC $2e82 ; (genmove.s124 + 0)
.s123:
2e6f : 20 ef 41 JSR $41ef ; (rand.s4 + 0)
2e72 : a9 13 __ LDA #$13
2e74 : 20 81 51 JSR $5181 ; (divmod + 53)
2e77 : a5 05 __ LDA WORK + 2 
2e79 : a0 00 __ LDY #$00
2e7b : 91 17 __ STA (P10),y ; (j + 0)
2e7d : a5 06 __ LDA WORK + 3 
2e7f : c8 __ __ INY
2e80 : 91 17 __ STA (P10),y ; (j + 0)
.s124:
2e82 : a5 5d __ LDA T6 + 0 
2e84 : 85 11 __ STA P4 
2e86 : a5 5e __ LDA T6 + 1 
2e88 : 85 12 __ STA P5 
2e8a : a9 00 __ LDA #$00
2e8c : 8d cb 69 STA $69cb ; (lib + 0)
2e8f : 8d cc 69 STA $69cc ; (lib + 1)
2e92 : a8 __ __ TAY
2e93 : b1 15 __ LDA (P8),y ; (i + 0)
2e95 : 85 0d __ STA P0 
2e97 : c8 __ __ INY
2e98 : b1 15 __ LDA (P8),y ; (i + 0)
2e9a : 85 0e __ STA P1 
2e9c : 88 __ __ DEY
2e9d : b1 17 __ LDA (P10),y ; (j + 0)
2e9f : 85 0f __ STA P2 
2ea1 : c8 __ __ INY
2ea2 : b1 17 __ LDA (P10),y ; (j + 0)
2ea4 : 85 10 __ STA P3 
2ea6 : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
2ea9 : e6 6f __ INC T17 + 0 
2eab : d0 02 __ BNE $2eaf ; (genmove.s344 + 0)
.s343:
2ead : e6 70 __ INC T17 + 1 
.s344:
2eaf : a6 70 __ LDX T17 + 1 
2eb1 : ca __ __ DEX
2eb2 : d0 06 __ BNE $2eba ; (genmove.s125 + 0)
.s131:
2eb4 : a5 6f __ LDA T17 + 0 
2eb6 : c9 90 __ CMP #$90
2eb8 : f0 43 __ BEQ $2efd ; (genmove.s130 + 0)
.s125:
2eba : a5 0d __ LDA P0 
2ebc : 85 1b __ STA ACCU + 0 
2ebe : a5 0e __ LDA P1 
2ec0 : 85 1c __ STA ACCU + 1 
2ec2 : a9 13 __ LDA #$13
2ec4 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
2ec7 : 18 __ __ CLC
2ec8 : a9 4e __ LDA #$4e
2eca : 65 1b __ ADC ACCU + 0 
2ecc : 85 43 __ STA T0 + 0 
2ece : a9 68 __ LDA #$68
2ed0 : 65 1c __ ADC ACCU + 1 
2ed2 : 85 44 __ STA T0 + 1 
2ed4 : a4 0f __ LDY P2 
2ed6 : b1 43 __ LDA (T0 + 0),y 
2ed8 : f0 03 __ BEQ $2edd ; (genmove.s126 + 0)
2eda : 4c d8 2d JMP $2dd8 ; (genmove.l118 + 0)
.s126:
2edd : ad cc 69 LDA $69cc ; (lib + 1)
2ee0 : 30 f8 __ BMI $2eda ; (genmove.s125 + 32)
.s129:
2ee2 : d0 07 __ BNE $2eeb ; (genmove.s127 + 0)
.s128:
2ee4 : ad cb 69 LDA $69cb ; (lib + 0)
2ee7 : c9 02 __ CMP #$02
2ee9 : 90 ef __ BCC $2eda ; (genmove.s125 + 32)
.s127:
2eeb : a9 00 __ LDA #$00
2eed : 85 0e __ STA P1 
2eef : 85 10 __ STA P3 
2ef1 : 20 12 3f JSR $3f12 ; (fioe.s4 + 0)
2ef4 : a5 1b __ LDA ACCU + 0 
2ef6 : 05 1c __ ORA ACCU + 1 
2ef8 : d0 e0 __ BNE $2eda ; (genmove.s125 + 32)
2efa : 4c cc 2d JMP $2dcc ; (genmove.s116 + 0)
.s130:
2efd : a9 ff __ LDA #$ff
2eff : a0 00 __ LDY #$00
2f01 : 91 15 __ STA (P8),y ; (i + 0)
2f03 : c8 __ __ INY
2f04 : 91 15 __ STA (P8),y ; (i + 0)
2f06 : ad bd 69 LDA $69bd ; (pass + 0)
2f09 : 69 00 __ ADC #$00
2f0b : 8d bd 69 STA $69bd ; (pass + 0)
2f0e : ad be 69 LDA $69be ; (pass + 1)
2f11 : 69 00 __ ADC #$00
.s3:
2f13 : 8d be 69 STA $69be ; (pass + 1)
2f16 : a2 2d __ LDX #$2d
2f18 : bd aa cf LDA $cfaa,x ; (genmove@stack + 0)
2f1b : 95 53 __ STA T1 + 0,x 
2f1d : ca __ __ DEX
2f1e : 10 f8 __ BPL $2f18 ; (genmove.s3 + 5)
2f20 : 60 __ __ RTS
.s172:
2f21 : a9 70 __ LDA #$70
2f23 : 65 1b __ ADC ACCU + 0 
2f25 : 85 7a __ STA T23 + 0 
2f27 : a9 5e __ LDA #$5e
2f29 : 65 1c __ ADC ACCU + 1 
2f2b : 85 7b __ STA T23 + 1 
2f2d : a0 60 __ LDY #$60
2f2f : b1 7a __ LDA (T23 + 0),y 
2f31 : 85 7c __ STA T24 + 0 
2f33 : c8 __ __ INY
2f34 : b1 7a __ LDA (T23 + 0),y 
2f36 : 85 7d __ STA T24 + 1 
2f38 : 05 7c __ ORA T24 + 0 
2f3a : f0 12 __ BEQ $2f4e ; (genmove.s185 + 0)
.s173:
2f3c : a5 78 __ LDA T22 + 0 
2f3e : 0a __ __ ASL
2f3f : 0a __ __ ASL
2f40 : 0a __ __ ASL
2f41 : 85 7e __ STA T25 + 0 
2f43 : a9 01 __ LDA #$01
2f45 : 85 7f __ STA T26 + 0 
2f47 : a9 00 __ LDA #$00
2f49 : 85 80 __ STA T27 + 0 
2f4b : 4c 44 30 JMP $3044 ; (genmove.l175 + 0)
.s185:
2f4e : a0 64 __ LDY #$64
2f50 : b1 7a __ LDA (T23 + 0),y 
2f52 : 85 43 __ STA T0 + 0 
2f54 : c8 __ __ INY
2f55 : b1 7a __ LDA (T23 + 0),y 
2f57 : 85 44 __ STA T0 + 1 
2f59 : a5 77 __ LDA T21 + 0 
2f5b : c9 08 __ CMP #$08
2f5d : b0 03 __ BCS $2f62 ; (genmove.s186 + 0)
2f5f : 4c 0c 30 JMP $300c ; (genmove.s195 + 0)
.s186:
2f62 : c9 0e __ CMP #$0e
2f64 : b0 f9 __ BCS $2f5f ; (genmove.s185 + 17)
.s187:
2f66 : 38 __ __ SEC
2f67 : a5 67 __ LDA T11 + 0 
2f69 : e9 09 __ SBC #$09
2f6b : 85 53 __ STA T1 + 0 
2f6d : 49 ff __ EOR #$ff
2f6f : aa __ __ TAX
2f70 : e8 __ __ INX
2f71 : 24 53 __ BIT T1 + 0 
2f73 : 10 05 __ BPL $2f7a ; (genmove.s189 + 0)
.s188:
2f75 : 8a __ __ TXA
2f76 : a0 01 __ LDY #$01
2f78 : d0 04 __ BNE $2f7e ; (genmove.s323 + 0)
.s189:
2f7a : a5 53 __ LDA T1 + 0 
2f7c : a0 00 __ LDY #$00
.s323:
2f7e : 09 00 __ ORA #$00
2f80 : 30 13 __ BMI $2f95 ; (genmove.s208 + 0)
.s347:
2f82 : c9 08 __ CMP #$08
2f84 : 90 0f __ BCC $2f95 ; (genmove.s208 + 0)
.s190:
2f86 : a5 43 __ LDA T0 + 0 
2f88 : 69 fe __ ADC #$fe
2f8a : 85 43 __ STA T0 + 0 
2f8c : a9 ff __ LDA #$ff
.s331:
2f8e : 65 44 __ ADC T0 + 1 
2f90 : 85 44 __ STA T0 + 1 
2f92 : 4c b9 2f JMP $2fb9 ; (genmove.s191 + 0)
.s208:
2f95 : 98 __ __ TYA
2f96 : d0 05 __ BNE $2f9d ; (genmove.s209 + 0)
.s214:
2f98 : a5 53 __ LDA T1 + 0 
2f9a : 4c 9e 2f JMP $2f9e ; (genmove.s324 + 0)
.s209:
2f9d : 8a __ __ TXA
.s324:
2f9e : c9 06 __ CMP #$06
2fa0 : f0 0d __ BEQ $2faf ; (genmove.s210 + 0)
.s211:
2fa2 : 98 __ __ TYA
2fa3 : d0 05 __ BNE $2faa ; (genmove.s212 + 0)
.s213:
2fa5 : a5 53 __ LDA T1 + 0 
2fa7 : 4c ab 2f JMP $2fab ; (genmove.s328 + 0)
.s212:
2faa : 8a __ __ TXA
.s328:
2fab : c9 07 __ CMP #$07
2fad : d0 0a __ BNE $2fb9 ; (genmove.s191 + 0)
.s210:
2faf : a5 43 __ LDA T0 + 0 
2fb1 : 69 00 __ ADC #$00
2fb3 : 85 43 __ STA T0 + 0 
2fb5 : a9 00 __ LDA #$00
2fb7 : f0 d5 __ BEQ $2f8e ; (genmove.s331 + 0)
.s191:
2fb9 : 38 __ __ SEC
2fba : a5 6b __ LDA T15 + 0 
2fbc : e9 09 __ SBC #$09
2fbe : 85 53 __ STA T1 + 0 
2fc0 : 49 ff __ EOR #$ff
2fc2 : aa __ __ TAX
2fc3 : e8 __ __ INX
2fc4 : 24 53 __ BIT T1 + 0 
2fc6 : 10 05 __ BPL $2fcd ; (genmove.s193 + 0)
.s192:
2fc8 : 8a __ __ TXA
2fc9 : a0 01 __ LDY #$01
2fcb : d0 04 __ BNE $2fd1 ; (genmove.s325 + 0)
.s193:
2fcd : a5 53 __ LDA T1 + 0 
2fcf : a0 00 __ LDY #$00
.s325:
2fd1 : 09 00 __ ORA #$00
2fd3 : 30 13 __ BMI $2fe8 ; (genmove.s201 + 0)
.s348:
2fd5 : c9 08 __ CMP #$08
2fd7 : 90 0f __ BCC $2fe8 ; (genmove.s201 + 0)
.s194:
2fd9 : a5 43 __ LDA T0 + 0 
2fdb : 69 fe __ ADC #$fe
2fdd : 85 43 __ STA T0 + 0 
2fdf : a9 ff __ LDA #$ff
.s330:
2fe1 : 65 44 __ ADC T0 + 1 
2fe3 : 85 44 __ STA T0 + 1 
2fe5 : 4c 0c 30 JMP $300c ; (genmove.s195 + 0)
.s201:
2fe8 : 98 __ __ TYA
2fe9 : d0 05 __ BNE $2ff0 ; (genmove.s202 + 0)
.s207:
2feb : a5 53 __ LDA T1 + 0 
2fed : 4c f1 2f JMP $2ff1 ; (genmove.s326 + 0)
.s202:
2ff0 : 8a __ __ TXA
.s326:
2ff1 : c9 06 __ CMP #$06
2ff3 : f0 0d __ BEQ $3002 ; (genmove.s203 + 0)
.s204:
2ff5 : 98 __ __ TYA
2ff6 : d0 05 __ BNE $2ffd ; (genmove.s205 + 0)
.s206:
2ff8 : a5 53 __ LDA T1 + 0 
2ffa : 4c fe 2f JMP $2ffe ; (genmove.s327 + 0)
.s205:
2ffd : 8a __ __ TXA
.s327:
2ffe : c9 07 __ CMP #$07
3000 : d0 0a __ BNE $300c ; (genmove.s195 + 0)
.s203:
3002 : a5 43 __ LDA T0 + 0 
3004 : 69 00 __ ADC #$00
3006 : 85 43 __ STA T0 + 0 
3008 : a9 00 __ LDA #$00
300a : f0 d5 __ BEQ $2fe1 ; (genmove.s330 + 0)
.s195:
300c : a5 76 __ LDA T20 + 1 
300e : c5 44 __ CMP T0 + 1 
3010 : d0 08 __ BNE $301a ; (genmove.s200 + 0)
.s197:
3012 : a5 75 __ LDA T20 + 0 
3014 : c5 43 __ CMP T0 + 0 
.s198:
3016 : 90 08 __ BCC $3020 ; (genmove.s196 + 0)
3018 : b0 1e __ BCS $3038 ; (genmove.s176 + 0)
.s200:
301a : 45 44 __ EOR T0 + 1 
301c : 10 f8 __ BPL $3016 ; (genmove.s198 + 0)
.s199:
301e : 90 18 __ BCC $3038 ; (genmove.s176 + 0)
.s196:
3020 : a5 43 __ LDA T0 + 0 
3022 : 85 75 __ STA T20 + 0 
3024 : a5 44 __ LDA T0 + 1 
3026 : 85 76 __ STA T20 + 1 
3028 : a5 6b __ LDA T15 + 0 
302a : 85 73 __ STA T19 + 0 
302c : a5 6c __ LDA T15 + 1 
302e : 85 74 __ STA T19 + 1 
3030 : a5 67 __ LDA T11 + 0 
3032 : 85 6d __ STA T16 + 0 
3034 : a5 68 __ LDA T11 + 1 
3036 : 85 6e __ STA T16 + 1 
.s176:
3038 : e6 78 __ INC T22 + 0 
303a : f0 03 __ BEQ $303f ; (genmove.s346 + 0)
303c : 4c 0f 2d JMP $2d0f ; (genmove.l345 + 0)
.s346:
303f : e6 79 __ INC T22 + 1 
3041 : 4c 0f 2d JMP $2d0f ; (genmove.l345 + 0)
.l175:
3044 : a5 80 __ LDA T27 + 0 
3046 : 0a __ __ ASL
3047 : 65 80 __ ADC T27 + 0 
3049 : 0a __ __ ASL
304a : a8 __ __ TAY
304b : 18 __ __ CLC
304c : 65 7a __ ADC T23 + 0 
304e : 85 55 __ STA T2 + 0 
3050 : a5 7b __ LDA T23 + 1 
3052 : 69 00 __ ADC #$00
3054 : 85 56 __ STA T2 + 1 
3056 : b1 7a __ LDA (T23 + 0),y 
3058 : 85 57 __ STA T3 + 0 
305a : 85 03 __ STA WORK + 0 
305c : a0 01 __ LDY #$01
305e : b1 55 __ LDA (T2 + 0),y 
3060 : 85 58 __ STA T3 + 1 
3062 : 85 04 __ STA WORK + 1 
3064 : a6 7e __ LDX T25 + 0 
3066 : bd 34 5e LDA $5e34,x ; (trf[0][0][0] + 4)
3069 : 85 1b __ STA ACCU + 0 
306b : bd 35 5e LDA $5e35,x ; (trf[0][0][0] + 5)
306e : 85 1c __ STA ACCU + 1 
3070 : 20 cf 50 JSR $50cf ; (mul16 + 0)
3073 : 18 __ __ CLC
3074 : a5 05 __ LDA WORK + 2 
3076 : 65 61 __ ADC T8 + 0 
3078 : 85 53 __ STA T1 + 0 
307a : a5 06 __ LDA WORK + 3 
307c : 69 00 __ ADC #$00
307e : 85 54 __ STA T1 + 1 
3080 : a0 02 __ LDY #$02
3082 : b1 55 __ LDA (T2 + 0),y 
3084 : 85 5b __ STA T5 + 0 
3086 : 85 03 __ STA WORK + 0 
3088 : c8 __ __ INY
3089 : b1 55 __ LDA (T2 + 0),y 
308b : 85 5c __ STA T5 + 1 
308d : 85 04 __ STA WORK + 1 
308f : a6 7e __ LDX T25 + 0 
3091 : bd 36 5e LDA $5e36,x ; (trf[0][0][0] + 6)
3094 : 85 1b __ STA ACCU + 0 
3096 : bd 37 5e LDA $5e37,x ; (trf[0][0][0] + 7)
3099 : 85 1c __ STA ACCU + 1 
309b : 20 cf 50 JSR $50cf ; (mul16 + 0)
309e : 18 __ __ CLC
309f : a5 05 __ LDA WORK + 2 
30a1 : 65 53 __ ADC T1 + 0 
30a3 : 85 0d __ STA P0 
30a5 : a5 06 __ LDA WORK + 3 
30a7 : 65 54 __ ADC T1 + 1 
30a9 : 30 8d __ BMI $3038 ; (genmove.s176 + 0)
.s177:
30ab : 85 5a __ STA T4 + 1 
30ad : d0 89 __ BNE $3038 ; (genmove.s176 + 0)
.s244:
30af : a5 0d __ LDA P0 
30b1 : c9 13 __ CMP #$13
30b3 : b0 83 __ BCS $3038 ; (genmove.s176 + 0)
.s178:
30b5 : a6 7e __ LDX T25 + 0 
30b7 : bd 30 5e LDA $5e30,x ; (trf[0][0][0] + 0)
30ba : 85 1b __ STA ACCU + 0 
30bc : bd 31 5e LDA $5e31,x ; (trf[0][0][0] + 1)
30bf : 85 1c __ STA ACCU + 1 
30c1 : a5 57 __ LDA T3 + 0 
30c3 : 85 03 __ STA WORK + 0 
30c5 : a5 58 __ LDA T3 + 1 
30c7 : 85 04 __ STA WORK + 1 
30c9 : 20 cf 50 JSR $50cf ; (mul16 + 0)
30cc : 18 __ __ CLC
30cd : a5 05 __ LDA WORK + 2 
30cf : 65 65 __ ADC T10 + 0 
30d1 : 85 53 __ STA T1 + 0 
30d3 : a5 06 __ LDA WORK + 3 
30d5 : 69 00 __ ADC #$00
30d7 : 85 54 __ STA T1 + 1 
30d9 : a6 7e __ LDX T25 + 0 
30db : bd 32 5e LDA $5e32,x ; (trf[0][0][0] + 2)
30de : 85 1b __ STA ACCU + 0 
30e0 : bd 33 5e LDA $5e33,x ; (trf[0][0][0] + 3)
30e3 : 85 1c __ STA ACCU + 1 
30e5 : a5 5b __ LDA T5 + 0 
30e7 : 85 03 __ STA WORK + 0 
30e9 : a5 5c __ LDA T5 + 1 
30eb : 85 04 __ STA WORK + 1 
30ed : 20 cf 50 JSR $50cf ; (mul16 + 0)
30f0 : 18 __ __ CLC
30f1 : a5 05 __ LDA WORK + 2 
30f3 : 65 53 __ ADC T1 + 0 
30f5 : 85 53 __ STA T1 + 0 
30f7 : a5 06 __ LDA WORK + 3 
30f9 : 65 54 __ ADC T1 + 1 
30fb : 10 03 __ BPL $3100 ; (genmove.s179 + 0)
30fd : 4c 38 30 JMP $3038 ; (genmove.s176 + 0)
.s179:
3100 : 85 54 __ STA T1 + 1 
3102 : d0 f9 __ BNE $30fd ; (genmove.s178 + 72)
.s243:
3104 : a5 53 __ LDA T1 + 0 
3106 : c9 13 __ CMP #$13
3108 : b0 f3 __ BCS $30fd ; (genmove.s178 + 72)
.s180:
310a : a0 04 __ LDY #$04
310c : b1 55 __ LDA (T2 + 0),y 
310e : aa __ __ TAX
310f : c8 __ __ INY
3110 : b1 55 __ LDA (T2 + 0),y 
3112 : d0 03 __ BNE $3117 ; (genmove.s355 + 0)
3114 : 4c 16 32 JMP $3216 ; (genmove.s242 + 0)
.s355:
3117 : 10 70 __ BPL $3189 ; (genmove.s229 + 0)
.s222:
3119 : b1 55 __ LDA (T2 + 0),y 
311b : 30 45 __ BMI $3162 ; (genmove.s223 + 0)
.s227:
311d : d0 03 __ BNE $3122 ; (genmove.s225 + 0)
.s226:
311f : 8a __ __ TXA
3120 : f0 40 __ BEQ $3162 ; (genmove.s223 + 0)
.s225:
3122 : a5 0d __ LDA P0 
3124 : 85 1b __ STA ACCU + 0 
3126 : a5 5a __ LDA T4 + 1 
3128 : 85 1c __ STA ACCU + 1 
312a : a9 13 __ LDA #$13
312c : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
312f : 18 __ __ CLC
3130 : a9 4e __ LDA #$4e
3132 : 65 1b __ ADC ACCU + 0 
3134 : 85 43 __ STA T0 + 0 
3136 : a9 68 __ LDA #$68
3138 : 65 1c __ ADC ACCU + 1 
313a : 85 44 __ STA T0 + 1 
313c : a5 5d __ LDA T6 + 0 
313e : a4 53 __ LDY T1 + 0 
3140 : d1 43 __ CMP (T0 + 0),y 
3142 : f0 04 __ BEQ $3148 ; (genmove.s183 + 0)
.s182:
3144 : a9 00 __ LDA #$00
3146 : 85 7f __ STA T26 + 0 
.s183:
3148 : e6 80 __ INC T27 + 0 
314a : a5 7d __ LDA T24 + 1 
314c : d0 0d __ BNE $315b ; (genmove.s174 + 0)
.s215:
314e : a5 80 __ LDA T27 + 0 
3150 : c5 7c __ CMP T24 + 0 
3152 : d0 07 __ BNE $315b ; (genmove.s174 + 0)
.s184:
3154 : a5 7f __ LDA T26 + 0 
3156 : f0 a5 __ BEQ $30fd ; (genmove.s178 + 72)
3158 : 4c 4e 2f JMP $2f4e ; (genmove.s185 + 0)
.s174:
315b : a5 7f __ LDA T26 + 0 
315d : f0 9e __ BEQ $30fd ; (genmove.s178 + 72)
315f : 4c 44 30 JMP $3044 ; (genmove.l175 + 0)
.s223:
3162 : 8a __ __ TXA
3163 : 11 55 __ ORA (T2 + 0),y 
3165 : d0 e1 __ BNE $3148 ; (genmove.s183 + 0)
.s224:
3167 : a5 0d __ LDA P0 
3169 : 85 1b __ STA ACCU + 0 
316b : a5 5a __ LDA T4 + 1 
316d : 85 1c __ STA ACCU + 1 
316f : a9 13 __ LDA #$13
3171 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3174 : 18 __ __ CLC
3175 : a9 4e __ LDA #$4e
3177 : 65 1b __ ADC ACCU + 0 
3179 : 85 43 __ STA T0 + 0 
317b : a9 68 __ LDA #$68
317d : 65 1c __ ADC ACCU + 1 
317f : 85 44 __ STA T0 + 1 
3181 : a4 53 __ LDY T1 + 0 
3183 : b1 43 __ LDA (T0 + 0),y 
3185 : f0 c1 __ BEQ $3148 ; (genmove.s183 + 0)
3187 : d0 bb __ BNE $3144 ; (genmove.s182 + 0)
.s229:
3189 : a8 __ __ TAY
318a : d0 bc __ BNE $3148 ; (genmove.s183 + 0)
.s240:
318c : e0 05 __ CPX #$05
318e : f0 5c __ BEQ $31ec ; (genmove.s230 + 0)
.s239:
3190 : b0 31 __ BCS $31c3 ; (genmove.s238 + 0)
.s236:
3192 : a5 0d __ LDA P0 
3194 : 85 1b __ STA ACCU + 0 
3196 : a5 5a __ LDA T4 + 1 
3198 : 85 1c __ STA ACCU + 1 
319a : a9 13 __ LDA #$13
319c : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
319f : 18 __ __ CLC
31a0 : a9 4e __ LDA #$4e
31a2 : 65 1b __ ADC ACCU + 0 
31a4 : 85 43 __ STA T0 + 0 
31a6 : a9 68 __ LDA #$68
31a8 : 65 1c __ ADC ACCU + 1 
31aa : 85 44 __ STA T0 + 1 
31ac : a4 53 __ LDY T1 + 0 
31ae : b1 43 __ LDA (T0 + 0),y 
31b0 : d0 92 __ BNE $3144 ; (genmove.s182 + 0)
.s231:
31b2 : a5 0d __ LDA P0 
31b4 : f0 92 __ BEQ $3148 ; (genmove.s183 + 0)
.s232:
31b6 : c9 12 __ CMP #$12
31b8 : f0 8e __ BEQ $3148 ; (genmove.s183 + 0)
.s233:
31ba : 98 __ __ TYA
31bb : f0 8b __ BEQ $3148 ; (genmove.s183 + 0)
.s234:
31bd : c9 12 __ CMP #$12
31bf : f0 87 __ BEQ $3148 ; (genmove.s183 + 0)
31c1 : d0 81 __ BNE $3144 ; (genmove.s182 + 0)
.s238:
31c3 : e0 06 __ CPX #$06
31c5 : d0 81 __ BNE $3148 ; (genmove.s183 + 0)
.s237:
31c7 : a5 0d __ LDA P0 
31c9 : 85 1b __ STA ACCU + 0 
31cb : a5 5a __ LDA T4 + 1 
31cd : 85 1c __ STA ACCU + 1 
31cf : a9 13 __ LDA #$13
31d1 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
31d4 : 18 __ __ CLC
31d5 : a9 4e __ LDA #$4e
31d7 : 65 1b __ ADC ACCU + 0 
31d9 : 85 43 __ STA T0 + 0 
31db : a9 68 __ LDA #$68
31dd : 65 1c __ ADC ACCU + 1 
31df : 85 44 __ STA T0 + 1 
31e1 : a5 5d __ LDA T6 + 0 
31e3 : a4 53 __ LDY T1 + 0 
31e5 : d1 43 __ CMP (T0 + 0),y 
31e7 : f0 c9 __ BEQ $31b2 ; (genmove.s231 + 0)
31e9 : 4c 44 31 JMP $3144 ; (genmove.s182 + 0)
.s230:
31ec : a5 0d __ LDA P0 
31ee : 85 1b __ STA ACCU + 0 
31f0 : a5 5a __ LDA T4 + 1 
31f2 : 85 1c __ STA ACCU + 1 
31f4 : a9 13 __ LDA #$13
31f6 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
31f9 : 18 __ __ CLC
31fa : a9 4e __ LDA #$4e
31fc : 65 1b __ ADC ACCU + 0 
31fe : 85 43 __ STA T0 + 0 
3200 : a9 68 __ LDA #$68
3202 : 65 1c __ ADC ACCU + 1 
3204 : 85 44 __ STA T0 + 1 
3206 : a4 53 __ LDY T1 + 0 
3208 : b1 43 __ LDA (T0 + 0),y 
320a : aa __ __ TAX
320b : a5 6a __ LDA T14 + 1 
320d : d0 da __ BNE $31e9 ; (genmove.s237 + 34)
.s235:
320f : e4 69 __ CPX T14 + 0 
3211 : f0 9f __ BEQ $31b2 ; (genmove.s231 + 0)
3213 : 4c 44 31 JMP $3144 ; (genmove.s182 + 0)
.s242:
3216 : e0 03 __ CPX #$03
3218 : d0 54 __ BNE $326e ; (genmove.s241 + 0)
.s181:
321a : a5 0d __ LDA P0 
321c : 85 1b __ STA ACCU + 0 
321e : a5 5a __ LDA T4 + 1 
3220 : 85 1c __ STA ACCU + 1 
3222 : a9 13 __ LDA #$13
3224 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3227 : 18 __ __ CLC
3228 : a9 4e __ LDA #$4e
322a : 65 1b __ ADC ACCU + 0 
322c : 85 43 __ STA T0 + 0 
322e : a9 68 __ LDA #$68
3230 : 65 1c __ ADC ACCU + 1 
3232 : 85 44 __ STA T0 + 1 
3234 : a4 53 __ LDY T1 + 0 
3236 : b1 43 __ LDA (T0 + 0),y 
3238 : d0 d9 __ BNE $3213 ; (genmove.s235 + 4)
.s216:
323a : 84 0f __ STY P2 
323c : 85 0e __ STA P1 
323e : 85 10 __ STA P3 
3240 : 8d cb 69 STA $69cb ; (lib + 0)
3243 : 8d cc 69 STA $69cc ; (lib + 1)
3246 : a5 5d __ LDA T6 + 0 
3248 : 85 11 __ STA P4 
324a : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
324d : ad cc 69 LDA $69cc ; (lib + 1)
3250 : 30 c1 __ BMI $3213 ; (genmove.s235 + 4)
.s219:
3252 : d0 07 __ BNE $325b ; (genmove.s217 + 0)
.s218:
3254 : ad cb 69 LDA $69cb ; (lib + 0)
3257 : c9 02 __ CMP #$02
3259 : 90 b8 __ BCC $3213 ; (genmove.s235 + 4)
.s217:
325b : a5 0d __ LDA P0 
325d : 85 67 __ STA T11 + 0 
325f : a5 5a __ LDA T4 + 1 
3261 : 85 68 __ STA T11 + 1 
3263 : a5 53 __ LDA T1 + 0 
3265 : 85 6b __ STA T15 + 0 
3267 : a5 54 __ LDA T1 + 1 
3269 : 85 6c __ STA T15 + 1 
326b : 4c 48 31 JMP $3148 ; (genmove.s183 + 0)
.s241:
326e : 90 03 __ BCC $3273 ; (genmove.s228 + 0)
3270 : 4c 89 31 JMP $3189 ; (genmove.s229 + 0)
.s228:
3273 : e0 01 __ CPX #$01
3275 : f0 03 __ BEQ $327a ; (genmove.s220 + 0)
3277 : 4c 19 31 JMP $3119 ; (genmove.s222 + 0)
.s220:
327a : a5 0d __ LDA P0 
327c : 85 1b __ STA ACCU + 0 
327e : a5 5a __ LDA T4 + 1 
3280 : 85 1c __ STA ACCU + 1 
3282 : a9 13 __ LDA #$13
3284 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3287 : 18 __ __ CLC
3288 : a9 4e __ LDA #$4e
328a : 65 1b __ ADC ACCU + 0 
328c : 85 43 __ STA T0 + 0 
328e : a9 68 __ LDA #$68
3290 : 65 1c __ ADC ACCU + 1 
3292 : 85 44 __ STA T0 + 1 
3294 : a4 53 __ LDY T1 + 0 
3296 : b1 43 __ LDA (T0 + 0),y 
3298 : aa __ __ TAX
3299 : a5 6a __ LDA T14 + 1 
329b : f0 03 __ BEQ $32a0 ; (genmove.s221 + 0)
329d : 4c 44 31 JMP $3144 ; (genmove.s182 + 0)
.s221:
32a0 : e4 69 __ CPX T14 + 0 
32a2 : f0 c7 __ BEQ $326b ; (genmove.s217 + 16)
32a4 : 4c 44 31 JMP $3144 ; (genmove.s182 + 0)
.s112:
32a7 : 8d 71 77 STA $7771 ; (mtype + 1)
32aa : 8d 6e 77 STA $776e ; (cnd + 0)
32ad : 8d 6f 77 STA $776f ; (cnd + 1)
32b0 : 20 ba 40 JSR $40ba ; (opening.s4 + 0)
32b3 : 20 ba 40 JSR $40ba ; (opening.s4 + 0)
32b6 : a9 50 __ LDA #$50
32b8 : 85 5f __ STA T7 + 0 
32ba : a9 00 __ LDA #$00
32bc : 85 60 __ STA T7 + 1 
32be : a5 1b __ LDA ACCU + 0 
32c0 : 05 1c __ ORA ACCU + 1 
32c2 : d0 03 __ BNE $32c7 ; (genmove.s113 + 0)
32c4 : 4c a5 2d JMP $2da5 ; (genmove.s114 + 0)
.s113:
32c7 : a9 01 __ LDA #$01
32c9 : 8d 44 68 STA $6844 ; (opn[0] + 8)
32cc : a9 00 __ LDA #$00
32ce : 8d 45 68 STA $6845 ; (opn[0] + 9)
32d1 : 4c a5 2d JMP $2da5 ; (genmove.s114 + 0)
.s41:
32d4 : 18 __ __ CLC
32d5 : a5 43 __ LDA T0 + 0 
32d7 : 69 ff __ ADC #$ff
32d9 : 8d 4c 74 STA $744c ; (fsp + 0)
32dc : a5 44 __ LDA T0 + 1 
32de : 69 ff __ ADC #$ff
32e0 : 8d 4d 74 STA $744d ; (fsp + 1)
32e3 : a5 43 __ LDA T0 + 0 
32e5 : 0a __ __ ASL
32e6 : a8 __ __ TAY
32e7 : a5 44 __ LDA T0 + 1 
32e9 : 2a __ __ ROL
32ea : aa __ __ TAX
32eb : 98 __ __ TYA
32ec : 18 __ __ CLC
32ed : 69 4c __ ADC #$4c
32ef : 85 53 __ STA T1 + 0 
32f1 : 8a __ __ TXA
32f2 : 69 74 __ ADC #$74
32f4 : 85 54 __ STA T1 + 1 
32f6 : a0 00 __ LDY #$00
32f8 : 84 04 __ STY WORK + 1 
32fa : b1 53 __ LDA (T1 + 0),y 
32fc : 85 1b __ STA ACCU + 0 
32fe : c8 __ __ INY
32ff : b1 53 __ LDA (T1 + 0),y 
3301 : 85 1c __ STA ACCU + 1 
3303 : 20 fa 51 JSR $51fa ; (divmods16@proxy + 0)
3306 : a5 1b __ LDA ACCU + 0 
3308 : 85 6d __ STA T16 + 0 
330a : a5 1c __ LDA ACCU + 1 
330c : 85 6e __ STA T16 + 1 
330e : a5 05 __ LDA WORK + 2 
3310 : 85 6b __ STA T15 + 0 
3312 : a5 06 __ LDA WORK + 3 
3314 : 85 6c __ STA T15 + 1 
3316 : a9 13 __ LDA #$13
3318 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
331b : 18 __ __ CLC
331c : a9 c1 __ LDA #$c1
331e : 65 1b __ ADC ACCU + 0 
3320 : 85 75 __ STA T20 + 0 
3322 : a9 6f __ LDA #$6f
3324 : 65 1c __ ADC ACCU + 1 
3326 : 85 76 __ STA T20 + 1 
3328 : a4 6b __ LDY T15 + 0 
332a : b1 75 __ LDA (T20 + 0),y 
332c : f0 03 __ BEQ $3331 ; (genmove.s42 + 0)
332e : 4c ac 29 JMP $29ac ; (genmove.l40 + 0)
.s42:
3331 : a5 1c __ LDA ACCU + 1 
3333 : 85 74 __ STA T19 + 1 
3335 : a5 1b __ LDA ACCU + 0 
3337 : 85 73 __ STA T19 + 0 
3339 : a9 01 __ LDA #$01
333b : 91 75 __ STA (T20 + 0),y 
333d : a5 6d __ LDA T16 + 0 
333f : 05 6e __ ORA T16 + 1 
3341 : d0 03 __ BNE $3346 ; (genmove.s43 + 0)
3343 : 4c ca 33 JMP $33ca ; (genmove.s46 + 0)
.s43:
3346 : 18 __ __ CLC
3347 : a9 3b __ LDA #$3b
3349 : 65 1b __ ADC ACCU + 0 
334b : 85 55 __ STA T2 + 0 
334d : a9 68 __ LDA #$68
334f : 65 1c __ ADC ACCU + 1 
3351 : 85 56 __ STA T2 + 1 
3353 : b1 55 __ LDA (T2 + 0),y 
3355 : f0 03 __ BEQ $335a ; (genmove.s87 + 0)
3357 : 4c 12 36 JMP $3612 ; (genmove.s86 + 0)
.s87:
335a : 84 0f __ STY P2 
335c : 85 10 __ STA P3 
335e : 85 12 __ STA P5 
3360 : 8d cb 69 STA $69cb ; (lib + 0)
3363 : 8d cc 69 STA $69cc ; (lib + 1)
3366 : a5 5d __ LDA T6 + 0 
3368 : 85 11 __ STA P4 
336a : 38 __ __ SEC
336b : a5 6d __ LDA T16 + 0 
336d : e9 01 __ SBC #$01
336f : 85 53 __ STA T1 + 0 
3371 : 85 0d __ STA P0 
3373 : a5 6e __ LDA T16 + 1 
3375 : e9 00 __ SBC #$00
3377 : 85 54 __ STA T1 + 1 
3379 : 85 0e __ STA P1 
337b : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
337e : 20 61 3e JSR $3e61 ; (fval@proxy + 0)
3381 : a5 1b __ LDA ACCU + 0 
3383 : 85 55 __ STA T2 + 0 
3385 : a5 1c __ LDA ACCU + 1 
3387 : 85 56 __ STA T2 + 1 
3389 : a5 64 __ LDA T9 + 1 
338b : c5 1c __ CMP ACCU + 1 
338d : d0 08 __ BNE $3397 ; (genmove.s94 + 0)
.s91:
338f : a5 63 __ LDA T9 + 0 
3391 : c5 1b __ CMP ACCU + 0 
.s92:
3393 : 90 08 __ BCC $339d ; (genmove.s88 + 0)
3395 : b0 27 __ BCS $33be ; (genmove.s45 + 0)
.s94:
3397 : 45 1c __ EOR ACCU + 1 
3399 : 10 f8 __ BPL $3393 ; (genmove.s92 + 0)
.s93:
339b : 90 21 __ BCC $33be ; (genmove.s45 + 0)
.s88:
339d : 20 fb 53 JSR $53fb ; (fioe@proxy + 0)
33a0 : a5 1c __ LDA ACCU + 1 
33a2 : d0 05 __ BNE $33a9 ; (genmove.s89 + 0)
.s90:
33a4 : a6 1b __ LDX ACCU + 0 
33a6 : ca __ __ DEX
33a7 : f0 15 __ BEQ $33be ; (genmove.s45 + 0)
.s89:
33a9 : a5 55 __ LDA T2 + 0 
33ab : 85 63 __ STA T9 + 0 
33ad : a5 56 __ LDA T2 + 1 
33af : 85 64 __ STA T9 + 1 
33b1 : a2 02 __ LDX #$02
33b3 : b5 0d __ LDA P0,x 
33b5 : 95 65 __ STA T10 + 0,x 
33b7 : ca __ __ DEX
33b8 : 10 f9 __ BPL $33b3 ; (genmove.s89 + 10)
33ba : a5 6c __ LDA T15 + 1 
33bc : 85 68 __ STA T11 + 1 
.s45:
33be : a5 6e __ LDA T16 + 1 
33c0 : d0 06 __ BNE $33c8 ; (genmove.s354 + 0)
.s84:
33c2 : a5 6d __ LDA T16 + 0 
33c4 : c9 12 __ CMP #$12
33c6 : f0 7a __ BEQ $3442 ; (genmove.s48 + 0)
.s354:
33c8 : a4 6b __ LDY T15 + 0 
.s46:
33ca : 18 __ __ CLC
33cb : a9 61 __ LDA #$61
33cd : 65 73 __ ADC T19 + 0 
33cf : 85 43 __ STA T0 + 0 
33d1 : a9 68 __ LDA #$68
33d3 : 65 74 __ ADC T19 + 1 
33d5 : 85 44 __ STA T0 + 1 
33d7 : b1 43 __ LDA (T0 + 0),y 
33d9 : f0 03 __ BEQ $33de ; (genmove.s76 + 0)
33db : 4c b4 35 JMP $35b4 ; (genmove.s75 + 0)
.s76:
33de : 84 0f __ STY P2 
33e0 : 85 10 __ STA P3 
33e2 : 85 12 __ STA P5 
33e4 : 8d cb 69 STA $69cb ; (lib + 0)
33e7 : 8d cc 69 STA $69cc ; (lib + 1)
33ea : a5 5d __ LDA T6 + 0 
33ec : 85 11 __ STA P4 
33ee : 18 __ __ CLC
33ef : a5 6d __ LDA T16 + 0 
33f1 : 69 01 __ ADC #$01
33f3 : 85 53 __ STA T1 + 0 
33f5 : 85 0d __ STA P0 
33f7 : a5 6e __ LDA T16 + 1 
33f9 : 69 00 __ ADC #$00
33fb : 85 54 __ STA T1 + 1 
33fd : 85 0e __ STA P1 
33ff : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
3402 : 20 61 3e JSR $3e61 ; (fval@proxy + 0)
3405 : a5 1b __ LDA ACCU + 0 
3407 : 85 55 __ STA T2 + 0 
3409 : a5 1c __ LDA ACCU + 1 
340b : 85 56 __ STA T2 + 1 
340d : a5 64 __ LDA T9 + 1 
340f : c5 1c __ CMP ACCU + 1 
3411 : d0 08 __ BNE $341b ; (genmove.s83 + 0)
.s80:
3413 : a5 63 __ LDA T9 + 0 
3415 : c5 1b __ CMP ACCU + 0 
.s81:
3417 : 90 08 __ BCC $3421 ; (genmove.s77 + 0)
3419 : b0 27 __ BCS $3442 ; (genmove.s48 + 0)
.s83:
341b : 45 1c __ EOR ACCU + 1 
341d : 10 f8 __ BPL $3417 ; (genmove.s81 + 0)
.s82:
341f : 90 21 __ BCC $3442 ; (genmove.s48 + 0)
.s77:
3421 : 20 fb 53 JSR $53fb ; (fioe@proxy + 0)
3424 : a5 1c __ LDA ACCU + 1 
3426 : d0 05 __ BNE $342d ; (genmove.s78 + 0)
.s79:
3428 : a6 1b __ LDX ACCU + 0 
342a : ca __ __ DEX
342b : f0 15 __ BEQ $3442 ; (genmove.s48 + 0)
.s78:
342d : a5 55 __ LDA T2 + 0 
342f : 85 63 __ STA T9 + 0 
3431 : a5 56 __ LDA T2 + 1 
3433 : 85 64 __ STA T9 + 1 
3435 : a2 02 __ LDX #$02
3437 : b5 0d __ LDA P0,x 
3439 : 95 65 __ STA T10 + 0,x 
343b : ca __ __ DEX
343c : 10 f9 __ BPL $3437 ; (genmove.s78 + 10)
343e : a5 6c __ LDA T15 + 1 
3440 : 85 68 __ STA T11 + 1 
.s48:
3442 : a5 6b __ LDA T15 + 0 
3444 : f0 75 __ BEQ $34bb ; (genmove.s52 + 0)
.s49:
3446 : 38 __ __ SEC
3447 : e9 01 __ SBC #$01
3449 : 85 55 __ STA T2 + 0 
344b : a8 __ __ TAY
344c : 18 __ __ CLC
344d : a9 4e __ LDA #$4e
344f : 65 73 __ ADC T19 + 0 
3451 : 85 43 __ STA T0 + 0 
3453 : a9 68 __ LDA #$68
3455 : 65 74 __ ADC T19 + 1 
3457 : 85 44 __ STA T0 + 1 
3459 : b1 43 __ LDA (T0 + 0),y 
345b : f0 03 __ BEQ $3460 ; (genmove.s66 + 0)
345d : 4c 6e 35 JMP $356e ; (genmove.s65 + 0)
.s66:
3460 : 84 0f __ STY P2 
3462 : 85 12 __ STA P5 
3464 : 85 10 __ STA P3 
3466 : 8d cb 69 STA $69cb ; (lib + 0)
3469 : 8d cc 69 STA $69cc ; (lib + 1)
346c : 20 56 3b JSR $3b56 ; (countlib@proxy + 0)
346f : 20 61 3e JSR $3e61 ; (fval@proxy + 0)
3472 : a5 1b __ LDA ACCU + 0 
3474 : 85 53 __ STA T1 + 0 
3476 : a5 1c __ LDA ACCU + 1 
3478 : 85 54 __ STA T1 + 1 
347a : a5 64 __ LDA T9 + 1 
347c : c5 1c __ CMP ACCU + 1 
347e : d0 08 __ BNE $3488 ; (genmove.s73 + 0)
.s70:
3480 : a5 63 __ LDA T9 + 0 
3482 : c5 1b __ CMP ACCU + 0 
.s71:
3484 : 90 08 __ BCC $348e ; (genmove.s67 + 0)
3486 : b0 2a __ BCS $34b2 ; (genmove.s51 + 0)
.s73:
3488 : 45 1c __ EOR ACCU + 1 
348a : 10 f8 __ BPL $3484 ; (genmove.s71 + 0)
.s72:
348c : 90 24 __ BCC $34b2 ; (genmove.s51 + 0)
.s67:
348e : 20 06 3f JSR $3f06 ; (fioe@proxy + 0)
3491 : a5 1c __ LDA ACCU + 1 
3493 : d0 05 __ BNE $349a ; (genmove.s68 + 0)
.s69:
3495 : a6 1b __ LDX ACCU + 0 
3497 : ca __ __ DEX
3498 : f0 18 __ BEQ $34b2 ; (genmove.s51 + 0)
.s68:
349a : a5 53 __ LDA T1 + 0 
349c : 85 63 __ STA T9 + 0 
349e : a5 54 __ LDA T1 + 1 
34a0 : 85 64 __ STA T9 + 1 
34a2 : a5 0f __ LDA P2 
34a4 : 85 67 __ STA T11 + 0 
34a6 : a5 0d __ LDA P0 
34a8 : 85 65 __ STA T10 + 0 
34aa : a9 00 __ LDA #$00
34ac : 85 68 __ STA T11 + 1 
34ae : a5 0e __ LDA P1 
34b0 : 85 66 __ STA T10 + 1 
.s51:
34b2 : a5 6b __ LDA T15 + 0 
34b4 : c9 12 __ CMP #$12
34b6 : d0 03 __ BNE $34bb ; (genmove.s52 + 0)
34b8 : 4c ac 29 JMP $29ac ; (genmove.l40 + 0)
.s52:
34bb : 18 __ __ CLC
34bc : 69 01 __ ADC #$01
34be : 85 55 __ STA T2 + 0 
34c0 : 18 __ __ CLC
34c1 : a9 4f __ LDA #$4f
34c3 : 65 73 __ ADC T19 + 0 
34c5 : 85 43 __ STA T0 + 0 
34c7 : a9 68 __ LDA #$68
34c9 : 65 74 __ ADC T19 + 1 
34cb : 85 44 __ STA T0 + 1 
34cd : a4 6b __ LDY T15 + 0 
34cf : b1 43 __ LDA (T0 + 0),y 
34d1 : f0 45 __ BEQ $3518 ; (genmove.s56 + 0)
.s55:
34d3 : c5 5d __ CMP T6 + 0 
34d5 : d0 e1 __ BNE $34b8 ; (genmove.s51 + 6)
.s53:
34d7 : c8 __ __ INY
34d8 : b1 75 __ LDA (T20 + 0),y 
34da : d0 dc __ BNE $34b8 ; (genmove.s51 + 6)
.s54:
34dc : ad 4c 74 LDA $744c ; (fsp + 0)
34df : 85 43 __ STA T0 + 0 
34e1 : 69 00 __ ADC #$00
34e3 : 8d 4c 74 STA $744c ; (fsp + 0)
34e6 : ad 4d 74 LDA $744d ; (fsp + 1)
34e9 : 85 44 __ STA T0 + 1 
34eb : 69 00 __ ADC #$00
34ed : 8d 4d 74 STA $744d ; (fsp + 1)
34f0 : 18 __ __ CLC
34f1 : a5 73 __ LDA T19 + 0 
34f3 : 65 55 __ ADC T2 + 0 
34f5 : a8 __ __ TAY
34f6 : a5 74 __ LDA T19 + 1 
34f8 : 69 00 __ ADC #$00
34fa : aa __ __ TAX
34fb : 06 43 __ ASL T0 + 0 
34fd : 26 44 __ ROL T0 + 1 
34ff : 18 __ __ CLC
3500 : a9 4e __ LDA #$4e
3502 : 65 43 __ ADC T0 + 0 
3504 : 85 43 __ STA T0 + 0 
3506 : a9 74 __ LDA #$74
3508 : 65 44 __ ADC T0 + 1 
350a : 85 44 __ STA T0 + 1 
350c : 98 __ __ TYA
350d : a0 00 __ LDY #$00
350f : 91 43 __ STA (T0 + 0),y 
3511 : 8a __ __ TXA
3512 : c8 __ __ INY
3513 : 91 43 __ STA (T0 + 0),y 
3515 : 4c ac 29 JMP $29ac ; (genmove.l40 + 0)
.s56:
3518 : 85 12 __ STA P5 
351a : 85 10 __ STA P3 
351c : 8d cb 69 STA $69cb ; (lib + 0)
351f : 8d cc 69 STA $69cc ; (lib + 1)
3522 : a5 55 __ LDA T2 + 0 
3524 : 85 0f __ STA P2 
3526 : 20 56 3b JSR $3b56 ; (countlib@proxy + 0)
3529 : 20 61 3e JSR $3e61 ; (fval@proxy + 0)
352c : a5 1b __ LDA ACCU + 0 
352e : 85 53 __ STA T1 + 0 
3530 : a5 1c __ LDA ACCU + 1 
3532 : 85 54 __ STA T1 + 1 
3534 : a5 64 __ LDA T9 + 1 
3536 : c5 1c __ CMP ACCU + 1 
3538 : d0 07 __ BNE $3541 ; (genmove.s63 + 0)
.s60:
353a : a5 63 __ LDA T9 + 0 
353c : c5 1b __ CMP ACCU + 0 
353e : 4c 45 35 JMP $3545 ; (genmove.s61 + 0)
.s63:
3541 : 45 1c __ EOR ACCU + 1 
3543 : 30 24 __ BMI $3569 ; (genmove.s62 + 0)
.s61:
3545 : b0 ce __ BCS $3515 ; (genmove.s54 + 57)
.s57:
3547 : 20 06 3f JSR $3f06 ; (fioe@proxy + 0)
354a : a5 1c __ LDA ACCU + 1 
354c : d0 05 __ BNE $3553 ; (genmove.s58 + 0)
.s59:
354e : a6 1b __ LDX ACCU + 0 
3550 : ca __ __ DEX
3551 : f0 c2 __ BEQ $3515 ; (genmove.s54 + 57)
.s58:
3553 : a5 53 __ LDA T1 + 0 
3555 : 85 63 __ STA T9 + 0 
3557 : a5 54 __ LDA T1 + 1 
3559 : 85 64 __ STA T9 + 1 
355b : a2 02 __ LDX #$02
355d : b5 0d __ LDA P0,x 
355f : 95 65 __ STA T10 + 0,x 
3561 : ca __ __ DEX
3562 : 10 f9 __ BPL $355d ; (genmove.s58 + 10)
3564 : a9 00 __ LDA #$00
3566 : 4c aa 29 JMP $29aa ; (genmove.l332 + 0)
.s62:
3569 : b0 dc __ BCS $3547 ; (genmove.s57 + 0)
356b : 4c ac 29 JMP $29ac ; (genmove.l40 + 0)
.s65:
356e : c5 5d __ CMP T6 + 0 
3570 : f0 03 __ BEQ $3575 ; (genmove.s50 + 0)
3572 : 4c b2 34 JMP $34b2 ; (genmove.s51 + 0)
.s50:
3575 : b1 75 __ LDA (T20 + 0),y 
3577 : d0 f9 __ BNE $3572 ; (genmove.s65 + 4)
.s64:
3579 : ad 4c 74 LDA $744c ; (fsp + 0)
357c : 85 43 __ STA T0 + 0 
357e : 69 00 __ ADC #$00
3580 : 8d 4c 74 STA $744c ; (fsp + 0)
3583 : ad 4d 74 LDA $744d ; (fsp + 1)
3586 : 85 44 __ STA T0 + 1 
3588 : 69 00 __ ADC #$00
358a : 8d 4d 74 STA $744d ; (fsp + 1)
358d : 98 __ __ TYA
358e : 18 __ __ CLC
358f : 65 73 __ ADC T19 + 0 
3591 : a8 __ __ TAY
3592 : a5 74 __ LDA T19 + 1 
3594 : 69 00 __ ADC #$00
3596 : aa __ __ TAX
3597 : 06 43 __ ASL T0 + 0 
3599 : 26 44 __ ROL T0 + 1 
359b : 18 __ __ CLC
359c : a9 4e __ LDA #$4e
359e : 65 43 __ ADC T0 + 0 
35a0 : 85 43 __ STA T0 + 0 
35a2 : a9 74 __ LDA #$74
35a4 : 65 44 __ ADC T0 + 1 
35a6 : 85 44 __ STA T0 + 1 
35a8 : 98 __ __ TYA
35a9 : a0 00 __ LDY #$00
35ab : 91 43 __ STA (T0 + 0),y 
35ad : 8a __ __ TXA
35ae : c8 __ __ INY
35af : 91 43 __ STA (T0 + 0),y 
35b1 : 4c b2 34 JMP $34b2 ; (genmove.s51 + 0)
.s75:
35b4 : c5 5d __ CMP T6 + 0 
35b6 : f0 03 __ BEQ $35bb ; (genmove.s47 + 0)
35b8 : 4c 42 34 JMP $3442 ; (genmove.s48 + 0)
.s47:
35bb : 18 __ __ CLC
35bc : a9 d4 __ LDA #$d4
35be : 65 73 __ ADC T19 + 0 
35c0 : 85 43 __ STA T0 + 0 
35c2 : a9 6f __ LDA #$6f
35c4 : 65 74 __ ADC T19 + 1 
35c6 : 85 44 __ STA T0 + 1 
35c8 : b1 43 __ LDA (T0 + 0),y 
35ca : d0 ec __ BNE $35b8 ; (genmove.s75 + 4)
.s74:
35cc : ad 4c 74 LDA $744c ; (fsp + 0)
35cf : 85 43 __ STA T0 + 0 
35d1 : 18 __ __ CLC
35d2 : 69 01 __ ADC #$01
35d4 : 8d 4c 74 STA $744c ; (fsp + 0)
35d7 : ad 4d 74 LDA $744d ; (fsp + 1)
35da : 85 44 __ STA T0 + 1 
35dc : 69 00 __ ADC #$00
35de : 8d 4d 74 STA $744d ; (fsp + 1)
35e1 : 18 __ __ CLC
35e2 : a5 73 __ LDA T19 + 0 
35e4 : 69 13 __ ADC #$13
35e6 : a4 74 __ LDY T19 + 1 
35e8 : 90 02 __ BCC $35ec ; (genmove.s338 + 0)
.s337:
35ea : c8 __ __ INY
35eb : 18 __ __ CLC
.s338:
35ec : 65 6b __ ADC T15 + 0 
35ee : aa __ __ TAX
35ef : 90 01 __ BCC $35f2 ; (genmove.s340 + 0)
.s339:
35f1 : c8 __ __ INY
.s340:
35f2 : 84 54 __ STY T1 + 1 
35f4 : 06 43 __ ASL T0 + 0 
35f6 : 26 44 __ ROL T0 + 1 
35f8 : 18 __ __ CLC
35f9 : a9 4e __ LDA #$4e
35fb : 65 43 __ ADC T0 + 0 
35fd : 85 43 __ STA T0 + 0 
35ff : a9 74 __ LDA #$74
3601 : 65 44 __ ADC T0 + 1 
3603 : 85 44 __ STA T0 + 1 
3605 : 8a __ __ TXA
3606 : a0 00 __ LDY #$00
3608 : 91 43 __ STA (T0 + 0),y 
360a : a5 54 __ LDA T1 + 1 
360c : c8 __ __ INY
360d : 91 43 __ STA (T0 + 0),y 
360f : 4c 42 34 JMP $3442 ; (genmove.s48 + 0)
.s86:
3612 : c5 5d __ CMP T6 + 0 
3614 : f0 03 __ BEQ $3619 ; (genmove.s44 + 0)
3616 : 4c be 33 JMP $33be ; (genmove.s45 + 0)
.s44:
3619 : 18 __ __ CLC
361a : a9 ae __ LDA #$ae
361c : 65 1b __ ADC ACCU + 0 
361e : 85 55 __ STA T2 + 0 
3620 : a9 6f __ LDA #$6f
3622 : 65 1c __ ADC ACCU + 1 
3624 : 85 56 __ STA T2 + 1 
3626 : b1 55 __ LDA (T2 + 0),y 
3628 : d0 ec __ BNE $3616 ; (genmove.s86 + 4)
.s85:
362a : a5 43 __ LDA T0 + 0 
362c : 8d 4c 74 STA $744c ; (fsp + 0)
362f : a5 44 __ LDA T0 + 1 
3631 : 8d 4d 74 STA $744d ; (fsp + 1)
3634 : 38 __ __ SEC
3635 : a5 1b __ LDA ACCU + 0 
3637 : e9 13 __ SBC #$13
3639 : a8 __ __ TAY
363a : a5 1c __ LDA ACCU + 1 
363c : e9 00 __ SBC #$00
363e : aa __ __ TAX
363f : 98 __ __ TYA
3640 : 18 __ __ CLC
3641 : 65 6b __ ADC T15 + 0 
3643 : a0 00 __ LDY #$00
3645 : 91 53 __ STA (T1 + 0),y 
3647 : 8a __ __ TXA
3648 : 69 00 __ ADC #$00
364a : c8 __ __ INY
364b : 91 53 __ STA (T1 + 0),y 
364d : 4c be 33 JMP $33be ; (genmove.s45 + 0)
.s10:
3650 : 18 __ __ CLC
3651 : a5 53 __ LDA T1 + 0 
3653 : 69 ff __ ADC #$ff
3655 : 8d 2a 71 STA $712a ; (osp + 0)
3658 : a5 54 __ LDA T1 + 1 
365a : 69 ff __ ADC #$ff
365c : 8d 2b 71 STA $712b ; (osp + 1)
365f : a5 53 __ LDA T1 + 0 
3661 : 0a __ __ ASL
3662 : a8 __ __ TAY
3663 : a5 54 __ LDA T1 + 1 
3665 : 2a __ __ ROL
3666 : aa __ __ TAX
3667 : 98 __ __ TYA
3668 : 18 __ __ CLC
3669 : 69 2a __ ADC #$2a
366b : 85 55 __ STA T2 + 0 
366d : 8a __ __ TXA
366e : 69 71 __ ADC #$71
3670 : 85 56 __ STA T2 + 1 
3672 : a0 00 __ LDY #$00
3674 : 84 04 __ STY WORK + 1 
3676 : b1 55 __ LDA (T2 + 0),y 
3678 : 85 1b __ STA ACCU + 0 
367a : c8 __ __ INY
367b : b1 55 __ LDA (T2 + 0),y 
367d : 85 1c __ STA ACCU + 1 
367f : 20 fa 51 JSR $51fa ; (divmods16@proxy + 0)
3682 : a5 1b __ LDA ACCU + 0 
3684 : 85 57 __ STA T3 + 0 
3686 : a5 1c __ LDA ACCU + 1 
3688 : 85 58 __ STA T3 + 1 
368a : a5 05 __ LDA WORK + 2 
368c : 85 59 __ STA T4 + 0 
368e : a5 06 __ LDA WORK + 3 
3690 : 85 5a __ STA T4 + 1 
3692 : a9 13 __ LDA #$13
3694 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3697 : 18 __ __ CLC
3698 : a9 c1 __ LDA #$c1
369a : 65 1b __ ADC ACCU + 0 
369c : 85 5d __ STA T6 + 0 
369e : a9 6f __ LDA #$6f
36a0 : 65 1c __ ADC ACCU + 1 
36a2 : 85 5e __ STA T6 + 1 
36a4 : a4 59 __ LDY T4 + 0 
36a6 : b1 5d __ LDA (T6 + 0),y 
36a8 : f0 03 __ BEQ $36ad ; (genmove.s11 + 0)
36aa : 4c c0 28 JMP $28c0 ; (genmove.l9 + 0)
.s11:
36ad : 84 5f __ STY T7 + 0 
36af : a9 01 __ LDA #$01
36b1 : 91 5d __ STA (T6 + 0),y 
36b3 : a5 57 __ LDA T3 + 0 
36b5 : 05 58 __ ORA T3 + 1 
36b7 : f0 78 __ BEQ $3731 ; (genmove.s15 + 0)
.s12:
36b9 : 18 __ __ CLC
36ba : a9 3b __ LDA #$3b
36bc : 65 1b __ ADC ACCU + 0 
36be : 85 61 __ STA T8 + 0 
36c0 : a9 68 __ LDA #$68
36c2 : 65 1c __ ADC ACCU + 1 
36c4 : 85 62 __ STA T8 + 1 
36c6 : 38 __ __ SEC
36c7 : a5 1b __ LDA ACCU + 0 
36c9 : e9 13 __ SBC #$13
36cb : aa __ __ TAX
36cc : a5 1c __ LDA ACCU + 1 
36ce : e9 00 __ SBC #$00
36d0 : 85 64 __ STA T9 + 1 
36d2 : b1 61 __ LDA (T8 + 0),y 
36d4 : f0 03 __ BEQ $36d9 ; (genmove.s316 + 0)
36d6 : 4c 96 3a JMP $3a96 ; (genmove.s315 + 0)
.s316:
36d9 : 38 __ __ SEC
36da : a5 57 __ LDA T3 + 0 
36dc : e9 01 __ SBC #$01
36de : 85 65 __ STA T10 + 0 
36e0 : a5 58 __ LDA T3 + 1 
36e2 : e9 00 __ SBC #$00
36e4 : 85 66 __ STA T10 + 1 
36e6 : cd c0 69 CMP $69c0 ; (mik + 1)
36e9 : d0 18 __ BNE $3703 ; (genmove.s317 + 0)
.s320:
36eb : a5 65 __ LDA T10 + 0 
36ed : cd bf 69 CMP $69bf ; (mik + 0)
36f0 : d0 11 __ BNE $3703 ; (genmove.s317 + 0)
.s318:
36f2 : a5 5a __ LDA T4 + 1 
36f4 : cd c2 69 CMP $69c2 ; (mjk + 1)
36f7 : d0 0a __ BNE $3703 ; (genmove.s317 + 0)
.s319:
36f9 : cc c1 69 CPY $69c1 ; (mjk + 0)
36fc : d0 05 __ BNE $3703 ; (genmove.s317 + 0)
.s351:
36fe : a9 00 __ LDA #$00
3700 : 4c 96 3a JMP $3a96 ; (genmove.s315 + 0)
.s317:
3703 : a5 43 __ LDA T0 + 0 
3705 : 0a __ __ ASL
3706 : aa __ __ TAX
3707 : a5 65 __ LDA T10 + 0 
3709 : 9d e6 cf STA $cfe6,x ; (ti[0] + 0)
370c : a5 66 __ LDA T10 + 1 
370e : 9d e7 cf STA $cfe7,x ; (ti[0] + 1)
3711 : 98 __ __ TYA
3712 : 9d e0 cf STA $cfe0,x ; (tj[0] + 0)
3715 : a5 5a __ LDA T4 + 1 
3717 : 9d e1 cf STA $cfe1,x ; (tj[0] + 1)
371a : e6 43 __ INC T0 + 0 
371c : a5 43 __ LDA T0 + 0 
371e : c5 78 __ CMP T22 + 0 
3720 : d0 03 __ BNE $3725 ; (genmove.s14 + 0)
3722 : 4c 8a 38 JMP $388a ; (genmove.s27 + 0)
.s14:
3725 : a5 58 __ LDA T3 + 1 
3727 : d0 06 __ BNE $372f ; (genmove.s352 + 0)
.s313:
3729 : a5 57 __ LDA T3 + 0 
372b : c9 12 __ CMP #$12
372d : f0 6b __ BEQ $379a ; (genmove.s17 + 0)
.s352:
372f : a4 59 __ LDY T4 + 0 
.s15:
3731 : 18 __ __ CLC
3732 : a9 61 __ LDA #$61
3734 : 65 1b __ ADC ACCU + 0 
3736 : 85 53 __ STA T1 + 0 
3738 : a9 68 __ LDA #$68
373a : 65 1c __ ADC ACCU + 1 
373c : 85 54 __ STA T1 + 1 
373e : 18 __ __ CLC
373f : a5 1b __ LDA ACCU + 0 
3741 : 69 13 __ ADC #$13
3743 : aa __ __ TAX
3744 : a5 1c __ LDA ACCU + 1 
3746 : 69 00 __ ADC #$00
3748 : 85 56 __ STA T2 + 1 
374a : b1 53 __ LDA (T1 + 0),y 
374c : f0 03 __ BEQ $3751 ; (genmove.s308 + 0)
374e : 4c 42 3a JMP $3a42 ; (genmove.s307 + 0)
.s308:
3751 : 18 __ __ CLC
3752 : a5 57 __ LDA T3 + 0 
3754 : 69 01 __ ADC #$01
3756 : 85 61 __ STA T8 + 0 
3758 : a5 58 __ LDA T3 + 1 
375a : 69 00 __ ADC #$00
375c : 85 62 __ STA T8 + 1 
375e : cd c0 69 CMP $69c0 ; (mik + 1)
3761 : d0 18 __ BNE $377b ; (genmove.s309 + 0)
.s312:
3763 : a5 61 __ LDA T8 + 0 
3765 : cd bf 69 CMP $69bf ; (mik + 0)
3768 : d0 11 __ BNE $377b ; (genmove.s309 + 0)
.s310:
376a : a5 5a __ LDA T4 + 1 
376c : cd c2 69 CMP $69c2 ; (mjk + 1)
376f : d0 0a __ BNE $377b ; (genmove.s309 + 0)
.s311:
3771 : cc c1 69 CPY $69c1 ; (mjk + 0)
3774 : d0 05 __ BNE $377b ; (genmove.s309 + 0)
.s353:
3776 : a9 00 __ LDA #$00
3778 : 4c 42 3a JMP $3a42 ; (genmove.s307 + 0)
.s309:
377b : a5 43 __ LDA T0 + 0 
377d : 0a __ __ ASL
377e : aa __ __ TAX
377f : a5 61 __ LDA T8 + 0 
3781 : 9d e6 cf STA $cfe6,x ; (ti[0] + 0)
3784 : a5 62 __ LDA T8 + 1 
3786 : 9d e7 cf STA $cfe7,x ; (ti[0] + 1)
3789 : 98 __ __ TYA
378a : 9d e0 cf STA $cfe0,x ; (tj[0] + 0)
378d : a5 5a __ LDA T4 + 1 
378f : 9d e1 cf STA $cfe1,x ; (tj[0] + 1)
3792 : e6 43 __ INC T0 + 0 
3794 : a5 43 __ LDA T0 + 0 
3796 : c5 78 __ CMP T22 + 0 
3798 : f0 88 __ BEQ $3722 ; (genmove.s317 + 31)
.s17:
379a : a4 59 __ LDY T4 + 0 
379c : f0 58 __ BEQ $37f6 ; (genmove.s21 + 0)
.s18:
379e : 18 __ __ CLC
379f : a9 4e __ LDA #$4e
37a1 : 65 1b __ ADC ACCU + 0 
37a3 : 85 55 __ STA T2 + 0 
37a5 : a9 68 __ LDA #$68
37a7 : 65 1c __ ADC ACCU + 1 
37a9 : 85 56 __ STA T2 + 1 
37ab : 88 __ __ DEY
37ac : b1 55 __ LDA (T2 + 0),y 
37ae : f0 03 __ BEQ $37b3 ; (genmove.s301 + 0)
37b0 : 4c fc 39 JMP $39fc ; (genmove.s300 + 0)
.s301:
37b3 : a5 58 __ LDA T3 + 1 
37b5 : cd c0 69 CMP $69c0 ; (mik + 1)
37b8 : d0 11 __ BNE $37cb ; (genmove.s302 + 0)
.s305:
37ba : a5 57 __ LDA T3 + 0 
37bc : cd bf 69 CMP $69bf ; (mik + 0)
37bf : d0 0a __ BNE $37cb ; (genmove.s302 + 0)
.s303:
37c1 : ad c2 69 LDA $69c2 ; (mjk + 1)
37c4 : d0 05 __ BNE $37cb ; (genmove.s302 + 0)
.s304:
37c6 : cc c1 69 CPY $69c1 ; (mjk + 0)
37c9 : f0 e5 __ BEQ $37b0 ; (genmove.s18 + 18)
.s302:
37cb : a5 43 __ LDA T0 + 0 
37cd : 0a __ __ ASL
37ce : aa __ __ TAX
37cf : a5 57 __ LDA T3 + 0 
37d1 : 9d e6 cf STA $cfe6,x ; (ti[0] + 0)
37d4 : a5 58 __ LDA T3 + 1 
37d6 : 9d e7 cf STA $cfe7,x ; (ti[0] + 1)
37d9 : 98 __ __ TYA
37da : 9d e0 cf STA $cfe0,x ; (tj[0] + 0)
37dd : a9 00 __ LDA #$00
37df : 9d e1 cf STA $cfe1,x ; (tj[0] + 1)
37e2 : e6 43 __ INC T0 + 0 
37e4 : a5 43 __ LDA T0 + 0 
37e6 : c5 78 __ CMP T22 + 0 
37e8 : d0 03 __ BNE $37ed ; (genmove.s20 + 0)
37ea : 4c 8a 38 JMP $388a ; (genmove.s27 + 0)
.s20:
37ed : a4 59 __ LDY T4 + 0 
37ef : c0 12 __ CPY #$12
37f1 : d0 03 __ BNE $37f6 ; (genmove.s21 + 0)
37f3 : 4c c0 28 JMP $28c0 ; (genmove.l9 + 0)
.s21:
37f6 : 18 __ __ CLC
37f7 : a9 4f __ LDA #$4f
37f9 : 65 1b __ ADC ACCU + 0 
37fb : 85 53 __ STA T1 + 0 
37fd : a9 68 __ LDA #$68
37ff : 65 1c __ ADC ACCU + 1 
3801 : 85 54 __ STA T1 + 1 
3803 : b1 53 __ LDA (T1 + 0),y 
3805 : c8 __ __ INY
3806 : 84 59 __ STY T4 + 0 
3808 : aa __ __ TAX
3809 : d0 18 __ BNE $3823 ; (genmove.s24 + 0)
.s25:
380b : a5 58 __ LDA T3 + 1 
380d : cd c0 69 CMP $69c0 ; (mik + 1)
3810 : d0 59 __ BNE $386b ; (genmove.s26 + 0)
.s298:
3812 : a5 57 __ LDA T3 + 0 
3814 : cd bf 69 CMP $69bf ; (mik + 0)
3817 : d0 52 __ BNE $386b ; (genmove.s26 + 0)
.s296:
3819 : ad c2 69 LDA $69c2 ; (mjk + 1)
381c : d0 4d __ BNE $386b ; (genmove.s26 + 0)
.s297:
381e : cc c1 69 CPY $69c1 ; (mjk + 0)
3821 : d0 48 __ BNE $386b ; (genmove.s26 + 0)
.s24:
3823 : e4 69 __ CPX T14 + 0 
3825 : d0 cc __ BNE $37f3 ; (genmove.s20 + 6)
.s22:
3827 : a4 5f __ LDY T7 + 0 
3829 : c8 __ __ INY
382a : b1 5d __ LDA (T6 + 0),y 
382c : d0 c5 __ BNE $37f3 ; (genmove.s20 + 6)
.s23:
382e : ad 2a 71 LDA $712a ; (osp + 0)
3831 : 85 53 __ STA T1 + 0 
3833 : 18 __ __ CLC
3834 : 69 01 __ ADC #$01
3836 : 8d 2a 71 STA $712a ; (osp + 0)
3839 : ad 2b 71 LDA $712b ; (osp + 1)
383c : 85 54 __ STA T1 + 1 
383e : 69 00 __ ADC #$00
3840 : 8d 2b 71 STA $712b ; (osp + 1)
3843 : 18 __ __ CLC
3844 : a5 1b __ LDA ACCU + 0 
3846 : 65 59 __ ADC T4 + 0 
3848 : a8 __ __ TAY
3849 : a5 1c __ LDA ACCU + 1 
384b : 69 00 __ ADC #$00
384d : aa __ __ TAX
384e : 06 53 __ ASL T1 + 0 
3850 : 26 54 __ ROL T1 + 1 
3852 : 18 __ __ CLC
3853 : a9 2c __ LDA #$2c
3855 : 65 53 __ ADC T1 + 0 
3857 : 85 53 __ STA T1 + 0 
3859 : a9 71 __ LDA #$71
385b : 65 54 __ ADC T1 + 1 
385d : 85 54 __ STA T1 + 1 
385f : 98 __ __ TYA
3860 : a0 00 __ LDY #$00
3862 : 91 53 __ STA (T1 + 0),y 
3864 : 8a __ __ TXA
3865 : c8 __ __ INY
3866 : 91 53 __ STA (T1 + 0),y 
3868 : 4c c0 28 JMP $28c0 ; (genmove.l9 + 0)
.s26:
386b : a5 43 __ LDA T0 + 0 
386d : 0a __ __ ASL
386e : aa __ __ TAX
386f : a5 57 __ LDA T3 + 0 
3871 : 9d e6 cf STA $cfe6,x ; (ti[0] + 0)
3874 : a5 58 __ LDA T3 + 1 
3876 : 9d e7 cf STA $cfe7,x ; (ti[0] + 1)
3879 : 98 __ __ TYA
387a : 9d e0 cf STA $cfe0,x ; (tj[0] + 0)
387d : a9 00 __ LDA #$00
387f : 9d e1 cf STA $cfe1,x ; (tj[0] + 1)
3882 : e6 43 __ INC T0 + 0 
3884 : a5 43 __ LDA T0 + 0 
3886 : c5 78 __ CMP T22 + 0 
3888 : d0 de __ BNE $3868 ; (genmove.s23 + 58)
.s27:
388a : c9 01 __ CMP #$01
388c : d0 03 __ BNE $3891 ; (genmove.s276 + 0)
388e : 4c cd 39 JMP $39cd ; (genmove.s28 + 0)
.s276:
3891 : aa __ __ TAX
3892 : d0 03 __ BNE $3897 ; (genmove.s277 + 0)
3894 : 4c d3 28 JMP $28d3 ; (genmove.l30 + 0)
.s277:
3897 : a9 00 __ LDA #$00
3899 : 85 55 __ STA T2 + 0 
.l278:
389b : 0a __ __ ASL
389c : 85 57 __ STA T3 + 0 
389e : a9 00 __ LDA #$00
38a0 : 85 59 __ STA T4 + 0 
.l279:
38a2 : a5 55 __ LDA T2 + 0 
38a4 : c5 59 __ CMP T4 + 0 
38a6 : d0 03 __ BNE $38ab ; (genmove.s280 + 0)
38a8 : 4c a9 39 JMP $39a9 ; (genmove.s286 + 0)
.s280:
38ab : a9 00 __ LDA #$00
38ad : 8d cb 69 STA $69cb ; (lib + 0)
38b0 : 8d cc 69 STA $69cc ; (lib + 1)
38b3 : a6 57 __ LDX T3 + 0 
38b5 : bd e6 cf LDA $cfe6,x ; (ti[0] + 0)
38b8 : 85 5b __ STA T5 + 0 
38ba : 85 0d __ STA P0 
38bc : bd e7 cf LDA $cfe7,x ; (ti[0] + 1)
38bf : 85 0e __ STA P1 
38c1 : bd e0 cf LDA $cfe0,x ; (tj[0] + 0)
38c4 : 85 5d __ STA T6 + 0 
38c6 : 85 0f __ STA P2 
38c8 : bd e1 cf LDA $cfe1,x ; (tj[0] + 1)
38cb : 85 10 __ STA P3 
38cd : ad c9 69 LDA $69c9 ; (mymove + 0)
38d0 : 85 53 __ STA T1 + 0 
38d2 : 85 11 __ STA P4 
38d4 : ad ca 69 LDA $69ca ; (mymove + 1)
38d7 : 85 12 __ STA P5 
38d9 : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
38dc : ad cb 69 LDA $69cb ; (lib + 0)
38df : 85 5f __ STA T7 + 0 
38e1 : ad cc 69 LDA $69cc ; (lib + 1)
38e4 : 30 c2 __ BMI $38a8 ; (genmove.l279 + 6)
.s295:
38e6 : 85 60 __ STA T7 + 1 
38e8 : 05 5f __ ORA T7 + 0 
38ea : f0 bc __ BEQ $38a8 ; (genmove.l279 + 6)
.s281:
38ec : a5 69 __ LDA T14 + 0 
38ee : 85 11 __ STA P4 
38f0 : a9 00 __ LDA #$00
38f2 : 85 12 __ STA P5 
38f4 : 8d cb 69 STA $69cb ; (lib + 0)
38f7 : 8d cc 69 STA $69cc ; (lib + 1)
38fa : a5 0d __ LDA P0 
38fc : 85 1b __ STA ACCU + 0 
38fe : a5 0e __ LDA P1 
3900 : 85 1c __ STA ACCU + 1 
3902 : a9 13 __ LDA #$13
3904 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3907 : 18 __ __ CLC
3908 : a9 4e __ LDA #$4e
390a : 65 1b __ ADC ACCU + 0 
390c : 85 61 __ STA T8 + 0 
390e : a9 68 __ LDA #$68
3910 : 65 1c __ ADC ACCU + 1 
3912 : 85 62 __ STA T8 + 1 
3914 : a5 53 __ LDA T1 + 0 
3916 : a4 0f __ LDY P2 
3918 : 91 61 __ STA (T8 + 0),y 
391a : a5 59 __ LDA T4 + 0 
391c : 0a __ __ ASL
391d : aa __ __ TAX
391e : bd e6 cf LDA $cfe6,x ; (ti[0] + 0)
3921 : 85 0d __ STA P0 
3923 : bd e7 cf LDA $cfe7,x ; (ti[0] + 1)
3926 : 85 0e __ STA P1 
3928 : bd e0 cf LDA $cfe0,x ; (tj[0] + 0)
392b : 85 0f __ STA P2 
392d : bd e1 cf LDA $cfe1,x ; (tj[0] + 1)
3930 : 85 10 __ STA P3 
3932 : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
3935 : a9 00 __ LDA #$00
3937 : a4 5d __ LDY T6 + 0 
3939 : 91 61 __ STA (T8 + 0),y 
393b : a5 60 __ LDA T7 + 1 
393d : d0 0f __ BNE $394e ; (genmove.s288 + 0)
.s294:
393f : a6 5f __ LDX T7 + 0 
3941 : ca __ __ DEX
3942 : d0 0a __ BNE $394e ; (genmove.s288 + 0)
.s282:
3944 : ad cc 69 LDA $69cc ; (lib + 1)
3947 : 30 05 __ BMI $394e ; (genmove.s288 + 0)
.s293:
3949 : 0d cb 69 ORA $69cb ; (lib + 0)
394c : d0 74 __ BNE $39c2 ; (genmove.s283 + 0)
.s288:
394e : ad cb 69 LDA $69cb ; (lib + 0)
3951 : 0a __ __ ASL
3952 : 85 07 __ STA WORK + 4 
3954 : ad cc 69 LDA $69cc ; (lib + 1)
3957 : 2a __ __ ROL
3958 : 06 07 __ ASL WORK + 4 
395a : 2a __ __ ROL
395b : aa __ __ TAX
395c : 18 __ __ CLC
395d : a5 07 __ LDA WORK + 4 
395f : 6d cb 69 ADC $69cb ; (lib + 0)
3962 : 85 1b __ STA ACCU + 0 
3964 : 8a __ __ TXA
3965 : 6d cc 69 ADC $69cc ; (lib + 1)
3968 : 06 1b __ ASL ACCU + 0 
396a : 2a __ __ ROL
396b : 06 1b __ ASL ACCU + 0 
396d : 2a __ __ ROL
396e : 85 1c __ STA ACCU + 1 
3970 : 38 __ __ SEC
3971 : a9 78 __ LDA #$78
3973 : e5 1b __ SBC ACCU + 0 
3975 : 85 43 __ STA T0 + 0 
3977 : a9 00 __ LDA #$00
3979 : e5 1c __ SBC ACCU + 1 
397b : 85 44 __ STA T0 + 1 
397d : a5 74 __ LDA T19 + 1 
397f : c5 44 __ CMP T0 + 1 
3981 : d0 08 __ BNE $398b ; (genmove.s292 + 0)
.s289:
3983 : a5 73 __ LDA T19 + 0 
3985 : c5 43 __ CMP T0 + 0 
.s290:
3987 : 90 08 __ BCC $3991 ; (genmove.s285 + 0)
3989 : b0 1e __ BCS $39a9 ; (genmove.s286 + 0)
.s292:
398b : 45 44 __ EOR T0 + 1 
398d : 10 f8 __ BPL $3987 ; (genmove.s290 + 0)
.s291:
398f : 90 18 __ BCC $39a9 ; (genmove.s286 + 0)
.s285:
3991 : 8c ec cf STY $cfec ; (tj + 0)
3994 : a5 5b __ LDA T5 + 0 
3996 : 8d ee cf STA $cfee ; (ti + 0)
3999 : a9 00 __ LDA #$00
399b : 8d ef cf STA $cfef ; (ti + 1)
399e : 8d ed cf STA $cfed ; (tj + 1)
39a1 : a5 43 __ LDA T0 + 0 
39a3 : 85 73 __ STA T19 + 0 
39a5 : a5 44 __ LDA T0 + 1 
39a7 : 85 74 __ STA T19 + 1 
.s286:
39a9 : e6 59 __ INC T4 + 0 
39ab : a5 59 __ LDA T4 + 0 
39ad : c5 78 __ CMP T22 + 0 
39af : b0 03 __ BCS $39b4 ; (genmove.s287 + 0)
39b1 : 4c a2 38 JMP $38a2 ; (genmove.l279 + 0)
.s287:
39b4 : e6 55 __ INC T2 + 0 
39b6 : a5 55 __ LDA T2 + 0 
39b8 : c5 78 __ CMP T22 + 0 
39ba : b0 03 __ BCS $39bf ; (genmove.s287 + 11)
39bc : 4c 9b 38 JMP $389b ; (genmove.l278 + 0)
39bf : 4c d3 28 JMP $28d3 ; (genmove.l30 + 0)
.s283:
39c2 : 24 74 __ BIT T19 + 1 
39c4 : 10 e3 __ BPL $39a9 ; (genmove.s286 + 0)
.s284:
39c6 : 86 43 __ STX T0 + 0 
39c8 : 86 44 __ STX T0 + 1 
39ca : 4c 91 39 JMP $3991 ; (genmove.s285 + 0)
.s28:
39cd : a5 74 __ LDA T19 + 1 
39cf : 30 08 __ BMI $39d9 ; (genmove.s29 + 0)
.s275:
39d1 : d0 ec __ BNE $39bf ; (genmove.s287 + 11)
.s274:
39d3 : a5 73 __ LDA T19 + 0 
39d5 : c9 78 __ CMP #$78
39d7 : b0 e6 __ BCS $39bf ; (genmove.s287 + 11)
.s29:
39d9 : ad e6 cf LDA $cfe6 ; (ti[0] + 0)
39dc : 8d ee cf STA $cfee ; (ti + 0)
39df : ad e7 cf LDA $cfe7 ; (ti[0] + 1)
39e2 : 8d ef cf STA $cfef ; (ti + 1)
39e5 : ad e0 cf LDA $cfe0 ; (tj[0] + 0)
39e8 : 8d ec cf STA $cfec ; (tj + 0)
39eb : ad e1 cf LDA $cfe1 ; (tj[0] + 1)
39ee : 8d ed cf STA $cfed ; (tj + 1)
39f1 : a9 78 __ LDA #$78
39f3 : 85 73 __ STA T19 + 0 
39f5 : a9 00 __ LDA #$00
39f7 : 85 74 __ STA T19 + 1 
39f9 : 4c d3 28 JMP $28d3 ; (genmove.l30 + 0)
.s300:
39fc : c5 69 __ CMP T14 + 0 
39fe : f0 03 __ BEQ $3a03 ; (genmove.s19 + 0)
3a00 : 4c ed 37 JMP $37ed ; (genmove.s20 + 0)
.s19:
3a03 : b1 5d __ LDA (T6 + 0),y 
3a05 : d0 f9 __ BNE $3a00 ; (genmove.s300 + 4)
.s299:
3a07 : ad 2a 71 LDA $712a ; (osp + 0)
3a0a : 85 55 __ STA T2 + 0 
3a0c : 69 00 __ ADC #$00
3a0e : 8d 2a 71 STA $712a ; (osp + 0)
3a11 : ad 2b 71 LDA $712b ; (osp + 1)
3a14 : 85 56 __ STA T2 + 1 
3a16 : 69 00 __ ADC #$00
3a18 : 8d 2b 71 STA $712b ; (osp + 1)
3a1b : 98 __ __ TYA
3a1c : 18 __ __ CLC
3a1d : 65 1b __ ADC ACCU + 0 
3a1f : a8 __ __ TAY
3a20 : a5 1c __ LDA ACCU + 1 
3a22 : 69 00 __ ADC #$00
3a24 : aa __ __ TAX
3a25 : 06 55 __ ASL T2 + 0 
3a27 : 26 56 __ ROL T2 + 1 
3a29 : 18 __ __ CLC
3a2a : a9 2c __ LDA #$2c
3a2c : 65 55 __ ADC T2 + 0 
3a2e : 85 55 __ STA T2 + 0 
3a30 : a9 71 __ LDA #$71
3a32 : 65 56 __ ADC T2 + 1 
3a34 : 85 56 __ STA T2 + 1 
3a36 : 98 __ __ TYA
3a37 : a0 00 __ LDY #$00
3a39 : 91 55 __ STA (T2 + 0),y 
3a3b : 8a __ __ TXA
3a3c : c8 __ __ INY
3a3d : 91 55 __ STA (T2 + 0),y 
3a3f : 4c ed 37 JMP $37ed ; (genmove.s20 + 0)
.s307:
3a42 : c5 69 __ CMP T14 + 0 
3a44 : f0 03 __ BEQ $3a49 ; (genmove.s16 + 0)
3a46 : 4c 9a 37 JMP $379a ; (genmove.s17 + 0)
.s16:
3a49 : 18 __ __ CLC
3a4a : a9 d4 __ LDA #$d4
3a4c : 65 1b __ ADC ACCU + 0 
3a4e : 85 53 __ STA T1 + 0 
3a50 : a9 6f __ LDA #$6f
3a52 : 65 1c __ ADC ACCU + 1 
3a54 : 85 54 __ STA T1 + 1 
3a56 : b1 53 __ LDA (T1 + 0),y 
3a58 : d0 ec __ BNE $3a46 ; (genmove.s307 + 4)
.s306:
3a5a : ad 2a 71 LDA $712a ; (osp + 0)
3a5d : 85 53 __ STA T1 + 0 
3a5f : 18 __ __ CLC
3a60 : 69 01 __ ADC #$01
3a62 : 8d 2a 71 STA $712a ; (osp + 0)
3a65 : ad 2b 71 LDA $712b ; (osp + 1)
3a68 : 85 54 __ STA T1 + 1 
3a6a : 69 00 __ ADC #$00
3a6c : 8d 2b 71 STA $712b ; (osp + 1)
3a6f : 8a __ __ TXA
3a70 : 18 __ __ CLC
3a71 : 65 59 __ ADC T4 + 0 
3a73 : aa __ __ TAX
3a74 : 90 02 __ BCC $3a78 ; (genmove.s334 + 0)
.s333:
3a76 : e6 56 __ INC T2 + 1 
.s334:
3a78 : 06 53 __ ASL T1 + 0 
3a7a : 26 54 __ ROL T1 + 1 
3a7c : 18 __ __ CLC
3a7d : a9 2c __ LDA #$2c
3a7f : 65 53 __ ADC T1 + 0 
3a81 : 85 53 __ STA T1 + 0 
3a83 : a9 71 __ LDA #$71
3a85 : 65 54 __ ADC T1 + 1 
3a87 : 85 54 __ STA T1 + 1 
3a89 : 8a __ __ TXA
3a8a : a0 00 __ LDY #$00
3a8c : 91 53 __ STA (T1 + 0),y 
3a8e : a5 56 __ LDA T2 + 1 
3a90 : c8 __ __ INY
3a91 : 91 53 __ STA (T1 + 0),y 
3a93 : 4c 9a 37 JMP $379a ; (genmove.s17 + 0)
.s315:
3a96 : c5 69 __ CMP T14 + 0 
3a98 : f0 03 __ BEQ $3a9d ; (genmove.s13 + 0)
3a9a : 4c 25 37 JMP $3725 ; (genmove.s14 + 0)
.s13:
3a9d : 18 __ __ CLC
3a9e : a9 ae __ LDA #$ae
3aa0 : 65 1b __ ADC ACCU + 0 
3aa2 : 85 61 __ STA T8 + 0 
3aa4 : a9 6f __ LDA #$6f
3aa6 : 65 1c __ ADC ACCU + 1 
3aa8 : 85 62 __ STA T8 + 1 
3aaa : b1 61 __ LDA (T8 + 0),y 
3aac : d0 ec __ BNE $3a9a ; (genmove.s315 + 4)
.s314:
3aae : a5 53 __ LDA T1 + 0 
3ab0 : 8d 2a 71 STA $712a ; (osp + 0)
3ab3 : a5 54 __ LDA T1 + 1 
3ab5 : 8d 2b 71 STA $712b ; (osp + 1)
3ab8 : 8a __ __ TXA
3ab9 : 18 __ __ CLC
3aba : 65 59 __ ADC T4 + 0 
3abc : a0 00 __ LDY #$00
3abe : 91 55 __ STA (T2 + 0),y 
3ac0 : a5 64 __ LDA T9 + 1 
3ac2 : 69 00 __ ADC #$00
3ac4 : c8 __ __ INY
3ac5 : 91 55 __ STA (T2 + 0),y 
3ac7 : 4c 25 37 JMP $3725 ; (genmove.s14 + 0)
--------------------------------------------------------------------
eval: ; eval(i16)->void
;  50, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s1:
3aca : a2 07 __ LDX #$07
3acc : b5 53 __ LDA T2 + 0,x 
3ace : 9d f0 cf STA $cff0,x ; (eval@stack + 0)
3ad1 : ca __ __ DEX
3ad2 : 10 f8 __ BPL $3acc ; (eval.s1 + 2)
.s4:
3ad4 : a5 11 __ LDA P4 ; (color + 0)
3ad6 : 85 58 __ STA T5 + 0 
3ad8 : a9 4e __ LDA #$4e
3ada : 85 54 __ STA T3 + 0 
3adc : a9 68 __ LDA #$68
3ade : 85 55 __ STA T3 + 1 
3ae0 : a9 58 __ LDA #$58
3ae2 : 85 56 __ STA T4 + 0 
3ae4 : a9 6e __ LDA #$6e
3ae6 : 85 57 __ STA T4 + 1 
3ae8 : a5 12 __ LDA P5 ; (color + 1)
3aea : 85 59 __ STA T5 + 1 
3aec : a9 00 __ LDA #$00
3aee : 85 53 __ STA T2 + 0 
3af0 : 85 0e __ STA P1 
3af2 : 85 10 __ STA P3 
3af4 : 85 12 __ STA P5 ; (color + 1)
.l5:
3af6 : a9 00 __ LDA #$00
3af8 : 85 5a __ STA T6 + 0 
3afa : a5 59 __ LDA T5 + 1 
3afc : d0 22 __ BNE $3b20 ; (eval.l8 + 0)
.s10:
3afe : a5 58 __ LDA T5 + 0 
3b00 : a4 5a __ LDY T6 + 0 
3b02 : d1 54 __ CMP (T3 + 0),y 
3b04 : d0 1a __ BNE $3b20 ; (eval.l8 + 0)
.s7:
3b06 : 84 0f __ STY P2 
3b08 : 85 11 __ STA P4 ; (color + 0)
3b0a : a5 53 __ LDA T2 + 0 
3b0c : 85 0d __ STA P0 
3b0e : a9 00 __ LDA #$00
3b10 : 8d cb 69 STA $69cb ; (lib + 0)
3b13 : 8d cc 69 STA $69cc ; (lib + 1)
3b16 : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
3b19 : ad cb 69 LDA $69cb ; (lib + 0)
3b1c : a4 5a __ LDY T6 + 0 
3b1e : 91 56 __ STA (T4 + 0),y 
.l8:
3b20 : e6 5a __ INC T6 + 0 
3b22 : a5 5a __ LDA T6 + 0 
3b24 : c9 13 __ CMP #$13
3b26 : b0 06 __ BCS $3b2e ; (eval.s9 + 0)
.s6:
3b28 : a5 59 __ LDA T5 + 1 
3b2a : d0 f4 __ BNE $3b20 ; (eval.l8 + 0)
3b2c : f0 d0 __ BEQ $3afe ; (eval.s10 + 0)
.s9:
3b2e : a5 56 __ LDA T4 + 0 
3b30 : 69 12 __ ADC #$12
3b32 : 85 56 __ STA T4 + 0 
3b34 : 90 03 __ BCC $3b39 ; (eval.s12 + 0)
.s11:
3b36 : e6 57 __ INC T4 + 1 
3b38 : 18 __ __ CLC
.s12:
3b39 : a5 54 __ LDA T3 + 0 
3b3b : 69 13 __ ADC #$13
3b3d : 85 54 __ STA T3 + 0 
3b3f : 90 02 __ BCC $3b43 ; (eval.s14 + 0)
.s13:
3b41 : e6 55 __ INC T3 + 1 
.s14:
3b43 : e6 53 __ INC T2 + 0 
3b45 : a5 53 __ LDA T2 + 0 
3b47 : c9 13 __ CMP #$13
3b49 : 90 ab __ BCC $3af6 ; (eval.l5 + 0)
.s3:
3b4b : a2 07 __ LDX #$07
3b4d : bd f0 cf LDA $cff0,x ; (eval@stack + 0)
3b50 : 95 53 __ STA T2 + 0,x 
3b52 : ca __ __ DEX
3b53 : 10 f8 __ BPL $3b4d ; (eval.s3 + 2)
3b55 : 60 __ __ RTS
--------------------------------------------------------------------
countlib@proxy: ; countlib@proxy
3b56 : a5 6d __ LDA $6d 
3b58 : 85 0d __ STA P0 
3b5a : a5 6e __ LDA $6e 
3b5c : 85 0e __ STA P1 
3b5e : a5 5d __ LDA $5d 
3b60 : 85 11 __ STA P4 
--------------------------------------------------------------------
countlib: ; countlib(i16,i16,i16)->void
;  44, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s4:
3b62 : a9 cd __ LDA #$cd
3b64 : 85 1b __ STA ACCU + 0 
3b66 : a9 69 __ LDA #$69
3b68 : 85 1c __ STA ACCU + 1 
.l5:
3b6a : a9 01 __ LDA #$01
3b6c : a0 12 __ LDY #$12
.l45:
3b6e : 91 1b __ STA (ACCU + 0),y 
3b70 : 88 __ __ DEY
3b71 : 10 fb __ BPL $3b6e ; (countlib.l45 + 0)
.s44:
3b73 : 18 __ __ CLC
3b74 : a5 1b __ LDA ACCU + 0 
3b76 : 69 13 __ ADC #$13
3b78 : 85 1b __ STA ACCU + 0 
3b7a : 90 02 __ BCC $3b7e ; (countlib.s47 + 0)
.s46:
3b7c : e6 1c __ INC ACCU + 1 
.s47:
3b7e : c9 36 __ CMP #$36
3b80 : d0 e8 __ BNE $3b6a ; (countlib.l5 + 0)
.s43:
3b82 : a5 1c __ LDA ACCU + 1 
3b84 : c9 6b __ CMP #$6b
3b86 : d0 e2 __ BNE $3b6a ; (countlib.l5 + 0)
.s6:
3b88 : a9 01 __ LDA #$01
3b8a : 8d 36 6b STA $6b36 ; (csp + 0)
3b8d : a9 00 __ LDA #$00
3b8f : 8d 37 6b STA $6b37 ; (csp + 1)
3b92 : a5 0d __ LDA P0 ; (m + 0)
3b94 : 85 1b __ STA ACCU + 0 
3b96 : a5 0e __ LDA P1 ; (m + 1)
3b98 : 85 1c __ STA ACCU + 1 
3b9a : a9 13 __ LDA #$13
3b9c : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3b9f : 18 __ __ CLC
3ba0 : a5 0f __ LDA P2 ; (n + 0)
3ba2 : 65 1b __ ADC ACCU + 0 
3ba4 : 8d 38 6b STA $6b38 ; (cstack[0] + 0)
3ba7 : a5 10 __ LDA P3 ; (n + 1)
3ba9 : 65 1c __ ADC ACCU + 1 
3bab : 8d 39 6b STA $6b39 ; (cstack[0] + 1)
.l7:
3bae : ad 36 6b LDA $6b36 ; (csp + 0)
3bb1 : 85 43 __ STA T1 + 0 
3bb3 : ad 37 6b LDA $6b37 ; (csp + 1)
3bb6 : 10 01 __ BPL $3bb9 ; (countlib.s42 + 0)
3bb8 : 60 __ __ RTS
.s42:
3bb9 : 85 44 __ STA T1 + 1 
3bbb : 05 43 __ ORA T1 + 0 
3bbd : d0 01 __ BNE $3bc0 ; (countlib.s8 + 0)
3bbf : 60 __ __ RTS
.s8:
3bc0 : 18 __ __ CLC
3bc1 : a5 43 __ LDA T1 + 0 
3bc3 : 69 ff __ ADC #$ff
3bc5 : 8d 36 6b STA $6b36 ; (csp + 0)
3bc8 : a5 44 __ LDA T1 + 1 
3bca : 69 ff __ ADC #$ff
3bcc : 8d 37 6b STA $6b37 ; (csp + 1)
3bcf : a5 43 __ LDA T1 + 0 
3bd1 : 0a __ __ ASL
3bd2 : a8 __ __ TAY
3bd3 : a5 44 __ LDA T1 + 1 
3bd5 : 2a __ __ ROL
3bd6 : aa __ __ TAX
3bd7 : 98 __ __ TYA
3bd8 : 18 __ __ CLC
3bd9 : 69 36 __ ADC #$36
3bdb : 85 45 __ STA T2 + 0 
3bdd : 8a __ __ TXA
3bde : 69 6b __ ADC #$6b
3be0 : 85 46 __ STA T2 + 1 
3be2 : a0 00 __ LDY #$00
3be4 : 84 04 __ STY WORK + 1 
3be6 : b1 45 __ LDA (T2 + 0),y 
3be8 : 85 1b __ STA ACCU + 0 
3bea : c8 __ __ INY
3beb : b1 45 __ LDA (T2 + 0),y 
3bed : 85 1c __ STA ACCU + 1 
3bef : 20 fa 51 JSR $51fa ; (divmods16@proxy + 0)
3bf2 : a5 1b __ LDA ACCU + 0 
3bf4 : 85 47 __ STA T3 + 0 
3bf6 : a5 1c __ LDA ACCU + 1 
3bf8 : 85 48 __ STA T3 + 1 
3bfa : a5 05 __ LDA WORK + 2 
3bfc : 85 49 __ STA T4 + 0 
3bfe : a9 13 __ LDA #$13
3c00 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3c03 : 18 __ __ CLC
3c04 : a9 cd __ LDA #$cd
3c06 : 65 1b __ ADC ACCU + 0 
3c08 : 85 4a __ STA T6 + 0 
3c0a : a9 69 __ LDA #$69
3c0c : 65 1c __ ADC ACCU + 1 
3c0e : 85 4b __ STA T6 + 1 
3c10 : a4 49 __ LDY T4 + 0 
3c12 : b1 4a __ LDA (T6 + 0),y 
3c14 : f0 98 __ BEQ $3bae ; (countlib.l7 + 0)
.s9:
3c16 : 84 4c __ STY T7 + 0 
3c18 : a9 00 __ LDA #$00
3c1a : 91 4a __ STA (T6 + 0),y 
3c1c : a5 47 __ LDA T3 + 0 
3c1e : 05 48 __ ORA T3 + 1 
3c20 : f0 76 __ BEQ $3c98 ; (countlib.s15 + 0)
.s10:
3c22 : 18 __ __ CLC
3c23 : a9 3b __ LDA #$3b
3c25 : 65 1b __ ADC ACCU + 0 
3c27 : 85 4d __ STA T8 + 0 
3c29 : a9 68 __ LDA #$68
3c2b : 65 1c __ ADC ACCU + 1 
3c2d : 85 4e __ STA T8 + 1 
3c2f : 38 __ __ SEC
3c30 : a5 1b __ LDA ACCU + 0 
3c32 : e9 13 __ SBC #$13
3c34 : aa __ __ TAX
3c35 : a5 1c __ LDA ACCU + 1 
3c37 : e9 00 __ SBC #$00
3c39 : 85 50 __ STA T9 + 1 
3c3b : b1 4d __ LDA (T8 + 0),y 
3c3d : 85 4d __ STA T8 + 0 
3c3f : d0 14 __ BNE $3c55 ; (countlib.s11 + 0)
.s40:
3c41 : 18 __ __ CLC
3c42 : a9 ba __ LDA #$ba
3c44 : 65 1b __ ADC ACCU + 0 
3c46 : 85 51 __ STA T10 + 0 
3c48 : a9 69 __ LDA #$69
3c4a : 65 1c __ ADC ACCU + 1 
3c4c : 85 52 __ STA T10 + 1 
3c4e : b1 51 __ LDA (T10 + 0),y 
3c50 : f0 03 __ BEQ $3c55 ; (countlib.s11 + 0)
3c52 : 4c 27 3e JMP $3e27 ; (countlib.s41 + 0)
.s11:
3c55 : a5 12 __ LDA P5 ; (color + 1)
3c57 : d0 30 __ BNE $3c89 ; (countlib.s14 + 0)
.s39:
3c59 : a5 4d __ LDA T8 + 0 
3c5b : c5 11 __ CMP P4 ; (color + 0)
3c5d : d0 2a __ BNE $3c89 ; (countlib.s14 + 0)
.s12:
3c5f : 18 __ __ CLC
3c60 : a9 ba __ LDA #$ba
3c62 : 65 1b __ ADC ACCU + 0 
3c64 : 85 4d __ STA T8 + 0 
3c66 : a9 69 __ LDA #$69
3c68 : 65 1c __ ADC ACCU + 1 
3c6a : 85 4e __ STA T8 + 1 
3c6c : b1 4d __ LDA (T8 + 0),y 
3c6e : f0 19 __ BEQ $3c89 ; (countlib.s14 + 0)
.s13:
3c70 : a5 43 __ LDA T1 + 0 
3c72 : 8d 36 6b STA $6b36 ; (csp + 0)
3c75 : a5 44 __ LDA T1 + 1 
3c77 : 8d 37 6b STA $6b37 ; (csp + 1)
3c7a : 8a __ __ TXA
3c7b : 18 __ __ CLC
3c7c : 65 49 __ ADC T4 + 0 
3c7e : a0 00 __ LDY #$00
3c80 : 91 45 __ STA (T2 + 0),y 
3c82 : a5 50 __ LDA T9 + 1 
3c84 : 69 00 __ ADC #$00
3c86 : c8 __ __ INY
3c87 : 91 45 __ STA (T2 + 0),y 
.s14:
3c89 : a5 48 __ LDA T3 + 1 
3c8b : d0 09 __ BNE $3c96 ; (countlib.s54 + 0)
.s38:
3c8d : a5 47 __ LDA T3 + 0 
3c8f : c9 12 __ CMP #$12
3c91 : d0 03 __ BNE $3c96 ; (countlib.s54 + 0)
3c93 : 4c 1f 3d JMP $3d1f ; (countlib.s19 + 0)
.s54:
3c96 : a4 49 __ LDY T4 + 0 
.s15:
3c98 : 18 __ __ CLC
3c99 : a9 61 __ LDA #$61
3c9b : 65 1b __ ADC ACCU + 0 
3c9d : 85 43 __ STA T1 + 0 
3c9f : a9 68 __ LDA #$68
3ca1 : 65 1c __ ADC ACCU + 1 
3ca3 : 85 44 __ STA T1 + 1 
3ca5 : 18 __ __ CLC
3ca6 : a5 1b __ LDA ACCU + 0 
3ca8 : 69 13 __ ADC #$13
3caa : aa __ __ TAX
3cab : a5 1c __ LDA ACCU + 1 
3cad : 69 00 __ ADC #$00
3caf : 85 46 __ STA T2 + 1 
3cb1 : b1 43 __ LDA (T1 + 0),y 
3cb3 : 85 43 __ STA T1 + 0 
3cb5 : d0 14 __ BNE $3ccb ; (countlib.s16 + 0)
.s36:
3cb7 : 18 __ __ CLC
3cb8 : a9 e0 __ LDA #$e0
3cba : 65 1b __ ADC ACCU + 0 
3cbc : 85 47 __ STA T3 + 0 
3cbe : a9 69 __ LDA #$69
3cc0 : 65 1c __ ADC ACCU + 1 
3cc2 : 85 48 __ STA T3 + 1 
3cc4 : b1 47 __ LDA (T3 + 0),y 
3cc6 : f0 03 __ BEQ $3ccb ; (countlib.s16 + 0)
3cc8 : 4c 15 3e JMP $3e15 ; (countlib.s37 + 0)
.s16:
3ccb : a5 12 __ LDA P5 ; (color + 1)
3ccd : d0 50 __ BNE $3d1f ; (countlib.s19 + 0)
.s35:
3ccf : a5 43 __ LDA T1 + 0 
3cd1 : c5 11 __ CMP P4 ; (color + 0)
3cd3 : d0 4a __ BNE $3d1f ; (countlib.s19 + 0)
.s17:
3cd5 : 18 __ __ CLC
3cd6 : a9 e0 __ LDA #$e0
3cd8 : 65 1b __ ADC ACCU + 0 
3cda : 85 43 __ STA T1 + 0 
3cdc : a9 69 __ LDA #$69
3cde : 65 1c __ ADC ACCU + 1 
3ce0 : 85 44 __ STA T1 + 1 
3ce2 : b1 43 __ LDA (T1 + 0),y 
3ce4 : f0 39 __ BEQ $3d1f ; (countlib.s19 + 0)
.s18:
3ce6 : ad 36 6b LDA $6b36 ; (csp + 0)
3ce9 : 85 43 __ STA T1 + 0 
3ceb : 18 __ __ CLC
3cec : 69 01 __ ADC #$01
3cee : 8d 36 6b STA $6b36 ; (csp + 0)
3cf1 : ad 37 6b LDA $6b37 ; (csp + 1)
3cf4 : 85 44 __ STA T1 + 1 
3cf6 : 69 00 __ ADC #$00
3cf8 : 8d 37 6b STA $6b37 ; (csp + 1)
3cfb : 8a __ __ TXA
3cfc : 18 __ __ CLC
3cfd : 65 49 __ ADC T4 + 0 
3cff : aa __ __ TAX
3d00 : 90 02 __ BCC $3d04 ; (countlib.s51 + 0)
.s50:
3d02 : e6 46 __ INC T2 + 1 
.s51:
3d04 : 06 43 __ ASL T1 + 0 
3d06 : 26 44 __ ROL T1 + 1 
3d08 : 18 __ __ CLC
3d09 : a9 38 __ LDA #$38
3d0b : 65 43 __ ADC T1 + 0 
3d0d : 85 43 __ STA T1 + 0 
3d0f : a9 6b __ LDA #$6b
3d11 : 65 44 __ ADC T1 + 1 
3d13 : 85 44 __ STA T1 + 1 
3d15 : 8a __ __ TXA
3d16 : a0 00 __ LDY #$00
3d18 : 91 43 __ STA (T1 + 0),y 
3d1a : a5 46 __ LDA T2 + 1 
3d1c : c8 __ __ INY
3d1d : 91 43 __ STA (T1 + 0),y 
.s19:
3d1f : a4 49 __ LDY T4 + 0 
3d21 : f0 6a __ BEQ $3d8d ; (countlib.s25 + 0)
.s20:
3d23 : 18 __ __ CLC
3d24 : a9 4e __ LDA #$4e
3d26 : 65 1b __ ADC ACCU + 0 
3d28 : 85 45 __ STA T2 + 0 
3d2a : a9 68 __ LDA #$68
3d2c : 65 1c __ ADC ACCU + 1 
3d2e : 85 46 __ STA T2 + 1 
3d30 : 88 __ __ DEY
3d31 : b1 45 __ LDA (T2 + 0),y 
3d33 : 85 45 __ STA T2 + 0 
3d35 : d0 07 __ BNE $3d3e ; (countlib.s21 + 0)
.s33:
3d37 : b1 4a __ LDA (T6 + 0),y 
3d39 : f0 03 __ BEQ $3d3e ; (countlib.s21 + 0)
3d3b : 4c 03 3e JMP $3e03 ; (countlib.s34 + 0)
.s21:
3d3e : a5 12 __ LDA P5 ; (color + 1)
3d40 : d0 42 __ BNE $3d84 ; (countlib.s24 + 0)
.s32:
3d42 : a5 45 __ LDA T2 + 0 
3d44 : c5 11 __ CMP P4 ; (color + 0)
3d46 : d0 3c __ BNE $3d84 ; (countlib.s24 + 0)
.s22:
3d48 : b1 4a __ LDA (T6 + 0),y 
3d4a : f0 38 __ BEQ $3d84 ; (countlib.s24 + 0)
.s23:
3d4c : ad 36 6b LDA $6b36 ; (csp + 0)
3d4f : 85 45 __ STA T2 + 0 
3d51 : 69 00 __ ADC #$00
3d53 : 8d 36 6b STA $6b36 ; (csp + 0)
3d56 : ad 37 6b LDA $6b37 ; (csp + 1)
3d59 : 85 46 __ STA T2 + 1 
3d5b : 69 00 __ ADC #$00
3d5d : 8d 37 6b STA $6b37 ; (csp + 1)
3d60 : 98 __ __ TYA
3d61 : 18 __ __ CLC
3d62 : 65 1b __ ADC ACCU + 0 
3d64 : a8 __ __ TAY
3d65 : a5 1c __ LDA ACCU + 1 
3d67 : 69 00 __ ADC #$00
3d69 : aa __ __ TAX
3d6a : 06 45 __ ASL T2 + 0 
3d6c : 26 46 __ ROL T2 + 1 
3d6e : 18 __ __ CLC
3d6f : a9 38 __ LDA #$38
3d71 : 65 45 __ ADC T2 + 0 
3d73 : 85 45 __ STA T2 + 0 
3d75 : a9 6b __ LDA #$6b
3d77 : 65 46 __ ADC T2 + 1 
3d79 : 85 46 __ STA T2 + 1 
3d7b : 98 __ __ TYA
3d7c : a0 00 __ LDY #$00
3d7e : 91 45 __ STA (T2 + 0),y 
3d80 : 8a __ __ TXA
3d81 : c8 __ __ INY
3d82 : 91 45 __ STA (T2 + 0),y 
.s24:
3d84 : a4 49 __ LDY T4 + 0 
3d86 : c0 12 __ CPY #$12
3d88 : d0 03 __ BNE $3d8d ; (countlib.s25 + 0)
3d8a : 4c ae 3b JMP $3bae ; (countlib.l7 + 0)
.s25:
3d8d : 18 __ __ CLC
3d8e : a9 4f __ LDA #$4f
3d90 : 65 1b __ ADC ACCU + 0 
3d92 : 85 43 __ STA T1 + 0 
3d94 : a9 68 __ LDA #$68
3d96 : 65 1c __ ADC ACCU + 1 
3d98 : 85 44 __ STA T1 + 1 
3d9a : b1 43 __ LDA (T1 + 0),y 
3d9c : c8 __ __ INY
3d9d : 84 49 __ STY T4 + 0 
3d9f : aa __ __ TAX
3da0 : d0 15 __ BNE $3db7 ; (countlib.s26 + 0)
.s30:
3da2 : a4 4c __ LDY T7 + 0 
3da4 : c8 __ __ INY
3da5 : b1 4a __ LDA (T6 + 0),y 
3da7 : f0 0e __ BEQ $3db7 ; (countlib.s26 + 0)
.s31:
3da9 : 8a __ __ TXA
3daa : 91 4a __ STA (T6 + 0),y 
3dac : ee cb 69 INC $69cb ; (lib + 0)
3daf : d0 d9 __ BNE $3d8a ; (countlib.s24 + 6)
.s48:
3db1 : ee cc 69 INC $69cc ; (lib + 1)
3db4 : 4c ae 3b JMP $3bae ; (countlib.l7 + 0)
.s26:
3db7 : a5 12 __ LDA P5 ; (color + 1)
3db9 : d0 f9 __ BNE $3db4 ; (countlib.s48 + 3)
.s29:
3dbb : e4 11 __ CPX P4 ; (color + 0)
3dbd : d0 f5 __ BNE $3db4 ; (countlib.s48 + 3)
.s27:
3dbf : a4 4c __ LDY T7 + 0 
3dc1 : c8 __ __ INY
3dc2 : b1 4a __ LDA (T6 + 0),y 
3dc4 : f0 ee __ BEQ $3db4 ; (countlib.s48 + 3)
.s28:
3dc6 : ad 36 6b LDA $6b36 ; (csp + 0)
3dc9 : 85 43 __ STA T1 + 0 
3dcb : 18 __ __ CLC
3dcc : 69 01 __ ADC #$01
3dce : 8d 36 6b STA $6b36 ; (csp + 0)
3dd1 : ad 37 6b LDA $6b37 ; (csp + 1)
3dd4 : 85 44 __ STA T1 + 1 
3dd6 : 69 00 __ ADC #$00
3dd8 : 8d 37 6b STA $6b37 ; (csp + 1)
3ddb : 18 __ __ CLC
3ddc : a5 1b __ LDA ACCU + 0 
3dde : 65 49 __ ADC T4 + 0 
3de0 : a8 __ __ TAY
3de1 : a5 1c __ LDA ACCU + 1 
3de3 : 69 00 __ ADC #$00
3de5 : aa __ __ TAX
3de6 : 06 43 __ ASL T1 + 0 
3de8 : 26 44 __ ROL T1 + 1 
3dea : 18 __ __ CLC
3deb : a9 38 __ LDA #$38
3ded : 65 43 __ ADC T1 + 0 
3def : 85 43 __ STA T1 + 0 
3df1 : a9 6b __ LDA #$6b
3df3 : 65 44 __ ADC T1 + 1 
3df5 : 85 44 __ STA T1 + 1 
3df7 : 98 __ __ TYA
3df8 : a0 00 __ LDY #$00
3dfa : 91 43 __ STA (T1 + 0),y 
3dfc : 8a __ __ TXA
3dfd : c8 __ __ INY
3dfe : 91 43 __ STA (T1 + 0),y 
3e00 : 4c ae 3b JMP $3bae ; (countlib.l7 + 0)
.s34:
3e03 : a9 00 __ LDA #$00
3e05 : 91 4a __ STA (T6 + 0),y 
3e07 : ee cb 69 INC $69cb ; (lib + 0)
3e0a : f0 03 __ BEQ $3e0f ; (countlib.s49 + 0)
3e0c : 4c 84 3d JMP $3d84 ; (countlib.s24 + 0)
.s49:
3e0f : ee cc 69 INC $69cc ; (lib + 1)
3e12 : 4c 84 3d JMP $3d84 ; (countlib.s24 + 0)
.s37:
3e15 : a9 00 __ LDA #$00
3e17 : 91 47 __ STA (T3 + 0),y 
3e19 : ee cb 69 INC $69cb ; (lib + 0)
3e1c : f0 03 __ BEQ $3e21 ; (countlib.s52 + 0)
3e1e : 4c 1f 3d JMP $3d1f ; (countlib.s19 + 0)
.s52:
3e21 : ee cc 69 INC $69cc ; (lib + 1)
3e24 : 4c 1f 3d JMP $3d1f ; (countlib.s19 + 0)
.s41:
3e27 : a9 00 __ LDA #$00
3e29 : 91 51 __ STA (T10 + 0),y 
3e2b : ee cb 69 INC $69cb ; (lib + 0)
3e2e : f0 03 __ BEQ $3e33 ; (countlib.s53 + 0)
3e30 : 4c 89 3c JMP $3c89 ; (countlib.s14 + 0)
.s53:
3e33 : ee cc 69 INC $69cc ; (lib + 1)
3e36 : 4c 89 3c JMP $3c89 ; (countlib.s14 + 0)
.s3:
3e39 : 60 __ __ RTS
--------------------------------------------------------------------
initmark: ; initmark()->void
;  98, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s4:
3e3a : a9 c1 __ LDA #$c1
3e3c : 85 1b __ STA ACCU + 0 
3e3e : a9 6f __ LDA #$6f
3e40 : 85 1c __ STA ACCU + 1 
.l5:
3e42 : a9 00 __ LDA #$00
3e44 : a0 12 __ LDY #$12
.l8:
3e46 : 91 1b __ STA (ACCU + 0),y 
3e48 : 88 __ __ DEY
3e49 : 10 fb __ BPL $3e46 ; (initmark.l8 + 0)
.s7:
3e4b : 18 __ __ CLC
3e4c : a5 1b __ LDA ACCU + 0 
3e4e : 69 13 __ ADC #$13
3e50 : 85 1b __ STA ACCU + 0 
3e52 : 90 02 __ BCC $3e56 ; (initmark.s10 + 0)
.s9:
3e54 : e6 1c __ INC ACCU + 1 
.s10:
3e56 : c9 2a __ CMP #$2a
3e58 : d0 e8 __ BNE $3e42 ; (initmark.l5 + 0)
.s6:
3e5a : a5 1c __ LDA ACCU + 1 
3e5c : c9 71 __ CMP #$71
3e5e : d0 e2 __ BNE $3e42 ; (initmark.l5 + 0)
.s3:
3e60 : 60 __ __ RTS
--------------------------------------------------------------------
fval@proxy: ; fval@proxy
3e61 : ad cb 69 LDA $69cb ; (lib + 0)
3e64 : 85 0d __ STA P0 
3e66 : ad cc 69 LDA $69cc ; (lib + 1)
3e69 : 85 0e __ STA P1 
3e6b : a5 59 __ LDA $59 
3e6d : 85 0f __ STA P2 
--------------------------------------------------------------------
fval: ; fval(i16,i16)->i16
;  40, "/Users/emarti/Projects/gnugo-c64/findnext.c"
.s4:
3e6f : a5 10 __ LDA P3 ; (minlib + 1)
3e71 : c5 0e __ CMP P1 ; (newlib + 1)
3e73 : d0 08 __ BNE $3e7d ; (fval.s10 + 0)
.s7:
3e75 : a5 0f __ LDA P2 ; (minlib + 0)
3e77 : c5 0d __ CMP P0 ; (newlib + 0)
.s8:
3e79 : b0 08 __ BCS $3e83 ; (fval.s5 + 0)
3e7b : 90 0c __ BCC $3e89 ; (fval.s6 + 0)
.s10:
3e7d : 45 0e __ EOR P1 ; (newlib + 1)
3e7f : 10 f8 __ BPL $3e79 ; (fval.s8 + 0)
.s9:
3e81 : b0 06 __ BCS $3e89 ; (fval.s6 + 0)
.s5:
3e83 : a9 ff __ LDA #$ff
3e85 : 85 1b __ STA ACCU + 0 
3e87 : d0 7a __ BNE $3f03 ; (fval.s3 + 0)
.s6:
3e89 : a5 0f __ LDA P2 ; (minlib + 0)
3e8b : 85 03 __ STA WORK + 0 
3e8d : 85 1b __ STA ACCU + 0 
3e8f : a5 10 __ LDA P3 ; (minlib + 1)
3e91 : 85 04 __ STA WORK + 1 
3e93 : 85 1c __ STA ACCU + 1 
3e95 : 20 cf 50 JSR $50cf ; (mul16 + 0)
3e98 : a5 05 __ LDA WORK + 2 
3e9a : 85 1b __ STA ACCU + 0 
3e9c : a5 06 __ LDA WORK + 3 
3e9e : 85 1c __ STA ACCU + 1 
3ea0 : a5 0f __ LDA P2 ; (minlib + 0)
3ea2 : 85 03 __ STA WORK + 0 
3ea4 : a5 10 __ LDA P3 ; (minlib + 1)
3ea6 : 85 04 __ STA WORK + 1 
3ea8 : 20 cf 50 JSR $50cf ; (mul16 + 0)
3eab : 38 __ __ SEC
3eac : a5 0d __ LDA P0 ; (newlib + 0)
3eae : e5 0f __ SBC P2 ; (minlib + 0)
3eb0 : 85 43 __ STA T0 + 0 
3eb2 : a5 0e __ LDA P1 ; (newlib + 1)
3eb4 : e5 10 __ SBC P3 ; (minlib + 1)
3eb6 : 85 44 __ STA T0 + 1 
3eb8 : a5 43 __ LDA T0 + 0 
3eba : 0a __ __ ASL
3ebb : aa __ __ TAX
3ebc : a5 44 __ LDA T0 + 1 
3ebe : 2a __ __ ROL
3ebf : a8 __ __ TAY
3ec0 : 8a __ __ TXA
3ec1 : 18 __ __ CLC
3ec2 : 65 43 __ ADC T0 + 0 
3ec4 : aa __ __ TAX
3ec5 : 98 __ __ TYA
3ec6 : 65 44 __ ADC T0 + 1 
3ec8 : 85 1b __ STA ACCU + 0 
3eca : 8a __ __ TXA
3ecb : 0a __ __ ASL
3ecc : 26 1b __ ROL ACCU + 0 
3ece : 0a __ __ ASL
3ecf : 26 1b __ ROL ACCU + 0 
3ed1 : 0a __ __ ASL
3ed2 : 26 1b __ ROL ACCU + 0 
3ed4 : 18 __ __ CLC
3ed5 : 65 43 __ ADC T0 + 0 
3ed7 : 85 43 __ STA T0 + 0 
3ed9 : a5 1b __ LDA ACCU + 0 
3edb : 65 44 __ ADC T0 + 1 
3edd : 06 43 __ ASL T0 + 0 
3edf : 2a __ __ ROL
3ee0 : aa __ __ TAX
3ee1 : 38 __ __ SEC
3ee2 : a5 43 __ LDA T0 + 0 
3ee4 : e9 32 __ SBC #$32
3ee6 : 85 1b __ STA ACCU + 0 
3ee8 : 8a __ __ TXA
3ee9 : e9 00 __ SBC #$00
3eeb : 85 1c __ STA ACCU + 1 
3eed : a5 05 __ LDA WORK + 2 
3eef : 85 03 __ STA WORK + 0 
3ef1 : a5 06 __ LDA WORK + 3 
3ef3 : 85 04 __ STA WORK + 1 
3ef5 : 20 15 51 JSR $5115 ; (divs16 + 0)
3ef8 : 18 __ __ CLC
3ef9 : a5 1b __ LDA ACCU + 0 
3efb : 69 28 __ ADC #$28
3efd : 85 1b __ STA ACCU + 0 
3eff : a5 1c __ LDA ACCU + 1 
3f01 : 69 00 __ ADC #$00
.s3:
3f03 : 85 1c __ STA ACCU + 1 
3f05 : 60 __ __ RTS
--------------------------------------------------------------------
fioe@proxy: ; fioe@proxy
3f06 : a5 6d __ LDA $6d 
3f08 : 85 0d __ STA P0 
3f0a : a5 6e __ LDA $6e 
3f0c : 85 0e __ STA P1 
3f0e : a5 55 __ LDA $55 
3f10 : 85 0f __ STA P2 
--------------------------------------------------------------------
fioe: ; fioe(i16,i16)->i16
;  88, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s4:
3f12 : a5 0e __ LDA P1 ; (i + 1)
3f14 : a6 0f __ LDX P2 ; (j + 0)
3f16 : 05 0d __ ORA P0 ; (i + 0)
3f18 : d0 03 __ BNE $3f1d ; (fioe.s23 + 0)
3f1a : 4c 61 40 JMP $4061 ; (fioe.s5 + 0)
.s23:
3f1d : a5 0e __ LDA P1 ; (i + 1)
3f1f : f0 05 __ BEQ $3f26 ; (fioe.s55 + 0)
.s56:
3f21 : a5 0d __ LDA P0 ; (i + 0)
3f23 : 4c 2f 3f JMP $3f2f ; (fioe.s39 + 0)
.s55:
3f26 : a5 0d __ LDA P0 ; (i + 0)
3f28 : c9 12 __ CMP #$12
3f2a : d0 03 __ BNE $3f2f ; (fioe.s39 + 0)
3f2c : 4c 05 40 JMP $4005 ; (fioe.s24 + 0)
.s39:
3f2f : 85 1b __ STA ACCU + 0 
3f31 : a5 0e __ LDA P1 ; (i + 1)
3f33 : 85 1c __ STA ACCU + 1 
3f35 : a9 13 __ LDA #$13
3f37 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
3f3a : a5 0f __ LDA P2 ; (j + 0)
3f3c : 05 10 __ ORA P3 ; (j + 1)
3f3e : d0 03 __ BNE $3f43 ; (fioe.s45 + 0)
3f40 : 4c e0 3f JMP $3fe0 ; (fioe.s40 + 0)
.s45:
3f43 : a5 10 __ LDA P3 ; (j + 1)
3f45 : d0 06 __ BNE $3f4d ; (fioe.s49 + 0)
.s54:
3f47 : a5 0f __ LDA P2 ; (j + 0)
3f49 : c9 12 __ CMP #$12
3f4b : f0 5d __ BEQ $3faa ; (fioe.s46 + 0)
.s49:
3f4d : 18 __ __ CLC
3f4e : a9 4e __ LDA #$4e
3f50 : 65 1b __ ADC ACCU + 0 
3f52 : 85 47 __ STA T4 + 0 
3f54 : a9 68 __ LDA #$68
3f56 : 65 1c __ ADC ACCU + 1 
3f58 : 85 48 __ STA T4 + 1 
3f5a : a4 0f __ LDY P2 ; (j + 0)
3f5c : 88 __ __ DEY
3f5d : ad ca 69 LDA $69ca ; (mymove + 1)
3f60 : d0 41 __ BNE $3fa3 ; (fioe.s12 + 0)
.s53:
3f62 : b1 47 __ LDA (T4 + 0),y 
3f64 : cd c9 69 CMP $69c9 ; (mymove + 0)
3f67 : d0 3a __ BNE $3fa3 ; (fioe.s12 + 0)
.s50:
3f69 : c8 __ __ INY
3f6a : c8 __ __ INY
3f6b : b1 47 __ LDA (T4 + 0),y 
3f6d : cd c9 69 CMP $69c9 ; (mymove + 0)
3f70 : d0 31 __ BNE $3fa3 ; (fioe.s12 + 0)
.s51:
3f72 : 18 __ __ CLC
3f73 : a9 3b __ LDA #$3b
3f75 : 65 1b __ ADC ACCU + 0 
3f77 : 85 45 __ STA T3 + 0 
3f79 : a9 68 __ LDA #$68
3f7b : 65 1c __ ADC ACCU + 1 
3f7d : 85 46 __ STA T3 + 1 
3f7f : 88 __ __ DEY
3f80 : b1 45 __ LDA (T3 + 0),y 
3f82 : cd c9 69 CMP $69c9 ; (mymove + 0)
3f85 : d0 1c __ BNE $3fa3 ; (fioe.s12 + 0)
.s52:
3f87 : 18 __ __ CLC
3f88 : a9 61 __ LDA #$61
3f8a : 65 1b __ ADC ACCU + 0 
3f8c : 85 1b __ STA ACCU + 0 
3f8e : a9 68 __ LDA #$68
3f90 : 65 1c __ ADC ACCU + 1 
3f92 : 85 1c __ STA ACCU + 1 
3f94 : b1 1b __ LDA (ACCU + 0),y 
.s13:
3f96 : cd c9 69 CMP $69c9 ; (mymove + 0)
3f99 : d0 08 __ BNE $3fa3 ; (fioe.s12 + 0)
.s8:
3f9b : a9 01 __ LDA #$01
3f9d : 85 1b __ STA ACCU + 0 
3f9f : a9 00 __ LDA #$00
3fa1 : f0 04 __ BEQ $3fa7 ; (fioe.s3 + 0)
.s12:
3fa3 : a9 00 __ LDA #$00
3fa5 : 85 1b __ STA ACCU + 0 
.s3:
3fa7 : 85 1c __ STA ACCU + 1 
3fa9 : 60 __ __ RTS
.s46:
3faa : a9 5f __ LDA #$5f
3fac : 85 43 __ STA T0 + 0 
3fae : 18 __ __ CLC
3faf : a9 68 __ LDA #$68
3fb1 : 65 1c __ ADC ACCU + 1 
3fb3 : 85 44 __ STA T0 + 1 
3fb5 : a4 1b __ LDY ACCU + 0 
3fb7 : b1 43 __ LDA (T0 + 0),y 
3fb9 : aa __ __ TAX
3fba : ad ca 69 LDA $69ca ; (mymove + 1)
3fbd : d0 e4 __ BNE $3fa3 ; (fioe.s12 + 0)
.s48:
3fbf : ec c9 69 CPX $69c9 ; (mymove + 0)
3fc2 : d0 df __ BNE $3fa3 ; (fioe.s12 + 0)
.s47:
3fc4 : 98 __ __ TYA
3fc5 : 18 __ __ CLC
3fc6 : 69 4d __ ADC #$4d
3fc8 : 85 43 __ STA T0 + 0 
3fca : a9 68 __ LDA #$68
.s42:
3fcc : 65 1c __ ADC ACCU + 1 
3fce : 85 44 __ STA T0 + 1 
3fd0 : a0 00 __ LDY #$00
3fd2 : b1 43 __ LDA (T0 + 0),y 
3fd4 : cd c9 69 CMP $69c9 ; (mymove + 0)
3fd7 : d0 ca __ BNE $3fa3 ; (fioe.s12 + 0)
.s43:
3fd9 : a0 26 __ LDY #$26
3fdb : b1 43 __ LDA (T0 + 0),y 
3fdd : 4c 96 3f JMP $3f96 ; (fioe.s13 + 0)
.s40:
3fe0 : a9 4f __ LDA #$4f
3fe2 : 85 43 __ STA T0 + 0 
3fe4 : 18 __ __ CLC
3fe5 : a9 68 __ LDA #$68
3fe7 : 65 1c __ ADC ACCU + 1 
3fe9 : 85 44 __ STA T0 + 1 
3feb : a4 1b __ LDY ACCU + 0 
3fed : b1 43 __ LDA (T0 + 0),y 
3fef : aa __ __ TAX
3ff0 : ad ca 69 LDA $69ca ; (mymove + 1)
3ff3 : d0 ae __ BNE $3fa3 ; (fioe.s12 + 0)
.s44:
3ff5 : ec c9 69 CPX $69c9 ; (mymove + 0)
3ff8 : d0 a9 __ BNE $3fa3 ; (fioe.s12 + 0)
.s41:
3ffa : 98 __ __ TYA
3ffb : 18 __ __ CLC
3ffc : 69 3b __ ADC #$3b
3ffe : 85 43 __ STA T0 + 0 
4000 : a9 68 __ LDA #$68
4002 : 4c cc 3f JMP $3fcc ; (fioe.s42 + 0)
.s24:
4005 : 8a __ __ TXA
4006 : 05 10 __ ORA P3 ; (j + 1)
4008 : d0 3c __ BNE $4046 ; (fioe.s34 + 0)
.s25:
400a : aa __ __ TAX
400b : ad ca 69 LDA $69ca ; (mymove + 1)
400e : d0 93 __ BNE $3fa3 ; (fioe.s12 + 0)
.s33:
4010 : ad 91 69 LDA $6991 ; (p[0][0] + 323)
4013 : cd c9 69 CMP $69c9 ; (mymove + 0)
4016 : d0 0b __ BNE $4023 ; (fioe.s27 + 0)
.s26:
4018 : ad a5 69 LDA $69a5 ; (p[0][0] + 343)
.s32:
401b : cd c9 69 CMP $69c9 ; (mymove + 0)
401e : d0 03 __ BNE $4023 ; (fioe.s27 + 0)
4020 : 4c 9b 3f JMP $3f9b ; (fioe.s8 + 0)
.s27:
4023 : ad ca 69 LDA $69ca ; (mymove + 1)
4026 : f0 03 __ BEQ $402b ; (fioe.s31 + 0)
4028 : 4c a3 3f JMP $3fa3 ; (fioe.s12 + 0)
.s31:
402b : bd 91 69 LDA $6991,x ; (p[0][0] + 323)
402e : cd c9 69 CMP $69c9 ; (mymove + 0)
4031 : d0 f5 __ BNE $4028 ; (fioe.s27 + 5)
.s28:
4033 : ad ca 69 LDA $69ca ; (mymove + 1)
4036 : d0 f0 __ BNE $4028 ; (fioe.s27 + 5)
.s30:
4038 : bd a3 69 LDA $69a3,x ; (p[0][0] + 341)
403b : cd c9 69 CMP $69c9 ; (mymove + 0)
403e : d0 e8 __ BNE $4028 ; (fioe.s27 + 5)
.s29:
4040 : bd a5 69 LDA $69a5,x ; (p[0][0] + 343)
4043 : 4c 96 3f JMP $3f96 ; (fioe.s13 + 0)
.s34:
4046 : a5 10 __ LDA P3 ; (j + 1)
4048 : d0 d9 __ BNE $4023 ; (fioe.s27 + 0)
.s38:
404a : e0 12 __ CPX #$12
404c : d0 d5 __ BNE $4023 ; (fioe.s27 + 0)
.s35:
404e : ad ca 69 LDA $69ca ; (mymove + 1)
4051 : d0 d5 __ BNE $4028 ; (fioe.s27 + 5)
.s37:
4053 : ad a3 69 LDA $69a3 ; (p[0][0] + 341)
4056 : cd c9 69 CMP $69c9 ; (mymove + 0)
4059 : d0 c8 __ BNE $4023 ; (fioe.s27 + 0)
.s36:
405b : ad b5 69 LDA $69b5 ; (p[0][0] + 359)
405e : 4c 1b 40 JMP $401b ; (fioe.s32 + 0)
.s5:
4061 : 8a __ __ TXA
4062 : 05 10 __ ORA P3 ; (j + 1)
4064 : d0 36 __ BNE $409c ; (fioe.s18 + 0)
.s6:
4066 : aa __ __ TAX
4067 : ad ca 69 LDA $69ca ; (mymove + 1)
406a : d0 bc __ BNE $4028 ; (fioe.s27 + 5)
.s17:
406c : ad 61 68 LDA $6861 ; (p[0][0] + 19)
406f : cd c9 69 CMP $69c9 ; (mymove + 0)
4072 : d0 08 __ BNE $407c ; (fioe.s9 + 0)
.s7:
4074 : ad 4f 68 LDA $684f ; (p[0][0] + 1)
.s16:
4077 : cd c9 69 CMP $69c9 ; (mymove + 0)
407a : f0 a4 __ BEQ $4020 ; (fioe.s32 + 5)
.s9:
407c : ad ca 69 LDA $69ca ; (mymove + 1)
407f : d0 a7 __ BNE $4028 ; (fioe.s27 + 5)
.s15:
4081 : bd 61 68 LDA $6861,x ; (p[0][0] + 19)
4084 : cd c9 69 CMP $69c9 ; (mymove + 0)
4087 : d0 9f __ BNE $4028 ; (fioe.s27 + 5)
.s10:
4089 : ad ca 69 LDA $69ca ; (mymove + 1)
408c : d0 9a __ BNE $4028 ; (fioe.s27 + 5)
.s14:
408e : bd 4d 68 LDA $684d,x ; (opn[0] + 17)
4091 : cd c9 69 CMP $69c9 ; (mymove + 0)
4094 : d0 92 __ BNE $4028 ; (fioe.s27 + 5)
.s11:
4096 : bd 4f 68 LDA $684f,x ; (p[0][0] + 1)
4099 : 4c 96 3f JMP $3f96 ; (fioe.s13 + 0)
.s18:
409c : a5 10 __ LDA P3 ; (j + 1)
409e : d0 dc __ BNE $407c ; (fioe.s9 + 0)
.s22:
40a0 : e0 12 __ CPX #$12
40a2 : d0 d8 __ BNE $407c ; (fioe.s9 + 0)
.s19:
40a4 : ad ca 69 LDA $69ca ; (mymove + 1)
40a7 : f0 03 __ BEQ $40ac ; (fioe.s21 + 0)
40a9 : 4c a3 3f JMP $3fa3 ; (fioe.s12 + 0)
.s21:
40ac : ad 73 68 LDA $6873 ; (p[0][0] + 37)
40af : cd c9 69 CMP $69c9 ; (mymove + 0)
40b2 : d0 c8 __ BNE $407c ; (fioe.s9 + 0)
.s20:
40b4 : ad 5f 68 LDA $685f ; (p[0][0] + 17)
40b7 : 4c 77 40 JMP $4077 ; (fioe.s16 + 0)
--------------------------------------------------------------------
opening: ; opening(i16*,i16*,i16*,i16)->i16
; 106, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s4:
40ba : a5 12 __ LDA P5 ; (type + 1)
40bc : d0 0a __ BNE $40c8 ; (opening.s12 + 0)
.s14:
40be : a5 11 __ LDA P4 ; (type + 0)
40c0 : c9 01 __ CMP #$01
40c2 : f0 2a __ BEQ $40ee ; (opening.s5 + 0)
.s13:
40c4 : c9 03 __ CMP #$03
40c6 : f0 26 __ BEQ $40ee ; (opening.s5 + 0)
.s12:
40c8 : ad 6e 77 LDA $776e ; (cnd + 0)
40cb : 85 1b __ STA ACCU + 0 
40cd : ad 6f 77 LDA $776f ; (cnd + 1)
40d0 : 85 1c __ STA ACCU + 1 
40d2 : a9 16 __ LDA #$16
40d4 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
40d7 : a9 62 __ LDA #$62
40d9 : 85 45 __ STA T1 + 0 
40db : 18 __ __ CLC
40dc : a9 5c __ LDA #$5c
40de : 65 1c __ ADC ACCU + 1 
40e0 : 85 46 __ STA T1 + 1 
40e2 : a4 1b __ LDY ACCU + 0 
40e4 : b1 45 __ LDA (T1 + 0),y 
40e6 : aa __ __ TAX
40e7 : c8 __ __ INY
40e8 : b1 45 __ LDA (T1 + 0),y 
40ea : a0 01 __ LDY #$01
40ec : d0 28 __ BNE $4116 ; (opening.s16 + 0)
.s5:
40ee : ad 6e 77 LDA $776e ; (cnd + 0)
40f1 : 85 1b __ STA ACCU + 0 
40f3 : ad 6f 77 LDA $776f ; (cnd + 1)
40f6 : 85 1c __ STA ACCU + 1 
40f8 : a9 16 __ LDA #$16
40fa : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
40fd : a9 62 __ LDA #$62
40ff : 85 45 __ STA T1 + 0 
4101 : 18 __ __ CLC
4102 : a9 5c __ LDA #$5c
4104 : 65 1c __ ADC ACCU + 1 
4106 : 85 46 __ STA T1 + 1 
4108 : a9 12 __ LDA #$12
410a : a4 1b __ LDY ACCU + 0 
410c : 38 __ __ SEC
410d : f1 45 __ SBC (T1 + 0),y 
410f : aa __ __ TAX
4110 : a9 00 __ LDA #$00
4112 : a0 01 __ LDY #$01
4114 : f1 45 __ SBC (T1 + 0),y 
.s16:
4116 : 91 0d __ STA (P0),y ; (i + 0)
4118 : 8a __ __ TXA
4119 : a0 00 __ LDY #$00
411b : 91 0d __ STA (P0),y ; (i + 0)
411d : a5 12 __ LDA P5 ; (type + 1)
411f : d0 0a __ BNE $412b ; (opening.s9 + 0)
.s11:
4121 : a5 11 __ LDA P4 ; (type + 0)
4123 : c9 02 __ CMP #$02
4125 : f0 2a __ BEQ $4151 ; (opening.s6 + 0)
.s10:
4127 : c9 03 __ CMP #$03
4129 : f0 26 __ BEQ $4151 ; (opening.s6 + 0)
.s9:
412b : ad 6e 77 LDA $776e ; (cnd + 0)
412e : 85 1b __ STA ACCU + 0 
4130 : ad 6f 77 LDA $776f ; (cnd + 1)
4133 : 85 1c __ STA ACCU + 1 
4135 : a9 16 __ LDA #$16
4137 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
413a : a9 64 __ LDA #$64
413c : 85 43 __ STA T0 + 0 
413e : 18 __ __ CLC
413f : a9 5c __ LDA #$5c
4141 : 65 1c __ ADC ACCU + 1 
4143 : 85 44 __ STA T0 + 1 
4145 : a4 1b __ LDY ACCU + 0 
4147 : b1 43 __ LDA (T0 + 0),y 
4149 : aa __ __ TAX
414a : c8 __ __ INY
414b : b1 43 __ LDA (T0 + 0),y 
414d : a0 01 __ LDY #$01
414f : d0 28 __ BNE $4179 ; (opening.s15 + 0)
.s6:
4151 : ad 6e 77 LDA $776e ; (cnd + 0)
4154 : 85 1b __ STA ACCU + 0 
4156 : ad 6f 77 LDA $776f ; (cnd + 1)
4159 : 85 1c __ STA ACCU + 1 
415b : a9 16 __ LDA #$16
415d : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
4160 : a9 64 __ LDA #$64
4162 : 85 43 __ STA T0 + 0 
4164 : 18 __ __ CLC
4165 : a9 5c __ LDA #$5c
4167 : 65 1c __ ADC ACCU + 1 
4169 : 85 44 __ STA T0 + 1 
416b : a9 12 __ LDA #$12
416d : a4 1b __ LDY ACCU + 0 
416f : 38 __ __ SEC
4170 : f1 43 __ SBC (T0 + 0),y 
4172 : aa __ __ TAX
4173 : a9 00 __ LDA #$00
4175 : a0 01 __ LDY #$01
4177 : f1 43 __ SBC (T0 + 0),y 
.s15:
4179 : 91 0f __ STA (P2),y ; (j + 0)
417b : 8a __ __ TXA
417c : a0 00 __ LDY #$00
417e : 91 0f __ STA (P2),y ; (j + 0)
4180 : ad 6e 77 LDA $776e ; (cnd + 0)
4183 : 85 1b __ STA ACCU + 0 
4185 : ad 6f 77 LDA $776f ; (cnd + 1)
4188 : 85 1c __ STA ACCU + 1 
418a : a9 16 __ LDA #$16
418c : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
418f : a5 1b __ LDA ACCU + 0 
4191 : 85 45 __ STA T1 + 0 
4193 : a5 1c __ LDA ACCU + 1 
4195 : 85 46 __ STA T1 + 1 
4197 : a9 66 __ LDA #$66
4199 : 85 43 __ STA T0 + 0 
419b : 18 __ __ CLC
419c : a9 5c __ LDA #$5c
419e : 65 1c __ ADC ACCU + 1 
41a0 : 85 44 __ STA T0 + 1 
41a2 : a4 1b __ LDY ACCU + 0 
41a4 : b1 43 __ LDA (T0 + 0),y 
41a6 : c8 __ __ INY
41a7 : 11 43 __ ORA (T0 + 0),y 
41a9 : d0 05 __ BNE $41b0 ; (opening.s7 + 0)
.s8:
41ab : 85 1b __ STA ACCU + 0 
.s3:
41ad : 85 1c __ STA ACCU + 1 
41af : 60 __ __ RTS
.s7:
41b0 : 20 ef 41 JSR $41ef ; (rand.s4 + 0)
41b3 : 18 __ __ CLC
41b4 : a9 62 __ LDA #$62
41b6 : 65 45 __ ADC T1 + 0 
41b8 : 85 45 __ STA T1 + 0 
41ba : a9 5c __ LDA #$5c
41bc : 65 46 __ ADC T1 + 1 
41be : 85 46 __ STA T1 + 1 
41c0 : a0 04 __ LDY #$04
41c2 : b1 45 __ LDA (T1 + 0),y 
41c4 : 85 03 __ STA WORK + 0 
41c6 : c8 __ __ INY
41c7 : b1 45 __ LDA (T1 + 0),y 
41c9 : 85 04 __ STA WORK + 1 
41cb : 20 4c 51 JSR $514c ; (divmod + 0)
41ce : a5 05 __ LDA WORK + 2 
41d0 : 0a __ __ ASL
41d1 : 18 __ __ CLC
41d2 : 65 45 __ ADC T1 + 0 
41d4 : 85 45 __ STA T1 + 0 
41d6 : 90 02 __ BCC $41da ; (opening.s18 + 0)
.s17:
41d8 : e6 46 __ INC T1 + 1 
.s18:
41da : a0 06 __ LDY #$06
41dc : b1 45 __ LDA (T1 + 0),y 
41de : 8d 6e 77 STA $776e ; (cnd + 0)
41e1 : c8 __ __ INY
41e2 : b1 45 __ LDA (T1 + 0),y 
41e4 : 8d 6f 77 STA $776f ; (cnd + 1)
41e7 : a9 01 __ LDA #$01
41e9 : 85 1b __ STA ACCU + 0 
41eb : a9 00 __ LDA #$00
41ed : f0 be __ BEQ $41ad ; (opening.s3 + 0)
--------------------------------------------------------------------
rand: ; rand()->u16
;  72, "/usr/local/include/oscar64/stdlib.h"
.s4:
41ef : ad 45 5c LDA $5c45 ; (seed + 1)
41f2 : 4a __ __ LSR
41f3 : ad 44 5c LDA $5c44 ; (seed + 0)
41f6 : 6a __ __ ROR
41f7 : 4d 45 5c EOR $5c45 ; (seed + 1)
41fa : 85 1c __ STA ACCU + 1 
41fc : 6a __ __ ROR
41fd : 4d 44 5c EOR $5c44 ; (seed + 0)
4200 : 8d 44 5c STA $5c44 ; (seed + 0)
4203 : 85 1b __ STA ACCU + 0 
4205 : 45 1c __ EOR ACCU + 1 
4207 : 8d 45 5c STA $5c45 ; (seed + 1)
420a : 85 1c __ STA ACCU + 1 
.s3:
420c : 60 __ __ RTS
--------------------------------------------------------------------
openregion@proxy: ; openregion@proxy
420d : a9 06 __ LDA #$06
420f : 85 0d __ STA P0 
4211 : a9 0b __ LDA #$0b
4213 : 85 11 __ STA P4 
--------------------------------------------------------------------
openregion: ; openregion(i16,i16,i16,i16)->i16
; 111, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s4:
4215 : a5 0d __ LDA P0 ; (i1 + 0)
4217 : c5 11 __ CMP P4 ; (i2 + 0)
4219 : b0 06 __ BCS $4221 ; (openregion.s17 + 0)
.s5:
421b : a5 11 __ LDA P4 ; (i2 + 0)
421d : 85 44 __ STA T4 + 0 
421f : 90 0a __ BCC $422b ; (openregion.s6 + 0)
.s17:
4221 : 85 44 __ STA T4 + 0 
4223 : a5 11 __ LDA P4 ; (i2 + 0)
4225 : 85 0d __ STA P0 ; (i1 + 0)
4227 : a5 12 __ LDA P5 ; (i2 + 1)
4229 : 85 0e __ STA P1 ; (i1 + 1)
.s6:
422b : a5 0f __ LDA P2 ; (j1 + 0)
422d : c5 13 __ CMP P6 ; (j2 + 0)
422f : b0 04 __ BCS $4235 ; (openregion.s16 + 0)
.s7:
4231 : 85 43 __ STA T2 + 0 
4233 : 90 06 __ BCC $423b ; (openregion.l8 + 0)
.s16:
4235 : a6 13 __ LDX P6 ; (j2 + 0)
4237 : 86 43 __ STX T2 + 0 
4239 : 85 13 __ STA P6 ; (j2 + 0)
.l8:
423b : a5 44 __ LDA T4 + 0 
423d : c5 0d __ CMP P0 ; (i1 + 0)
423f : b0 09 __ BCS $424a ; (openregion.s9 + 0)
.s15:
4241 : a9 01 __ LDA #$01
4243 : 85 1b __ STA ACCU + 0 
4245 : a9 00 __ LDA #$00
.s3:
4247 : 85 1c __ STA ACCU + 1 
4249 : 60 __ __ RTS
.s9:
424a : a5 13 __ LDA P6 ; (j2 + 0)
424c : c5 43 __ CMP T2 + 0 
424e : 90 32 __ BCC $4282 ; (openregion.s14 + 0)
.s10:
4250 : a5 0d __ LDA P0 ; (i1 + 0)
4252 : 85 1b __ STA ACCU + 0 
4254 : a5 0e __ LDA P1 ; (i1 + 1)
4256 : 85 1c __ STA ACCU + 1 
4258 : a9 13 __ LDA #$13
425a : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
425d : 18 __ __ CLC
425e : a9 4e __ LDA #$4e
4260 : 65 1b __ ADC ACCU + 0 
4262 : 85 1b __ STA ACCU + 0 
4264 : a9 68 __ LDA #$68
4266 : 65 1c __ ADC ACCU + 1 
4268 : 85 1c __ STA ACCU + 1 
426a : a5 43 __ LDA T2 + 0 
426c : 85 45 __ STA T5 + 0 
426e : a6 13 __ LDX P6 ; (j2 + 0)
.l11:
4270 : a4 45 __ LDY T5 + 0 
4272 : b1 1b __ LDA (ACCU + 0),y 
4274 : f0 06 __ BEQ $427c ; (openregion.s13 + 0)
.s12:
4276 : a9 00 __ LDA #$00
4278 : 85 1b __ STA ACCU + 0 
427a : f0 cb __ BEQ $4247 ; (openregion.s3 + 0)
.s13:
427c : e6 45 __ INC T5 + 0 
427e : e4 45 __ CPX T5 + 0 
4280 : b0 ee __ BCS $4270 ; (openregion.l11 + 0)
.s14:
4282 : e6 0d __ INC P0 ; (i1 + 0)
4284 : a9 00 __ LDA #$00
4286 : 85 0e __ STA P1 ; (i1 + 1)
4288 : 90 b1 __ BCC $423b ; (openregion.l8 + 0)
--------------------------------------------------------------------
428a : __ __ __ BYT 63 4f 4d 50 55 54 45 52 20 4d 4f 56 45 3a 20 25 : cOMPUTER MOVE: %
429a : __ __ __ BYT 63 25 64 0a 00                                  : c%d..
--------------------------------------------------------------------
429f : __ __ __ BYT 41 42 43 44 45 46 47 48 4a 4b 4c 4d 4e 4f 50 51 : ABCDEFGHJKLMNOPQ
42af : __ __ __ BYT 52 53 54 00                                     : RST.
--------------------------------------------------------------------
42b3 : __ __ __ BYT 0a 00                                           : ..
--------------------------------------------------------------------
42b5 : __ __ __ BYT 79 4f 55 52 20 4d 4f 56 45 3f 20 00             : yOUR MOVE? .
--------------------------------------------------------------------
42c1 : __ __ __ BYT 25 73 00                                        : %s.
--------------------------------------------------------------------
getmove: ; getmove(u8*,i16*,i16*)->void
;  94, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s1:
42c4 : 38 __ __ SEC
42c5 : a5 23 __ LDA SP + 0 
42c7 : e9 18 __ SBC #$18
42c9 : 85 23 __ STA SP + 0 
42cb : b0 02 __ BCS $42cf ; (getmove.s1 + 11)
42cd : c6 24 __ DEC SP + 1 
42cf : a0 15 __ LDY #$15
42d1 : a2 0d __ LDX #$0d
42d3 : b5 53 __ LDA T1 + 0,x 
42d5 : 91 23 __ STA (SP + 0),y 
42d7 : 88 __ __ DEY
42d8 : ca __ __ DEX
42d9 : 10 f8 __ BPL $42d3 ; (getmove.s1 + 15)
.s4:
42db : a0 1a __ LDY #$1a
42dd : b1 23 __ LDA (SP + 0),y 
42df : 85 55 __ STA T5 + 0 
42e1 : 85 0d __ STA P0 ; (move + 0)
42e3 : c8 __ __ INY
42e4 : b1 23 __ LDA (SP + 0),y 
42e6 : 85 56 __ STA T5 + 1 
42e8 : 85 0e __ STA P1 ; (move + 1)
42ea : a9 f1 __ LDA #$f1
42ec : 85 0f __ STA P2 ; (i + 0)
42ee : a9 44 __ LDA #$44
42f0 : 85 10 __ STA P3 ; (i + 1)
42f2 : 20 c4 44 JSR $44c4 ; (strcmp.s4 + 0)
42f5 : aa __ __ TAX
42f6 : d0 1e __ BNE $4316 ; (getmove.s5 + 0)
.s27:
42f8 : 8d bb 69 STA $69bb ; (play + 0)
42fb : 8d bc 69 STA $69bc ; (play + 1)
.s3:
42fe : a0 15 __ LDY #$15
4300 : a2 0d __ LDX #$0d
4302 : b1 23 __ LDA (SP + 0),y 
4304 : 95 53 __ STA T1 + 0,x 
4306 : 88 __ __ DEY
4307 : ca __ __ DEX
4308 : 10 f8 __ BPL $4302 ; (getmove.s3 + 4)
430a : 18 __ __ CLC
430b : a5 23 __ LDA SP + 0 
430d : 69 18 __ ADC #$18
430f : 85 23 __ STA SP + 0 
4311 : 90 02 __ BCC $4315 ; (getmove.s3 + 23)
4313 : e6 24 __ INC SP + 1 
4315 : 60 __ __ RTS
.s5:
4316 : a5 55 __ LDA T5 + 0 
4318 : 85 0d __ STA P0 ; (move + 0)
431a : a5 56 __ LDA T5 + 1 
431c : 85 0e __ STA P1 ; (move + 1)
431e : a9 f6 __ LDA #$f6
4320 : 85 0f __ STA P2 ; (i + 0)
4322 : a9 44 __ LDA #$44
4324 : 85 10 __ STA P3 ; (i + 1)
4326 : 20 c4 44 JSR $44c4 ; (strcmp.s4 + 0)
4329 : aa __ __ TAX
432a : a0 1c __ LDY #$1c
432c : b1 23 __ LDA (SP + 0),y 
432e : 85 57 __ STA T6 + 0 
4330 : c8 __ __ INY
4331 : b1 23 __ LDA (SP + 0),y 
4333 : 85 58 __ STA T6 + 1 
4335 : e0 00 __ CPX #$00
4337 : d0 13 __ BNE $434c ; (getmove.s6 + 0)
.s26:
4339 : a9 ff __ LDA #$ff
433b : a0 00 __ LDY #$00
433d : 91 57 __ STA (T6 + 0),y 
433f : c8 __ __ INY
4340 : 91 57 __ STA (T6 + 0),y 
4342 : ee bd 69 INC $69bd ; (pass + 0)
4345 : d0 b7 __ BNE $42fe ; (getmove.s3 + 0)
.s34:
4347 : ee be 69 INC $69be ; (pass + 1)
434a : b0 b2 __ BCS $42fe ; (getmove.s3 + 0)
.s6:
434c : 85 10 __ STA P3 ; (i + 1)
434e : a2 02 __ LDX #$02
4350 : b5 55 __ LDA T5 + 0,x 
4352 : 95 0d __ STA P0,x ; (move + 0)
4354 : ca __ __ DEX
4355 : 10 f9 __ BPL $4350 ; (getmove.s6 + 4)
4357 : a9 00 __ LDA #$00
4359 : 8d bd 69 STA $69bd ; (pass + 0)
435c : 8d be 69 STA $69be ; (pass + 1)
435f : a0 1e __ LDY #$1e
4361 : b1 23 __ LDA (SP + 0),y 
4363 : 85 59 __ STA T7 + 0 
4365 : 85 11 __ STA P4 ; (j + 0)
4367 : c8 __ __ INY
4368 : b1 23 __ LDA (SP + 0),y 
436a : 85 5a __ STA T7 + 1 
436c : 85 12 __ STA P5 ; (j + 1)
436e : 20 13 45 JSR $4513 ; (getij.s4 + 0)
4371 : a5 1b __ LDA ACCU + 0 
4373 : 05 1c __ ORA ACCU + 1 
4375 : d0 03 __ BNE $437a ; (getmove.s7 + 0)
4377 : 4c 6b 44 JMP $446b ; (getmove.s8 + 0)
.s7:
437a : a0 00 __ LDY #$00
437c : 84 1c __ STY ACCU + 1 
437e : b1 0f __ LDA (P2),y ; (i + 0)
4380 : 85 5b __ STA T8 + 0 
4382 : 85 1b __ STA ACCU + 0 
4384 : a9 13 __ LDA #$13
4386 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
4389 : 18 __ __ CLC
438a : a9 4e __ LDA #$4e
438c : 65 1b __ ADC ACCU + 0 
438e : 85 43 __ STA T0 + 0 
4390 : a9 68 __ LDA #$68
4392 : 65 1c __ ADC ACCU + 1 
4394 : 85 44 __ STA T0 + 1 
4396 : a0 00 __ LDY #$00
4398 : b1 11 __ LDA (P4),y ; (j + 0)
439a : 85 5c __ STA T9 + 0 
439c : a8 __ __ TAY
439d : 18 __ __ CLC
439e : 65 43 __ ADC T0 + 0 
43a0 : 85 5d __ STA T10 + 0 
43a2 : a5 44 __ LDA T0 + 1 
43a4 : 85 5e __ STA T10 + 1 
43a6 : b1 43 __ LDA (T0 + 0),y 
43a8 : d0 cd __ BNE $4377 ; (getmove.s6 + 43)
.s9:
43aa : 84 0f __ STY P2 ; (i + 0)
43ac : 85 0e __ STA P1 ; (move + 1)
43ae : 85 10 __ STA P3 ; (i + 1)
43b0 : 8d cb 69 STA $69cb ; (lib + 0)
43b3 : 8d cc 69 STA $69cc ; (lib + 1)
43b6 : a5 5b __ LDA T8 + 0 
43b8 : 85 0d __ STA P0 ; (move + 0)
43ba : ad c7 69 LDA $69c7 ; (umove + 0)
43bd : 85 53 __ STA T1 + 0 
43bf : 85 11 __ STA P4 ; (j + 0)
43c1 : ad c8 69 LDA $69c8 ; (umove + 1)
43c4 : 85 12 __ STA P5 ; (j + 1)
43c6 : 20 62 3b JSR $3b62 ; (countlib.s4 + 0)
43c9 : ad cc 69 LDA $69cc ; (lib + 1)
43cc : 0d cb 69 ORA $69cb ; (lib + 0)
43cf : f0 03 __ BEQ $43d4 ; (getmove.s10 + 0)
43d1 : 4c fe 42 JMP $42fe ; (getmove.s3 + 0)
.s10:
43d4 : a5 53 __ LDA T1 + 0 
43d6 : a4 5c __ LDY T9 + 0 
43d8 : 91 43 __ STA (T0 + 0),y 
43da : ad c9 69 LDA $69c9 ; (mymove + 0)
43dd : 85 5f __ STA T11 + 0 
43df : 85 11 __ STA P4 ; (j + 0)
43e1 : ad ca 69 LDA $69ca ; (mymove + 1)
43e4 : 85 60 __ STA T11 + 1 
43e6 : 85 12 __ STA P5 ; (j + 1)
43e8 : 20 ca 3a JSR $3aca ; (eval.s1 + 0)
43eb : a2 00 __ LDX #$00
43ed : 86 46 __ STX T2 + 1 
43ef : a9 58 __ LDA #$58
43f1 : 85 43 __ STA T0 + 0 
43f3 : a9 6e __ LDA #$6e
43f5 : 85 44 __ STA T0 + 1 
43f7 : a9 4e __ LDA #$4e
43f9 : 85 53 __ STA T1 + 0 
43fb : a9 68 __ LDA #$68
43fd : 85 54 __ STA T1 + 1 
.l11:
43ff : a0 00 __ LDY #$00
4401 : a5 60 __ LDA T11 + 1 
4403 : d0 0f __ BNE $4414 ; (getmove.l13 + 0)
.s25:
4405 : a5 5f __ LDA T11 + 0 
4407 : d1 53 __ CMP (T1 + 0),y 
4409 : d0 09 __ BNE $4414 ; (getmove.l13 + 0)
.s12:
440b : b1 43 __ LDA (T0 + 0),y 
440d : d0 05 __ BNE $4414 ; (getmove.l13 + 0)
.s24:
440f : e8 __ __ INX
4410 : d0 02 __ BNE $4414 ; (getmove.l13 + 0)
.s29:
4412 : e6 46 __ INC T2 + 1 
.l13:
4414 : c8 __ __ INY
4415 : c0 13 __ CPY #$13
4417 : b0 06 __ BCS $441f ; (getmove.s14 + 0)
.s28:
4419 : a5 60 __ LDA T11 + 1 
441b : d0 f7 __ BNE $4414 ; (getmove.l13 + 0)
441d : f0 e6 __ BEQ $4405 ; (getmove.s25 + 0)
.s14:
441f : a5 43 __ LDA T0 + 0 
4421 : 69 12 __ ADC #$12
4423 : 85 43 __ STA T0 + 0 
4425 : 90 03 __ BCC $442a ; (getmove.s31 + 0)
.s30:
4427 : e6 44 __ INC T0 + 1 
4429 : 18 __ __ CLC
.s31:
442a : a5 53 __ LDA T1 + 0 
442c : 69 13 __ ADC #$13
442e : 85 53 __ STA T1 + 0 
4430 : 90 02 __ BCC $4434 ; (getmove.s33 + 0)
.s32:
4432 : e6 54 __ INC T1 + 1 
.s33:
4434 : c9 b7 __ CMP #$b7
4436 : d0 c7 __ BNE $43ff ; (getmove.l11 + 0)
.s23:
4438 : a5 54 __ LDA T1 + 1 
443a : c9 69 __ CMP #$69
443c : d0 c1 __ BNE $43ff ; (getmove.l11 + 0)
.s15:
443e : 8a __ __ TXA
443f : 05 46 __ ORA T2 + 1 
4441 : f0 23 __ BEQ $4466 ; (getmove.s16 + 0)
.s17:
4443 : a5 46 __ LDA T2 + 1 
4445 : d0 8a __ BNE $43d1 ; (getmove.s9 + 39)
.s22:
4447 : e0 01 __ CPX #$01
4449 : d0 86 __ BNE $43d1 ; (getmove.s9 + 39)
.s18:
444b : ad c4 69 LDA $69c4 ; (uik + 1)
444e : d0 81 __ BNE $43d1 ; (getmove.s9 + 39)
.s21:
4450 : a5 5b __ LDA T8 + 0 
4452 : cd c3 69 CMP $69c3 ; (uik + 0)
4455 : f0 03 __ BEQ $445a ; (getmove.s19 + 0)
4457 : 4c fe 42 JMP $42fe ; (getmove.s3 + 0)
.s19:
445a : ad c6 69 LDA $69c6 ; (ujk + 1)
445d : d0 f8 __ BNE $4457 ; (getmove.s21 + 7)
.s20:
445f : a5 5c __ LDA T9 + 0 
4461 : cd c5 69 CMP $69c5 ; (ujk + 0)
4464 : d0 f1 __ BNE $4457 ; (getmove.s21 + 7)
.s16:
4466 : a9 00 __ LDA #$00
4468 : a8 __ __ TAY
4469 : 91 5d __ STA (T10 + 0),y 
.s8:
446b : a9 c1 __ LDA #$c1
446d : 8d fa cf STA $cffa ; (sstack + 0)
4470 : a9 45 __ LDA #$45
4472 : 8d fb cf STA $cffb ; (sstack + 1)
4475 : 20 8a 13 JSR $138a ; (printf.s1 + 0)
4478 : a5 55 __ LDA T5 + 0 
447a : 8d fc cf STA $cffc ; (sstack + 2)
447d : a5 56 __ LDA T5 + 1 
447f : 8d fd cf STA $cffd ; (sstack + 3)
4482 : a9 c1 __ LDA #$c1
4484 : 8d fa cf STA $cffa ; (sstack + 0)
4487 : a9 42 __ LDA #$42
4489 : 8d fb cf STA $cffb ; (sstack + 1)
448c : 20 3b 20 JSR $203b ; (scanf.s1 + 0)
448f : a5 55 __ LDA T5 + 0 
4491 : a0 02 __ LDY #$02
4493 : 91 23 __ STA (SP + 0),y 
4495 : a5 56 __ LDA T5 + 1 
4497 : c8 __ __ INY
4498 : 91 23 __ STA (SP + 0),y 
449a : a5 57 __ LDA T6 + 0 
449c : c8 __ __ INY
449d : 91 23 __ STA (SP + 0),y 
449f : a5 58 __ LDA T6 + 1 
44a1 : c8 __ __ INY
44a2 : 91 23 __ STA (SP + 0),y 
44a4 : a5 59 __ LDA T7 + 0 
44a6 : c8 __ __ INY
44a7 : 91 23 __ STA (SP + 0),y 
44a9 : a5 5a __ LDA T7 + 1 
44ab : c8 __ __ INY
44ac : 91 23 __ STA (SP + 0),y 
44ae : 20 c4 42 JSR $42c4 ; (getmove.s1 + 0)
44b1 : 4c fe 42 JMP $42fe ; (getmove.s3 + 0)
--------------------------------------------------------------------
strcmp@proxy: ; strcmp@proxy
44b4 : a9 7b __ LDA #$7b
44b6 : 85 0d __ STA P0 
44b8 : a9 cf __ LDA #$cf
44ba : 85 0e __ STA P1 
44bc : a9 f1 __ LDA #$f1
44be : 85 0f __ STA P2 
44c0 : a9 44 __ LDA #$44
44c2 : 85 10 __ STA P3 
--------------------------------------------------------------------
strcmp: ; strcmp(const u8*,const u8*)->i8
;   8, "/usr/local/include/oscar64/string.h"
.s4:
44c4 : a0 00 __ LDY #$00
44c6 : b1 0d __ LDA (P0),y 
44c8 : f0 16 __ BEQ $44e0 ; (strcmp.s4 + 28)
44ca : d1 0f __ CMP (P2),y 
44cc : d0 16 __ BNE $44e4 ; (strcmp.s4 + 32)
44ce : c8 __ __ INY
44cf : b1 0d __ LDA (P0),y 
44d1 : f0 0d __ BEQ $44e0 ; (strcmp.s4 + 28)
44d3 : d1 0f __ CMP (P2),y 
44d5 : d0 0d __ BNE $44e4 ; (strcmp.s4 + 32)
44d7 : c8 __ __ INY
44d8 : d0 ec __ BNE $44c6 ; (strcmp.s4 + 2)
44da : e6 0e __ INC P1 
44dc : e6 10 __ INC P3 
44de : d0 e6 __ BNE $44c6 ; (strcmp.s4 + 2)
44e0 : d1 0f __ CMP (P2),y 
44e2 : f0 08 __ BEQ $44ec ; (strcmp.s4 + 40)
44e4 : b0 04 __ BCS $44ea ; (strcmp.s4 + 38)
44e6 : a9 ff __ LDA #$ff
44e8 : 30 02 __ BMI $44ec ; (strcmp.s4 + 40)
44ea : a9 01 __ LDA #$01
44ec : 85 1b __ STA ACCU + 0 
.s3:
44ee : a5 1b __ LDA ACCU + 0 
44f0 : 60 __ __ RTS
--------------------------------------------------------------------
44f1 : __ __ __ BYT 73 74 6f 70 00                                  : stop.
--------------------------------------------------------------------
44f6 : __ __ __ BYT 70 61 73 73 00                                  : pass.
--------------------------------------------------------------------
getij@proxy: ; getij@proxy
44fb : a9 7b __ LDA #$7b
44fd : 85 0d __ STA P0 
44ff : a9 cf __ LDA #$cf
4501 : 85 0e __ STA P1 
4503 : a9 78 __ LDA #$78
4505 : 85 0f __ STA P2 
4507 : a9 cf __ LDA #$cf
4509 : 85 10 __ STA P3 
450b : a9 76 __ LDA #$76
450d : 85 11 __ STA P4 
450f : a9 cf __ LDA #$cf
4511 : 85 12 __ STA P5 
--------------------------------------------------------------------
getij: ; getij(u8*,i16*,i16*)->i16
;  54, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s4:
4513 : a0 00 __ LDY #$00
4515 : b1 0d __ LDA (P0),y ; (move + 0)
4517 : c9 41 __ CMP #$41
4519 : b0 03 __ BCS $451e ; (getij.s5 + 0)
451b : 4c b4 45 JMP $45b4 ; (getij.s11 + 0)
.s5:
451e : c9 49 __ CMP #$49
4520 : b0 05 __ BCS $4527 ; (getij.s13 + 0)
.s6:
4522 : e9 40 __ SBC #$40
4524 : 4c 4b 45 JMP $454b ; (getij.s7 + 0)
.s13:
4527 : c9 4a __ CMP #$4a
4529 : 90 f0 __ BCC $451b ; (getij.s4 + 8)
.s14:
452b : c9 55 __ CMP #$55
452d : b0 05 __ BCS $4534 ; (getij.s16 + 0)
.s15:
452f : e9 41 __ SBC #$41
4531 : 4c 4b 45 JMP $454b ; (getij.s7 + 0)
.s16:
4534 : c9 61 __ CMP #$61
4536 : 90 7c __ BCC $45b4 ; (getij.s11 + 0)
.s17:
4538 : c9 69 __ CMP #$69
453a : b0 05 __ BCS $4541 ; (getij.s19 + 0)
.s18:
453c : e9 60 __ SBC #$60
453e : 4c 4b 45 JMP $454b ; (getij.s7 + 0)
.s19:
4541 : c9 6a __ CMP #$6a
4543 : 90 6f __ BCC $45b4 ; (getij.s11 + 0)
.s20:
4545 : c9 75 __ CMP #$75
4547 : b0 6b __ BCS $45b4 ; (getij.s11 + 0)
.s21:
4549 : e9 61 __ SBC #$61
.s7:
454b : 91 11 __ STA (P4),y ; (j + 0)
454d : 98 __ __ TYA
454e : e9 00 __ SBC #$00
4550 : a0 01 __ LDY #$01
4552 : 91 11 __ STA (P4),y ; (j + 0)
4554 : b1 0d __ LDA (P0),y ; (move + 0)
4556 : 85 1d __ STA ACCU + 2 
4558 : 38 __ __ SEC
4559 : e9 30 __ SBC #$30
455b : 85 1b __ STA ACCU + 0 
455d : a9 00 __ LDA #$00
455f : e9 00 __ SBC #$00
4561 : 85 1c __ STA ACCU + 1 
4563 : c8 __ __ INY
4564 : b1 0d __ LDA (P0),y ; (move + 0)
4566 : f0 36 __ BEQ $459e ; (getij.s9 + 0)
.s8:
4568 : a5 1d __ LDA ACCU + 2 
456a : 0a __ __ ASL
456b : 85 1b __ STA ACCU + 0 
456d : a9 00 __ LDA #$00
456f : 2a __ __ ROL
4570 : 06 1b __ ASL ACCU + 0 
4572 : 2a __ __ ROL
4573 : aa __ __ TAX
4574 : a5 1b __ LDA ACCU + 0 
4576 : 65 1d __ ADC ACCU + 2 
4578 : 85 1d __ STA ACCU + 2 
457a : 8a __ __ TXA
457b : 69 00 __ ADC #$00
457d : 06 1d __ ASL ACCU + 2 
457f : 2a __ __ ROL
4580 : aa __ __ TAX
4581 : 38 __ __ SEC
4582 : a5 1d __ LDA ACCU + 2 
4584 : e9 e0 __ SBC #$e0
4586 : 85 1d __ STA ACCU + 2 
4588 : 8a __ __ TXA
4589 : e9 01 __ SBC #$01
458b : aa __ __ TAX
458c : 18 __ __ CLC
458d : a5 1d __ LDA ACCU + 2 
458f : 71 0d __ ADC (P0),y ; (move + 0)
4591 : 90 01 __ BCC $4594 ; (getij.s23 + 0)
.s22:
4593 : e8 __ __ INX
.s23:
4594 : 38 __ __ SEC
4595 : e9 30 __ SBC #$30
4597 : 85 1b __ STA ACCU + 0 
4599 : 8a __ __ TXA
459a : e9 00 __ SBC #$00
459c : 85 1c __ STA ACCU + 1 
.s9:
459e : 38 __ __ SEC
459f : a9 13 __ LDA #$13
45a1 : e5 1b __ SBC ACCU + 0 
45a3 : a0 00 __ LDY #$00
45a5 : 91 0f __ STA (P2),y ; (i + 0)
45a7 : aa __ __ TAX
45a8 : 98 __ __ TYA
45a9 : c8 __ __ INY
45aa : e5 1c __ SBC ACCU + 1 
45ac : 91 0f __ STA (P2),y ; (i + 0)
45ae : d0 04 __ BNE $45b4 ; (getij.s11 + 0)
.s12:
45b0 : e0 13 __ CPX #$13
45b2 : 90 06 __ BCC $45ba ; (getij.s10 + 0)
.s11:
45b4 : a9 00 __ LDA #$00
45b6 : 85 1b __ STA ACCU + 0 
45b8 : f0 04 __ BEQ $45be ; (getij.s3 + 0)
.s10:
45ba : 84 1b __ STY ACCU + 0 
45bc : a9 00 __ LDA #$00
.s3:
45be : 85 1c __ STA ACCU + 1 
45c0 : 60 __ __ RTS
--------------------------------------------------------------------
45c1 : __ __ __ BYT 0d 69 4c 4c 45 47 41 4c 20 4d 4f 56 45 2e 20 79 : .iLLEGAL MOVE. y
45d1 : __ __ __ BYT 4f 55 52 20 4d 4f 56 45 3f 20 00                : OUR MOVE? .
--------------------------------------------------------------------
examboard: ; examboard(i16)->void
;  52, "/Users/emarti/Projects/gnugo-c64/gnugo.h"
.s1:
45dc : a5 53 __ LDA T7 + 0 
45de : 8d ee cf STA $cfee ; (examboard@stack + 0)
45e1 : a5 54 __ LDA T7 + 1 
45e3 : 8d ef cf STA $cfef ; (examboard@stack + 1)
.s4:
45e6 : a5 11 __ LDA P4 ; (color + 0)
45e8 : 85 53 __ STA T7 + 0 
45ea : a5 12 __ LDA P5 ; (color + 1)
45ec : 85 54 __ STA T7 + 1 
45ee : 20 ca 3a JSR $3aca ; (eval.s1 + 0)
45f1 : a5 54 __ LDA T7 + 1 
45f3 : cd ca 69 CMP $69ca ; (mymove + 1)
45f6 : d0 19 __ BNE $4611 ; (examboard.s6 + 0)
.s7:
45f8 : a5 53 __ LDA T7 + 0 
45fa : cd c9 69 CMP $69c9 ; (mymove + 0)
45fd : d0 12 __ BNE $4611 ; (examboard.s6 + 0)
.s5:
45ff : a9 ff __ LDA #$ff
4601 : 8d c1 69 STA $69c1 ; (mjk + 0)
4604 : 8d c2 69 STA $69c2 ; (mjk + 1)
4607 : 8d bf 69 STA $69bf ; (mik + 0)
460a : 8d c0 69 STA $69c0 ; (mik + 1)
460d : a9 01 __ LDA #$01
460f : d0 10 __ BNE $4621 ; (examboard.s8 + 0)
.s6:
4611 : a9 ff __ LDA #$ff
4613 : 8d c5 69 STA $69c5 ; (ujk + 0)
4616 : 8d c6 69 STA $69c6 ; (ujk + 1)
4619 : 8d c3 69 STA $69c3 ; (uik + 0)
461c : 8d c4 69 STA $69c4 ; (uik + 1)
461f : a9 00 __ LDA #$00
.s8:
4621 : 85 51 __ STA T8 + 0 
4623 : a2 00 __ LDX #$00
4625 : 86 49 __ STX T3 + 0 
4627 : 86 4a __ STX T3 + 1 
4629 : a9 4e __ LDA #$4e
462b : 85 45 __ STA T1 + 0 
462d : a9 68 __ LDA #$68
462f : 85 46 __ STA T1 + 1 
4631 : a9 58 __ LDA #$58
4633 : 85 47 __ STA T2 + 0 
4635 : a9 6e __ LDA #$6e
4637 : 85 48 __ STA T2 + 1 
.l9:
4639 : a0 00 __ LDY #$00
463b : a5 54 __ LDA T7 + 1 
463d : d0 2d __ BNE $466c ; (examboard.l11 + 0)
.s26:
463f : a5 53 __ LDA T7 + 0 
4641 : d1 45 __ CMP (T1 + 0),y 
4643 : d0 27 __ BNE $466c ; (examboard.l11 + 0)
.s10:
4645 : b1 47 __ LDA (T2 + 0),y 
4647 : d0 23 __ BNE $466c ; (examboard.l11 + 0)
.s22:
4649 : 91 45 __ STA (T1 + 0),y 
464b : a5 51 __ LDA T8 + 0 
464d : f0 03 __ BEQ $4652 ; (examboard.s25 + 0)
464f : 4c d6 46 JMP $46d6 ; (examboard.s23 + 0)
.s25:
4652 : 8e c3 69 STX $69c3 ; (uik + 0)
4655 : 8c c5 69 STY $69c5 ; (ujk + 0)
4658 : 8d c6 69 STA $69c6 ; (ujk + 1)
465b : 8d c4 69 STA $69c4 ; (uik + 1)
465e : ee b7 69 INC $69b7 ; (mk + 0)
4661 : d0 03 __ BNE $4666 ; (examboard.s24 + 0)
.s30:
4663 : ee b8 69 INC $69b8 ; (mk + 1)
.s24:
4666 : e6 49 __ INC T3 + 0 
4668 : d0 02 __ BNE $466c ; (examboard.l11 + 0)
.s29:
466a : e6 4a __ INC T3 + 1 
.l11:
466c : c8 __ __ INY
466d : c0 13 __ CPY #$13
466f : b0 06 __ BCS $4677 ; (examboard.s12 + 0)
.s27:
4671 : a5 54 __ LDA T7 + 1 
4673 : d0 f7 __ BNE $466c ; (examboard.l11 + 0)
4675 : f0 c8 __ BEQ $463f ; (examboard.s26 + 0)
.s12:
4677 : a5 47 __ LDA T2 + 0 
4679 : 69 12 __ ADC #$12
467b : 85 47 __ STA T2 + 0 
467d : 90 03 __ BCC $4682 ; (examboard.s32 + 0)
.s31:
467f : e6 48 __ INC T2 + 1 
4681 : 18 __ __ CLC
.s32:
4682 : a5 45 __ LDA T1 + 0 
4684 : 69 13 __ ADC #$13
4686 : 85 45 __ STA T1 + 0 
4688 : 90 02 __ BCC $468c ; (examboard.s34 + 0)
.s33:
468a : e6 46 __ INC T1 + 1 
.s34:
468c : e8 __ __ INX
468d : e0 13 __ CPX #$13
468f : 90 a8 __ BCC $4639 ; (examboard.l9 + 0)
.s13:
4691 : a5 51 __ LDA T8 + 0 
4693 : d0 25 __ BNE $46ba ; (examboard.s14 + 0)
.s18:
4695 : a5 4a __ LDA T3 + 1 
4697 : 30 16 __ BMI $46af ; (examboard.s3 + 0)
.s21:
4699 : d0 06 __ BNE $46a1 ; (examboard.s19 + 0)
.s20:
469b : a5 49 __ LDA T3 + 0 
469d : c9 02 __ CMP #$02
469f : 90 0e __ BCC $46af ; (examboard.s3 + 0)
.s19:
46a1 : a9 ff __ LDA #$ff
46a3 : 8d c5 69 STA $69c5 ; (ujk + 0)
46a6 : 8d c6 69 STA $69c6 ; (ujk + 1)
46a9 : 8d c3 69 STA $69c3 ; (uik + 0)
46ac : 8d c4 69 STA $69c4 ; (uik + 1)
.s3:
46af : ad ee cf LDA $cfee ; (examboard@stack + 0)
46b2 : 85 53 __ STA T7 + 0 
46b4 : ad ef cf LDA $cfef ; (examboard@stack + 1)
46b7 : 85 54 __ STA T7 + 1 
46b9 : 60 __ __ RTS
.s14:
46ba : a5 4a __ LDA T3 + 1 
46bc : 30 f1 __ BMI $46af ; (examboard.s3 + 0)
.s17:
46be : d0 06 __ BNE $46c6 ; (examboard.s15 + 0)
.s16:
46c0 : a5 49 __ LDA T3 + 0 
46c2 : c9 02 __ CMP #$02
46c4 : 90 e9 __ BCC $46af ; (examboard.s3 + 0)
.s15:
46c6 : a9 ff __ LDA #$ff
46c8 : 8d c1 69 STA $69c1 ; (mjk + 0)
46cb : 8d c2 69 STA $69c2 ; (mjk + 1)
46ce : 8d bf 69 STA $69bf ; (mik + 0)
46d1 : 8d c0 69 STA $69c0 ; (mik + 1)
46d4 : b0 d9 __ BCS $46af ; (examboard.s3 + 0)
.s23:
46d6 : 8e bf 69 STX $69bf ; (mik + 0)
46d9 : 8c c1 69 STY $69c1 ; (mjk + 0)
46dc : a9 00 __ LDA #$00
46de : 8d c2 69 STA $69c2 ; (mjk + 1)
46e1 : 8d c0 69 STA $69c0 ; (mik + 1)
46e4 : ee b9 69 INC $69b9 ; (uk + 0)
46e7 : f0 03 __ BEQ $46ec ; (examboard.s28 + 0)
46e9 : 4c 66 46 JMP $4666 ; (examboard.s24 + 0)
.s28:
46ec : ee ba 69 INC $69ba ; (uk + 1)
46ef : 4c 66 46 JMP $4666 ; (examboard.s24 + 0)
--------------------------------------------------------------------
46f2 : __ __ __ BYT 74 48 49 4e 4b 49 4e 47 2e 2e 2e 00             : tHINKING....
--------------------------------------------------------------------
46fe : __ __ __ BYT 63 4f 4d 50 55 54 45 52 20 4d 4f 56 45 3a 20 50 : cOMPUTER MOVE: P
470e : __ __ __ BYT 41 53 53 0a 00                                  : ASS..
--------------------------------------------------------------------
4713 : __ __ __ BYT 64 4f 20 59 4f 55 20 57 41 4e 54 20 54 4f 20 43 : dO YOU WANT TO C
4723 : __ __ __ BYT 4f 55 4e 54 20 53 43 4f 52 45 20 5b 59 20 4f 52 : OUNT SCORE [Y OR
4733 : __ __ __ BYT 20 4e 5d 3f 20 00                               :  N]? .
--------------------------------------------------------------------
4739 : __ __ __ BYT 25 63 00                                        : %c.
--------------------------------------------------------------------
473c : __ __ __ BYT 0a 74 4f 20 43 4f 55 4e 54 20 53 43 4f 52 45 2c : .tO COUNT SCORE,
474c : __ __ __ BYT 20 57 45 20 4e 45 45 44 20 54 48 45 20 46 4f 4c :  WE NEED THE FOL
475c : __ __ __ BYT 4c 4f 57 49 4e 47 20 53 54 45 50 53 3a 0a 00    : LOWING STEPS:..
--------------------------------------------------------------------
476b : __ __ __ BYT 66 49 52 53 54 2c 20 69 20 4e 45 45 44 20 59 4f : fIRST, i NEED YO
477b : __ __ __ BYT 55 20 54 4f 20 52 45 4d 4f 56 45 20 41 4c 4c 20 : U TO REMOVE ALL 
478b : __ __ __ BYT 44 45 41 44 20 50 49 45 43 45 53 20 4f 4e 20 54 : DEAD PIECES ON T
479b : __ __ __ BYT 48 45 20 42 4f 41 52 44 2e 0a 00                : HE BOARD...
--------------------------------------------------------------------
47a6 : __ __ __ BYT 73 45 43 4f 4e 44 2c 20 69 20 4e 45 45 44 20 59 : sECOND, i NEED Y
47b6 : __ __ __ BYT 4f 55 20 54 4f 20 46 49 4c 4c 20 49 4e 20 4e 45 : OU TO FILL IN NE
47c6 : __ __ __ BYT 55 54 52 41 4c 20 54 45 52 52 49 54 4f 52 49 45 : UTRAL TERRITORIE
47d6 : __ __ __ BYT 53 20 57 49 54 48 20 00                         : S WITH .
--------------------------------------------------------------------
47de : __ __ __ BYT 50 49 45 43 45 53 2e 0a 00                      : PIECES...
--------------------------------------------------------------------
47e7 : __ __ __ BYT 6c 41 53 54 2c 20 69 20 57 49 4c 4c 20 46 49 4c : lAST, i WILL FIL
47f7 : __ __ __ BYT 4c 20 49 4e 20 41 4c 4c 20 50 49 45 43 45 53 20 : L IN ALL PIECES 
4807 : __ __ __ BYT 41 4e 44 20 41 4e 4e 4f 55 4e 43 45 20 54 48 45 : AND ANNOUNCE THE
4817 : __ __ __ BYT 20 57 49 4e 4e 45 52 2e 0a 00                   :  WINNER...
--------------------------------------------------------------------
4821 : __ __ __ BYT 0a 66 49 52 53 54 2c 20 59 4f 55 20 53 48 4f 55 : .fIRST, YOU SHOU
4831 : __ __ __ BYT 4c 44 20 45 4e 54 45 52 20 54 48 45 20 44 45 41 : LD ENTER THE DEA
4841 : __ __ __ BYT 44 20 50 49 45 43 45 53 20 28 42 4c 41 43 4b 20 : D PIECES (BLACK 
4851 : __ __ __ BYT 41 4e 44 20 57 48 49 54 45 29 20 54 4f 00       : AND WHITE) TO.
--------------------------------------------------------------------
485f : __ __ __ BYT 20 42 45 20 52 45 4d 4f 56 45 44 2e 20 20 65 4e :  BE REMOVED.  eN
486f : __ __ __ BYT 54 45 52 0a 00                                  : TER..
--------------------------------------------------------------------
4874 : __ __ __ BYT 20 27 53 54 4f 50 27 20 57 48 45 4e 20 59 4f 55 :  'STOP' WHEN YOU
4884 : __ __ __ BYT 20 48 41 56 45 20 46 49 4e 49 53 48 45 44 2e 0a :  HAVE FINISHED..
4894 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
createlist: ; createlist(i16,i16[]*)->void
;  71, "/Users/emarti/Projects/gnugo-c64/endgame.c"
.s4:
4895 : a9 00 __ LDA #$00
4897 : 85 1d __ STA ACCU + 2 
4899 : 85 43 __ STA T1 + 0 
489b : 85 44 __ STA T1 + 1 
489d : 85 46 __ STA T2 + 1 
489f : a9 13 __ LDA #$13
48a1 : 85 45 __ STA T2 + 0 
48a3 : a9 ed __ LDA #$ed
48a5 : 85 47 __ STA T3 + 0 
48a7 : a9 ff __ LDA #$ff
48a9 : 85 48 __ STA T3 + 1 
48ab : a9 4e __ LDA #$4e
48ad : 85 4f __ STA T11 + 0 
.l5:
48af : a9 00 __ LDA #$00
48b1 : 85 1e __ STA ACCU + 3 
.l6:
48b3 : a9 00 __ LDA #$00
48b5 : 85 49 __ STA T7 + 0 
48b7 : 18 __ __ CLC
48b8 : a5 43 __ LDA T1 + 0 
48ba : 65 1e __ ADC ACCU + 3 
48bc : 85 4b __ STA T8 + 0 
48be : a5 44 __ LDA T1 + 1 
48c0 : 69 00 __ ADC #$00
48c2 : 85 4c __ STA T8 + 1 
48c4 : 18 __ __ CLC
48c5 : a9 4e __ LDA #$4e
48c7 : 65 4b __ ADC T8 + 0 
48c9 : 85 4d __ STA T9 + 0 
48cb : a9 68 __ LDA #$68
48cd : 65 4c __ ADC T8 + 1 
48cf : 85 4e __ STA T9 + 1 
48d1 : a5 0e __ LDA P1 ; (color + 1)
48d3 : f0 03 __ BEQ $48d8 ; (createlist.s21 + 0)
48d5 : 4c 1c 4a JMP $4a1c ; (createlist.s19 + 0)
.s21:
48d8 : a5 0d __ LDA P0 ; (color + 0)
48da : a0 00 __ LDY #$00
48dc : d1 4d __ CMP (T9 + 0),y 
48de : d0 f5 __ BNE $48d5 ; (createlist.l6 + 34)
.s7:
48e0 : a5 1d __ LDA ACCU + 2 
48e2 : f0 43 __ BEQ $4927 ; (createlist.s10 + 0)
.s8:
48e4 : 18 __ __ CLC
48e5 : a5 47 __ LDA T3 + 0 
48e7 : 65 1e __ ADC ACCU + 3 
48e9 : a8 __ __ TAY
48ea : a5 48 __ LDA T3 + 1 
48ec : 69 00 __ ADC #$00
48ee : 85 1c __ STA ACCU + 1 
48f0 : 18 __ __ CLC
48f1 : 69 68 __ ADC #$68
48f3 : 85 50 __ STA T11 + 1 
48f5 : a5 0d __ LDA P0 ; (color + 0)
48f7 : d1 4f __ CMP (T11 + 0),y 
48f9 : d0 2c __ BNE $4927 ; (createlist.s10 + 0)
.s9:
48fb : a5 4b __ LDA T8 + 0 
48fd : 0a __ __ ASL
48fe : 85 1b __ STA ACCU + 0 
4900 : a5 4c __ LDA T8 + 1 
4902 : 2a __ __ ROL
4903 : 06 1b __ ASL ACCU + 0 
4905 : 2a __ __ ROL
4906 : aa __ __ TAX
4907 : 18 __ __ CLC
4908 : a5 1b __ LDA ACCU + 0 
490a : 65 4b __ ADC T8 + 0 
490c : 85 49 __ STA T7 + 0 
490e : 8a __ __ TXA
490f : 65 4c __ ADC T8 + 1 
4911 : 06 49 __ ASL T7 + 0 
4913 : 2a __ __ ROL
4914 : 18 __ __ CLC
4915 : 65 10 __ ADC P3 ; (movelist + 1)
4917 : 85 4a __ STA T7 + 1 
4919 : 98 __ __ TYA
491a : a4 0f __ LDY P2 ; (movelist + 0)
491c : 91 49 __ STA (T7 + 0),y 
491e : a5 1c __ LDA ACCU + 1 
4920 : c8 __ __ INY
4921 : 91 49 __ STA (T7 + 0),y 
4923 : a9 01 __ LDA #$01
4925 : 85 49 __ STA T7 + 0 
.s10:
4927 : a5 1e __ LDA ACCU + 3 
4929 : c9 12 __ CMP #$12
492b : b0 42 __ BCS $496f ; (createlist.s13 + 0)
.s11:
492d : a5 0d __ LDA P0 ; (color + 0)
492f : a0 01 __ LDY #$01
4931 : d1 4d __ CMP (T9 + 0),y 
4933 : d0 3a __ BNE $496f ; (createlist.s13 + 0)
.s12:
4935 : a5 4b __ LDA T8 + 0 
4937 : 0a __ __ ASL
4938 : 85 1b __ STA ACCU + 0 
493a : a5 4c __ LDA T8 + 1 
493c : 2a __ __ ROL
493d : 06 1b __ ASL ACCU + 0 
493f : 2a __ __ ROL
4940 : aa __ __ TAX
4941 : 18 __ __ CLC
4942 : a5 1b __ LDA ACCU + 0 
4944 : 65 4b __ ADC T8 + 0 
4946 : 85 4d __ STA T9 + 0 
4948 : 8a __ __ TXA
4949 : 65 4c __ ADC T8 + 1 
494b : 06 4d __ ASL T9 + 0 
494d : 2a __ __ ROL
494e : aa __ __ TAX
494f : 18 __ __ CLC
4950 : a5 0f __ LDA P2 ; (movelist + 0)
4952 : 65 4d __ ADC T9 + 0 
4954 : 85 4d __ STA T9 + 0 
4956 : 8a __ __ TXA
4957 : 65 10 __ ADC P3 ; (movelist + 1)
4959 : 85 4e __ STA T9 + 1 
495b : a5 49 __ LDA T7 + 0 
495d : 0a __ __ ASL
495e : a8 __ __ TAY
495f : 18 __ __ CLC
4960 : a5 4b __ LDA T8 + 0 
4962 : 69 01 __ ADC #$01
4964 : 91 4d __ STA (T9 + 0),y 
4966 : a5 4c __ LDA T8 + 1 
4968 : 69 00 __ ADC #$00
496a : c8 __ __ INY
496b : 91 4d __ STA (T9 + 0),y 
496d : e6 49 __ INC T7 + 0 
.s13:
496f : a5 1d __ LDA ACCU + 2 
4971 : c9 12 __ CMP #$12
4973 : b0 51 __ BCS $49c6 ; (createlist.s16 + 0)
.s14:
4975 : a5 45 __ LDA T2 + 0 
4977 : 65 1e __ ADC ACCU + 3 
4979 : 85 4d __ STA T9 + 0 
497b : a8 __ __ TAY
497c : a5 46 __ LDA T2 + 1 
497e : 69 00 __ ADC #$00
4980 : 85 4e __ STA T9 + 1 
4982 : 18 __ __ CLC
4983 : 69 68 __ ADC #$68
4985 : 85 1c __ STA ACCU + 1 
4987 : a9 4e __ LDA #$4e
4989 : 85 1b __ STA ACCU + 0 
498b : a5 0d __ LDA P0 ; (color + 0)
498d : d1 1b __ CMP (ACCU + 0),y 
498f : d0 35 __ BNE $49c6 ; (createlist.s16 + 0)
.s15:
4991 : a5 4b __ LDA T8 + 0 
4993 : 0a __ __ ASL
4994 : 85 1b __ STA ACCU + 0 
4996 : a5 4c __ LDA T8 + 1 
4998 : 2a __ __ ROL
4999 : 06 1b __ ASL ACCU + 0 
499b : 2a __ __ ROL
499c : aa __ __ TAX
499d : 18 __ __ CLC
499e : a5 1b __ LDA ACCU + 0 
49a0 : 65 4b __ ADC T8 + 0 
49a2 : 85 1b __ STA ACCU + 0 
49a4 : 8a __ __ TXA
49a5 : 65 4c __ ADC T8 + 1 
49a7 : 06 1b __ ASL ACCU + 0 
49a9 : 2a __ __ ROL
49aa : aa __ __ TAX
49ab : 18 __ __ CLC
49ac : a5 0f __ LDA P2 ; (movelist + 0)
49ae : 65 1b __ ADC ACCU + 0 
49b0 : 85 1b __ STA ACCU + 0 
49b2 : 8a __ __ TXA
49b3 : 65 10 __ ADC P3 ; (movelist + 1)
49b5 : 85 1c __ STA ACCU + 1 
49b7 : a5 49 __ LDA T7 + 0 
49b9 : 0a __ __ ASL
49ba : a8 __ __ TAY
49bb : a5 4d __ LDA T9 + 0 
49bd : 91 1b __ STA (ACCU + 0),y 
49bf : a5 4e __ LDA T9 + 1 
49c1 : c8 __ __ INY
49c2 : 91 1b __ STA (ACCU + 0),y 
49c4 : e6 49 __ INC T7 + 0 
.s16:
49c6 : a5 1e __ LDA ACCU + 3 
49c8 : f0 52 __ BEQ $4a1c ; (createlist.s19 + 0)
.s17:
49ca : 38 __ __ SEC
49cb : a5 4b __ LDA T8 + 0 
49cd : e9 01 __ SBC #$01
49cf : 85 4d __ STA T9 + 0 
49d1 : a8 __ __ TAY
49d2 : a5 4c __ LDA T8 + 1 
49d4 : e9 00 __ SBC #$00
49d6 : 85 4e __ STA T9 + 1 
49d8 : 18 __ __ CLC
49d9 : 69 68 __ ADC #$68
49db : 85 1c __ STA ACCU + 1 
49dd : a9 4e __ LDA #$4e
49df : 85 1b __ STA ACCU + 0 
49e1 : a5 0d __ LDA P0 ; (color + 0)
49e3 : d1 1b __ CMP (ACCU + 0),y 
49e5 : d0 35 __ BNE $4a1c ; (createlist.s19 + 0)
.s18:
49e7 : a5 4b __ LDA T8 + 0 
49e9 : 0a __ __ ASL
49ea : 85 1b __ STA ACCU + 0 
49ec : a5 4c __ LDA T8 + 1 
49ee : 2a __ __ ROL
49ef : 06 1b __ ASL ACCU + 0 
49f1 : 2a __ __ ROL
49f2 : aa __ __ TAX
49f3 : 18 __ __ CLC
49f4 : a5 1b __ LDA ACCU + 0 
49f6 : 65 4b __ ADC T8 + 0 
49f8 : 85 1b __ STA ACCU + 0 
49fa : 8a __ __ TXA
49fb : 65 4c __ ADC T8 + 1 
49fd : 06 1b __ ASL ACCU + 0 
49ff : 2a __ __ ROL
4a00 : aa __ __ TAX
4a01 : 18 __ __ CLC
4a02 : a5 0f __ LDA P2 ; (movelist + 0)
4a04 : 65 1b __ ADC ACCU + 0 
4a06 : 85 1b __ STA ACCU + 0 
4a08 : 8a __ __ TXA
4a09 : 65 10 __ ADC P3 ; (movelist + 1)
4a0b : 85 1c __ STA ACCU + 1 
4a0d : a5 49 __ LDA T7 + 0 
4a0f : 0a __ __ ASL
4a10 : a8 __ __ TAY
4a11 : a5 4d __ LDA T9 + 0 
4a13 : 91 1b __ STA (ACCU + 0),y 
4a15 : a5 4e __ LDA T9 + 1 
4a17 : c8 __ __ INY
4a18 : 91 1b __ STA (ACCU + 0),y 
4a1a : e6 49 __ INC T7 + 0 
.s19:
4a1c : a5 4b __ LDA T8 + 0 
4a1e : 0a __ __ ASL
4a1f : 85 1b __ STA ACCU + 0 
4a21 : a5 4c __ LDA T8 + 1 
4a23 : 2a __ __ ROL
4a24 : 06 1b __ ASL ACCU + 0 
4a26 : 2a __ __ ROL
4a27 : aa __ __ TAX
4a28 : 18 __ __ CLC
4a29 : a5 1b __ LDA ACCU + 0 
4a2b : 65 4b __ ADC T8 + 0 
4a2d : 85 4b __ STA T8 + 0 
4a2f : 8a __ __ TXA
4a30 : 65 4c __ ADC T8 + 1 
4a32 : 06 4b __ ASL T8 + 0 
4a34 : 2a __ __ ROL
4a35 : aa __ __ TAX
4a36 : 18 __ __ CLC
4a37 : a5 0f __ LDA P2 ; (movelist + 0)
4a39 : 65 4b __ ADC T8 + 0 
4a3b : 85 4b __ STA T8 + 0 
4a3d : 8a __ __ TXA
4a3e : 65 10 __ ADC P3 ; (movelist + 1)
4a40 : 85 4c __ STA T8 + 1 
4a42 : 06 49 __ ASL T7 + 0 
4a44 : a9 e8 __ LDA #$e8
4a46 : a4 49 __ LDY T7 + 0 
4a48 : 91 4b __ STA (T8 + 0),y 
4a4a : a9 03 __ LDA #$03
4a4c : c8 __ __ INY
4a4d : 91 4b __ STA (T8 + 0),y 
4a4f : e6 1e __ INC ACCU + 3 
4a51 : a5 1e __ LDA ACCU + 3 
4a53 : c9 13 __ CMP #$13
4a55 : b0 03 __ BCS $4a5a ; (createlist.s20 + 0)
4a57 : 4c b3 48 JMP $48b3 ; (createlist.l6 + 0)
.s20:
4a5a : a5 45 __ LDA T2 + 0 
4a5c : 69 12 __ ADC #$12
4a5e : 85 45 __ STA T2 + 0 
4a60 : 90 03 __ BCC $4a65 ; (createlist.s23 + 0)
.s22:
4a62 : e6 46 __ INC T2 + 1 
4a64 : 18 __ __ CLC
.s23:
4a65 : a5 47 __ LDA T3 + 0 
4a67 : 69 13 __ ADC #$13
4a69 : 85 47 __ STA T3 + 0 
4a6b : 90 03 __ BCC $4a70 ; (createlist.s25 + 0)
.s24:
4a6d : e6 48 __ INC T3 + 1 
4a6f : 18 __ __ CLC
.s25:
4a70 : a5 43 __ LDA T1 + 0 
4a72 : 69 13 __ ADC #$13
4a74 : 85 43 __ STA T1 + 0 
4a76 : 90 02 __ BCC $4a7a ; (createlist.s27 + 0)
.s26:
4a78 : e6 44 __ INC T1 + 1 
.s27:
4a7a : e6 1d __ INC ACCU + 2 
4a7c : a5 1d __ LDA ACCU + 2 
4a7e : c9 13 __ CMP #$13
4a80 : b0 03 __ BCS $4a85 ; (createlist.s3 + 0)
4a82 : 4c af 48 JMP $48af ; (createlist.l5 + 0)
.s3:
4a85 : 60 __ __ RTS
--------------------------------------------------------------------
4a86 : __ __ __ BYT 64 45 41 44 20 50 49 45 43 45 3f 20 00          : dEAD PIECE? .
--------------------------------------------------------------------
bfslist@proxy: ; bfslist@proxy
4a93 : ad 78 cf LDA $cf78 ; (i + 0)
4a96 : 85 0f __ STA P2 
4a98 : ad 76 cf LDA $cf76 ; (j + 0)
4a9b : 85 11 __ STA P4 
--------------------------------------------------------------------
bfslist: ; bfslist(i16,i16,i16[]*,i16*)->i16
; 141, "/Users/emarti/Projects/gnugo-c64/endgame.c"
.s4:
4a9d : a9 00 __ LDA #$00
4a9f : 85 49 __ STA T4 + 0 
4aa1 : 85 4a __ STA T4 + 1 
4aa3 : a9 a6 __ LDA #$a6
4aa5 : 85 43 __ STA T0 + 0 
4aa7 : a9 93 __ LDA #$93
4aa9 : 85 44 __ STA T0 + 1 
.l5:
4aab : a9 01 __ LDA #$01
4aad : a0 00 __ LDY #$00
4aaf : 91 43 __ STA (T0 + 0),y 
4ab1 : 98 __ __ TYA
4ab2 : c8 __ __ INY
4ab3 : 91 43 __ STA (T0 + 0),y 
4ab5 : 18 __ __ CLC
4ab6 : a5 43 __ LDA T0 + 0 
4ab8 : 69 02 __ ADC #$02
4aba : 85 43 __ STA T0 + 0 
4abc : 90 02 __ BCC $4ac0 ; (bfslist.s22 + 0)
.s21:
4abe : e6 44 __ INC T0 + 1 
.s22:
4ac0 : c9 78 __ CMP #$78
4ac2 : d0 e7 __ BNE $4aab ; (bfslist.l5 + 0)
.s20:
4ac4 : a5 44 __ LDA T0 + 1 
4ac6 : c9 96 __ CMP #$96
4ac8 : d0 e1 __ BNE $4aab ; (bfslist.l5 + 0)
.s6:
4aca : a5 0f __ LDA P2 ; (i + 0)
4acc : 85 1b __ STA ACCU + 0 
4ace : a5 10 __ LDA P3 ; (i + 1)
4ad0 : 85 1c __ STA ACCU + 1 
4ad2 : a9 13 __ LDA #$13
4ad4 : 20 b9 4d JSR $4db9 ; (mul16by8 + 0)
4ad7 : 18 __ __ CLC
4ad8 : a5 11 __ LDA P4 ; (j + 0)
4ada : 65 1b __ ADC ACCU + 0 
4adc : 85 43 __ STA T0 + 0 
4ade : 8d f8 cf STA $cff8 ; (u + 0)
4ae1 : a5 12 __ LDA P5 ; (j + 1)
4ae3 : 65 1c __ ADC ACCU + 1 
4ae5 : 85 44 __ STA T0 + 1 
4ae7 : 8d f9 cf STA $cff9 ; (u + 1)
4aea : 06 43 __ ASL T0 + 0 
4aec : 26 44 __ ROL T0 + 1 
4aee : 18 __ __ CLC
4aef : a9 a6 __ LDA #$a6
4af1 : 65 43 __ ADC T0 + 0 
4af3 : 85 43 __ STA T0 + 0 
4af5 : a9 93 __ LDA #$93
4af7 : 65 44 __ ADC T0 + 1 
4af9 : 85 44 __ STA T0 + 1 
4afb : a9 03 __ LDA #$03
4afd : a0 00 __ LDY #$00
4aff : 91 43 __ STA (T0 + 0),y 
4b01 : 98 __ __ TYA
4b02 : c8 __ __ INY
4b03 : 91 43 __ STA (T0 + 0),y 
4b05 : a9 f8 __ LDA #$f8
4b07 : 85 0d __ STA P0 
4b09 : a9 cf __ LDA #$cf
4b0b : 85 0e __ STA P1 
4b0d : 20 44 4c JSR $4c44 ; (enqueue.s4 + 0)
4b10 : ad 03 68 LDA $6803 ; (size + 1)
4b13 : 0d 02 68 ORA $6802 ; (size + 0)
4b16 : d0 09 __ BNE $4b21 ; (bfslist.s25 + 0)
.s16:
4b18 : a5 49 __ LDA T4 + 0 
4b1a : 85 1b __ STA ACCU + 0 
4b1c : a5 4a __ LDA T4 + 1 
4b1e : 85 1c __ STA ACCU + 1 
.s3:
4b20 : 60 __ __ RTS
.s25:
4b21 : a9 f6 __ LDA #$f6
4b23 : 85 0d __ STA P0 
4b25 : a9 cf __ LDA #$cf
4b27 : 85 0e __ STA P1 
.l7:
4b29 : ad a6 97 LDA $97a6 ; (pstart + 0)
4b2c : 85 43 __ STA T0 + 0 
4b2e : ad a7 97 LDA $97a7 ; (pstart + 1)
4b31 : 85 44 __ STA T0 + 1 
4b33 : a0 00 __ LDY #$00
4b35 : 84 47 __ STY T3 + 0 
4b37 : b1 43 __ LDA (T0 + 0),y 
4b39 : 8d f8 cf STA $cff8 ; (u + 0)
4b3c : c8 __ __ INY
4b3d : b1 43 __ LDA (T0 + 0),y 
4b3f : 8d f9 cf STA $cff9 ; (u + 1)
.l8:
4b42 : ad f8 cf LDA $cff8 ; (u + 0)
4b45 : 85 43 __ STA T0 + 0 
4b47 : 0a __ __ ASL
4b48 : 85 1b __ STA ACCU + 0 
4b4a : ad f9 cf LDA $cff9 ; (u + 1)
4b4d : 85 44 __ STA T0 + 1 
4b4f : 2a __ __ ROL
4b50 : 06 1b __ ASL ACCU + 0 
4b52 : 2a __ __ ROL
4b53 : aa __ __ TAX
4b54 : 18 __ __ CLC
4b55 : a5 1b __ LDA ACCU + 0 
4b57 : 65 43 __ ADC T0 + 0 
4b59 : 85 45 __ STA T1 + 0 
4b5b : 8a __ __ TXA
4b5c : 65 44 __ ADC T0 + 1 
4b5e : 06 45 __ ASL T1 + 0 
4b60 : 2a __ __ ROL
4b61 : aa __ __ TAX
4b62 : 18 __ __ CLC
4b63 : a5 13 __ LDA P6 ; (movelist + 0)
4b65 : 65 45 __ ADC T1 + 0 
4b67 : 85 45 __ STA T1 + 0 
4b69 : 8a __ __ TXA
4b6a : 65 14 __ ADC P7 ; (movelist + 1)
4b6c : 85 46 __ STA T1 + 1 
4b6e : a5 47 __ LDA T3 + 0 
4b70 : 0a __ __ ASL
4b71 : a8 __ __ TAY
4b72 : b1 45 __ LDA (T1 + 0),y 
4b74 : aa __ __ TAX
4b75 : c8 __ __ INY
4b76 : b1 45 __ LDA (T1 + 0),y 
4b78 : 86 45 __ STX T1 + 0 
4b7a : 8e f6 cf STX $cff6 ; (v + 0)
4b7d : 8d f7 cf STA $cff7 ; (v + 1)
4b80 : 85 46 __ STA T1 + 1 
4b82 : c9 03 __ CMP #$03
4b84 : d0 04 __ BNE $4b8a ; (bfslist.s9 + 0)
.s19:
4b86 : e0 e8 __ CPX #$e8
4b88 : f0 2f __ BEQ $4bb9 ; (bfslist.s13 + 0)
.s9:
4b8a : 06 45 __ ASL T1 + 0 
4b8c : 26 46 __ ROL T1 + 1 
4b8e : 18 __ __ CLC
4b8f : a9 a6 __ LDA #$a6
4b91 : 65 45 __ ADC T1 + 0 
4b93 : 85 43 __ STA T0 + 0 
4b95 : a9 93 __ LDA #$93
4b97 : 65 46 __ ADC T1 + 1 
4b99 : 85 44 __ STA T0 + 1 
4b9b : a0 01 __ LDY #$01
4b9d : b1 43 __ LDA (T0 + 0),y 
4b9f : d0 13 __ BNE $4bb4 ; (bfslist.s11 + 0)
.s12:
4ba1 : a8 __ __ TAY
4ba2 : b1 43 __ LDA (T0 + 0),y 
4ba4 : c9 01 __ CMP #$01
4ba6 : d0 0c __ BNE $4bb4 ; (bfslist.s11 + 0)
.s10:
4ba8 : a9 03 __ LDA #$03
4baa : 91 43 __ STA (T0 + 0),y 
4bac : 98 __ __ TYA
4bad : a0 01 __ LDY #$01
4baf : 91 43 __ STA (T0 + 0),y 
4bb1 : 20 44 4c JSR $4c44 ; (enqueue.s4 + 0)
.s11:
4bb4 : e6 47 __ INC T3 + 0 
4bb6 : 4c 42 4b JMP $4b42 ; (bfslist.l8 + 0)
.s13:
4bb9 : ad a6 97 LDA $97a6 ; (pstart + 0)
4bbc : 18 __ __ CLC
4bbd : 69 02 __ ADC #$02
4bbf : 85 45 __ STA T1 + 0 
4bc1 : 8d a6 97 STA $97a6 ; (pstart + 0)
4bc4 : ad a7 97 LDA $97a7 ; (pstart + 1)
4bc7 : 69 00 __ ADC #$00
4bc9 : 85 46 __ STA T1 + 1 
4bcb : 8d a7 97 STA $97a7 ; (pstart + 1)
4bce : ad 02 68 LDA $6802 ; (size + 0)
4bd1 : 18 __ __ CLC
4bd2 : 69 ff __ ADC #$ff
4bd4 : 85 1b __ STA ACCU + 0 
4bd6 : 8d 02 68 STA $6802 ; (size + 0)
4bd9 : ad 03 68 LDA $6803 ; (size + 1)
4bdc : 69 ff __ ADC #$ff
4bde : 85 1c __ STA ACCU + 1 
4be0 : 8d 03 68 STA $6803 ; (size + 1)
4be3 : a5 49 __ LDA T4 + 0 
4be5 : 0a __ __ ASL
4be6 : a8 __ __ TAY
4be7 : a5 4a __ LDA T4 + 1 
4be9 : 2a __ __ ROL
4bea : aa __ __ TAX
4beb : 98 __ __ TYA
4bec : 18 __ __ CLC
4bed : 69 a8 __ ADC #$a8
4bef : 85 47 __ STA T3 + 0 
4bf1 : 8a __ __ TXA
4bf2 : 69 97 __ ADC #$97
4bf4 : 85 48 __ STA T3 + 1 
4bf6 : a5 43 __ LDA T0 + 0 
4bf8 : a0 00 __ LDY #$00
4bfa : 91 47 __ STA (T3 + 0),y 
4bfc : a5 44 __ LDA T0 + 1 
4bfe : c8 __ __ INY
4bff : 91 47 __ STA (T3 + 0),y 
4c01 : a9 97 __ LDA #$97
4c03 : c5 46 __ CMP T1 + 1 
4c05 : d0 04 __ BNE $4c0b ; (bfslist.s18 + 0)
.s17:
4c07 : a9 a2 __ LDA #$a2
4c09 : c5 45 __ CMP T1 + 0 
.s18:
4c0b : b0 0a __ BCS $4c17 ; (bfslist.s15 + 0)
.s14:
4c0d : a9 78 __ LDA #$78
4c0f : 8d a6 97 STA $97a6 ; (pstart + 0)
4c12 : a9 96 __ LDA #$96
4c14 : 8d a7 97 STA $97a7 ; (pstart + 1)
.s15:
4c17 : 06 43 __ ASL T0 + 0 
4c19 : 26 44 __ ROL T0 + 1 
4c1b : 18 __ __ CLC
4c1c : a9 a6 __ LDA #$a6
4c1e : 65 43 __ ADC T0 + 0 
4c20 : 85 43 __ STA T0 + 0 
4c22 : a9 93 __ LDA #$93
4c24 : 65 44 __ ADC T0 + 1 
4c26 : 85 44 __ STA T0 + 1 
4c28 : a9 02 __ LDA #$02
4c2a : a0 00 __ LDY #$00
4c2c : 91 43 __ STA (T0 + 0),y 
4c2e : 98 __ __ TYA
4c2f : c8 __ __ INY
4c30 : 91 43 __ STA (T0 + 0),y 
4c32 : e6 49 __ INC T4 + 0 
4c34 : d0 02 __ BNE $4c38 ; (bfslist.s24 + 0)
.s23:
4c36 : e6 4a __ INC T4 + 1 
.s24:
4c38 : a5 1b __ LDA ACCU + 0 
4c3a : 05 1c __ ORA ACCU + 1 
4c3c : f0 03 __ BEQ $4c41 ; (bfslist.s24 + 9)
4c3e : 4c 29 4b JMP $4b29 ; (bfslist.l7 + 0)
4c41 : 4c 18 4b JMP $4b18 ; (bfslist.s16 + 0)
--------------------------------------------------------------------
enqueue: ; enqueue(i16*)->void
; 120, "/Users/emarti/Projects/gnugo-c64/endgame.c"
.s4:
4c44 : ee 02 68 INC $6802 ; (size + 0)
4c47 : d0 03 __ BNE $4c4c ; (enqueue.s13 + 0)
.s12:
4c49 : ee 03 68 INC $6803 ; (size + 1)
.s13:
4c4c : ad 01 68 LDA $6801 ; (queinit + 1)
4c4f : 85 44 __ STA T0 + 1 
4c51 : 0d 00 68 ORA $6800 ; (queinit + 0)
4c54 : c9 01 __ CMP #$01
4c56 : a9 00 __ LDA #$00
4c58 : 69 ff __ ADC #$ff
4c5a : ae 00 68 LDX $6800 ; (queinit + 0)
4c5d : 29 01 __ AND #$01
4c5f : 85 1d __ STA ACCU + 2 
4c61 : f0 14 __ BEQ $4c77 ; (enqueue.s6 + 0)
.s5:
4c63 : a9 78 __ LDA #$78
4c65 : 8d a6 97 STA $97a6 ; (pstart + 0)
4c68 : 8d a4 97 STA $97a4 ; (pe + 0)
4c6b : a9 96 __ LDA #$96
4c6d : 8d a7 97 STA $97a7 ; (pstart + 1)
4c70 : 8d a5 97 STA $97a5 ; (pe + 1)
4c73 : a2 00 __ LDX #$00
4c75 : 86 44 __ STX T0 + 1 
.s6:
4c77 : a0 00 __ LDY #$00
4c79 : b1 0d __ LDA (P0),y ; (v + 0)
4c7b : 85 1b __ STA ACCU + 0 
4c7d : c8 __ __ INY
4c7e : b1 0d __ LDA (P0),y ; (v + 0)
4c80 : 85 1c __ STA ACCU + 1 
4c82 : ad a4 97 LDA $97a4 ; (pe + 0)
4c85 : 85 45 __ STA T2 + 0 
4c87 : 18 __ __ CLC
4c88 : 69 02 __ ADC #$02
4c8a : 8d a4 97 STA $97a4 ; (pe + 0)
4c8d : ad a5 97 LDA $97a5 ; (pe + 1)
4c90 : 85 46 __ STA T2 + 1 
4c92 : a5 1b __ LDA ACCU + 0 
4c94 : 88 __ __ DEY
4c95 : 91 45 __ STA (T2 + 0),y 
4c97 : a5 1c __ LDA ACCU + 1 
4c99 : c8 __ __ INY
4c9a : 91 45 __ STA (T2 + 0),y 
4c9c : a5 46 __ LDA T2 + 1 
4c9e : 69 00 __ ADC #$00
4ca0 : 8d a5 97 STA $97a5 ; (pe + 1)
4ca3 : a9 97 __ LDA #$97
4ca5 : cd a5 97 CMP $97a5 ; (pe + 1)
4ca8 : d0 05 __ BNE $4caf ; (enqueue.s11 + 0)
.s10:
4caa : a9 a2 __ LDA #$a2
4cac : cd a4 97 CMP $97a4 ; (pe + 0)
.s11:
4caf : b0 0a __ BCS $4cbb ; (enqueue.s9 + 0)
.s7:
4cb1 : a9 78 __ LDA #$78
4cb3 : 8d a4 97 STA $97a4 ; (pe + 0)
4cb6 : a9 96 __ LDA #$96
4cb8 : 8d a5 97 STA $97a5 ; (pe + 1)
.s9:
4cbb : a5 1d __ LDA ACCU + 2 
4cbd : f0 0e __ BEQ $4ccd ; (enqueue.s3 + 0)
.s8:
4cbf : 8a __ __ TXA
4cc0 : 18 __ __ CLC
4cc1 : 69 01 __ ADC #$01
4cc3 : 8d 00 68 STA $6800 ; (queinit + 0)
4cc6 : a5 44 __ LDA T0 + 1 
4cc8 : 69 00 __ ADC #$00
4cca : 8d 01 68 STA $6801 ; (queinit + 1)
.s3:
4ccd : 60 __ __ RTS
--------------------------------------------------------------------
4cce : __ __ __ BYT 6e 45 58 54 2c 20 59 4f 55 20 4e 45 45 44 20 54 : nEXT, YOU NEED T
4cde : __ __ __ BYT 4f 20 46 49 4c 4c 20 49 4e 20 50 49 45 43 45 53 : O FILL IN PIECES
4cee : __ __ __ BYT 20 28 42 4c 41 43 4b 20 41 4e 44 20 57 48 49 54 :  (BLACK AND WHIT
4cfe : __ __ __ BYT 45 29 20 49 4e 20 41 4c 4c 20 4e 45 55 54 52 41 : E) IN ALL NEUTRA
4d0e : __ __ __ BYT 4c 00                                           : L.
--------------------------------------------------------------------
4d10 : __ __ __ BYT 20 54 45 52 52 49 54 4f 52 49 45 53 2e 0a 00    :  TERRITORIES...
--------------------------------------------------------------------
4d1f : __ __ __ BYT 65 4e 54 45 52 20 59 4f 55 52 20 41 4e 44 20 4d : eNTER YOUR AND M
4d2f : __ __ __ BYT 59 20 50 49 45 43 45 53 20 41 4c 54 45 52 4e 41 : Y PIECES ALTERNA
4d3f : __ __ __ BYT 54 45 4c 59 20 41 4e 44 00                      : TELY AND.
--------------------------------------------------------------------
4d48 : __ __ __ BYT 20 45 4e 54 45 52 20 27 53 54 4f 50 27 20 57 48 :  ENTER 'STOP' WH
4d58 : __ __ __ BYT 45 4e 20 46 49 4e 49 53 48 0a 00                : EN FINISH..
--------------------------------------------------------------------
4d63 : __ __ __ BYT 79 4f 55 52 20 50 49 45 43 45 3f 20 00          : yOUR PIECE? .
--------------------------------------------------------------------
4d70 : __ __ __ BYT 6d 59 20 50 49 45 43 45 3f 20 00                : mY PIECE? .
--------------------------------------------------------------------
4d7b : __ __ __ BYT 79 4f 55 52 20 54 4f 54 41 4c 20 4e 55 4d 42 45 : yOUR TOTAL NUMBE
4d8b : __ __ __ BYT 52 20 4f 46 20 50 49 45 43 45 53 20 25 64 0a 00 : R OF PIECES %d..
--------------------------------------------------------------------
4d9b : __ __ __ BYT 6d 59 20 54 4f 54 41 4c 20 4e 55 4d 42 45 52 20 : mY TOTAL NUMBER 
4dab : __ __ __ BYT 4f 46 20 50 49 45 43 45 53 20 25 64 0a 00       : OF PIECES %d..
--------------------------------------------------------------------
mul16by8: ; mul16by8
4db9 : 4a __ __ LSR
4dba : f0 2e __ BEQ $4dea ; (mul16by8 + 49)
4dbc : a2 00 __ LDX #$00
4dbe : a0 00 __ LDY #$00
4dc0 : 90 13 __ BCC $4dd5 ; (mul16by8 + 28)
4dc2 : a4 1b __ LDY ACCU + 0 
4dc4 : a6 1c __ LDX ACCU + 1 
4dc6 : b0 0d __ BCS $4dd5 ; (mul16by8 + 28)
4dc8 : 85 02 __ STA $02 
4dca : 18 __ __ CLC
4dcb : 98 __ __ TYA
4dcc : 65 1b __ ADC ACCU + 0 
4dce : a8 __ __ TAY
4dcf : 8a __ __ TXA
4dd0 : 65 1c __ ADC ACCU + 1 
4dd2 : aa __ __ TAX
4dd3 : a5 02 __ LDA $02 
4dd5 : 06 1b __ ASL ACCU + 0 
4dd7 : 26 1c __ ROL ACCU + 1 
4dd9 : 4a __ __ LSR
4dda : 90 f9 __ BCC $4dd5 ; (mul16by8 + 28)
4ddc : d0 ea __ BNE $4dc8 ; (mul16by8 + 15)
4dde : 18 __ __ CLC
4ddf : 98 __ __ TYA
4de0 : 65 1b __ ADC ACCU + 0 
4de2 : 85 1b __ STA ACCU + 0 
4de4 : 8a __ __ TXA
4de5 : 65 1c __ ADC ACCU + 1 
4de7 : 85 1c __ STA ACCU + 1 
4de9 : 60 __ __ RTS
4dea : b0 04 __ BCS $4df0 ; (mul16by8 + 55)
4dec : 85 1b __ STA ACCU + 0 
4dee : 85 1c __ STA ACCU + 1 
4df0 : 60 __ __ RTS
--------------------------------------------------------------------
mul32by8: ; mul32by8
4df1 : a0 00 __ LDY #$00
4df3 : 84 07 __ STY WORK + 4 
4df5 : 84 08 __ STY WORK + 5 
4df7 : 84 09 __ STY WORK + 6 
4df9 : 4a __ __ LSR
4dfa : b0 0d __ BCS $4e09 ; (mul32by8 + 24)
4dfc : f0 26 __ BEQ $4e24 ; (mul32by8 + 51)
4dfe : 06 1b __ ASL ACCU + 0 
4e00 : 26 1c __ ROL ACCU + 1 
4e02 : 26 1d __ ROL ACCU + 2 
4e04 : 26 1e __ ROL ACCU + 3 
4e06 : 4a __ __ LSR
4e07 : 90 f5 __ BCC $4dfe ; (mul32by8 + 13)
4e09 : aa __ __ TAX
4e0a : 18 __ __ CLC
4e0b : a5 07 __ LDA WORK + 4 
4e0d : 65 1b __ ADC ACCU + 0 
4e0f : 85 07 __ STA WORK + 4 
4e11 : a5 08 __ LDA WORK + 5 
4e13 : 65 1c __ ADC ACCU + 1 
4e15 : 85 08 __ STA WORK + 5 
4e17 : a5 09 __ LDA WORK + 6 
4e19 : 65 1d __ ADC ACCU + 2 
4e1b : 85 09 __ STA WORK + 6 
4e1d : 98 __ __ TYA
4e1e : 65 1e __ ADC ACCU + 3 
4e20 : a8 __ __ TAY
4e21 : 8a __ __ TXA
4e22 : d0 da __ BNE $4dfe ; (mul32by8 + 13)
4e24 : 84 0a __ STY WORK + 7 
4e26 : 60 __ __ RTS
--------------------------------------------------------------------
freg: ; freg
4e27 : b1 19 __ LDA (IP + 0),y 
4e29 : c8 __ __ INY
4e2a : aa __ __ TAX
4e2b : b5 00 __ LDA $00,x 
4e2d : 85 03 __ STA WORK + 0 
4e2f : b5 01 __ LDA $01,x 
4e31 : 85 04 __ STA WORK + 1 
4e33 : b5 02 __ LDA $02,x 
4e35 : 85 05 __ STA WORK + 2 
4e37 : b5 03 __ LDA WORK + 0,x 
4e39 : 85 06 __ STA WORK + 3 
4e3b : a5 05 __ LDA WORK + 2 
4e3d : 0a __ __ ASL
4e3e : a5 06 __ LDA WORK + 3 
4e40 : 2a __ __ ROL
4e41 : 85 08 __ STA WORK + 5 
4e43 : f0 06 __ BEQ $4e4b ; (freg + 36)
4e45 : a5 05 __ LDA WORK + 2 
4e47 : 09 80 __ ORA #$80
4e49 : 85 05 __ STA WORK + 2 
4e4b : a5 1d __ LDA ACCU + 2 
4e4d : 0a __ __ ASL
4e4e : a5 1e __ LDA ACCU + 3 
4e50 : 2a __ __ ROL
4e51 : 85 07 __ STA WORK + 4 
4e53 : f0 06 __ BEQ $4e5b ; (freg + 52)
4e55 : a5 1d __ LDA ACCU + 2 
4e57 : 09 80 __ ORA #$80
4e59 : 85 1d __ STA ACCU + 2 
4e5b : 60 __ __ RTS
4e5c : 06 1e __ ASL ACCU + 3 
4e5e : a5 07 __ LDA WORK + 4 
4e60 : 6a __ __ ROR
4e61 : 85 1e __ STA ACCU + 3 
4e63 : b0 06 __ BCS $4e6b ; (freg + 68)
4e65 : a5 1d __ LDA ACCU + 2 
4e67 : 29 7f __ AND #$7f
4e69 : 85 1d __ STA ACCU + 2 
4e6b : 60 __ __ RTS
--------------------------------------------------------------------
faddsub: ; faddsub
4e6c : a5 06 __ LDA WORK + 3 
4e6e : 49 80 __ EOR #$80
4e70 : 85 06 __ STA WORK + 3 
4e72 : a9 ff __ LDA #$ff
4e74 : c5 07 __ CMP WORK + 4 
4e76 : f0 04 __ BEQ $4e7c ; (faddsub + 16)
4e78 : c5 08 __ CMP WORK + 5 
4e7a : d0 11 __ BNE $4e8d ; (faddsub + 33)
4e7c : a5 1e __ LDA ACCU + 3 
4e7e : 09 7f __ ORA #$7f
4e80 : 85 1e __ STA ACCU + 3 
4e82 : a9 80 __ LDA #$80
4e84 : 85 1d __ STA ACCU + 2 
4e86 : a9 00 __ LDA #$00
4e88 : 85 1b __ STA ACCU + 0 
4e8a : 85 1c __ STA ACCU + 1 
4e8c : 60 __ __ RTS
4e8d : 38 __ __ SEC
4e8e : a5 07 __ LDA WORK + 4 
4e90 : e5 08 __ SBC WORK + 5 
4e92 : f0 38 __ BEQ $4ecc ; (faddsub + 96)
4e94 : aa __ __ TAX
4e95 : b0 25 __ BCS $4ebc ; (faddsub + 80)
4e97 : e0 e9 __ CPX #$e9
4e99 : b0 0e __ BCS $4ea9 ; (faddsub + 61)
4e9b : a5 08 __ LDA WORK + 5 
4e9d : 85 07 __ STA WORK + 4 
4e9f : a9 00 __ LDA #$00
4ea1 : 85 1b __ STA ACCU + 0 
4ea3 : 85 1c __ STA ACCU + 1 
4ea5 : 85 1d __ STA ACCU + 2 
4ea7 : f0 23 __ BEQ $4ecc ; (faddsub + 96)
4ea9 : a5 1d __ LDA ACCU + 2 
4eab : 4a __ __ LSR
4eac : 66 1c __ ROR ACCU + 1 
4eae : 66 1b __ ROR ACCU + 0 
4eb0 : e8 __ __ INX
4eb1 : d0 f8 __ BNE $4eab ; (faddsub + 63)
4eb3 : 85 1d __ STA ACCU + 2 
4eb5 : a5 08 __ LDA WORK + 5 
4eb7 : 85 07 __ STA WORK + 4 
4eb9 : 4c cc 4e JMP $4ecc ; (faddsub + 96)
4ebc : e0 18 __ CPX #$18
4ebe : b0 33 __ BCS $4ef3 ; (faddsub + 135)
4ec0 : a5 05 __ LDA WORK + 2 
4ec2 : 4a __ __ LSR
4ec3 : 66 04 __ ROR WORK + 1 
4ec5 : 66 03 __ ROR WORK + 0 
4ec7 : ca __ __ DEX
4ec8 : d0 f8 __ BNE $4ec2 ; (faddsub + 86)
4eca : 85 05 __ STA WORK + 2 
4ecc : a5 1e __ LDA ACCU + 3 
4ece : 29 80 __ AND #$80
4ed0 : 85 1e __ STA ACCU + 3 
4ed2 : 45 06 __ EOR WORK + 3 
4ed4 : 30 31 __ BMI $4f07 ; (faddsub + 155)
4ed6 : 18 __ __ CLC
4ed7 : a5 1b __ LDA ACCU + 0 
4ed9 : 65 03 __ ADC WORK + 0 
4edb : 85 1b __ STA ACCU + 0 
4edd : a5 1c __ LDA ACCU + 1 
4edf : 65 04 __ ADC WORK + 1 
4ee1 : 85 1c __ STA ACCU + 1 
4ee3 : a5 1d __ LDA ACCU + 2 
4ee5 : 65 05 __ ADC WORK + 2 
4ee7 : 85 1d __ STA ACCU + 2 
4ee9 : 90 08 __ BCC $4ef3 ; (faddsub + 135)
4eeb : 66 1d __ ROR ACCU + 2 
4eed : 66 1c __ ROR ACCU + 1 
4eef : 66 1b __ ROR ACCU + 0 
4ef1 : e6 07 __ INC WORK + 4 
4ef3 : a5 07 __ LDA WORK + 4 
4ef5 : c9 ff __ CMP #$ff
4ef7 : f0 83 __ BEQ $4e7c ; (faddsub + 16)
4ef9 : 4a __ __ LSR
4efa : 05 1e __ ORA ACCU + 3 
4efc : 85 1e __ STA ACCU + 3 
4efe : b0 06 __ BCS $4f06 ; (faddsub + 154)
4f00 : a5 1d __ LDA ACCU + 2 
4f02 : 29 7f __ AND #$7f
4f04 : 85 1d __ STA ACCU + 2 
4f06 : 60 __ __ RTS
4f07 : 38 __ __ SEC
4f08 : a5 1b __ LDA ACCU + 0 
4f0a : e5 03 __ SBC WORK + 0 
4f0c : 85 1b __ STA ACCU + 0 
4f0e : a5 1c __ LDA ACCU + 1 
4f10 : e5 04 __ SBC WORK + 1 
4f12 : 85 1c __ STA ACCU + 1 
4f14 : a5 1d __ LDA ACCU + 2 
4f16 : e5 05 __ SBC WORK + 2 
4f18 : 85 1d __ STA ACCU + 2 
4f1a : b0 19 __ BCS $4f35 ; (faddsub + 201)
4f1c : 38 __ __ SEC
4f1d : a9 00 __ LDA #$00
4f1f : e5 1b __ SBC ACCU + 0 
4f21 : 85 1b __ STA ACCU + 0 
4f23 : a9 00 __ LDA #$00
4f25 : e5 1c __ SBC ACCU + 1 
4f27 : 85 1c __ STA ACCU + 1 
4f29 : a9 00 __ LDA #$00
4f2b : e5 1d __ SBC ACCU + 2 
4f2d : 85 1d __ STA ACCU + 2 
4f2f : a5 1e __ LDA ACCU + 3 
4f31 : 49 80 __ EOR #$80
4f33 : 85 1e __ STA ACCU + 3 
4f35 : a5 1d __ LDA ACCU + 2 
4f37 : 30 ba __ BMI $4ef3 ; (faddsub + 135)
4f39 : 05 1c __ ORA ACCU + 1 
4f3b : 05 1b __ ORA ACCU + 0 
4f3d : f0 0f __ BEQ $4f4e ; (faddsub + 226)
4f3f : c6 07 __ DEC WORK + 4 
4f41 : f0 0b __ BEQ $4f4e ; (faddsub + 226)
4f43 : 06 1b __ ASL ACCU + 0 
4f45 : 26 1c __ ROL ACCU + 1 
4f47 : 26 1d __ ROL ACCU + 2 
4f49 : 10 f4 __ BPL $4f3f ; (faddsub + 211)
4f4b : 4c f3 4e JMP $4ef3 ; (faddsub + 135)
4f4e : a9 00 __ LDA #$00
4f50 : 85 1b __ STA ACCU + 0 
4f52 : 85 1c __ STA ACCU + 1 
4f54 : 85 1d __ STA ACCU + 2 
4f56 : 85 1e __ STA ACCU + 3 
4f58 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul: ; crt_fmul
4f59 : a5 1b __ LDA ACCU + 0 
4f5b : 05 1c __ ORA ACCU + 1 
4f5d : 05 1d __ ORA ACCU + 2 
4f5f : f0 0e __ BEQ $4f6f ; (crt_fmul + 22)
4f61 : a5 03 __ LDA WORK + 0 
4f63 : 05 04 __ ORA WORK + 1 
4f65 : 05 05 __ ORA WORK + 2 
4f67 : d0 09 __ BNE $4f72 ; (crt_fmul + 25)
4f69 : 85 1b __ STA ACCU + 0 
4f6b : 85 1c __ STA ACCU + 1 
4f6d : 85 1d __ STA ACCU + 2 
4f6f : 85 1e __ STA ACCU + 3 
4f71 : 60 __ __ RTS
4f72 : a5 1e __ LDA ACCU + 3 
4f74 : 45 06 __ EOR WORK + 3 
4f76 : 29 80 __ AND #$80
4f78 : 85 1e __ STA ACCU + 3 
4f7a : a9 ff __ LDA #$ff
4f7c : c5 07 __ CMP WORK + 4 
4f7e : f0 42 __ BEQ $4fc2 ; (crt_fmul + 105)
4f80 : c5 08 __ CMP WORK + 5 
4f82 : f0 3e __ BEQ $4fc2 ; (crt_fmul + 105)
4f84 : a9 00 __ LDA #$00
4f86 : 85 09 __ STA WORK + 6 
4f88 : 85 0a __ STA WORK + 7 
4f8a : 85 0b __ STA WORK + 8 
4f8c : a4 1b __ LDY ACCU + 0 
4f8e : a5 03 __ LDA WORK + 0 
4f90 : d0 06 __ BNE $4f98 ; (crt_fmul + 63)
4f92 : a5 04 __ LDA WORK + 1 
4f94 : f0 0a __ BEQ $4fa0 ; (crt_fmul + 71)
4f96 : d0 05 __ BNE $4f9d ; (crt_fmul + 68)
4f98 : 20 f3 4f JSR $4ff3 ; (crt_fmul8 + 0)
4f9b : a5 04 __ LDA WORK + 1 
4f9d : 20 f3 4f JSR $4ff3 ; (crt_fmul8 + 0)
4fa0 : a5 05 __ LDA WORK + 2 
4fa2 : 20 f3 4f JSR $4ff3 ; (crt_fmul8 + 0)
4fa5 : 38 __ __ SEC
4fa6 : a5 0b __ LDA WORK + 8 
4fa8 : 30 06 __ BMI $4fb0 ; (crt_fmul + 87)
4faa : 06 09 __ ASL WORK + 6 
4fac : 26 0a __ ROL WORK + 7 
4fae : 2a __ __ ROL
4faf : 18 __ __ CLC
4fb0 : 29 7f __ AND #$7f
4fb2 : 85 0b __ STA WORK + 8 
4fb4 : a5 07 __ LDA WORK + 4 
4fb6 : 65 08 __ ADC WORK + 5 
4fb8 : 90 19 __ BCC $4fd3 ; (crt_fmul + 122)
4fba : e9 7f __ SBC #$7f
4fbc : b0 04 __ BCS $4fc2 ; (crt_fmul + 105)
4fbe : c9 ff __ CMP #$ff
4fc0 : d0 15 __ BNE $4fd7 ; (crt_fmul + 126)
4fc2 : a5 1e __ LDA ACCU + 3 
4fc4 : 09 7f __ ORA #$7f
4fc6 : 85 1e __ STA ACCU + 3 
4fc8 : a9 80 __ LDA #$80
4fca : 85 1d __ STA ACCU + 2 
4fcc : a9 00 __ LDA #$00
4fce : 85 1b __ STA ACCU + 0 
4fd0 : 85 1c __ STA ACCU + 1 
4fd2 : 60 __ __ RTS
4fd3 : e9 7e __ SBC #$7e
4fd5 : 90 15 __ BCC $4fec ; (crt_fmul + 147)
4fd7 : 4a __ __ LSR
4fd8 : 05 1e __ ORA ACCU + 3 
4fda : 85 1e __ STA ACCU + 3 
4fdc : a9 00 __ LDA #$00
4fde : 6a __ __ ROR
4fdf : 05 0b __ ORA WORK + 8 
4fe1 : 85 1d __ STA ACCU + 2 
4fe3 : a5 0a __ LDA WORK + 7 
4fe5 : 85 1c __ STA ACCU + 1 
4fe7 : a5 09 __ LDA WORK + 6 
4fe9 : 85 1b __ STA ACCU + 0 
4feb : 60 __ __ RTS
4fec : a9 00 __ LDA #$00
4fee : 85 1e __ STA ACCU + 3 
4ff0 : f0 d8 __ BEQ $4fca ; (crt_fmul + 113)
4ff2 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul8: ; crt_fmul8
4ff3 : 38 __ __ SEC
4ff4 : 6a __ __ ROR
4ff5 : 90 1e __ BCC $5015 ; (crt_fmul8 + 34)
4ff7 : aa __ __ TAX
4ff8 : 18 __ __ CLC
4ff9 : 98 __ __ TYA
4ffa : 65 09 __ ADC WORK + 6 
4ffc : 85 09 __ STA WORK + 6 
4ffe : a5 0a __ LDA WORK + 7 
5000 : 65 1c __ ADC ACCU + 1 
5002 : 85 0a __ STA WORK + 7 
5004 : a5 0b __ LDA WORK + 8 
5006 : 65 1d __ ADC ACCU + 2 
5008 : 6a __ __ ROR
5009 : 85 0b __ STA WORK + 8 
500b : 8a __ __ TXA
500c : 66 0a __ ROR WORK + 7 
500e : 66 09 __ ROR WORK + 6 
5010 : 4a __ __ LSR
5011 : f0 0d __ BEQ $5020 ; (crt_fmul8 + 45)
5013 : b0 e2 __ BCS $4ff7 ; (crt_fmul8 + 4)
5015 : 66 0b __ ROR WORK + 8 
5017 : 66 0a __ ROR WORK + 7 
5019 : 66 09 __ ROR WORK + 6 
501b : 4a __ __ LSR
501c : 90 f7 __ BCC $5015 ; (crt_fmul8 + 34)
501e : d0 d7 __ BNE $4ff7 ; (crt_fmul8 + 4)
5020 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fdiv: ; crt_fdiv
5021 : a5 1b __ LDA ACCU + 0 
5023 : 05 1c __ ORA ACCU + 1 
5025 : 05 1d __ ORA ACCU + 2 
5027 : d0 03 __ BNE $502c ; (crt_fdiv + 11)
5029 : 85 1e __ STA ACCU + 3 
502b : 60 __ __ RTS
502c : a5 1e __ LDA ACCU + 3 
502e : 45 06 __ EOR WORK + 3 
5030 : 29 80 __ AND #$80
5032 : 85 1e __ STA ACCU + 3 
5034 : a5 08 __ LDA WORK + 5 
5036 : f0 62 __ BEQ $509a ; (crt_fdiv + 121)
5038 : a5 07 __ LDA WORK + 4 
503a : c9 ff __ CMP #$ff
503c : f0 5c __ BEQ $509a ; (crt_fdiv + 121)
503e : a9 00 __ LDA #$00
5040 : 85 09 __ STA WORK + 6 
5042 : 85 0a __ STA WORK + 7 
5044 : 85 0b __ STA WORK + 8 
5046 : a2 18 __ LDX #$18
5048 : a5 1b __ LDA ACCU + 0 
504a : c5 03 __ CMP WORK + 0 
504c : a5 1c __ LDA ACCU + 1 
504e : e5 04 __ SBC WORK + 1 
5050 : a5 1d __ LDA ACCU + 2 
5052 : e5 05 __ SBC WORK + 2 
5054 : 90 13 __ BCC $5069 ; (crt_fdiv + 72)
5056 : a5 1b __ LDA ACCU + 0 
5058 : e5 03 __ SBC WORK + 0 
505a : 85 1b __ STA ACCU + 0 
505c : a5 1c __ LDA ACCU + 1 
505e : e5 04 __ SBC WORK + 1 
5060 : 85 1c __ STA ACCU + 1 
5062 : a5 1d __ LDA ACCU + 2 
5064 : e5 05 __ SBC WORK + 2 
5066 : 85 1d __ STA ACCU + 2 
5068 : 38 __ __ SEC
5069 : 26 09 __ ROL WORK + 6 
506b : 26 0a __ ROL WORK + 7 
506d : 26 0b __ ROL WORK + 8 
506f : ca __ __ DEX
5070 : f0 0a __ BEQ $507c ; (crt_fdiv + 91)
5072 : 06 1b __ ASL ACCU + 0 
5074 : 26 1c __ ROL ACCU + 1 
5076 : 26 1d __ ROL ACCU + 2 
5078 : b0 dc __ BCS $5056 ; (crt_fdiv + 53)
507a : 90 cc __ BCC $5048 ; (crt_fdiv + 39)
507c : 38 __ __ SEC
507d : a5 0b __ LDA WORK + 8 
507f : 30 06 __ BMI $5087 ; (crt_fdiv + 102)
5081 : 06 09 __ ASL WORK + 6 
5083 : 26 0a __ ROL WORK + 7 
5085 : 2a __ __ ROL
5086 : 18 __ __ CLC
5087 : 29 7f __ AND #$7f
5089 : 85 0b __ STA WORK + 8 
508b : a5 07 __ LDA WORK + 4 
508d : e5 08 __ SBC WORK + 5 
508f : 90 1a __ BCC $50ab ; (crt_fdiv + 138)
5091 : 18 __ __ CLC
5092 : 69 7f __ ADC #$7f
5094 : b0 04 __ BCS $509a ; (crt_fdiv + 121)
5096 : c9 ff __ CMP #$ff
5098 : d0 15 __ BNE $50af ; (crt_fdiv + 142)
509a : a5 1e __ LDA ACCU + 3 
509c : 09 7f __ ORA #$7f
509e : 85 1e __ STA ACCU + 3 
50a0 : a9 80 __ LDA #$80
50a2 : 85 1d __ STA ACCU + 2 
50a4 : a9 00 __ LDA #$00
50a6 : 85 1c __ STA ACCU + 1 
50a8 : 85 1b __ STA ACCU + 0 
50aa : 60 __ __ RTS
50ab : 69 7f __ ADC #$7f
50ad : 90 15 __ BCC $50c4 ; (crt_fdiv + 163)
50af : 4a __ __ LSR
50b0 : 05 1e __ ORA ACCU + 3 
50b2 : 85 1e __ STA ACCU + 3 
50b4 : a9 00 __ LDA #$00
50b6 : 6a __ __ ROR
50b7 : 05 0b __ ORA WORK + 8 
50b9 : 85 1d __ STA ACCU + 2 
50bb : a5 0a __ LDA WORK + 7 
50bd : 85 1c __ STA ACCU + 1 
50bf : a5 09 __ LDA WORK + 6 
50c1 : 85 1b __ STA ACCU + 0 
50c3 : 60 __ __ RTS
50c4 : a9 00 __ LDA #$00
50c6 : 85 1e __ STA ACCU + 3 
50c8 : 85 1d __ STA ACCU + 2 
50ca : 85 1c __ STA ACCU + 1 
50cc : 85 1b __ STA ACCU + 0 
50ce : 60 __ __ RTS
--------------------------------------------------------------------
mul16: ; mul16
50cf : a0 00 __ LDY #$00
50d1 : 84 06 __ STY WORK + 3 
50d3 : a5 03 __ LDA WORK + 0 
50d5 : a6 04 __ LDX WORK + 1 
50d7 : f0 1c __ BEQ $50f5 ; (mul16 + 38)
50d9 : 38 __ __ SEC
50da : 6a __ __ ROR
50db : 90 0d __ BCC $50ea ; (mul16 + 27)
50dd : aa __ __ TAX
50de : 18 __ __ CLC
50df : 98 __ __ TYA
50e0 : 65 1b __ ADC ACCU + 0 
50e2 : a8 __ __ TAY
50e3 : a5 06 __ LDA WORK + 3 
50e5 : 65 1c __ ADC ACCU + 1 
50e7 : 85 06 __ STA WORK + 3 
50e9 : 8a __ __ TXA
50ea : 06 1b __ ASL ACCU + 0 
50ec : 26 1c __ ROL ACCU + 1 
50ee : 4a __ __ LSR
50ef : 90 f9 __ BCC $50ea ; (mul16 + 27)
50f1 : d0 ea __ BNE $50dd ; (mul16 + 14)
50f3 : a5 04 __ LDA WORK + 1 
50f5 : 4a __ __ LSR
50f6 : 90 0d __ BCC $5105 ; (mul16 + 54)
50f8 : aa __ __ TAX
50f9 : 18 __ __ CLC
50fa : 98 __ __ TYA
50fb : 65 1b __ ADC ACCU + 0 
50fd : a8 __ __ TAY
50fe : a5 06 __ LDA WORK + 3 
5100 : 65 1c __ ADC ACCU + 1 
5102 : 85 06 __ STA WORK + 3 
5104 : 8a __ __ TXA
5105 : 06 1b __ ASL ACCU + 0 
5107 : 26 1c __ ROL ACCU + 1 
5109 : 4a __ __ LSR
510a : b0 ec __ BCS $50f8 ; (mul16 + 41)
510c : d0 f7 __ BNE $5105 ; (mul16 + 54)
510e : 84 05 __ STY WORK + 2 
5110 : 60 __ __ RTS
--------------------------------------------------------------------
divs16@proxy: ; divs16@proxy
5111 : a9 13 __ LDA #$13
5113 : 85 03 __ STA WORK + 0 
--------------------------------------------------------------------
divs16: ; divs16
5115 : 24 1c __ BIT ACCU + 1 
5117 : 10 0d __ BPL $5126 ; (divs16 + 17)
5119 : 20 30 51 JSR $5130 ; (negaccu + 0)
511c : 24 04 __ BIT WORK + 1 
511e : 10 0d __ BPL $512d ; (divs16 + 24)
5120 : 20 3e 51 JSR $513e ; (negtmp + 0)
5123 : 4c 4c 51 JMP $514c ; (divmod + 0)
5126 : 24 04 __ BIT WORK + 1 
5128 : 10 f9 __ BPL $5123 ; (divs16 + 14)
512a : 20 3e 51 JSR $513e ; (negtmp + 0)
512d : 20 4c 51 JSR $514c ; (divmod + 0)
--------------------------------------------------------------------
negaccu: ; negaccu
5130 : 38 __ __ SEC
5131 : a9 00 __ LDA #$00
5133 : e5 1b __ SBC ACCU + 0 
5135 : 85 1b __ STA ACCU + 0 
5137 : a9 00 __ LDA #$00
5139 : e5 1c __ SBC ACCU + 1 
513b : 85 1c __ STA ACCU + 1 
513d : 60 __ __ RTS
--------------------------------------------------------------------
negtmp: ; negtmp
513e : 38 __ __ SEC
513f : a9 00 __ LDA #$00
5141 : e5 03 __ SBC WORK + 0 
5143 : 85 03 __ STA WORK + 0 
5145 : a9 00 __ LDA #$00
5147 : e5 04 __ SBC WORK + 1 
5149 : 85 04 __ STA WORK + 1 
514b : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
514c : a5 1c __ LDA ACCU + 1 
514e : d0 3b __ BNE $518b ; (divmod + 63)
5150 : a5 04 __ LDA WORK + 1 
5152 : d0 1e __ BNE $5172 ; (divmod + 38)
5154 : 85 06 __ STA WORK + 3 
5156 : a2 04 __ LDX #$04
5158 : 06 1b __ ASL ACCU + 0 
515a : 2a __ __ ROL
515b : c5 03 __ CMP WORK + 0 
515d : 90 02 __ BCC $5161 ; (divmod + 21)
515f : e5 03 __ SBC WORK + 0 
5161 : 26 1b __ ROL ACCU + 0 
5163 : 2a __ __ ROL
5164 : c5 03 __ CMP WORK + 0 
5166 : 90 02 __ BCC $516a ; (divmod + 30)
5168 : e5 03 __ SBC WORK + 0 
516a : 26 1b __ ROL ACCU + 0 
516c : ca __ __ DEX
516d : d0 eb __ BNE $515a ; (divmod + 14)
516f : 85 05 __ STA WORK + 2 
5171 : 60 __ __ RTS
5172 : a5 1b __ LDA ACCU + 0 
5174 : 85 05 __ STA WORK + 2 
5176 : a5 1c __ LDA ACCU + 1 
5178 : 85 06 __ STA WORK + 3 
517a : a9 00 __ LDA #$00
517c : 85 1b __ STA ACCU + 0 
517e : 85 1c __ STA ACCU + 1 
5180 : 60 __ __ RTS
5181 : 85 03 __ STA WORK + 0 
5183 : a9 00 __ LDA #$00
5185 : 85 04 __ STA WORK + 1 
5187 : a5 1c __ LDA ACCU + 1 
5189 : f0 c9 __ BEQ $5154 ; (divmod + 8)
518b : a5 04 __ LDA WORK + 1 
518d : d0 1f __ BNE $51ae ; (divmod + 98)
518f : a5 03 __ LDA WORK + 0 
5191 : 30 1b __ BMI $51ae ; (divmod + 98)
5193 : a9 00 __ LDA #$00
5195 : 85 06 __ STA WORK + 3 
5197 : a2 10 __ LDX #$10
5199 : 06 1b __ ASL ACCU + 0 
519b : 26 1c __ ROL ACCU + 1 
519d : 2a __ __ ROL
519e : c5 03 __ CMP WORK + 0 
51a0 : 90 02 __ BCC $51a4 ; (divmod + 88)
51a2 : e5 03 __ SBC WORK + 0 
51a4 : 26 1b __ ROL ACCU + 0 
51a6 : 26 1c __ ROL ACCU + 1 
51a8 : ca __ __ DEX
51a9 : d0 f2 __ BNE $519d ; (divmod + 81)
51ab : 85 05 __ STA WORK + 2 
51ad : 60 __ __ RTS
51ae : a9 00 __ LDA #$00
51b0 : 85 05 __ STA WORK + 2 
51b2 : 85 06 __ STA WORK + 3 
51b4 : a0 10 __ LDY #$10
51b6 : 18 __ __ CLC
51b7 : 26 1b __ ROL ACCU + 0 
51b9 : 26 1c __ ROL ACCU + 1 
51bb : 26 05 __ ROL WORK + 2 
51bd : 26 06 __ ROL WORK + 3 
51bf : 38 __ __ SEC
51c0 : a5 05 __ LDA WORK + 2 
51c2 : e5 03 __ SBC WORK + 0 
51c4 : aa __ __ TAX
51c5 : a5 06 __ LDA WORK + 3 
51c7 : e5 04 __ SBC WORK + 1 
51c9 : 90 04 __ BCC $51cf ; (divmod + 131)
51cb : 86 05 __ STX WORK + 2 
51cd : 85 06 __ STA WORK + 3 
51cf : 88 __ __ DEY
51d0 : d0 e5 __ BNE $51b7 ; (divmod + 107)
51d2 : 26 1b __ ROL ACCU + 0 
51d4 : 26 1c __ ROL ACCU + 1 
51d6 : 60 __ __ RTS
--------------------------------------------------------------------
mods16@proxy: ; mods16@proxy
51d7 : a9 00 __ LDA #$00
51d9 : 85 04 __ STA WORK + 1 
--------------------------------------------------------------------
mods16: ; mods16
51db : 24 1c __ BIT ACCU + 1 
51dd : 10 10 __ BPL $51ef ; (mods16 + 20)
51df : 20 30 51 JSR $5130 ; (negaccu + 0)
51e2 : 24 04 __ BIT WORK + 1 
51e4 : 10 03 __ BPL $51e9 ; (mods16 + 14)
51e6 : 20 3e 51 JSR $513e ; (negtmp + 0)
51e9 : 20 4c 51 JSR $514c ; (divmod + 0)
51ec : 4c 28 52 JMP $5228 ; (negtmpb + 0)
51ef : 24 04 __ BIT WORK + 1 
51f1 : 10 03 __ BPL $51f6 ; (mods16 + 27)
51f3 : 20 3e 51 JSR $513e ; (negtmp + 0)
51f6 : 4c 4c 51 JMP $514c ; (divmod + 0)
51f9 : 60 __ __ RTS
--------------------------------------------------------------------
divmods16@proxy: ; divmods16@proxy
51fa : a9 13 __ LDA #$13
51fc : 85 03 __ STA WORK + 0 
--------------------------------------------------------------------
divmods16: ; divmods16
51fe : 24 1c __ BIT ACCU + 1 
5200 : 30 10 __ BMI $5212 ; (divmods16 + 20)
5202 : 24 04 __ BIT WORK + 1 
5204 : 30 03 __ BMI $5209 ; (divmods16 + 11)
5206 : 4c 4c 51 JMP $514c ; (divmod + 0)
5209 : 20 3e 51 JSR $513e ; (negtmp + 0)
520c : 20 4c 51 JSR $514c ; (divmod + 0)
520f : 4c 30 51 JMP $5130 ; (negaccu + 0)
5212 : 20 30 51 JSR $5130 ; (negaccu + 0)
5215 : 24 06 __ BIT WORK + 3 
5217 : 30 09 __ BMI $5222 ; (divmods16 + 36)
5219 : 20 4c 51 JSR $514c ; (divmod + 0)
521c : 20 28 52 JSR $5228 ; (negtmpb + 0)
521f : 4c 30 51 JMP $5130 ; (negaccu + 0)
5222 : 20 3e 51 JSR $513e ; (negtmp + 0)
5225 : 20 4c 51 JSR $514c ; (divmod + 0)
--------------------------------------------------------------------
negtmpb: ; negtmpb
5228 : 38 __ __ SEC
5229 : a9 00 __ LDA #$00
522b : e5 05 __ SBC WORK + 2 
522d : 85 05 __ STA WORK + 2 
522f : a9 00 __ LDA #$00
5231 : e5 06 __ SBC WORK + 3 
5233 : 85 06 __ STA WORK + 3 
5235 : 60 __ __ RTS
--------------------------------------------------------------------
f32_to_i16: ; f32_to_i16
5236 : 20 4b 4e JSR $4e4b ; (freg + 36)
5239 : a5 07 __ LDA WORK + 4 
523b : c9 7f __ CMP #$7f
523d : b0 07 __ BCS $5246 ; (f32_to_i16 + 16)
523f : a9 00 __ LDA #$00
5241 : 85 1b __ STA ACCU + 0 
5243 : 85 1c __ STA ACCU + 1 
5245 : 60 __ __ RTS
5246 : e9 8e __ SBC #$8e
5248 : 90 16 __ BCC $5260 ; (f32_to_i16 + 42)
524a : 24 1e __ BIT ACCU + 3 
524c : 30 09 __ BMI $5257 ; (f32_to_i16 + 33)
524e : a9 ff __ LDA #$ff
5250 : 85 1b __ STA ACCU + 0 
5252 : a9 7f __ LDA #$7f
5254 : 85 1c __ STA ACCU + 1 
5256 : 60 __ __ RTS
5257 : a9 00 __ LDA #$00
5259 : 85 1b __ STA ACCU + 0 
525b : a9 80 __ LDA #$80
525d : 85 1c __ STA ACCU + 1 
525f : 60 __ __ RTS
5260 : aa __ __ TAX
5261 : a5 1c __ LDA ACCU + 1 
5263 : 46 1d __ LSR ACCU + 2 
5265 : 6a __ __ ROR
5266 : e8 __ __ INX
5267 : d0 fa __ BNE $5263 ; (f32_to_i16 + 45)
5269 : 24 1e __ BIT ACCU + 3 
526b : 10 0e __ BPL $527b ; (f32_to_i16 + 69)
526d : 38 __ __ SEC
526e : 49 ff __ EOR #$ff
5270 : 69 00 __ ADC #$00
5272 : 85 1b __ STA ACCU + 0 
5274 : a9 00 __ LDA #$00
5276 : e5 1d __ SBC ACCU + 2 
5278 : 85 1c __ STA ACCU + 1 
527a : 60 __ __ RTS
527b : 85 1b __ STA ACCU + 0 
527d : a5 1d __ LDA ACCU + 2 
527f : 85 1c __ STA ACCU + 1 
5281 : 60 __ __ RTS
--------------------------------------------------------------------
sint16_to_float: ; sint16_to_float
5282 : 24 1c __ BIT ACCU + 1 
5284 : 30 03 __ BMI $5289 ; (sint16_to_float + 7)
5286 : 4c a0 52 JMP $52a0 ; (uint16_to_float + 0)
5289 : 38 __ __ SEC
528a : a9 00 __ LDA #$00
528c : e5 1b __ SBC ACCU + 0 
528e : 85 1b __ STA ACCU + 0 
5290 : a9 00 __ LDA #$00
5292 : e5 1c __ SBC ACCU + 1 
5294 : 85 1c __ STA ACCU + 1 
5296 : 20 a0 52 JSR $52a0 ; (uint16_to_float + 0)
5299 : a5 1e __ LDA ACCU + 3 
529b : 09 80 __ ORA #$80
529d : 85 1e __ STA ACCU + 3 
529f : 60 __ __ RTS
--------------------------------------------------------------------
uint16_to_float: ; uint16_to_float
52a0 : a5 1b __ LDA ACCU + 0 
52a2 : 05 1c __ ORA ACCU + 1 
52a4 : d0 05 __ BNE $52ab ; (uint16_to_float + 11)
52a6 : 85 1d __ STA ACCU + 2 
52a8 : 85 1e __ STA ACCU + 3 
52aa : 60 __ __ RTS
52ab : a2 8e __ LDX #$8e
52ad : a5 1c __ LDA ACCU + 1 
52af : 30 06 __ BMI $52b7 ; (uint16_to_float + 23)
52b1 : ca __ __ DEX
52b2 : 06 1b __ ASL ACCU + 0 
52b4 : 2a __ __ ROL
52b5 : 10 fa __ BPL $52b1 ; (uint16_to_float + 17)
52b7 : 0a __ __ ASL
52b8 : 85 1d __ STA ACCU + 2 
52ba : a5 1b __ LDA ACCU + 0 
52bc : 85 1c __ STA ACCU + 1 
52be : 8a __ __ TXA
52bf : 4a __ __ LSR
52c0 : 85 1e __ STA ACCU + 3 
52c2 : a9 00 __ LDA #$00
52c4 : 85 1b __ STA ACCU + 0 
52c6 : 66 1d __ ROR ACCU + 2 
52c8 : 60 __ __ RTS
--------------------------------------------------------------------
divmod32: ; divmod32
52e7 : a9 00 __ LDA #$00
52e9 : 85 07 __ STA WORK + 4 
52eb : 85 08 __ STA WORK + 5 
52ed : 85 09 __ STA WORK + 6 
52ef : 85 0a __ STA WORK + 7 
52f1 : a5 05 __ LDA WORK + 2 
52f3 : 05 06 __ ORA WORK + 3 
52f5 : f0 4b __ BEQ $5342 ; (divmod32 + 91)
52f7 : a0 10 __ LDY #$10
52f9 : a5 1e __ LDA ACCU + 3 
52fb : 85 08 __ STA WORK + 5 
52fd : a5 1d __ LDA ACCU + 2 
52ff : 85 07 __ STA WORK + 4 
5301 : a9 00 __ LDA #$00
5303 : 85 1d __ STA ACCU + 2 
5305 : 85 1e __ STA ACCU + 3 
5307 : 18 __ __ CLC
5308 : 26 1b __ ROL ACCU + 0 
530a : 26 1c __ ROL ACCU + 1 
530c : 26 07 __ ROL WORK + 4 
530e : 26 08 __ ROL WORK + 5 
5310 : 26 09 __ ROL WORK + 6 
5312 : 26 0a __ ROL WORK + 7 
5314 : a5 07 __ LDA WORK + 4 
5316 : c5 03 __ CMP WORK + 0 
5318 : a5 08 __ LDA WORK + 5 
531a : e5 04 __ SBC WORK + 1 
531c : a5 09 __ LDA WORK + 6 
531e : e5 05 __ SBC WORK + 2 
5320 : aa __ __ TAX
5321 : a5 0a __ LDA WORK + 7 
5323 : e5 06 __ SBC WORK + 3 
5325 : 90 11 __ BCC $5338 ; (divmod32 + 81)
5327 : 86 09 __ STX WORK + 6 
5329 : 85 0a __ STA WORK + 7 
532b : a5 07 __ LDA WORK + 4 
532d : e5 03 __ SBC WORK + 0 
532f : 85 07 __ STA WORK + 4 
5331 : a5 08 __ LDA WORK + 5 
5333 : e5 04 __ SBC WORK + 1 
5335 : 85 08 __ STA WORK + 5 
5337 : 38 __ __ SEC
5338 : 88 __ __ DEY
5339 : d0 cd __ BNE $5308 ; (divmod32 + 33)
533b : 26 1b __ ROL ACCU + 0 
533d : 26 1c __ ROL ACCU + 1 
533f : a4 02 __ LDY $02 
5341 : 60 __ __ RTS
5342 : a5 1d __ LDA ACCU + 2 
5344 : 05 1e __ ORA ACCU + 3 
5346 : d0 0c __ BNE $5354 ; (divmod32 + 109)
5348 : 20 4c 51 JSR $514c ; (divmod + 0)
534b : a5 05 __ LDA WORK + 2 
534d : 85 07 __ STA WORK + 4 
534f : a5 06 __ LDA WORK + 3 
5351 : 85 08 __ STA WORK + 5 
5353 : 60 __ __ RTS
5354 : a0 20 __ LDY #$20
5356 : a5 04 __ LDA WORK + 1 
5358 : d0 27 __ BNE $5381 ; (divmod32 + 154)
535a : 18 __ __ CLC
535b : 26 1b __ ROL ACCU + 0 
535d : 26 1c __ ROL ACCU + 1 
535f : 26 1d __ ROL ACCU + 2 
5361 : 26 1e __ ROL ACCU + 3 
5363 : 2a __ __ ROL
5364 : 90 05 __ BCC $536b ; (divmod32 + 132)
5366 : e5 03 __ SBC WORK + 0 
5368 : 38 __ __ SEC
5369 : b0 06 __ BCS $5371 ; (divmod32 + 138)
536b : c5 03 __ CMP WORK + 0 
536d : 90 02 __ BCC $5371 ; (divmod32 + 138)
536f : e5 03 __ SBC WORK + 0 
5371 : 88 __ __ DEY
5372 : d0 e7 __ BNE $535b ; (divmod32 + 116)
5374 : 85 07 __ STA WORK + 4 
5376 : 26 1b __ ROL ACCU + 0 
5378 : 26 1c __ ROL ACCU + 1 
537a : 26 1d __ ROL ACCU + 2 
537c : 26 1e __ ROL ACCU + 3 
537e : a4 02 __ LDY $02 
5380 : 60 __ __ RTS
5381 : a5 1e __ LDA ACCU + 3 
5383 : d0 10 __ BNE $5395 ; (divmod32 + 174)
5385 : a6 1d __ LDX ACCU + 2 
5387 : 86 1e __ STX ACCU + 3 
5389 : a6 1c __ LDX ACCU + 1 
538b : 86 1d __ STX ACCU + 2 
538d : a6 1b __ LDX ACCU + 0 
538f : 86 1c __ STX ACCU + 1 
5391 : 85 1b __ STA ACCU + 0 
5393 : a0 18 __ LDY #$18
5395 : 18 __ __ CLC
5396 : 26 1b __ ROL ACCU + 0 
5398 : 26 1c __ ROL ACCU + 1 
539a : 26 1d __ ROL ACCU + 2 
539c : 26 1e __ ROL ACCU + 3 
539e : 26 07 __ ROL WORK + 4 
53a0 : 26 08 __ ROL WORK + 5 
53a2 : 90 0c __ BCC $53b0 ; (divmod32 + 201)
53a4 : a5 07 __ LDA WORK + 4 
53a6 : e5 03 __ SBC WORK + 0 
53a8 : aa __ __ TAX
53a9 : a5 08 __ LDA WORK + 5 
53ab : e5 04 __ SBC WORK + 1 
53ad : 38 __ __ SEC
53ae : b0 0c __ BCS $53bc ; (divmod32 + 213)
53b0 : 38 __ __ SEC
53b1 : a5 07 __ LDA WORK + 4 
53b3 : e5 03 __ SBC WORK + 0 
53b5 : aa __ __ TAX
53b6 : a5 08 __ LDA WORK + 5 
53b8 : e5 04 __ SBC WORK + 1 
53ba : 90 04 __ BCC $53c0 ; (divmod32 + 217)
53bc : 86 07 __ STX WORK + 4 
53be : 85 08 __ STA WORK + 5 
53c0 : 88 __ __ DEY
53c1 : d0 d3 __ BNE $5396 ; (divmod32 + 175)
53c3 : 26 1b __ ROL ACCU + 0 
53c5 : 26 1c __ ROL ACCU + 1 
53c7 : 26 1d __ ROL ACCU + 2 
53c9 : 26 1e __ ROL ACCU + 3 
53cb : a4 02 __ LDY $02 
53cd : 60 __ __ RTS
--------------------------------------------------------------------
store32: ; store32
53ce : a5 1b __ LDA ACCU + 0 
53d0 : 95 00 __ STA $00,x 
53d2 : a5 1c __ LDA ACCU + 1 
53d4 : 95 01 __ STA $01,x 
53d6 : a5 1d __ LDA ACCU + 2 
53d8 : 95 02 __ STA $02,x 
53da : a5 1e __ LDA ACCU + 3 
53dc : 95 03 __ STA WORK + 0,x 
53de : 60 __ __ RTS
--------------------------------------------------------------------
load32: ; load32
53df : b5 00 __ LDA $00,x 
53e1 : 85 1b __ STA ACCU + 0 
53e3 : b5 01 __ LDA $01,x 
53e5 : 85 1c __ STA ACCU + 1 
53e7 : b5 02 __ LDA $02,x 
53e9 : 85 1d __ STA ACCU + 2 
53eb : b5 03 __ LDA WORK + 0,x 
53ed : 85 1e __ STA ACCU + 3 
53ef : 60 __ __ RTS
--------------------------------------------------------------------
openregion@proxy: ; openregion@proxy
53f0 : a9 06 __ LDA #$06
53f2 : 85 0f __ STA P2 
53f4 : a9 0b __ LDA #$0b
53f6 : 85 13 __ STA P6 
53f8 : 4c 15 42 JMP $4215 ; (openregion.s4 + 0)
--------------------------------------------------------------------
fioe@proxy: ; fioe@proxy
53fb : a5 53 __ LDA $53 
53fd : 85 0d __ STA P0 
53ff : a5 54 __ LDA $54 
5401 : 85 0e __ STA P1 
5403 : a5 6b __ LDA $6b 
5405 : 85 0f __ STA P2 
5407 : 4c 12 3f JMP $3f12 ; (fioe.s4 + 0)
--------------------------------------------------------------------
mods16@proxy: ; mods16@proxy
540a : a9 13 __ LDA #$13
540c : 85 03 __ STA WORK + 0 
540e : 4c db 51 JMP $51db ; (mods16 + 0)
--------------------------------------------------------------------
freg@proxy: ; freg@proxy
5411 : a9 20 __ LDA #$20
5413 : 85 05 __ STA WORK + 2 
5415 : a9 41 __ LDA #$41
5417 : 85 06 __ STA WORK + 3 
5419 : 4c 3b 4e JMP $4e3b ; (freg + 20)
--------------------------------------------------------------------
freg@proxy: ; freg@proxy
541c : a9 20 __ LDA #$20
541e : 85 1d __ STA ACCU + 2 
5420 : a9 41 __ LDA #$41
5422 : 85 1e __ STA ACCU + 3 
5424 : 4c 2b 4e JMP $4e2b ; (freg + 4)
--------------------------------------------------------------------
spentry:
5427 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
zxfonttr_bin:
5428 : __ __ __ BYT 00 3c 4a 56 5e 40 3c 00 00 00 38 04 3c 44 3c 00 : .<JV^@<...8.<D<.
5438 : __ __ __ BYT 00 20 20 3c 22 22 3c 00 00 00 1c 20 20 20 1c 00 : .  <""<....   ..
5448 : __ __ __ BYT 00 04 04 3c 44 44 3c 00 00 00 38 44 78 40 3c 00 : ...<DD<...8Dx@<.
5458 : __ __ __ BYT 00 0c 10 18 10 10 10 00 00 00 3c 44 44 3c 04 38 : ..........<DD<.8
5468 : __ __ __ BYT 00 40 40 78 44 44 44 00 00 10 00 30 10 10 38 00 : .@@xDDD....0..8.
5478 : __ __ __ BYT 00 04 00 04 04 04 24 18 00 20 28 30 30 28 24 00 : ......$.. (00($.
5488 : __ __ __ BYT 00 10 10 10 10 10 0c 00 00 00 68 54 54 54 54 00 : ..........hTTTT.
5498 : __ __ __ BYT 00 00 78 44 44 44 44 00 00 00 38 44 44 44 38 00 : ..xDDDD...8DDD8.
54a8 : __ __ __ BYT 00 00 78 44 44 78 40 40 00 00 3c 44 44 3c 04 06 : ..xDDx@@..<DD<..
54b8 : __ __ __ BYT 00 00 1c 20 20 20 20 00 00 00 38 40 38 04 78 00 : ...    ...8@8.x.
54c8 : __ __ __ BYT 00 10 38 10 10 10 0c 00 00 00 44 44 44 44 38 00 : ..8.......DDDD8.
54d8 : __ __ __ BYT 00 00 44 44 28 28 10 00 00 00 44 54 54 54 28 00 : ..DD((....DTTT(.
54e8 : __ __ __ BYT 00 00 44 28 10 28 44 00 00 00 44 44 44 3c 04 38 : ..D(.(D...DDD<.8
54f8 : __ __ __ BYT 00 00 7c 08 10 20 7c 00 00 0e 08 08 08 08 0e 00 : ..|.. |.........
5508 : __ __ __ BYT 00 00 40 20 10 08 04 00 00 70 10 10 10 10 70 00 : ..@ .....p....p.
5518 : __ __ __ BYT 00 10 38 54 10 10 10 00 00 00 00 00 00 00 3e 00 : ..8T..........>.
5528 : __ __ __ BYT 00 00 00 00 00 00 00 00 08 08 08 08 ff 08 08 08 : ................
5538 : __ __ __ BYT 00 24 24 00 00 00 00 00 00 3c 6e 5e 7e 7e 3c 00 : .$$......<n^~~<.
5548 : __ __ __ BYT 00 3c 7e 7e 7a 76 3c 00 00 00 00 00 0f 08 08 08 : .<~~zv<.........
5558 : __ __ __ BYT 00 00 00 00 ff 08 08 08 00 00 00 00 f8 08 08 08 : ................
5568 : __ __ __ BYT 08 08 08 08 f8 08 08 08 08 08 08 08 f8 00 00 00 : ................
5578 : __ __ __ BYT 08 08 08 08 ff 00 00 00 08 08 08 08 0f 00 00 00 : ................
5588 : __ __ __ BYT 08 08 08 08 0f 08 08 08 08 00 00 08 9c 08 00 00 : ................
5598 : __ __ __ BYT 00 00 00 00 00 18 18 00 00 00 02 04 08 10 20 00 : .............. .
55a8 : __ __ __ BYT 00 3c 46 4a 52 62 3c 00 00 18 28 08 08 08 3e 00 : .<FJRb<...(...>.
55b8 : __ __ __ BYT 00 3c 42 02 3c 40 7e 00 00 3c 42 0c 02 42 3c 00 : .<B.<@~..<B..B<.
55c8 : __ __ __ BYT 00 08 18 28 48 7e 08 00 00 7e 40 7c 02 42 3c 00 : ...(H~...~@|.B<.
55d8 : __ __ __ BYT 00 3c 40 7c 42 42 3c 00 00 7e 02 04 08 10 10 00 : .<@|BB<..~......
55e8 : __ __ __ BYT 00 3c 42 3c 42 42 3c 00 00 3c 42 42 3e 02 3c 00 : .<B<BB<..<BB>.<.
55f8 : __ __ __ BYT 00 00 00 10 00 00 10 00 00 00 10 00 00 10 10 20 : ............... 
5608 : __ __ __ BYT 00 00 04 08 10 08 04 00 00 00 00 3e 00 3e 00 00 : ...........>.>..
5618 : __ __ __ BYT 00 00 10 08 04 08 10 00 00 3c 42 04 08 00 08 00 : .........<B.....
5628 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 3c 42 42 7e 42 42 00 : .........<BB~BB.
5638 : __ __ __ BYT 00 7c 42 7c 42 42 7c 00 00 3c 42 40 40 42 3c 00 : .|B|BB|..<B@@B<.
5648 : __ __ __ BYT 00 78 44 42 42 44 78 00 00 7e 40 7c 40 40 7e 00 : .xDBBDx..~@|@@~.
5658 : __ __ __ BYT 00 7e 40 7c 40 40 40 00 00 3c 42 40 4e 42 3c 00 : .~@|@@@..<B@NB<.
5668 : __ __ __ BYT 00 42 42 7e 42 42 42 00 00 3e 08 08 08 08 3e 00 : .BB~BBB..>....>.
5678 : __ __ __ BYT 00 02 02 02 42 42 3c 00 00 44 48 70 48 44 42 00 : ....BB<..DHpHDB.
5688 : __ __ __ BYT 00 40 40 40 40 40 7e 00 00 42 66 5a 42 42 42 00 : .@@@@@~..BfZBBB.
5698 : __ __ __ BYT 00 42 62 52 4a 46 42 00 00 3c 42 42 42 42 3c 00 : .BbRJFB..<BBBB<.
56a8 : __ __ __ BYT 00 7c 42 42 7c 40 40 00 00 3c 42 42 52 4a 3c 00 : .|BB|@@..<BBRJ<.
56b8 : __ __ __ BYT 00 7c 42 42 7c 44 42 00 00 3c 40 3c 02 42 3c 00 : .|BB|DB..<@<.B<.
56c8 : __ __ __ BYT 00 fe 10 10 10 10 10 00 00 42 42 42 42 42 3c 00 : .........BBBBB<.
56d8 : __ __ __ BYT 00 42 42 42 42 24 18 00 00 42 42 42 42 5a 24 00 : .BBBB$...BBBBZ$.
56e8 : __ __ __ BYT 00 42 24 18 18 24 42 00 00 82 44 28 10 10 10 00 : .B$..$B...D(....
56f8 : __ __ __ BYT 00 7e 04 08 10 20 7e 00 00 00 00 00 00 00 00 00 : .~... ~.........
5708 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5718 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5728 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5738 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5748 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5758 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5768 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5778 : __ __ __ BYT 3c 42 99 a1 a1 99 42 3c 00 00 00 00 00 00 00 00 : <B....B<........
5788 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5798 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
57a8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
57b8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
57c8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
57d8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
57e8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
57f8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5808 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5818 : __ __ __ BYT 00 00 00 00 00 00 00 00 f7 e3 c1 d5 f7 f7 f7 f7 : ................
5828 : __ __ __ BYT ff c3 b5 a9 a1 bf c3 ff ff ff c7 fb c3 bb c3 ff : ................
5838 : __ __ __ BYT ff df df c3 dd dd c3 ff ff ff e3 df df df e3 ff : ................
5848 : __ __ __ BYT ff fb fb c3 bb bb c3 ff ff ff c7 bb 87 bf c3 ff : ................
5858 : __ __ __ BYT ff f3 ef e7 ef ef ef ff ff ff c3 bb bb c3 fb c7 : ................
5868 : __ __ __ BYT ff bf bf 87 bb bb bb ff ff ef ff cf ef ef c7 ff : ................
5878 : __ __ __ BYT ff fb ff fb fb fb db e7 ff df d7 cf cf d7 db ff : ................
5888 : __ __ __ BYT ff ef ef ef ef ef f3 ff ff ff 97 ab ab ab ab ff : ................
5898 : __ __ __ BYT ff ff 87 bb bb bb bb ff ff ff c7 bb bb bb c7 ff : ................
58a8 : __ __ __ BYT ff ff 87 bb bb 87 bf bf ff ff c3 bb bb c3 fb f9 : ................
58b8 : __ __ __ BYT ff ff e3 df df df df ff ff ff c7 bf c7 fb 87 ff : ................
58c8 : __ __ __ BYT ff ef c7 ef ef ef f3 ff ff ff bb bb bb bb c7 ff : ................
58d8 : __ __ __ BYT ff ff bb bb d7 d7 ef ff ff ff bb ab ab ab d7 ff : ................
58e8 : __ __ __ BYT ff ff bb d7 ef d7 bb ff ff ff bb bb bb c3 fb c7 : ................
58f8 : __ __ __ BYT ff ff 83 f7 ef df 83 ff ff f1 f7 f7 f7 f7 f1 ff : ................
5908 : __ __ __ BYT ff ff bf df ef f7 fb ff ff 8f ef ef ef ef 8f ff : ................
5918 : __ __ __ BYT ff ef c7 ab ef ef ef ff ff ff ff ff ff ff c1 ff : ................
5928 : __ __ __ BYT 00 00 00 00 00 00 ff ff ff ef ef ef ef ff ef ff : ................
5938 : __ __ __ BYT ff db db ff ff ff ff ff ff db 81 db db 81 db ff : ................
5948 : __ __ __ BYT ff f7 c1 d7 c1 f5 c1 f7 ff 9d 9b f7 ef d9 b9 ff : ................
5958 : __ __ __ BYT ff ef d7 ef d5 bb c5 ff ff f7 ef ff ff ff ff ff : ................
5968 : __ __ __ BYT ff fb f7 f7 f7 f7 fb ff ff df ef ef ef ef df ff : ................
5978 : __ __ __ BYT ff ff eb f7 c1 f7 eb ff ff ff f7 f7 c1 f7 f7 ff : ................
5988 : __ __ __ BYT ff ff ff ff ff f7 f7 ef ff ff ff ff c1 ff ff ff : ................
5998 : __ __ __ BYT ff ff ff ff ff e7 e7 ff ff ff fd fb f7 ef df ff : ................
59a8 : __ __ __ BYT ff c3 b9 b5 ad 9d c3 ff ff e7 d7 f7 f7 f7 c1 ff : ................
59b8 : __ __ __ BYT ff c3 bd fd c3 bf 81 ff ff c3 bd f3 fd bd c3 ff : ................
59c8 : __ __ __ BYT ff f7 e7 d7 b7 81 f7 ff ff 81 bf 83 fd bd c3 ff : ................
59d8 : __ __ __ BYT ff c3 bf 83 bd bd c3 ff ff 81 fd fb f7 ef ef ff : ................
59e8 : __ __ __ BYT ff c3 bd c3 bd bd c3 ff ff c3 bd bd c1 fd c3 ff : ................
59f8 : __ __ __ BYT ff ff ff ef ff ff ef ff ff ff ef ff ff ef ef df : ................
5a08 : __ __ __ BYT ff ff fb f7 ef f7 fb ff ff ff ff c1 ff c1 ff ff : ................
5a18 : __ __ __ BYT ff ff ef f7 fb f7 ef ff ff c3 bd fb f7 ff f7 ff : ................
5a28 : __ __ __ BYT 00 00 00 00 00 00 00 00 ff c3 bd bd 81 bd bd ff : ................
5a38 : __ __ __ BYT ff 83 bd 83 bd bd 83 ff ff c3 bd bf bf bd c3 ff : ................
5a48 : __ __ __ BYT ff 87 bb bd bd bb 87 ff ff 81 bf 83 bf bf 81 ff : ................
5a58 : __ __ __ BYT ff 81 bf 83 bf bf bf ff ff c3 bd bf b1 bd c3 ff : ................
5a68 : __ __ __ BYT ff bd bd 81 bd bd bd ff ff c1 f7 f7 f7 f7 c1 ff : ................
5a78 : __ __ __ BYT ff fd fd fd bd bd c3 ff ff bb b7 8f b7 bb bd ff : ................
5a88 : __ __ __ BYT ff bf bf bf bf bf 81 ff ff bd 99 a5 bd bd bd ff : ................
5a98 : __ __ __ BYT ff bd 9d ad b5 b9 bd ff ff c3 bd bd bd bd c3 ff : ................
5aa8 : __ __ __ BYT ff 83 bd bd 83 bf bf ff ff c3 bd bd ad b5 c3 ff : ................
5ab8 : __ __ __ BYT ff 83 bd bd 83 bb bd ff ff c3 bf c3 fd bd c3 ff : ................
5ac8 : __ __ __ BYT ff 01 ef ef ef ef ef ff ff bd bd bd bd bd c3 ff : ................
5ad8 : __ __ __ BYT ff bd bd bd bd db e7 ff ff bd bd bd bd a5 db ff : ................
5ae8 : __ __ __ BYT ff bd db e7 e7 db bd ff ff 7d bb d7 ef ef ef ff : .........}......
5af8 : __ __ __ BYT ff 81 fb f7 ef df 81 ff 00 00 00 00 00 00 00 00 : ................
5b08 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b18 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b28 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b38 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b48 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b58 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b68 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b78 : __ __ __ BYT c3 bd 66 5e 5e 66 bd c3 00 00 00 00 00 00 00 00 : ..f^^f..........
5b88 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5b98 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5ba8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5bb8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5bc8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5bd8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5be8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5bf8 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5c08 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5c18 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
--------------------------------------------------------------------
fround5:
5c28 : __ __ __ BYT 00 00 00 3f cd cc 4c 3d 0a d7 a3 3b 6f 12 03 3a : ...?..L=...;o..:
5c38 : __ __ __ BYT 17 b7 51 38 ac c5 a7 36 bd 37 06 35             : ..Q8...6.7.5
--------------------------------------------------------------------
seed:
5c44 : __ __ __ BYT 00 7a                                           : .z
--------------------------------------------------------------------
tpow10:
5c46 : __ __ __ BYT 00 00 80 3f 00 00 20 41 00 00 c8 42 00 00 7a 44 : ...?.. A...B..zD
5c56 : __ __ __ BYT 00 40 1c 46 00 50 c3 47 00 24 74 49             : .@.F.P.G.$tI
--------------------------------------------------------------------
tree:
5c62 : __ __ __ BYT ff ff ff ff 08 00 01 00 02 00 03 00 04 00 05 00 : ................
5c72 : __ __ __ BYT 06 00 07 00 14 00 02 00 03 00 02 00 08 00 09 00 : ................
5c82 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 02 00 04 00 : ................
5c92 : __ __ __ BYT 01 00 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5ca2 : __ __ __ BYT 00 00 03 00 02 00 02 00 0b 00 0c 00 00 00 00 00 : ................
5cb2 : __ __ __ BYT 00 00 00 00 00 00 00 00 03 00 03 00 06 00 0e 00 : ................
5cc2 : __ __ __ BYT 0f 00 10 00 11 00 12 00 13 00 00 00 00 00 03 00 : ................
5cd2 : __ __ __ BYT 04 00 01 00 0a 00 00 00 00 00 00 00 00 00 00 00 : ................
5ce2 : __ __ __ BYT 00 00 00 00 04 00 02 00 01 00 0d 00 00 00 00 00 : ................
5cf2 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 04 00 03 00 01 00 : ................
5d02 : __ __ __ BYT 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5d12 : __ __ __ BYT 04 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5d22 : __ __ __ BYT 00 00 00 00 00 00 04 00 03 00 00 00 00 00 00 00 : ................
5d32 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 03 00 02 00 : ................
5d42 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5d52 : __ __ __ BYT 00 00 02 00 04 00 00 00 00 00 00 00 00 00 00 00 : ................
5d62 : __ __ __ BYT 00 00 00 00 00 00 00 00 03 00 04 00 00 00 00 00 : ................
5d72 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02 00 : ................
5d82 : __ __ __ BYT 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5d92 : __ __ __ BYT 00 00 00 00 02 00 05 00 01 00 0a 00 00 00 00 00 : ................
5da2 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 02 00 06 00 01 00 : ................
5db2 : __ __ __ BYT 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5dc2 : __ __ __ BYT 03 00 05 00 01 00 0a 00 00 00 00 00 00 00 00 00 : ................
5dd2 : __ __ __ BYT 00 00 00 00 00 00 05 00 02 00 01 00 0d 00 00 00 : ................
5de2 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 05 00 03 00 : ................
5df2 : __ __ __ BYT 01 00 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5e02 : __ __ __ BYT 00 00 06 00 02 00 01 00 0d 00 00 00 00 00 00 00 : ................
5e12 : __ __ __ BYT 00 00 00 00 00 00 00 00 02 00 02 00 00 00 00 00 : ................
5e22 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00       : ..............
--------------------------------------------------------------------
trf:
5e30 : __ __ __ BYT 01 00 00 00 00 00 01 00 01 00 00 00 00 00 ff ff : ................
5e40 : __ __ __ BYT 00 00 01 00 ff ff 00 00 00 00 ff ff ff ff 00 00 : ................
5e50 : __ __ __ BYT ff ff 00 00 00 00 01 00 ff ff 00 00 00 00 ff ff : ................
5e60 : __ __ __ BYT 00 00 01 00 01 00 00 00 00 00 ff ff 01 00 00 00 : ................
--------------------------------------------------------------------
pat:
5e70 : __ __ __ BYT 00 00 00 00 02 00 00 00 01 00 00 00 01 00 00 00 : ................
5e80 : __ __ __ BYT 03 00 01 00 01 00 01 00 02 00 00 00 02 00 02 00 : ................
5e90 : __ __ __ BYT 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5ea0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5eb0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5ec0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5ed0 : __ __ __ BYT 06 00 04 00 52 00 00 00 00 00 02 00 00 00 01 00 : ....R...........
5ee0 : __ __ __ BYT 00 00 01 00 00 00 03 00 01 00 01 00 01 00 02 00 : ................
5ef0 : __ __ __ BYT 00 00 00 00 02 00 01 00 02 00 00 00 00 00 00 00 : ................
5f00 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5f10 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5f20 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5f30 : __ __ __ BYT 00 00 00 00 00 00 06 00 08 00 52 00 00 00 00 00 : ..........R.....
5f40 : __ __ __ BYT 02 00 00 00 01 00 00 00 01 00 00 00 01 00 01 00 : ................
5f50 : __ __ __ BYT 01 00 03 00 02 00 00 00 02 00 02 00 01 00 00 00 : ................
5f60 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5f70 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5f80 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5f90 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 06 00 04 00 : ................
5fa0 : __ __ __ BYT 52 00 00 00 00 00 02 00 00 00 01 00 00 00 01 00 : R...............
5fb0 : __ __ __ BYT 00 00 03 00 01 00 01 00 01 00 02 00 00 00 00 00 : ................
5fc0 : __ __ __ BYT 02 00 01 00 00 00 03 00 00 00 02 00 03 00 01 00 : ................
5fd0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5fe0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
5ff0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6000 : __ __ __ BYT 00 00 08 00 08 00 53 00 00 00 00 00 02 00 00 00 : ......S.........
6010 : __ __ __ BYT 01 00 00 00 01 00 00 00 00 00 01 00 01 00 00 00 : ................
6020 : __ __ __ BYT 02 00 00 00 03 00 02 00 01 00 01 00 03 00 00 00 : ................
6030 : __ __ __ BYT 00 00 03 00 01 00 00 00 04 00 00 00 02 00 04 00 : ................
6040 : __ __ __ BYT 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6050 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6060 : __ __ __ BYT 00 00 00 00 00 00 00 00 0a 00 04 00 54 00 00 00 : ............T...
6070 : __ __ __ BYT 00 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 : ................
6080 : __ __ __ BYT 01 00 01 00 02 00 02 00 00 00 03 00 02 00 01 00 : ................
6090 : __ __ __ BYT 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
60a0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
60b0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
60c0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 : ................
60d0 : __ __ __ BYT 08 00 52 00 00 00 00 00 02 00 00 00 01 00 00 00 : ..R.............
60e0 : __ __ __ BYT 01 00 00 00 00 00 01 00 01 00 03 00 02 00 00 00 : ................
60f0 : __ __ __ BYT 02 00 02 00 01 00 01 00 00 00 00 00 00 00 00 00 : ................
6100 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6110 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6120 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6130 : __ __ __ BYT 00 00 00 00 06 00 08 00 52 00 00 00 00 00 02 00 : ........R.......
6140 : __ __ __ BYT 00 00 01 00 01 00 01 00 00 00 03 00 01 00 01 00 : ................
6150 : __ __ __ BYT 00 00 02 00 00 00 00 00 02 00 01 00 02 00 00 00 : ................
6160 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6170 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6180 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6190 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 06 00 08 00 52 00 : ..............R.
61a0 : __ __ __ BYT 00 00 00 00 02 00 01 00 00 00 00 00 02 00 00 00 : ................
61b0 : __ __ __ BYT 00 00 03 00 00 00 00 00 04 00 00 00 00 00 05 00 : ................
61c0 : __ __ __ BYT 00 00 00 00 01 00 01 00 00 00 02 00 01 00 00 00 : ................
61d0 : __ __ __ BYT 03 00 01 00 00 00 04 00 01 00 03 00 05 00 01 00 : ................
61e0 : __ __ __ BYT 00 00 01 00 02 00 00 00 02 00 02 00 00 00 03 00 : ................
61f0 : __ __ __ BYT 02 00 00 00 04 00 02 00 00 00 05 00 02 00 00 00 : ................
6200 : __ __ __ BYT 10 00 08 00 50 00 00 00 00 00 02 00 ff ff 01 00 : ....P...........
6210 : __ __ __ BYT 00 00 00 00 01 00 00 00 01 00 01 00 00 00 ff ff : ................
6220 : __ __ __ BYT 02 00 00 00 00 00 02 00 00 00 01 00 02 00 00 00 : ................
6230 : __ __ __ BYT ff ff 03 00 00 00 00 00 03 00 00 00 01 00 03 00 : ................
6240 : __ __ __ BYT 00 00 ff ff 04 00 00 00 00 00 04 00 03 00 01 00 : ................
6250 : __ __ __ BYT 04 00 00 00 ff ff 05 00 00 00 00 00 05 00 00 00 : ................
6260 : __ __ __ BYT 01 00 05 00 00 00 10 00 04 00 50 00 00 00 00 00 : ..........P.....
6270 : __ __ __ BYT 02 00 01 00 00 00 00 00 02 00 00 00 00 00 03 00 : ................
6280 : __ __ __ BYT 00 00 00 00 04 00 00 00 00 00 01 00 01 00 00 00 : ................
6290 : __ __ __ BYT 02 00 01 00 00 00 03 00 01 00 03 00 04 00 01 00 : ................
62a0 : __ __ __ BYT 00 00 01 00 02 00 00 00 02 00 02 00 00 00 03 00 : ................
62b0 : __ __ __ BYT 02 00 00 00 04 00 02 00 00 00 00 00 00 00 00 00 : ................
62c0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 0d 00 08 00 : ................
62d0 : __ __ __ BYT 4f 00 00 00 00 00 02 00 ff ff 01 00 00 00 00 00 : O...............
62e0 : __ __ __ BYT 01 00 00 00 01 00 01 00 00 00 ff ff 02 00 00 00 : ................
62f0 : __ __ __ BYT 00 00 02 00 00 00 01 00 02 00 00 00 ff ff 03 00 : ................
6300 : __ __ __ BYT 00 00 00 00 03 00 03 00 01 00 03 00 00 00 ff ff : ................
6310 : __ __ __ BYT 04 00 00 00 00 00 04 00 00 00 01 00 04 00 00 00 : ................
6320 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6330 : __ __ __ BYT 00 00 0d 00 04 00 4f 00 00 00 00 00 02 00 01 00 : ......O.........
6340 : __ __ __ BYT 00 00 00 00 02 00 00 00 00 00 03 00 00 00 00 00 : ................
6350 : __ __ __ BYT 01 00 01 00 00 00 02 00 01 00 03 00 03 00 01 00 : ................
6360 : __ __ __ BYT 00 00 01 00 02 00 00 00 02 00 02 00 00 00 03 00 : ................
6370 : __ __ __ BYT 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6380 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6390 : __ __ __ BYT 00 00 00 00 00 00 00 00 0a 00 08 00 4c 00 00 00 : ............L...
63a0 : __ __ __ BYT 00 00 02 00 ff ff 01 00 00 00 00 00 01 00 00 00 : ................
63b0 : __ __ __ BYT 01 00 01 00 00 00 ff ff 02 00 00 00 00 00 02 00 : ................
63c0 : __ __ __ BYT 03 00 01 00 02 00 00 00 ff ff 03 00 00 00 00 00 : ................
63d0 : __ __ __ BYT 03 00 00 00 01 00 03 00 00 00 00 00 00 00 00 00 : ................
63e0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
63f0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0a 00 : ................
6400 : __ __ __ BYT 04 00 4c 00 00 00 00 00 06 00 01 00 00 00 04 00 : ..L.............
6410 : __ __ __ BYT 01 00 01 00 02 00 02 00 00 00 03 00 02 00 01 00 : ................
6420 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6430 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6440 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6450 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6460 : __ __ __ BYT 00 00 00 00 05 00 08 00 50 00 00 00 00 00 06 00 : ........P.......
6470 : __ __ __ BYT 01 00 00 00 04 00 01 00 01 00 02 00 02 00 00 00 : ................
6480 : __ __ __ BYT 06 00 02 00 01 00 03 00 03 00 01 00 01 00 00 00 : ................
6490 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
64a0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
64b0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
64c0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 06 00 08 00 4b 00 : ..............K.
64d0 : __ __ __ BYT 00 00 00 00 06 00 01 00 00 00 04 00 01 00 01 00 : ................
64e0 : __ __ __ BYT 02 00 02 00 00 00 06 00 02 00 01 00 03 00 02 00 : ................
64f0 : __ __ __ BYT 02 00 01 00 03 00 01 00 00 00 00 00 00 00 00 00 : ................
6500 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6510 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6520 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6530 : __ __ __ BYT 07 00 08 00 4b 00 00 00 00 00 06 00 01 00 00 00 : ....K...........
6540 : __ __ __ BYT 04 00 01 00 01 00 02 00 02 00 00 00 06 00 02 00 : ................
6550 : __ __ __ BYT 01 00 03 00 02 00 02 00 00 00 03 00 01 00 00 00 : ................
6560 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6570 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6580 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6590 : __ __ __ BYT 00 00 00 00 00 00 07 00 08 00 4b 00 00 00 00 00 : ..........K.....
65a0 : __ __ __ BYT 02 00 ff ff 01 00 02 00 00 00 01 00 00 00 01 00 : ................
65b0 : __ __ __ BYT 01 00 02 00 00 00 02 00 03 00 00 00 00 00 00 00 : ................
65c0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
65d0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
65e0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
65f0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 05 00 04 00 : ................
6600 : __ __ __ BYT 50 00 00 00 00 00 02 00 ff ff 01 00 02 00 00 00 : P...............
6610 : __ __ __ BYT 01 00 00 00 01 00 01 00 02 00 00 00 02 00 02 00 : ................
6620 : __ __ __ BYT 01 00 02 00 03 00 02 00 02 00 01 00 00 00 00 00 : ................
6630 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6640 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6650 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6660 : __ __ __ BYT 00 00 07 00 08 00 4b 00 00 00 00 00 02 00 ff ff : ......K.........
6670 : __ __ __ BYT 01 00 02 00 00 00 01 00 00 00 01 00 01 00 02 00 : ................
6680 : __ __ __ BYT 00 00 02 00 02 00 01 00 02 00 03 00 02 00 02 00 : ................
6690 : __ __ __ BYT 00 00 01 00 03 00 00 00 00 00 00 00 00 00 00 00 : ................
66a0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
66b0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
66c0 : __ __ __ BYT 00 00 00 00 00 00 00 00 08 00 08 00 4b 00 00 00 : ............K...
66d0 : __ __ __ BYT 00 00 02 00 ff ff 01 00 02 00 00 00 01 00 00 00 : ................
66e0 : __ __ __ BYT 01 00 01 00 02 00 00 00 02 00 02 00 01 00 02 00 : ................
66f0 : __ __ __ BYT 03 00 02 00 02 00 00 00 01 00 03 00 01 00 00 00 : ................
6700 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6710 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6720 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 : ................
6730 : __ __ __ BYT 08 00 4b 00 00 00 00 00 02 00 00 00 01 00 00 00 : ..K.............
6740 : __ __ __ BYT 01 00 00 00 00 00 01 00 01 00 00 00 02 00 00 00 : ................
6750 : __ __ __ BYT 01 00 02 00 01 00 03 00 03 00 00 00 00 00 03 00 : ................
6760 : __ __ __ BYT 01 00 00 00 04 00 00 00 00 00 04 00 01 00 02 00 : ................
6770 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6780 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6790 : __ __ __ BYT 00 00 00 00 0a 00 08 00 54 00 00 00 00 00 02 00 : ........T.......
67a0 : __ __ __ BYT 00 00 01 00 00 00 01 00 00 00 01 00 01 00 01 00 : ................
67b0 : __ __ __ BYT 03 00 02 00 00 00 00 00 02 00 01 00 00 00 03 00 : ................
67c0 : __ __ __ BYT 00 00 00 00 03 00 01 00 02 00 00 00 00 00 00 00 : ................
67d0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
67e0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
67f0 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 0a 00 08 00 53 00 : ..............S.
--------------------------------------------------------------------
queinit:
6800 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
size:
6802 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
bitshift:
6804 : __ __ __ BYT 00 00 00 00 00 00 00 00 01 02 04 08 10 20 40 80 : ............. @.
6814 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
6824 : __ __ __ BYT 80 40 20 10 08 04 02 01 00 00 00 00 00 00 00 00 : .@ .............
6834 : __ __ __ BYT 00 00 00 00 00 00 00 00                         : ........
--------------------------------------------------------------------
opn:
683c : __ __ __ BSS	18
--------------------------------------------------------------------
p:
684e : __ __ __ BSS	361
--------------------------------------------------------------------
mk:
69b7 : __ __ __ BSS	2
--------------------------------------------------------------------
uk:
69b9 : __ __ __ BSS	2
--------------------------------------------------------------------
play:
69bb : __ __ __ BSS	2
--------------------------------------------------------------------
pass:
69bd : __ __ __ BSS	2
--------------------------------------------------------------------
mik:
69bf : __ __ __ BSS	2
--------------------------------------------------------------------
mjk:
69c1 : __ __ __ BSS	2
--------------------------------------------------------------------
uik:
69c3 : __ __ __ BSS	2
--------------------------------------------------------------------
ujk:
69c5 : __ __ __ BSS	2
--------------------------------------------------------------------
umove:
69c7 : __ __ __ BSS	2
--------------------------------------------------------------------
mymove:
69c9 : __ __ __ BSS	2
--------------------------------------------------------------------
lib:
69cb : __ __ __ BSS	2
--------------------------------------------------------------------
ml:
69cd : __ __ __ BSS	361
--------------------------------------------------------------------
csp:
6b36 : __ __ __ BSS	2
--------------------------------------------------------------------
cstack:
6b38 : __ __ __ BSS	800
--------------------------------------------------------------------
l:
6e58 : __ __ __ BSS	361
--------------------------------------------------------------------
ma:
6fc1 : __ __ __ BSS	361
--------------------------------------------------------------------
osp:
712a : __ __ __ BSS	2
--------------------------------------------------------------------
ostack:
712c : __ __ __ BSS	800
--------------------------------------------------------------------
fsp:
744c : __ __ __ BSS	2
--------------------------------------------------------------------
fstack:
744e : __ __ __ BSS	800
--------------------------------------------------------------------
cnd:
776e : __ __ __ BSS	2
--------------------------------------------------------------------
mtype:
7770 : __ __ __ BSS	2
--------------------------------------------------------------------
mymovelist:
7772 : __ __ __ BSS	3610
--------------------------------------------------------------------
umovelist:
858c : __ __ __ BSS	3610
--------------------------------------------------------------------
color:
93a6 : __ __ __ BSS	722
--------------------------------------------------------------------
que:
9678 : __ __ __ BSS	300
--------------------------------------------------------------------
pe:
97a4 : __ __ __ BSS	2
--------------------------------------------------------------------
pstart:
97a6 : __ __ __ BSS	2
--------------------------------------------------------------------
listpt:
97a8 : __ __ __ BSS	722
