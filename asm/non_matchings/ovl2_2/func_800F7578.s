glabel func_800F7578
/* 07FFE8 800F7578 27BDFF98 */  addiu $sp, $sp, -0x68
/* 07FFEC 800F757C 3C058013 */  lui   $a1, %hi(D_80129124) # $a1, 0x8013
/* 07FFF0 800F7580 8CA59124 */  lw    $a1, %lo(D_80129124)($a1)
/* 07FFF4 800F7584 AFBF0064 */  sw    $ra, 0x64($sp)
/* 07FFF8 800F7588 AFB70060 */  sw    $s7, 0x60($sp)
/* 07FFFC 800F758C AFB6005C */  sw    $s6, 0x5c($sp)
/* 080000 800F7590 AFB50058 */  sw    $s5, 0x58($sp)
/* 080004 800F7594 AFB40054 */  sw    $s4, 0x54($sp)
/* 080008 800F7598 AFB30050 */  sw    $s3, 0x50($sp)
/* 08000C 800F759C AFB2004C */  sw    $s2, 0x4c($sp)
/* 080010 800F75A0 AFB10048 */  sw    $s1, 0x48($sp)
/* 080014 800F75A4 AFB00044 */  sw    $s0, 0x44($sp)
/* 080018 800F75A8 F7BE0038 */  sdc1  $f30, 0x38($sp)
/* 08001C 800F75AC F7BC0030 */  sdc1  $f28, 0x30($sp)
/* 080020 800F75B0 F7BA0028 */  sdc1  $f26, 0x28($sp)
/* 080024 800F75B4 F7B80020 */  sdc1  $f24, 0x20($sp)
/* 080028 800F75B8 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 08002C 800F75BC 10A00090 */  beqz  $a1, .L800F7800_ovl2
/* 080030 800F75C0 F7B40010 */   sdc1  $f20, 0x10($sp)
/* 080034 800F75C4 3C0E800C */  lui   $t6, %hi(D_800BE4F8) # $t6, 0x800c
/* 080038 800F75C8 8DCEE4F8 */  lw    $t6, %lo(D_800BE4F8)($t6)
/* 08003C 800F75CC 24010006 */  li    $at, 6
/* 080040 800F75D0 3C118013 */  lui   $s1, %hi(D_801290E0) # $s1, 0x8013
/* 080044 800F75D4 11C1008A */  beq   $t6, $at, .L800F7800_ovl2
/* 080048 800F75D8 00009825 */   move  $s3, $zero
/* 08004C 800F75DC 18A00088 */  blez  $a1, .L800F7800_ovl2
/* 080050 800F75E0 8E3190E0 */   lw    $s1, %lo(D_801290E0)($s1)
/* 080054 800F75E4 3C018013 */  lui   $at, %hi(D_80128728) # $at, 0x8013
/* 080058 800F75E8 C43E8728 */  lwc1  $f30, %lo(D_80128728)($at)
/* 08005C 800F75EC 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 080060 800F75F0 4481E000 */  mtc1  $at, $f28
/* 080064 800F75F4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 080068 800F75F8 4481D000 */  mtc1  $at, $f26
/* 08006C 800F75FC 3C018013 */  lui   $at, %hi(D_8012872C) # $at, 0x8013
/* 080070 800F7600 C438872C */  lwc1  $f24, %lo(D_8012872C)($at)
/* 080074 800F7604 3C018013 */  lui   $at, %hi(D_80128730) # $at, 0x8013
/* 080078 800F7608 C4368730 */  lwc1  $f22, %lo(D_80128730)($at)
/* 08007C 800F760C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 080080 800F7610 3C15800D */  lui   $s5, %hi(D_800D6C90) # $s5, 0x800d
/* 080084 800F7614 3C14800D */  lui   $s4, %hi(D_800D6CD0) # $s4, 0x800d
/* 080088 800F7618 3C10800D */  lui   $s0, %hi(D_800D6ED0) # $s0, 0x800d
/* 08008C 800F761C 4481A000 */  mtc1  $at, $f20
/* 080090 800F7620 26106ED0 */  addiu $s0, %lo(D_800D6ED0) # addiu $s0, $s0, 0x6ed0
/* 080094 800F7624 26946CD0 */  addiu $s4, %lo(D_800D6CD0) # addiu $s4, $s4, 0x6cd0
/* 080098 800F7628 26B56C90 */  addiu $s5, %lo(D_800D6C90) # addiu $s5, $s5, 0x6c90
/* 08009C 800F762C 24170081 */  li    $s7, 129
/* 0800A0 800F7630 2416FFFF */  li    $s6, -1
.L800F7634_ovl2:
/* 0800A4 800F7634 92220005 */  lbu   $v0, 5($s1)
/* 0800A8 800F7638 02B39021 */  addu  $s2, $s5, $s3
/* 0800AC 800F763C 0293C021 */  addu  $t8, $s4, $s3
/* 0800B0 800F7640 304F0008 */  andi  $t7, $v0, 8
/* 0800B4 800F7644 55E0006B */  bnezl $t7, .L800F77F4_ovl2
/* 0800B8 800F7648 26730001 */   addiu $s3, $s3, 1
/* 0800BC 800F764C 92430000 */  lbu   $v1, ($s2)
/* 0800C0 800F7650 93190000 */  lbu   $t9, ($t8)
/* 0800C4 800F7654 00002025 */  move  $a0, $zero
/* 0800C8 800F7658 306B0080 */  andi  $t3, $v1, 0x80
/* 0800CC 800F765C 03234025 */  or    $t0, $t9, $v1
/* 0800D0 800F7660 31090001 */  andi  $t1, $t0, 1
/* 0800D4 800F7664 15200050 */  bnez  $t1, .L800F77A8_ovl2
/* 0800D8 800F7668 306D0001 */   andi  $t5, $v1, 1
/* 0800DC 800F766C C6200008 */  lwc1  $f0, 8($s1)
/* 0800E0 800F7670 C604000C */  lwc1  $f4, 0xc($s0)
/* 0800E4 800F7674 C622000C */  lwc1  $f2, 0xc($s1)
/* 0800E8 800F7678 C608001C */  lwc1  $f8, 0x1c($s0)
/* 0800EC 800F767C 46002182 */  mul.s $f6, $f4, $f0
/* 0800F0 800F7680 C604002C */  lwc1  $f4, 0x2c($s0)
/* 0800F4 800F7684 C62C0010 */  lwc1  $f12, 0x10($s1)
/* 0800F8 800F7688 46024282 */  mul.s $f10, $f8, $f2
/* 0800FC 800F768C 460A3480 */  add.s $f18, $f6, $f10
/* 080100 800F7690 460C2202 */  mul.s $f8, $f4, $f12
/* 080104 800F7694 C60A003C */  lwc1  $f10, 0x3c($s0)
/* 080108 800F7698 46089180 */  add.s $f6, $f18, $f8
/* 08010C 800F769C C6120000 */  lwc1  $f18, ($s0)
/* 080110 800F76A0 46065100 */  add.s $f4, $f10, $f6
/* 080114 800F76A4 46009202 */  mul.s $f8, $f18, $f0
/* 080118 800F76A8 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 08011C 800F76AC C6120020 */  lwc1  $f18, 0x20($s0)
/* 080120 800F76B0 46025182 */  mul.s $f6, $f10, $f2
/* 080124 800F76B4 00000000 */  nop   
/* 080128 800F76B8 460C9282 */  mul.s $f10, $f18, $f12
/* 08012C 800F76BC 4604A403 */  div.s $f16, $f20, $f4
/* 080130 800F76C0 46064100 */  add.s $f4, $f8, $f6
/* 080134 800F76C4 C6060030 */  lwc1  $f6, 0x30($s0)
/* 080138 800F76C8 460A2200 */  add.s $f8, $f4, $f10
/* 08013C 800F76CC 46083480 */  add.s $f18, $f6, $f8
/* 080140 800F76D0 46109382 */  mul.s $f14, $f18, $f16
/* 080144 800F76D4 460EB03C */  c.lt.s $f22, $f14
/* 080148 800F76D8 00000000 */  nop   
/* 08014C 800F76DC 45010032 */  bc1t  .L800F77A8_ovl2
/* 080150 800F76E0 00000000 */   nop   
/* 080154 800F76E4 4618703C */  c.lt.s $f14, $f24
/* 080158 800F76E8 00000000 */  nop   
/* 08015C 800F76EC 4501002E */  bc1t  .L800F77A8_ovl2
/* 080160 800F76F0 00000000 */   nop   
/* 080164 800F76F4 C6040004 */  lwc1  $f4, 4($s0)
/* 080168 800F76F8 C6060014 */  lwc1  $f6, 0x14($s0)
/* 08016C 800F76FC 46002282 */  mul.s $f10, $f4, $f0
/* 080170 800F7700 C6040024 */  lwc1  $f4, 0x24($s0)
/* 080174 800F7704 46023202 */  mul.s $f8, $f6, $f2
/* 080178 800F7708 46085480 */  add.s $f18, $f10, $f8
/* 08017C 800F770C 460C2182 */  mul.s $f6, $f4, $f12
/* 080180 800F7710 C6080034 */  lwc1  $f8, 0x34($s0)
/* 080184 800F7714 46069280 */  add.s $f10, $f18, $f6
/* 080188 800F7718 460A4100 */  add.s $f4, $f8, $f10
/* 08018C 800F771C 46102382 */  mul.s $f14, $f4, $f16
/* 080190 800F7720 460ED03C */  c.lt.s $f26, $f14
/* 080194 800F7724 00000000 */  nop   
/* 080198 800F7728 4501001F */  bc1t  .L800F77A8_ovl2
/* 08019C 800F772C 00000000 */   nop   
/* 0801A0 800F7730 461C703C */  c.lt.s $f14, $f28
/* 0801A4 800F7734 304A0020 */  andi  $t2, $v0, 0x20
/* 0801A8 800F7738 4501001B */  bc1t  .L800F77A8_ovl2
/* 0801AC 800F773C 00000000 */   nop   
/* 0801B0 800F7740 51400004 */  beql  $t2, $zero, .L800F7754_ovl2
/* 0801B4 800F7744 C6120008 */   lwc1  $f18, 8($s0)
/* 0801B8 800F7748 10000017 */  b     .L800F77A8_ovl2
/* 0801BC 800F774C 24040001 */   li    $a0, 1
/* 0801C0 800F7750 C6120008 */  lwc1  $f18, 8($s0)
.L800F7754_ovl2:
/* 0801C4 800F7754 C6080018 */  lwc1  $f8, 0x18($s0)
/* 0801C8 800F7758 3C018013 */  lui   $at, %hi(D_80128734) # $at, 0x8013
/* 0801CC 800F775C 46009182 */  mul.s $f6, $f18, $f0
/* 0801D0 800F7760 C6120028 */  lwc1  $f18, 0x28($s0)
/* 0801D4 800F7764 46024282 */  mul.s $f10, $f8, $f2
/* 0801D8 800F7768 460A3100 */  add.s $f4, $f6, $f10
/* 0801DC 800F776C 460C9202 */  mul.s $f8, $f18, $f12
/* 0801E0 800F7770 C60A0038 */  lwc1  $f10, 0x38($s0)
/* 0801E4 800F7774 46082180 */  add.s $f6, $f4, $f8
/* 0801E8 800F7778 46065480 */  add.s $f18, $f10, $f6
/* 0801EC 800F777C 46109382 */  mul.s $f14, $f18, $f16
/* 0801F0 800F7780 460EF03C */  c.lt.s $f30, $f14
/* 0801F4 800F7784 00000000 */  nop   
/* 0801F8 800F7788 45010007 */  bc1t  .L800F77A8_ovl2
/* 0801FC 800F778C 00000000 */   nop   
/* 080200 800F7790 C4248734 */  lwc1  $f4, %lo(D_80128734)($at)
/* 080204 800F7794 4604703C */  c.lt.s $f14, $f4
/* 080208 800F7798 00000000 */  nop   
/* 08020C 800F779C 45010002 */  bc1t  .L800F77A8_ovl2
/* 080210 800F77A0 00000000 */   nop   
/* 080214 800F77A4 24040001 */  li    $a0, 1
.L800F77A8_ovl2:
/* 080218 800F77A8 1080000E */  beqz  $a0, .L800F77E4_ovl2
/* 08021C 800F77AC 00000000 */   nop   
/* 080220 800F77B0 11600004 */  beqz  $t3, .L800F77C4_ovl2
/* 080224 800F77B4 02602025 */   move  $a0, $s3
/* 080228 800F77B8 346C0080 */  ori   $t4, $v1, 0x80
/* 08022C 800F77BC 10000006 */  b     .L800F77D8_ovl2
/* 080230 800F77C0 A24C0000 */   sb    $t4, ($s2)
.L800F77C4_ovl2:
/* 080234 800F77C4 0C03F270 */  jal   spawn_entity
/* 080238 800F77C8 02202825 */   move  $a1, $s1
/* 08023C 800F77CC 10560002 */  beq   $v0, $s6, .L800F77D8_ovl2
/* 080240 800F77D0 00000000 */   nop   
/* 080244 800F77D4 A2570000 */  sb    $s7, ($s2)
.L800F77D8_ovl2:
/* 080248 800F77D8 3C058013 */  lui   $a1, %hi(D_80129124) # $a1, 0x8013
/* 08024C 800F77DC 10000004 */  b     .L800F77F0_ovl2
/* 080250 800F77E0 8CA59124 */   lw    $a1, %lo(D_80129124)($a1)
.L800F77E4_ovl2:
/* 080254 800F77E4 15A00002 */  bnez  $t5, .L800F77F0_ovl2
/* 080258 800F77E8 306E007F */   andi  $t6, $v1, 0x7f
/* 08025C 800F77EC A24E0000 */  sb    $t6, ($s2)
.L800F77F0_ovl2:
/* 080260 800F77F0 26730001 */  addiu $s3, $s3, 1
.L800F77F4_ovl2:
/* 080264 800F77F4 0265082A */  slt   $at, $s3, $a1
/* 080268 800F77F8 1420FF8E */  bnez  $at, .L800F7634_ovl2
/* 08026C 800F77FC 2631002C */   addiu $s1, $s1, 0x2c
.L800F7800_ovl2:
/* 080270 800F7800 8FBF0064 */  lw    $ra, 0x64($sp)
/* 080274 800F7804 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 080278 800F7808 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 08027C 800F780C D7B80020 */  ldc1  $f24, 0x20($sp)
/* 080280 800F7810 D7BA0028 */  ldc1  $f26, 0x28($sp)
/* 080284 800F7814 D7BC0030 */  ldc1  $f28, 0x30($sp)
/* 080288 800F7818 D7BE0038 */  ldc1  $f30, 0x38($sp)
/* 08028C 800F781C 8FB00044 */  lw    $s0, 0x44($sp)
/* 080290 800F7820 8FB10048 */  lw    $s1, 0x48($sp)
/* 080294 800F7824 8FB2004C */  lw    $s2, 0x4c($sp)
/* 080298 800F7828 8FB30050 */  lw    $s3, 0x50($sp)
/* 08029C 800F782C 8FB40054 */  lw    $s4, 0x54($sp)
/* 0802A0 800F7830 8FB50058 */  lw    $s5, 0x58($sp)
/* 0802A4 800F7834 8FB6005C */  lw    $s6, 0x5c($sp)
/* 0802A8 800F7838 8FB70060 */  lw    $s7, 0x60($sp)
/* 0802AC 800F783C 03E00008 */  jr    $ra
/* 0802B0 800F7840 27BD0068 */   addiu $sp, $sp, 0x68
