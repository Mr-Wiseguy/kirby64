glabel func_800B0AD4
/* 058D24 800B0AD4 3C01800D */  lui   $at, %hi(D_800D6738) # $at, 0x800d
/* 058D28 800B0AD8 C4206738 */  lwc1  $f0, %lo(D_800D6738)($at)
/* 058D2C 800B0ADC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 058D30 800B0AE0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 058D34 800B0AE4 46006032 */  c.eq.s $f12, $f0
/* 058D38 800B0AE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 058D3C 800B0AEC AFA60020 */  sw    $a2, 0x20($sp)
/* 058D40 800B0AF0 00E02025 */  move  $a0, $a3
/* 058D44 800B0AF4 45010007 */  bc1t  .L800B0B14_ovl1
/* 058D48 800B0AF8 2442A7C4 */   addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 058D4C 800B0AFC 8C4E0000 */  lw    $t6, ($v0)
/* 058D50 800B0B00 3C01800E */ lui $at, %hi(D_800E64D0)
/* 058D54 800B0B04 8DCF0000 */  lw    $t7, ($t6)
/* 058D58 800B0B08 000FC080 */  sll   $t8, $t7, 2
/* 058D5C 800B0B0C 00380821 */  addu  $at, $at, $t8
/* 058D60 800B0B10 E42C64D0 */ swc1 $f12, %lo(D_800E64D0)($at)
.L800B0B14_ovl1:
/* 058D64 800B0B14 46007032 */  c.eq.s $f14, $f0
/* 058D68 800B0B18 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 058D6C 800B0B1C 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 058D70 800B0B20 45030008 */  bc1tl .L800B0B44_ovl1
/* 058D74 800B0B24 3C014780 */   lui   $at, 0x4780
/* 058D78 800B0B28 8C590000 */  lw    $t9, ($v0)
/* 058D7C 800B0B2C 3C01800E */ lui $at, %hi(D_800E6690)
/* 058D80 800B0B30 8F280000 */  lw    $t0, ($t9)
/* 058D84 800B0B34 00084880 */  sll   $t1, $t0, 2
/* 058D88 800B0B38 00290821 */  addu  $at, $at, $t1
/* 058D8C 800B0B3C E42E6690 */ swc1 $f14, %lo(D_800E6690)($at)
/* 058D90 800B0B40 3C014780 */  li    $at, 0x47800000 # 65536.000000
.L800B0B44_ovl1:
/* 058D94 800B0B44 44813000 */  mtc1  $at, $f6
/* 058D98 800B0B48 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 058D9C 800B0B4C C7A80020 */  lwc1  $f8, 0x20($sp)
/* 058DA0 800B0B50 46062032 */  c.eq.s $f4, $f6
/* 058DA4 800B0B54 00000000 */  nop   
/* 058DA8 800B0B58 45020009 */  bc1fl .L800B0B80_ovl1
/* 058DAC 800B0B5C 46004032 */   c.eq.s $f8, $f0
/* 058DB0 800B0B60 8C4A0000 */  lw    $t2, ($v0)
/* 058DB4 800B0B64 3C01800E */ lui $at, %hi(D_800E6850)
/* 058DB8 800B0B68 8D4B0000 */  lw    $t3, ($t2)
/* 058DBC 800B0B6C 000B6080 */  sll   $t4, $t3, 2
/* 058DC0 800B0B70 002C0821 */  addu  $at, $at, $t4
/* 058DC4 800B0B74 1000000B */  b     .L800B0BA4_ovl1
/* 058DC8 800B0B78 E4206850 */ swc1 $f0, %lo(D_800E6850)($at)
/* 058DCC 800B0B7C 46004032 */  c.eq.s $f8, $f0
.L800B0B80_ovl1:
/* 058DD0 800B0B80 00000000 */  nop   
/* 058DD4 800B0B84 45010007 */  bc1t  .L800B0BA4_ovl1
/* 058DD8 800B0B88 00000000 */   nop   
/* 058DDC 800B0B8C 8C4D0000 */  lw    $t5, ($v0)
/* 058DE0 800B0B90 3C01800E */ lui $at, %hi(D_800E6850)
/* 058DE4 800B0B94 8DAE0000 */  lw    $t6, ($t5)
/* 058DE8 800B0B98 000E7880 */  sll   $t7, $t6, 2
/* 058DEC 800B0B9C 002F0821 */  addu  $at, $at, $t7
/* 058DF0 800B0BA0 E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
.L800B0BA4_ovl1:
/* 058DF4 800B0BA4 50800004 */  beql  $a0, $zero, .L800B0BB8_ovl1
/* 058DF8 800B0BA8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 058DFC 800B0BAC 0C002DAF */  jal   func_8000B6BC
/* 058E00 800B0BB0 00000000 */   nop   
/* 058E04 800B0BB4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B0BB8_ovl1:
/* 058E08 800B0BB8 27BD0018 */  addiu $sp, $sp, 0x18
/* 058E0C 800B0BBC 03E00008 */  jr    $ra
/* 058E10 800B0BC0 00000000 */   nop   
