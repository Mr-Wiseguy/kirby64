glabel func_800A6BC0
/* 04EE10 800A6BC0 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 04EE14 800A6BC4 3C01800D */  lui   $at, %hi(D_800D7B68) # $at, 0x800d
/* 04EE18 800A6BC8 AC207B68 */  sw    $zero, %lo(D_800D7B68)($at)
/* 04EE1C 800A6BCC F7BE0068 */  sdc1  $f30, 0x68($sp)
/* 04EE20 800A6BD0 AFA400A8 */  sw    $a0, 0xa8($sp)
/* 04EE24 800A6BD4 3C01439B */  li    $at, 0x439B0000 # 310.000000
/* 04EE28 800A6BD8 308400FF */  andi  $a0, $a0, 0xff
/* 04EE2C 800A6BDC 4481F000 */  mtc1  $at, $f30
/* 04EE30 800A6BE0 AFBE0090 */  sw    $fp, 0x90($sp)
/* 04EE34 800A6BE4 AFB60088 */  sw    $s6, 0x88($sp)
/* 04EE38 800A6BE8 F7BC0060 */  sdc1  $f28, 0x60($sp)
/* 04EE3C 800A6BEC 00047080 */  sll   $t6, $a0, 2
/* 04EE40 800A6BF0 3C02800C */ lui $v0, %hi(D_800BF918)
/* 04EE44 800A6BF4 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 04EE48 800A6BF8 AFB7008C */  sw    $s7, 0x8c($sp)
/* 04EE4C 800A6BFC AFB50084 */  sw    $s5, 0x84($sp)
/* 04EE50 800A6C00 AFB3007C */  sw    $s3, 0x7c($sp)
/* 04EE54 800A6C04 AFB20078 */  sw    $s2, 0x78($sp)
/* 04EE58 800A6C08 004E1021 */  addu  $v0, $v0, $t6
/* 04EE5C 800A6C0C 3C168001 */  lui   $s6, %hi(D_8000B6B4) # $s6, 0x8001
/* 04EE60 800A6C10 3C1E800D */  lui   $fp, %hi(D_800D79D8) # $fp, 0x800d
/* 04EE64 800A6C14 4481E000 */  mtc1  $at, $f28
/* 04EE68 800A6C18 AFBF0094 */  sw    $ra, 0x94($sp)
/* 04EE6C 800A6C1C AFB40080 */  sw    $s4, 0x80($sp)
/* 04EE70 800A6C20 AFB10074 */  sw    $s1, 0x74($sp)
/* 04EE74 800A6C24 AFB00070 */  sw    $s0, 0x70($sp)
/* 04EE78 800A6C28 F7BA0058 */  sdc1  $f26, 0x58($sp)
/* 04EE7C 800A6C2C F7B80050 */  sdc1  $f24, 0x50($sp)
/* 04EE80 800A6C30 F7B60048 */  sdc1  $f22, 0x48($sp)
/* 04EE84 800A6C34 F7B40040 */  sdc1  $f20, 0x40($sp)
/* 04EE88 800A6C38 8C52F918 */ lw $s2, %lo(D_800BF918)($v0)
/* 04EE8C 800A6C3C 27DE79D8 */  addiu $fp, %lo(D_800D79D8) # addiu $fp, $fp, 0x79d8
/* 04EE90 800A6C40 26D6B6B4 */  addiu $s6, %lo(D_8000B6B4) # addiu $s6, $s6, -0x494c
/* 04EE94 800A6C44 8FB3009C */  lw    $s3, 0x9c($sp)
/* 04EE98 800A6C48 8FB500A0 */  lw    $s5, 0xa0($sp)
/* 04EE9C 800A6C4C 3C178000 */  lui   $s7, 0x8000
.L800A6C50_ovl1:
/* 04EEA0 800A6C50 8E510000 */  lw    $s1, ($s2)
/* 04EEA4 800A6C54 2401FFFF */  li    $at, -1
/* 04EEA8 800A6C58 1221006F */  beq   $s1, $at, .L800A6E18_ovl1
/* 04EEAC 800A6C5C 262FFFF6 */   addiu $t7, $s1, -0xa
/* 04EEB0 800A6C60 C654000C */  lwc1  $f20, 0xc($s2)
/* 04EEB4 800A6C64 C6580014 */  lwc1  $f24, 0x14($s2)
/* 04EEB8 800A6C68 8E420004 */  lw    $v0, 4($s2)
/* 04EEBC 800A6C6C C6560010 */  lwc1  $f22, 0x10($s2)
/* 04EEC0 800A6C70 4614C03C */  c.lt.s $f24, $f20
/* 04EEC4 800A6C74 C65A0018 */  lwc1  $f26, 0x18($s2)
/* 04EEC8 800A6C78 3C014366 */  li    $at, 0x43660000 # 230.000000
/* 04EECC 800A6C7C 45020004 */  bc1fl .L800A6C90_ovl1
/* 04EED0 800A6C80 4616D03C */   c.lt.s $f26, $f22
/* 04EED4 800A6C84 4600E506 */  mov.s $f20, $f28
/* 04EED8 800A6C88 4600F606 */  mov.s $f24, $f30
/* 04EEDC 800A6C8C 4616D03C */  c.lt.s $f26, $f22
.L800A6C90_ovl1:
/* 04EEE0 800A6C90 00000000 */  nop   
/* 04EEE4 800A6C94 45020004 */  bc1fl .L800A6CA8_ovl1
/* 04EEE8 800A6C98 2DE1000F */   sltiu $at, $t7, 0xf
/* 04EEEC 800A6C9C 4481D000 */  mtc1  $at, $f26
/* 04EEF0 800A6CA0 4600E586 */  mov.s $f22, $f28
/* 04EEF4 800A6CA4 2DE1000F */  sltiu $at, $t7, 0xf
.L800A6CA8_ovl1:
/* 04EEF8 800A6CA8 1020003E */  beqz  $at, .L800A6DA4_ovl1
/* 04EEFC 800A6CAC 0220A025 */   move  $s4, $s1
/* 04EF00 800A6CB0 000F7880 */  sll   $t7, $t7, 2
/* 04EF04 800A6CB4 3C01800D */ lui $at, %hi(D_800D5C70)
/* 04EF08 800A6CB8 002F0821 */  addu  $at, $at, $t7
/* 04EF0C 800A6CBC 8C2F5C70 */ lw $t7, %lo(D_800D5C70)($at)
/* 04EF10 800A6CC0 01E00008 */  jr    $t7
/* 04EF14 800A6CC4 00000000 */   nop   
/* 04EF18 800A6CC8 3C18800B */  lui   $t8, %hi(D_800ADD14) # $t8, 0x800b
/* 04EF1C 800A6CCC 2718DD14 */  addiu $t8, %lo(D_800ADD14) # addiu $t8, $t8, -0x22ec
/* 04EF20 800A6CD0 2419FFFF */  li    $t9, -1
/* 04EF24 800A6CD4 24080001 */  li    $t0, 1
/* 04EF28 800A6CD8 24090001 */  li    $t1, 1
/* 04EF2C 800A6CDC AFA9002C */  sw    $t1, 0x2c($sp)
/* 04EF30 800A6CE0 AFA80020 */  sw    $t0, 0x20($sp)
/* 04EF34 800A6CE4 AFB9001C */  sw    $t9, 0x1c($sp)
/* 04EF38 800A6CE8 AFB80010 */  sw    $t8, 0x10($sp)
/* 04EF3C 800A6CEC 02202025 */  move  $a0, $s1
/* 04EF40 800A6CF0 02C02825 */  move  $a1, $s6
/* 04EF44 800A6CF4 24060019 */  li    $a2, 25
/* 04EF48 800A6CF8 02E03825 */  move  $a3, $s7
/* 04EF4C 800A6CFC AFB10014 */  sw    $s1, 0x14($sp)
/* 04EF50 800A6D00 AFA20018 */  sw    $v0, 0x18($sp)
/* 04EF54 800A6D04 AFA00024 */  sw    $zero, 0x24($sp)
/* 04EF58 800A6D08 AFA00028 */  sw    $zero, 0x28($sp)
/* 04EF5C 800A6D0C 0C002F4F */  jal   func_8000BD3C_ovl1
/* 04EF60 800A6D10 AFA00030 */   sw    $zero, 0x30($sp)
/* 04EF64 800A6D14 14400003 */  bnez  $v0, .L800A6D24_ovl1
/* 04EF68 800A6D18 0040A825 */   move  $s5, $v0
/* 04EF6C 800A6D1C 1000003F */  b     .L800A6E1C_ovl1
/* 04EF70 800A6D20 2402FFFF */   li    $v0, -1
.L800A6D24_ovl1:
/* 04EF74 800A6D24 1000001F */  b     .L800A6DA4_ovl1
/* 04EF78 800A6D28 8C53003C */   lw    $s3, 0x3c($v0)
/* 04EF7C 800A6D2C 3C0A8002 */  lui   $t2, %hi(D_80018170) # $t2, 0x8002
/* 04EF80 800A6D30 254A8170 */  addiu $t2, %lo(D_80018170) # addiu $t2, $t2, -0x7e90
/* 04EF84 800A6D34 240BFFFF */  li    $t3, -1
/* 04EF88 800A6D38 240C0001 */  li    $t4, 1
/* 04EF8C 800A6D3C 240D0001 */  li    $t5, 1
/* 04EF90 800A6D40 AFAD002C */  sw    $t5, 0x2c($sp)
/* 04EF94 800A6D44 AFAC0020 */  sw    $t4, 0x20($sp)
/* 04EF98 800A6D48 AFAB001C */  sw    $t3, 0x1c($sp)
/* 04EF9C 800A6D4C AFAA0010 */  sw    $t2, 0x10($sp)
/* 04EFA0 800A6D50 02202025 */  move  $a0, $s1
/* 04EFA4 800A6D54 02C02825 */  move  $a1, $s6
/* 04EFA8 800A6D58 24060019 */  li    $a2, 25
/* 04EFAC 800A6D5C 02E03825 */  move  $a3, $s7
/* 04EFB0 800A6D60 AFB10014 */  sw    $s1, 0x14($sp)
/* 04EFB4 800A6D64 AFA20018 */  sw    $v0, 0x18($sp)
/* 04EFB8 800A6D68 AFA00024 */  sw    $zero, 0x24($sp)
/* 04EFBC 800A6D6C AFA00028 */  sw    $zero, 0x28($sp)
/* 04EFC0 800A6D70 0C002F4F */  jal   func_8000BD3C_ovl1
/* 04EFC4 800A6D74 AFA00030 */   sw    $zero, 0x30($sp)
/* 04EFC8 800A6D78 14400003 */  bnez  $v0, .L800A6D88_ovl1
/* 04EFCC 800A6D7C 0040A825 */   move  $s5, $v0
/* 04EFD0 800A6D80 10000026 */  b     .L800A6E1C_ovl1
/* 04EFD4 800A6D84 2402FFFF */   li    $v0, -1
.L800A6D88_ovl1:
/* 04EFD8 800A6D88 4614C101 */  sub.s $f4, $f24, $f20
/* 04EFDC 800A6D8C 8C53003C */  lw    $s3, 0x3c($v0)
/* 04EFE0 800A6D90 240E0004 */  li    $t6, 4
/* 04EFE4 800A6D94 4616D181 */  sub.s $f6, $f26, $f22
/* 04EFE8 800A6D98 AE6E0080 */  sw    $t6, 0x80($s3)
/* 04EFEC 800A6D9C 46062203 */  div.s $f8, $f4, $f6
/* 04EFF0 800A6DA0 E6680024 */  swc1  $f8, 0x24($s3)
.L800A6DA4_ovl1:
/* 04EFF4 800A6DA4 2630FFF6 */  addiu $s0, $s1, -0xa
/* 04EFF8 800A6DA8 00108042 */  srl   $s0, $s0, 1
/* 04EFFC 800A6DAC 00108080 */  sll   $s0, $s0, 2
/* 04F000 800A6DB0 3C01800D */ lui $at, %hi(D_800D79B0)
/* 04F004 800A6DB4 00300821 */  addu  $at, $at, $s0
/* 04F008 800A6DB8 AC3579B0 */ sw $s5, %lo(D_800D79B0)($at)
/* 04F00C 800A6DBC 03D07821 */  addu  $t7, $fp, $s0
/* 04F010 800A6DC0 ADF30000 */  sw    $s3, ($t7)
/* 04F014 800A6DC4 4405A000 */  mfc1  $a1, $f20
/* 04F018 800A6DC8 4406B000 */  mfc1  $a2, $f22
/* 04F01C 800A6DCC 4407C000 */  mfc1  $a3, $f24
/* 04F020 800A6DD0 E7BA0010 */  swc1  $f26, 0x10($sp)
/* 04F024 800A6DD4 0C001F00 */  jal   func_80007C00
/* 04F028 800A6DD8 26640008 */   addiu $a0, $s3, 8
/* 04F02C 800A6DDC 3C18800C */ lui $t8, %hi(D_800BF8F0)
/* 04F030 800A6DE0 0310C021 */  addu  $t8, $t8, $s0
/* 04F034 800A6DE4 8F18F8F0 */ lw $t8, %lo(D_800BF8F0)($t8)
/* 04F038 800A6DE8 24010010 */  li    $at, 16
/* 04F03C 800A6DEC 16810003 */  bne   $s4, $at, .L800A6DFC_ovl1
/* 04F040 800A6DF0 AF150000 */   sw    $s5, ($t8)
/* 04F044 800A6DF4 0C026E9A */  jal   func_8009BA68
/* 04F048 800A6DF8 8FC4000C */   lw    $a0, 0xc($fp)
.L800A6DFC_ovl1:
/* 04F04C 800A6DFC 8E420008 */  lw    $v0, 8($s2)
/* 04F050 800A6E00 10400003 */  beqz  $v0, .L800A6E10_ovl1
/* 04F054 800A6E04 00000000 */   nop   
/* 04F058 800A6E08 0040F809 */  jalr  $v0
/* 04F05C 800A6E0C 00000000 */  nop   
.L800A6E10_ovl1:
/* 04F060 800A6E10 1000FF8F */  b     .L800A6C50_ovl1
/* 04F064 800A6E14 2652001C */   addiu $s2, $s2, 0x1c
.L800A6E18_ovl1:
/* 04F068 800A6E18 00001025 */  move  $v0, $zero
.L800A6E1C_ovl1:
/* 04F06C 800A6E1C 8FBF0094 */  lw    $ra, 0x94($sp)
/* 04F070 800A6E20 D7B40040 */  ldc1  $f20, 0x40($sp)
/* 04F074 800A6E24 D7B60048 */  ldc1  $f22, 0x48($sp)
/* 04F078 800A6E28 D7B80050 */  ldc1  $f24, 0x50($sp)
/* 04F07C 800A6E2C D7BA0058 */  ldc1  $f26, 0x58($sp)
/* 04F080 800A6E30 D7BC0060 */  ldc1  $f28, 0x60($sp)
/* 04F084 800A6E34 D7BE0068 */  ldc1  $f30, 0x68($sp)
/* 04F088 800A6E38 8FB00070 */  lw    $s0, 0x70($sp)
/* 04F08C 800A6E3C 8FB10074 */  lw    $s1, 0x74($sp)
/* 04F090 800A6E40 8FB20078 */  lw    $s2, 0x78($sp)
/* 04F094 800A6E44 8FB3007C */  lw    $s3, 0x7c($sp)
/* 04F098 800A6E48 8FB40080 */  lw    $s4, 0x80($sp)
/* 04F09C 800A6E4C 8FB50084 */  lw    $s5, 0x84($sp)
/* 04F0A0 800A6E50 8FB60088 */  lw    $s6, 0x88($sp)
/* 04F0A4 800A6E54 8FB7008C */  lw    $s7, 0x8c($sp)
/* 04F0A8 800A6E58 8FBE0090 */  lw    $fp, 0x90($sp)
/* 04F0AC 800A6E5C 03E00008 */  jr    $ra
/* 04F0B0 800A6E60 27BD00A8 */   addiu $sp, $sp, 0xa8
