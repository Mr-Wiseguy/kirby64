glabel func_80113F08
/* 09C978 80113F08 27BDFEE8 */  addiu $sp, $sp, -0x118
/* 09C97C 80113F0C 3C0E8013 */  lui   $t6, %hi(D_8012D940) # $t6, 0x8013
/* 09C980 80113F10 8DCED940 */  lw    $t6, %lo(D_8012D940)($t6)
/* 09C984 80113F14 3C0B8013 */  lui   $t3, %hi(D_8012D948) # $t3, 0x8013
/* 09C988 80113F18 AFBF004C */  sw    $ra, 0x4c($sp)
/* 09C98C 80113F1C AFBE0048 */  sw    $fp, 0x48($sp)
/* 09C990 80113F20 AFB70044 */  sw    $s7, 0x44($sp)
/* 09C994 80113F24 AFB60040 */  sw    $s6, 0x40($sp)
/* 09C998 80113F28 AFB5003C */  sw    $s5, 0x3c($sp)
/* 09C99C 80113F2C AFB40038 */  sw    $s4, 0x38($sp)
/* 09C9A0 80113F30 AFB30034 */  sw    $s3, 0x34($sp)
/* 09C9A4 80113F34 AFB20030 */  sw    $s2, 0x30($sp)
/* 09C9A8 80113F38 AFB1002C */  sw    $s1, 0x2c($sp)
/* 09C9AC 80113F3C AFB00028 */  sw    $s0, 0x28($sp)
/* 09C9B0 80113F40 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 09C9B4 80113F44 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 09C9B8 80113F48 AFA40118 */  sw    $a0, 0x118($sp)
/* 09C9BC 80113F4C 256BD948 */  addiu $t3, %lo(D_8012D948) # addiu $t3, $t3, -0x26b8
/* 09C9C0 80113F50 11C00270 */  beqz  $t6, .L80114914_ovl2
/* 09C9C4 80113F54 AFA00110 */   sw    $zero, 0x110($sp)
/* 09C9C8 80113F58 3C018013 */  lui   $at, %hi(D_80128CE8) # $at, 0x8013
/* 09C9CC 80113F5C C4368CE8 */  lwc1  $f22, %lo(D_80128CE8)($at)
/* 09C9D0 80113F60 3C018013 */  lui   $at, %hi(D_80128CEC) # $at, 0x8013
/* 09C9D4 80113F64 C4348CEC */  lwc1  $f20, %lo(D_80128CEC)($at)
/* 09C9D8 80113F68 241E000C */  li    $fp, 12
/* 09C9DC 80113F6C 240A0001 */  li    $t2, 1
.L80113F70_ovl2:
/* 09C9E0 80113F70 8D740004 */  lw    $s4, 4($t3)
/* 09C9E4 80113F74 91700001 */  lbu   $s0, 1($t3)
/* 09C9E8 80113F78 8D620010 */  lw    $v0, 0x10($t3)
/* 09C9EC 80113F7C 8E8F0010 */  lw    $t7, 0x10($s4)
/* 09C9F0 80113F80 00001825 */  move  $v1, $zero
/* 09C9F4 80113F84 01404025 */  move  $t0, $t2
/* 09C9F8 80113F88 11E00008 */  beqz  $t7, .L80113FAC_ovl2
/* 09C9FC 80113F8C 24090001 */   li    $t1, 1
/* 09CA00 80113F90 A0400000 */  sb    $zero, ($v0)
.L80113F94_ovl2:
/* 09CA04 80113F94 8E980010 */  lw    $t8, 0x10($s4)
/* 09CA08 80113F98 24630001 */  addiu $v1, $v1, 1
/* 09CA0C 80113F9C 24420001 */  addiu $v0, $v0, 1
/* 09CA10 80113FA0 0078082B */  sltu  $at, $v1, $t8
/* 09CA14 80113FA4 5420FFFB */  bnezl $at, .L80113F94_ovl2
/* 09CA18 80113FA8 A0400000 */   sb    $zero, ($v0)
.L80113FAC_ovl2:
/* 09CA1C 80113FAC E7B40104 */  swc1  $f20, 0x104($sp)
/* 09CA20 80113FB0 E7B40100 */  swc1  $f20, 0x100($sp)
/* 09CA24 80113FB4 E7B400FC */  swc1  $f20, 0xfc($sp)
/* 09CA28 80113FB8 E7B600F8 */  swc1  $f22, 0xf8($sp)
/* 09CA2C 80113FBC E7B600F4 */  swc1  $f22, 0xf4($sp)
/* 09CA30 80113FC0 E7B600F0 */  swc1  $f22, 0xf0($sp)
/* 09CA34 80113FC4 91790002 */  lbu   $t9, 2($t3)
/* 09CA38 80113FC8 00101080 */  sll   $v0, $s0, 2
/* 09CA3C 80113FCC 3C01800E */  lui   $at, 0x800e
/* 09CA40 80113FD0 332C0002 */  andi  $t4, $t9, 2
/* 09CA44 80113FD4 1180011C */  beqz  $t4, .L80114448_ovl2
/* 09CA48 80113FD8 00220821 */   addu  $at, $at, $v0
/* 09CA4C 80113FDC 25710058 */  addiu $s1, $t3, 0x58
/* 09CA50 80113FE0 02202825 */  move  $a1, $s1
/* 09CA54 80113FE4 25640018 */  addiu $a0, $t3, 0x18
/* 09CA58 80113FE8 24160001 */  li    $s6, 1
/* 09CA5C 80113FEC 24170001 */  li    $s7, 1
/* 09CA60 80113FF0 0C044C0A */  jal   func_80113028
/* 09CA64 80113FF4 AFAB0114 */   sw    $t3, 0x114($sp)
/* 09CA68 80113FF8 02002025 */  move  $a0, $s0
/* 09CA6C 80113FFC 0C044B35 */  jal   func_80112CD4
/* 09CA70 80114000 02202825 */   move  $a1, $s1
/* 09CA74 80114004 8E8D0008 */  lw    $t5, 8($s4)
/* 09CA78 80114008 8FAB0114 */  lw    $t3, 0x114($sp)
/* 09CA7C 8011400C 240A0001 */  li    $t2, 1
/* 09CA80 80114010 2DA10002 */  sltiu $at, $t5, 2
/* 09CA84 80114014 8E820004 */  lw    $v0, 4($s4)
/* 09CA88 80114018 8D730010 */  lw    $s3, 0x10($t3)
/* 09CA8C 8011401C 142000C8 */  bnez  $at, .L80114340_ovl2
/* 09CA90 80114020 8D75000C */   lw    $s5, 0xc($t3)
/* 09CA94 80114024 24520014 */  addiu $s2, $v0, 0x14
/* 09CA98 80114028 96420000 */  lhu   $v0, ($s2)
.L8011402C_ovl2:
/* 09CA9C 8011402C 02627021 */  addu  $t6, $s3, $v0
/* 09CAA0 80114030 91CF0000 */  lbu   $t7, ($t6)
/* 09CAA4 80114034 55E0003D */  bnezl $t7, .L8011412C_ovl2
/* 09CAA8 80114038 96420002 */   lhu   $v0, 2($s2)
/* 09CAAC 8011403C 005E0019 */  multu $v0, $fp
/* 09CAB0 80114040 8E98000C */  lw    $t8, 0xc($s4)
/* 09CAB4 80114044 00026080 */  sll   $t4, $v0, 2
/* 09CAB8 80114048 01826023 */  subu  $t4, $t4, $v0
/* 09CABC 8011404C 000C6040 */  sll   $t4, $t4, 1
/* 09CAC0 80114050 01953021 */  addu  $a2, $t4, $s5
/* 09CAC4 80114054 AFAB0114 */  sw    $t3, 0x114($sp)
/* 09CAC8 80114058 02202025 */  move  $a0, $s1
/* 09CACC 8011405C 0000C812 */  mflo  $t9
/* 09CAD0 80114060 03198021 */  addu  $s0, $t8, $t9
/* 09CAD4 80114064 0C044BDC */  jal   func_80112F70
/* 09CAD8 80114068 02002825 */   move  $a1, $s0
/* 09CADC 8011406C 964D0000 */  lhu   $t5, ($s2)
/* 09CAE0 80114070 240A0001 */  li    $t2, 1
/* 09CAE4 80114074 8FAB0114 */  lw    $t3, 0x114($sp)
/* 09CAE8 80114078 026D7021 */  addu  $t6, $s3, $t5
/* 09CAEC 8011407C A1CA0000 */  sb    $t2, ($t6)
/* 09CAF0 80114080 C7A400FC */  lwc1  $f4, 0xfc($sp)
/* 09CAF4 80114084 C6000000 */  lwc1  $f0, ($s0)
/* 09CAF8 80114088 4604003C */  c.lt.s $f0, $f4
/* 09CAFC 8011408C 00000000 */  nop   
/* 09CB00 80114090 45020003 */  bc1fl .L801140A0_ovl2
/* 09CB04 80114094 C6000004 */   lwc1  $f0, 4($s0)
/* 09CB08 80114098 E7A000FC */  swc1  $f0, 0xfc($sp)
/* 09CB0C 8011409C C6000004 */  lwc1  $f0, 4($s0)
.L801140A0_ovl2:
/* 09CB10 801140A0 C7A60100 */  lwc1  $f6, 0x100($sp)
/* 09CB14 801140A4 4606003C */  c.lt.s $f0, $f6
/* 09CB18 801140A8 00000000 */  nop   
/* 09CB1C 801140AC 45020003 */  bc1fl .L801140BC_ovl2
/* 09CB20 801140B0 C6000008 */   lwc1  $f0, 8($s0)
/* 09CB24 801140B4 E7A00100 */  swc1  $f0, 0x100($sp)
/* 09CB28 801140B8 C6000008 */  lwc1  $f0, 8($s0)
.L801140BC_ovl2:
/* 09CB2C 801140BC C7A80104 */  lwc1  $f8, 0x104($sp)
/* 09CB30 801140C0 4608003C */  c.lt.s $f0, $f8
/* 09CB34 801140C4 00000000 */  nop   
/* 09CB38 801140C8 45020003 */  bc1fl .L801140D8_ovl2
/* 09CB3C 801140CC C6000000 */   lwc1  $f0, ($s0)
/* 09CB40 801140D0 E7A00104 */  swc1  $f0, 0x104($sp)
/* 09CB44 801140D4 C6000000 */  lwc1  $f0, ($s0)
.L801140D8_ovl2:
/* 09CB48 801140D8 C7AA00F0 */  lwc1  $f10, 0xf0($sp)
/* 09CB4C 801140DC 4600503C */  c.lt.s $f10, $f0
/* 09CB50 801140E0 00000000 */  nop   
/* 09CB54 801140E4 45020003 */  bc1fl .L801140F4_ovl2
/* 09CB58 801140E8 C6000004 */   lwc1  $f0, 4($s0)
/* 09CB5C 801140EC E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 09CB60 801140F0 C6000004 */  lwc1  $f0, 4($s0)
.L801140F4_ovl2:
/* 09CB64 801140F4 C7B000F4 */  lwc1  $f16, 0xf4($sp)
/* 09CB68 801140F8 4600803C */  c.lt.s $f16, $f0
/* 09CB6C 801140FC 00000000 */  nop   
/* 09CB70 80114100 45020003 */  bc1fl .L80114110_ovl2
/* 09CB74 80114104 C6000008 */   lwc1  $f0, 8($s0)
/* 09CB78 80114108 E7A000F4 */  swc1  $f0, 0xf4($sp)
/* 09CB7C 8011410C C6000008 */  lwc1  $f0, 8($s0)
.L80114110_ovl2:
/* 09CB80 80114110 C7B200F8 */  lwc1  $f18, 0xf8($sp)
/* 09CB84 80114114 4600903C */  c.lt.s $f18, $f0
/* 09CB88 80114118 00000000 */  nop   
/* 09CB8C 8011411C 45020003 */  bc1fl .L8011412C_ovl2
/* 09CB90 80114120 96420002 */   lhu   $v0, 2($s2)
/* 09CB94 80114124 E7A000F8 */  swc1  $f0, 0xf8($sp)
/* 09CB98 80114128 96420002 */  lhu   $v0, 2($s2)
.L8011412C_ovl2:
/* 09CB9C 8011412C 02627821 */  addu  $t7, $s3, $v0
/* 09CBA0 80114130 91F80000 */  lbu   $t8, ($t7)
/* 09CBA4 80114134 5700003D */  bnezl $t8, .L8011422C_ovl2
/* 09CBA8 80114138 96420004 */   lhu   $v0, 4($s2)
/* 09CBAC 8011413C 005E0019 */  multu $v0, $fp
/* 09CBB0 80114140 8E99000C */  lw    $t9, 0xc($s4)
/* 09CBB4 80114144 00026880 */  sll   $t5, $v0, 2
/* 09CBB8 80114148 01A26823 */  subu  $t5, $t5, $v0
/* 09CBBC 8011414C 000D6840 */  sll   $t5, $t5, 1
/* 09CBC0 80114150 01B53021 */  addu  $a2, $t5, $s5
/* 09CBC4 80114154 AFAB0114 */  sw    $t3, 0x114($sp)
/* 09CBC8 80114158 02202025 */  move  $a0, $s1
/* 09CBCC 8011415C 00006012 */  mflo  $t4
/* 09CBD0 80114160 032C8021 */  addu  $s0, $t9, $t4
/* 09CBD4 80114164 0C044BDC */  jal   func_80112F70
/* 09CBD8 80114168 02002825 */   move  $a1, $s0
/* 09CBDC 8011416C 964E0002 */  lhu   $t6, 2($s2)
/* 09CBE0 80114170 240A0001 */  li    $t2, 1
/* 09CBE4 80114174 8FAB0114 */  lw    $t3, 0x114($sp)
/* 09CBE8 80114178 026E7821 */  addu  $t7, $s3, $t6
/* 09CBEC 8011417C A1EA0000 */  sb    $t2, ($t7)
/* 09CBF0 80114180 C7A400FC */  lwc1  $f4, 0xfc($sp)
/* 09CBF4 80114184 C6000000 */  lwc1  $f0, ($s0)
/* 09CBF8 80114188 4604003C */  c.lt.s $f0, $f4
/* 09CBFC 8011418C 00000000 */  nop   
/* 09CC00 80114190 45020003 */  bc1fl .L801141A0_ovl2
/* 09CC04 80114194 C6000004 */   lwc1  $f0, 4($s0)
/* 09CC08 80114198 E7A000FC */  swc1  $f0, 0xfc($sp)
/* 09CC0C 8011419C C6000004 */  lwc1  $f0, 4($s0)
.L801141A0_ovl2:
/* 09CC10 801141A0 C7A60100 */  lwc1  $f6, 0x100($sp)
/* 09CC14 801141A4 4606003C */  c.lt.s $f0, $f6
/* 09CC18 801141A8 00000000 */  nop   
/* 09CC1C 801141AC 45020003 */  bc1fl .L801141BC_ovl2
/* 09CC20 801141B0 C6000008 */   lwc1  $f0, 8($s0)
/* 09CC24 801141B4 E7A00100 */  swc1  $f0, 0x100($sp)
/* 09CC28 801141B8 C6000008 */  lwc1  $f0, 8($s0)
.L801141BC_ovl2:
/* 09CC2C 801141BC C7A80104 */  lwc1  $f8, 0x104($sp)
/* 09CC30 801141C0 4608003C */  c.lt.s $f0, $f8
/* 09CC34 801141C4 00000000 */  nop   
/* 09CC38 801141C8 45020003 */  bc1fl .L801141D8_ovl2
/* 09CC3C 801141CC C6000000 */   lwc1  $f0, ($s0)
/* 09CC40 801141D0 E7A00104 */  swc1  $f0, 0x104($sp)
/* 09CC44 801141D4 C6000000 */  lwc1  $f0, ($s0)
.L801141D8_ovl2:
/* 09CC48 801141D8 C7AA00F0 */  lwc1  $f10, 0xf0($sp)
/* 09CC4C 801141DC 4600503C */  c.lt.s $f10, $f0
/* 09CC50 801141E0 00000000 */  nop   
/* 09CC54 801141E4 45020003 */  bc1fl .L801141F4_ovl2
/* 09CC58 801141E8 C6000004 */   lwc1  $f0, 4($s0)
/* 09CC5C 801141EC E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 09CC60 801141F0 C6000004 */  lwc1  $f0, 4($s0)
.L801141F4_ovl2:
/* 09CC64 801141F4 C7B000F4 */  lwc1  $f16, 0xf4($sp)
/* 09CC68 801141F8 4600803C */  c.lt.s $f16, $f0
/* 09CC6C 801141FC 00000000 */  nop   
/* 09CC70 80114200 45020003 */  bc1fl .L80114210_ovl2
/* 09CC74 80114204 C6000008 */   lwc1  $f0, 8($s0)
/* 09CC78 80114208 E7A000F4 */  swc1  $f0, 0xf4($sp)
/* 09CC7C 8011420C C6000008 */  lwc1  $f0, 8($s0)
.L80114210_ovl2:
/* 09CC80 80114210 C7B200F8 */  lwc1  $f18, 0xf8($sp)
/* 09CC84 80114214 4600903C */  c.lt.s $f18, $f0
/* 09CC88 80114218 00000000 */  nop   
/* 09CC8C 8011421C 45020003 */  bc1fl .L8011422C_ovl2
/* 09CC90 80114220 96420004 */   lhu   $v0, 4($s2)
/* 09CC94 80114224 E7A000F8 */  swc1  $f0, 0xf8($sp)
/* 09CC98 80114228 96420004 */  lhu   $v0, 4($s2)
.L8011422C_ovl2:
/* 09CC9C 8011422C 0262C021 */  addu  $t8, $s3, $v0
/* 09CCA0 80114230 93190000 */  lbu   $t9, ($t8)
/* 09CCA4 80114234 5720003D */  bnezl $t9, .L8011432C_ovl2
/* 09CCA8 80114238 8E990008 */   lw    $t9, 8($s4)
/* 09CCAC 8011423C 005E0019 */  multu $v0, $fp
/* 09CCB0 80114240 8E8C000C */  lw    $t4, 0xc($s4)
/* 09CCB4 80114244 00027080 */  sll   $t6, $v0, 2
/* 09CCB8 80114248 01C27023 */  subu  $t6, $t6, $v0
/* 09CCBC 8011424C 000E7040 */  sll   $t6, $t6, 1
/* 09CCC0 80114250 01D53021 */  addu  $a2, $t6, $s5
/* 09CCC4 80114254 AFAB0114 */  sw    $t3, 0x114($sp)
/* 09CCC8 80114258 02202025 */  move  $a0, $s1
/* 09CCCC 8011425C 00006812 */  mflo  $t5
/* 09CCD0 80114260 018D8021 */  addu  $s0, $t4, $t5
/* 09CCD4 80114264 0C044BDC */  jal   func_80112F70
/* 09CCD8 80114268 02002825 */   move  $a1, $s0
/* 09CCDC 8011426C 964F0004 */  lhu   $t7, 4($s2)
/* 09CCE0 80114270 240A0001 */  li    $t2, 1
/* 09CCE4 80114274 8FAB0114 */  lw    $t3, 0x114($sp)
/* 09CCE8 80114278 026FC021 */  addu  $t8, $s3, $t7
/* 09CCEC 8011427C A30A0000 */  sb    $t2, ($t8)
/* 09CCF0 80114280 C7A400FC */  lwc1  $f4, 0xfc($sp)
/* 09CCF4 80114284 C6000000 */  lwc1  $f0, ($s0)
/* 09CCF8 80114288 4604003C */  c.lt.s $f0, $f4
/* 09CCFC 8011428C 00000000 */  nop   
/* 09CD00 80114290 45020003 */  bc1fl .L801142A0_ovl2
/* 09CD04 80114294 C6000004 */   lwc1  $f0, 4($s0)
/* 09CD08 80114298 E7A000FC */  swc1  $f0, 0xfc($sp)
/* 09CD0C 8011429C C6000004 */  lwc1  $f0, 4($s0)
.L801142A0_ovl2:
/* 09CD10 801142A0 C7A60100 */  lwc1  $f6, 0x100($sp)
/* 09CD14 801142A4 4606003C */  c.lt.s $f0, $f6
/* 09CD18 801142A8 00000000 */  nop   
/* 09CD1C 801142AC 45020003 */  bc1fl .L801142BC_ovl2
/* 09CD20 801142B0 C6000008 */   lwc1  $f0, 8($s0)
/* 09CD24 801142B4 E7A00100 */  swc1  $f0, 0x100($sp)
/* 09CD28 801142B8 C6000008 */  lwc1  $f0, 8($s0)
.L801142BC_ovl2:
/* 09CD2C 801142BC C7A80104 */  lwc1  $f8, 0x104($sp)
/* 09CD30 801142C0 4608003C */  c.lt.s $f0, $f8
/* 09CD34 801142C4 00000000 */  nop   
/* 09CD38 801142C8 45020003 */  bc1fl .L801142D8_ovl2
/* 09CD3C 801142CC C6000000 */   lwc1  $f0, ($s0)
/* 09CD40 801142D0 E7A00104 */  swc1  $f0, 0x104($sp)
/* 09CD44 801142D4 C6000000 */  lwc1  $f0, ($s0)
.L801142D8_ovl2:
/* 09CD48 801142D8 C7AA00F0 */  lwc1  $f10, 0xf0($sp)
/* 09CD4C 801142DC 4600503C */  c.lt.s $f10, $f0
/* 09CD50 801142E0 00000000 */  nop   
/* 09CD54 801142E4 45020003 */  bc1fl .L801142F4_ovl2
/* 09CD58 801142E8 C6000004 */   lwc1  $f0, 4($s0)
/* 09CD5C 801142EC E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 09CD60 801142F0 C6000004 */  lwc1  $f0, 4($s0)
.L801142F4_ovl2:
/* 09CD64 801142F4 C7B000F4 */  lwc1  $f16, 0xf4($sp)
/* 09CD68 801142F8 4600803C */  c.lt.s $f16, $f0
/* 09CD6C 801142FC 00000000 */  nop   
/* 09CD70 80114300 45020003 */  bc1fl .L80114310_ovl2
/* 09CD74 80114304 C6000008 */   lwc1  $f0, 8($s0)
/* 09CD78 80114308 E7A000F4 */  swc1  $f0, 0xf4($sp)
/* 09CD7C 8011430C C6000008 */  lwc1  $f0, 8($s0)
.L80114310_ovl2:
/* 09CD80 80114310 C7B200F8 */  lwc1  $f18, 0xf8($sp)
/* 09CD84 80114314 4600903C */  c.lt.s $f18, $f0
/* 09CD88 80114318 00000000 */  nop   
/* 09CD8C 8011431C 45020003 */  bc1fl .L8011432C_ovl2
/* 09CD90 80114320 8E990008 */   lw    $t9, 8($s4)
/* 09CD94 80114324 E7A000F8 */  swc1  $f0, 0xf8($sp)
/* 09CD98 80114328 8E990008 */  lw    $t9, 8($s4)
.L8011432C_ovl2:
/* 09CD9C 8011432C 26D60001 */  addiu $s6, $s6, 1
/* 09CDA0 80114330 26520014 */  addiu $s2, $s2, 0x14
/* 09CDA4 80114334 02D9082B */  sltu  $at, $s6, $t9
/* 09CDA8 80114338 5420FF3C */  bnezl $at, .L8011402C_ovl2
/* 09CDAC 8011433C 96420000 */   lhu   $v0, ($s2)
.L80114340_ovl2:
/* 09CDB0 80114340 8E8C0018 */  lw    $t4, 0x18($s4)
/* 09CDB4 80114344 8D630008 */  lw    $v1, 8($t3)
/* 09CDB8 80114348 8E860014 */  lw    $a2, 0x14($s4)
/* 09CDBC 8011434C 2D810002 */  sltiu $at, $t4, 2
/* 09CDC0 80114350 1420015A */  bnez  $at, .L801148BC_ovl2
/* 09CDC4 80114354 24640010 */   addiu $a0, $v1, 0x10
/* 09CDC8 80114358 24C20010 */  addiu $v0, $a2, 0x10
/* 09CDCC 8011435C 24050004 */  li    $a1, 4
.L80114360_ovl2:
/* 09CDD0 80114360 C4800000 */  lwc1  $f0, ($a0)
/* 09CDD4 80114364 C6240000 */  lwc1  $f4, ($s1)
/* 09CDD8 80114368 C4820004 */  lwc1  $f2, 4($a0)
/* 09CDDC 8011436C C6280010 */  lwc1  $f8, 0x10($s1)
/* 09CDE0 80114370 46002182 */  mul.s $f6, $f4, $f0
/* 09CDE4 80114374 C48C0008 */  lwc1  $f12, 8($a0)
/* 09CDE8 80114378 C6320020 */  lwc1  $f18, 0x20($s1)
/* 09CDEC 8011437C 46024282 */  mul.s $f10, $f8, $f2
/* 09CDF0 80114380 26F70001 */  addiu $s7, $s7, 1
/* 09CDF4 80114384 24840010 */  addiu $a0, $a0, 0x10
/* 09CDF8 80114388 460C9102 */  mul.s $f4, $f18, $f12
/* 09CDFC 8011438C 24420010 */  addiu $v0, $v0, 0x10
/* 09CE00 80114390 460A3400 */  add.s $f16, $f6, $f10
/* 09CE04 80114394 46102200 */  add.s $f8, $f4, $f16
/* 09CE08 80114398 E448FFF0 */  swc1  $f8, -0x10($v0)
/* 09CE0C 8011439C C6260004 */  lwc1  $f6, 4($s1)
/* 09CE10 801143A0 C6320014 */  lwc1  $f18, 0x14($s1)
/* 09CE14 801143A4 C6280024 */  lwc1  $f8, 0x24($s1)
/* 09CE18 801143A8 46003282 */  mul.s $f10, $f6, $f0
/* 09CE1C 801143AC 00000000 */  nop   
/* 09CE20 801143B0 46029102 */  mul.s $f4, $f18, $f2
/* 09CE24 801143B4 46045400 */  add.s $f16, $f10, $f4
/* 09CE28 801143B8 460C4182 */  mul.s $f6, $f8, $f12
/* 09CE2C 801143BC 46103480 */  add.s $f18, $f6, $f16
/* 09CE30 801143C0 E452FFF4 */  swc1  $f18, -0xc($v0)
/* 09CE34 801143C4 C62A0008 */  lwc1  $f10, 8($s1)
/* 09CE38 801143C8 C6280018 */  lwc1  $f8, 0x18($s1)
/* 09CE3C 801143CC C6320028 */  lwc1  $f18, 0x28($s1)
/* 09CE40 801143D0 46005102 */  mul.s $f4, $f10, $f0
/* 09CE44 801143D4 00000000 */  nop   
/* 09CE48 801143D8 46024182 */  mul.s $f6, $f8, $f2
/* 09CE4C 801143DC 46062400 */  add.s $f16, $f4, $f6
/* 09CE50 801143E0 460C9282 */  mul.s $f10, $f18, $f12
/* 09CE54 801143E4 C444FFF0 */  lwc1  $f4, -0x10($v0)
/* 09CE58 801143E8 46105200 */  add.s $f8, $f10, $f16
/* 09CE5C 801143EC C44AFFF4 */  lwc1  $f10, -0xc($v0)
/* 09CE60 801143F0 E448FFF8 */  swc1  $f8, -8($v0)
/* 09CE64 801143F4 8D6D0014 */  lw    $t5, 0x14($t3)
/* 09CE68 801143F8 01A57021 */  addu  $t6, $t5, $a1
/* 09CE6C 801143FC 8DC30000 */  lw    $v1, ($t6)
/* 09CE70 80114400 24A50004 */  addiu $a1, $a1, 4
/* 09CE74 80114404 C4660000 */  lwc1  $f6, ($v1)
/* 09CE78 80114408 C4700004 */  lwc1  $f16, 4($v1)
/* 09CE7C 8011440C 46062482 */  mul.s $f18, $f4, $f6
/* 09CE80 80114410 C446FFF8 */  lwc1  $f6, -8($v0)
/* 09CE84 80114414 46105202 */  mul.s $f8, $f10, $f16
/* 09CE88 80114418 C46A0008 */  lwc1  $f10, 8($v1)
/* 09CE8C 8011441C 460A3402 */  mul.s $f16, $f6, $f10
/* 09CE90 80114420 46089100 */  add.s $f4, $f18, $f8
/* 09CE94 80114424 46048480 */  add.s $f18, $f16, $f4
/* 09CE98 80114428 46009207 */  neg.s $f8, $f18
/* 09CE9C 8011442C E448FFFC */  swc1  $f8, -4($v0)
/* 09CEA0 80114430 8E8F0018 */  lw    $t7, 0x18($s4)
/* 09CEA4 80114434 02EF082B */  sltu  $at, $s7, $t7
/* 09CEA8 80114438 1420FFC9 */  bnez  $at, .L80114360_ovl2
/* 09CEAC 8011443C 00000000 */   nop   
/* 09CEB0 80114440 1000011F */  b     .L801148C0_ovl2
/* 09CEB4 80114444 27AC00FC */   addiu $t4, $sp, 0xfc
.L80114448_ovl2:
/* 09CEB8 80114448 C42225D0 */  lwc1  $f2, 0x25d0($at)
/* 09CEBC 8011444C 3C01800E */  lui   $at, 0x800e
/* 09CEC0 80114450 00220821 */  addu  $at, $at, $v0
/* 09CEC4 80114454 C42C2790 */  lwc1  $f12, 0x2790($at)
/* 09CEC8 80114458 8E980008 */  lw    $t8, 8($s4)
/* 09CECC 8011445C 3C01800E */  lui   $at, 0x800e
/* 09CED0 80114460 00220821 */  addu  $at, $at, $v0
/* 09CED4 80114464 C42E2950 */  lwc1  $f14, 0x2950($at)
/* 09CED8 80114468 2F010002 */  sltiu $at, $t8, 2
/* 09CEDC 8011446C 8E830004 */  lw    $v1, 4($s4)
/* 09CEE0 80114470 8D660010 */  lw    $a2, 0x10($t3)
/* 09CEE4 80114474 142000E9 */  bnez  $at, .L8011481C_ovl2
/* 09CEE8 80114478 8D67000C */   lw    $a3, 0xc($t3)
/* 09CEEC 8011447C 24650014 */  addiu $a1, $v1, 0x14
/* 09CEF0 80114480 94A30000 */  lhu   $v1, ($a1)
.L80114484_ovl2:
/* 09CEF4 80114484 00C3C821 */  addu  $t9, $a2, $v1
/* 09CEF8 80114488 932C0000 */  lbu   $t4, ($t9)
/* 09CEFC 8011448C 00037880 */  sll   $t7, $v1, 2
/* 09CF00 80114490 01E37823 */  subu  $t7, $t7, $v1
/* 09CF04 80114494 15800045 */  bnez  $t4, .L801145AC_ovl2
/* 09CF08 80114498 000F7840 */   sll   $t7, $t7, 1
/* 09CF0C 8011449C 01E71021 */  addu  $v0, $t7, $a3
/* 09CF10 801144A0 84580000 */  lh    $t8, ($v0)
/* 09CF14 801144A4 007E0019 */  multu $v1, $fp
/* 09CF18 801144A8 8E8D000C */  lw    $t5, 0xc($s4)
/* 09CF1C 801144AC 44983000 */  mtc1  $t8, $f6
/* 09CF20 801144B0 00000000 */  nop   
/* 09CF24 801144B4 468032A0 */  cvt.s.w $f10, $f6
/* 09CF28 801144B8 00007012 */  mflo  $t6
/* 09CF2C 801144BC 46025400 */  add.s $f16, $f10, $f2
/* 09CF30 801144C0 01AE2021 */  addu  $a0, $t5, $t6
/* 09CF34 801144C4 E4900000 */  swc1  $f16, ($a0)
/* 09CF38 801144C8 84590002 */  lh    $t9, 2($v0)
/* 09CF3C 801144CC 44992000 */  mtc1  $t9, $f4
/* 09CF40 801144D0 00000000 */  nop   
/* 09CF44 801144D4 468024A0 */  cvt.s.w $f18, $f4
/* 09CF48 801144D8 460C9200 */  add.s $f8, $f18, $f12
/* 09CF4C 801144DC E4880004 */  swc1  $f8, 4($a0)
/* 09CF50 801144E0 844C0004 */  lh    $t4, 4($v0)
/* 09CF54 801144E4 448C3000 */  mtc1  $t4, $f6
/* 09CF58 801144E8 00000000 */  nop   
/* 09CF5C 801144EC 468032A0 */  cvt.s.w $f10, $f6
/* 09CF60 801144F0 460E5400 */  add.s $f16, $f10, $f14
/* 09CF64 801144F4 E4900008 */  swc1  $f16, 8($a0)
/* 09CF68 801144F8 94AD0000 */  lhu   $t5, ($a1)
/* 09CF6C 801144FC 00CD7021 */  addu  $t6, $a2, $t5
/* 09CF70 80114500 A1CA0000 */  sb    $t2, ($t6)
/* 09CF74 80114504 C7A400FC */  lwc1  $f4, 0xfc($sp)
/* 09CF78 80114508 C4800000 */  lwc1  $f0, ($a0)
/* 09CF7C 8011450C 4604003C */  c.lt.s $f0, $f4
/* 09CF80 80114510 00000000 */  nop   
/* 09CF84 80114514 45020003 */  bc1fl .L80114524_ovl2
/* 09CF88 80114518 C4800004 */   lwc1  $f0, 4($a0)
/* 09CF8C 8011451C E7A000FC */  swc1  $f0, 0xfc($sp)
/* 09CF90 80114520 C4800004 */  lwc1  $f0, 4($a0)
.L80114524_ovl2:
/* 09CF94 80114524 C7B20100 */  lwc1  $f18, 0x100($sp)
/* 09CF98 80114528 4612003C */  c.lt.s $f0, $f18
/* 09CF9C 8011452C 00000000 */  nop   
/* 09CFA0 80114530 45020003 */  bc1fl .L80114540_ovl2
/* 09CFA4 80114534 C4800008 */   lwc1  $f0, 8($a0)
/* 09CFA8 80114538 E7A00100 */  swc1  $f0, 0x100($sp)
/* 09CFAC 8011453C C4800008 */  lwc1  $f0, 8($a0)
.L80114540_ovl2:
/* 09CFB0 80114540 C7A80104 */  lwc1  $f8, 0x104($sp)
/* 09CFB4 80114544 4608003C */  c.lt.s $f0, $f8
/* 09CFB8 80114548 00000000 */  nop   
/* 09CFBC 8011454C 45020003 */  bc1fl .L8011455C_ovl2
/* 09CFC0 80114550 C4800000 */   lwc1  $f0, ($a0)
/* 09CFC4 80114554 E7A00104 */  swc1  $f0, 0x104($sp)
/* 09CFC8 80114558 C4800000 */  lwc1  $f0, ($a0)
.L8011455C_ovl2:
/* 09CFCC 8011455C C7A600F0 */  lwc1  $f6, 0xf0($sp)
/* 09CFD0 80114560 4600303C */  c.lt.s $f6, $f0
/* 09CFD4 80114564 00000000 */  nop   
/* 09CFD8 80114568 45020003 */  bc1fl .L80114578_ovl2
/* 09CFDC 8011456C C4800004 */   lwc1  $f0, 4($a0)
/* 09CFE0 80114570 E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 09CFE4 80114574 C4800004 */  lwc1  $f0, 4($a0)
.L80114578_ovl2:
/* 09CFE8 80114578 C7AA00F4 */  lwc1  $f10, 0xf4($sp)
/* 09CFEC 8011457C 4600503C */  c.lt.s $f10, $f0
/* 09CFF0 80114580 00000000 */  nop   
/* 09CFF4 80114584 45020003 */  bc1fl .L80114594_ovl2
/* 09CFF8 80114588 C4800008 */   lwc1  $f0, 8($a0)
/* 09CFFC 8011458C E7A000F4 */  swc1  $f0, 0xf4($sp)
/* 09D000 80114590 C4800008 */  lwc1  $f0, 8($a0)
.L80114594_ovl2:
/* 09D004 80114594 C7B000F8 */  lwc1  $f16, 0xf8($sp)
/* 09D008 80114598 4600803C */  c.lt.s $f16, $f0
/* 09D00C 8011459C 00000000 */  nop   
/* 09D010 801145A0 45020003 */  bc1fl .L801145B0_ovl2
/* 09D014 801145A4 94A30002 */   lhu   $v1, 2($a1)
/* 09D018 801145A8 E7A000F8 */  swc1  $f0, 0xf8($sp)
.L801145AC_ovl2:
/* 09D01C 801145AC 94A30002 */  lhu   $v1, 2($a1)
.L801145B0_ovl2:
/* 09D020 801145B0 00C37821 */  addu  $t7, $a2, $v1
/* 09D024 801145B4 91F80000 */  lbu   $t8, ($t7)
/* 09D028 801145B8 00036880 */  sll   $t5, $v1, 2
/* 09D02C 801145BC 01A36823 */  subu  $t5, $t5, $v1
/* 09D030 801145C0 17000045 */  bnez  $t8, .L801146D8_ovl2
/* 09D034 801145C4 000D6840 */   sll   $t5, $t5, 1
/* 09D038 801145C8 01A71021 */  addu  $v0, $t5, $a3
/* 09D03C 801145CC 844E0000 */  lh    $t6, ($v0)
/* 09D040 801145D0 007E0019 */  multu $v1, $fp
/* 09D044 801145D4 8E99000C */  lw    $t9, 0xc($s4)
/* 09D048 801145D8 448E2000 */  mtc1  $t6, $f4
/* 09D04C 801145DC 00000000 */  nop   
/* 09D050 801145E0 468024A0 */  cvt.s.w $f18, $f4
/* 09D054 801145E4 00006012 */  mflo  $t4
/* 09D058 801145E8 46029200 */  add.s $f8, $f18, $f2
/* 09D05C 801145EC 032C2021 */  addu  $a0, $t9, $t4
/* 09D060 801145F0 E4880000 */  swc1  $f8, ($a0)
/* 09D064 801145F4 844F0002 */  lh    $t7, 2($v0)
/* 09D068 801145F8 448F3000 */  mtc1  $t7, $f6
/* 09D06C 801145FC 00000000 */  nop   
/* 09D070 80114600 468032A0 */  cvt.s.w $f10, $f6
/* 09D074 80114604 460C5400 */  add.s $f16, $f10, $f12
/* 09D078 80114608 E4900004 */  swc1  $f16, 4($a0)
/* 09D07C 8011460C 84580004 */  lh    $t8, 4($v0)
/* 09D080 80114610 44982000 */  mtc1  $t8, $f4
/* 09D084 80114614 00000000 */  nop   
/* 09D088 80114618 468024A0 */  cvt.s.w $f18, $f4
/* 09D08C 8011461C 460E9200 */  add.s $f8, $f18, $f14
/* 09D090 80114620 E4880008 */  swc1  $f8, 8($a0)
/* 09D094 80114624 94B90002 */  lhu   $t9, 2($a1)
/* 09D098 80114628 00D96021 */  addu  $t4, $a2, $t9
/* 09D09C 8011462C A18A0000 */  sb    $t2, ($t4)
/* 09D0A0 80114630 C7A600FC */  lwc1  $f6, 0xfc($sp)
/* 09D0A4 80114634 C4800000 */  lwc1  $f0, ($a0)
/* 09D0A8 80114638 4606003C */  c.lt.s $f0, $f6
/* 09D0AC 8011463C 00000000 */  nop   
/* 09D0B0 80114640 45020003 */  bc1fl .L80114650_ovl2
/* 09D0B4 80114644 C4800004 */   lwc1  $f0, 4($a0)
/* 09D0B8 80114648 E7A000FC */  swc1  $f0, 0xfc($sp)
/* 09D0BC 8011464C C4800004 */  lwc1  $f0, 4($a0)
.L80114650_ovl2:
/* 09D0C0 80114650 C7AA0100 */  lwc1  $f10, 0x100($sp)
/* 09D0C4 80114654 460A003C */  c.lt.s $f0, $f10
/* 09D0C8 80114658 00000000 */  nop   
/* 09D0CC 8011465C 45020003 */  bc1fl .L8011466C_ovl2
/* 09D0D0 80114660 C4800008 */   lwc1  $f0, 8($a0)
/* 09D0D4 80114664 E7A00100 */  swc1  $f0, 0x100($sp)
/* 09D0D8 80114668 C4800008 */  lwc1  $f0, 8($a0)
.L8011466C_ovl2:
/* 09D0DC 8011466C C7B00104 */  lwc1  $f16, 0x104($sp)
/* 09D0E0 80114670 4610003C */  c.lt.s $f0, $f16
/* 09D0E4 80114674 00000000 */  nop   
/* 09D0E8 80114678 45020003 */  bc1fl .L80114688_ovl2
/* 09D0EC 8011467C C4800000 */   lwc1  $f0, ($a0)
/* 09D0F0 80114680 E7A00104 */  swc1  $f0, 0x104($sp)
/* 09D0F4 80114684 C4800000 */  lwc1  $f0, ($a0)
.L80114688_ovl2:
/* 09D0F8 80114688 C7A400F0 */  lwc1  $f4, 0xf0($sp)
/* 09D0FC 8011468C 4600203C */  c.lt.s $f4, $f0
/* 09D100 80114690 00000000 */  nop   
/* 09D104 80114694 45020003 */  bc1fl .L801146A4_ovl2
/* 09D108 80114698 C4800004 */   lwc1  $f0, 4($a0)
/* 09D10C 8011469C E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 09D110 801146A0 C4800004 */  lwc1  $f0, 4($a0)
.L801146A4_ovl2:
/* 09D114 801146A4 C7B200F4 */  lwc1  $f18, 0xf4($sp)
/* 09D118 801146A8 4600903C */  c.lt.s $f18, $f0
/* 09D11C 801146AC 00000000 */  nop   
/* 09D120 801146B0 45020003 */  bc1fl .L801146C0_ovl2
/* 09D124 801146B4 C4800008 */   lwc1  $f0, 8($a0)
/* 09D128 801146B8 E7A000F4 */  swc1  $f0, 0xf4($sp)
/* 09D12C 801146BC C4800008 */  lwc1  $f0, 8($a0)
.L801146C0_ovl2:
/* 09D130 801146C0 C7A800F8 */  lwc1  $f8, 0xf8($sp)
/* 09D134 801146C4 4600403C */  c.lt.s $f8, $f0
/* 09D138 801146C8 00000000 */  nop   
/* 09D13C 801146CC 45020003 */  bc1fl .L801146DC_ovl2
/* 09D140 801146D0 94A30004 */   lhu   $v1, 4($a1)
/* 09D144 801146D4 E7A000F8 */  swc1  $f0, 0xf8($sp)
.L801146D8_ovl2:
/* 09D148 801146D8 94A30004 */  lhu   $v1, 4($a1)
.L801146DC_ovl2:
/* 09D14C 801146DC 00C36821 */  addu  $t5, $a2, $v1
/* 09D150 801146E0 91AE0000 */  lbu   $t6, ($t5)
/* 09D154 801146E4 0003C880 */  sll   $t9, $v1, 2
/* 09D158 801146E8 0323C823 */  subu  $t9, $t9, $v1
/* 09D15C 801146EC 15C00045 */  bnez  $t6, .L80114804_ovl2
/* 09D160 801146F0 0019C840 */   sll   $t9, $t9, 1
/* 09D164 801146F4 03271021 */  addu  $v0, $t9, $a3
/* 09D168 801146F8 844C0000 */  lh    $t4, ($v0)
/* 09D16C 801146FC 007E0019 */  multu $v1, $fp
/* 09D170 80114700 8E8F000C */  lw    $t7, 0xc($s4)
/* 09D174 80114704 448C3000 */  mtc1  $t4, $f6
/* 09D178 80114708 00000000 */  nop   
/* 09D17C 8011470C 468032A0 */  cvt.s.w $f10, $f6
/* 09D180 80114710 0000C012 */  mflo  $t8
/* 09D184 80114714 46025400 */  add.s $f16, $f10, $f2
/* 09D188 80114718 01F82021 */  addu  $a0, $t7, $t8
/* 09D18C 8011471C E4900000 */  swc1  $f16, ($a0)
/* 09D190 80114720 844D0002 */  lh    $t5, 2($v0)
/* 09D194 80114724 448D2000 */  mtc1  $t5, $f4
/* 09D198 80114728 00000000 */  nop   
/* 09D19C 8011472C 468024A0 */  cvt.s.w $f18, $f4
/* 09D1A0 80114730 460C9200 */  add.s $f8, $f18, $f12
/* 09D1A4 80114734 E4880004 */  swc1  $f8, 4($a0)
/* 09D1A8 80114738 844E0004 */  lh    $t6, 4($v0)
/* 09D1AC 8011473C 448E3000 */  mtc1  $t6, $f6
/* 09D1B0 80114740 00000000 */  nop   
/* 09D1B4 80114744 468032A0 */  cvt.s.w $f10, $f6
/* 09D1B8 80114748 460E5400 */  add.s $f16, $f10, $f14
/* 09D1BC 8011474C E4900008 */  swc1  $f16, 8($a0)
/* 09D1C0 80114750 94AF0004 */  lhu   $t7, 4($a1)
/* 09D1C4 80114754 00CFC021 */  addu  $t8, $a2, $t7
/* 09D1C8 80114758 A30A0000 */  sb    $t2, ($t8)
/* 09D1CC 8011475C C7A400FC */  lwc1  $f4, 0xfc($sp)
/* 09D1D0 80114760 C4800000 */  lwc1  $f0, ($a0)
/* 09D1D4 80114764 4604003C */  c.lt.s $f0, $f4
/* 09D1D8 80114768 00000000 */  nop   
/* 09D1DC 8011476C 45020003 */  bc1fl .L8011477C_ovl2
/* 09D1E0 80114770 C4800004 */   lwc1  $f0, 4($a0)
/* 09D1E4 80114774 E7A000FC */  swc1  $f0, 0xfc($sp)
/* 09D1E8 80114778 C4800004 */  lwc1  $f0, 4($a0)
.L8011477C_ovl2:
/* 09D1EC 8011477C C7B20100 */  lwc1  $f18, 0x100($sp)
/* 09D1F0 80114780 4612003C */  c.lt.s $f0, $f18
/* 09D1F4 80114784 00000000 */  nop   
/* 09D1F8 80114788 45020003 */  bc1fl .L80114798_ovl2
/* 09D1FC 8011478C C4800008 */   lwc1  $f0, 8($a0)
/* 09D200 80114790 E7A00100 */  swc1  $f0, 0x100($sp)
/* 09D204 80114794 C4800008 */  lwc1  $f0, 8($a0)
.L80114798_ovl2:
/* 09D208 80114798 C7A80104 */  lwc1  $f8, 0x104($sp)
/* 09D20C 8011479C 4608003C */  c.lt.s $f0, $f8
/* 09D210 801147A0 00000000 */  nop   
/* 09D214 801147A4 45020003 */  bc1fl .L801147B4_ovl2
/* 09D218 801147A8 C4800000 */   lwc1  $f0, ($a0)
/* 09D21C 801147AC E7A00104 */  swc1  $f0, 0x104($sp)
/* 09D220 801147B0 C4800000 */  lwc1  $f0, ($a0)
.L801147B4_ovl2:
/* 09D224 801147B4 C7A600F0 */  lwc1  $f6, 0xf0($sp)
/* 09D228 801147B8 4600303C */  c.lt.s $f6, $f0
/* 09D22C 801147BC 00000000 */  nop   
/* 09D230 801147C0 45020003 */  bc1fl .L801147D0_ovl2
/* 09D234 801147C4 C4800004 */   lwc1  $f0, 4($a0)
/* 09D238 801147C8 E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 09D23C 801147CC C4800004 */  lwc1  $f0, 4($a0)
.L801147D0_ovl2:
/* 09D240 801147D0 C7AA00F4 */  lwc1  $f10, 0xf4($sp)
/* 09D244 801147D4 4600503C */  c.lt.s $f10, $f0
/* 09D248 801147D8 00000000 */  nop   
/* 09D24C 801147DC 45020003 */  bc1fl .L801147EC_ovl2
/* 09D250 801147E0 C4800008 */   lwc1  $f0, 8($a0)
/* 09D254 801147E4 E7A000F4 */  swc1  $f0, 0xf4($sp)
/* 09D258 801147E8 C4800008 */  lwc1  $f0, 8($a0)
.L801147EC_ovl2:
/* 09D25C 801147EC C7B000F8 */  lwc1  $f16, 0xf8($sp)
/* 09D260 801147F0 4600803C */  c.lt.s $f16, $f0
/* 09D264 801147F4 00000000 */  nop   
/* 09D268 801147F8 45020003 */  bc1fl .L80114808_ovl2
/* 09D26C 801147FC 8E990008 */   lw    $t9, 8($s4)
/* 09D270 80114800 E7A000F8 */  swc1  $f0, 0xf8($sp)
.L80114804_ovl2:
/* 09D274 80114804 8E990008 */  lw    $t9, 8($s4)
.L80114808_ovl2:
/* 09D278 80114808 25080001 */  addiu $t0, $t0, 1
/* 09D27C 8011480C 24A50014 */  addiu $a1, $a1, 0x14
/* 09D280 80114810 0119082B */  sltu  $at, $t0, $t9
/* 09D284 80114814 5420FF1B */  bnezl $at, .L80114484_ovl2
/* 09D288 80114818 94A30000 */   lhu   $v1, ($a1)
.L8011481C_ovl2:
/* 09D28C 8011481C 8E8C0018 */  lw    $t4, 0x18($s4)
/* 09D290 80114820 8D620008 */  lw    $v0, 8($t3)
/* 09D294 80114824 8E860014 */  lw    $a2, 0x14($s4)
/* 09D298 80114828 2D810002 */  sltiu $at, $t4, 2
/* 09D29C 8011482C 14200023 */  bnez  $at, .L801148BC_ovl2
/* 09D2A0 80114830 24050004 */   li    $a1, 4
/* 09D2A4 80114834 24C40010 */  addiu $a0, $a2, 0x10
/* 09D2A8 80114838 24430010 */  addiu $v1, $v0, 0x10
/* 09D2AC 8011483C 8D6D0014 */  lw    $t5, 0x14($t3)
.L80114840_ovl2:
/* 09D2B0 80114840 8C780000 */  lw    $t8, ($v1)
/* 09D2B4 80114844 25290001 */  addiu $t1, $t1, 1
/* 09D2B8 80114848 01A57021 */  addu  $t6, $t5, $a1
/* 09D2BC 8011484C 8DC20000 */  lw    $v0, ($t6)
/* 09D2C0 80114850 AC980000 */  sw    $t8, ($a0)
/* 09D2C4 80114854 8C6F0004 */  lw    $t7, 4($v1)
/* 09D2C8 80114858 24A50004 */  addiu $a1, $a1, 4
/* 09D2CC 8011485C 24840010 */  addiu $a0, $a0, 0x10
/* 09D2D0 80114860 AC8FFFF4 */  sw    $t7, -0xc($a0)
/* 09D2D4 80114864 8C780008 */  lw    $t8, 8($v1)
/* 09D2D8 80114868 24630010 */  addiu $v1, $v1, 0x10
/* 09D2DC 8011486C AC98FFF8 */  sw    $t8, -8($a0)
/* 09D2E0 80114870 8C6FFFFC */  lw    $t7, -4($v1)
/* 09D2E4 80114874 AC8FFFFC */  sw    $t7, -4($a0)
/* 09D2E8 80114878 C464FFF0 */  lwc1  $f4, -0x10($v1)
/* 09D2EC 8011487C C4520000 */  lwc1  $f18, ($v0)
/* 09D2F0 80114880 C466FFF4 */  lwc1  $f6, -0xc($v1)
/* 09D2F4 80114884 C44A0004 */  lwc1  $f10, 4($v0)
/* 09D2F8 80114888 46122202 */  mul.s $f8, $f4, $f18
/* 09D2FC 8011488C C472FFF8 */  lwc1  $f18, -8($v1)
/* 09D300 80114890 460A3402 */  mul.s $f16, $f6, $f10
/* 09D304 80114894 C4460008 */  lwc1  $f6, 8($v0)
/* 09D308 80114898 46069282 */  mul.s $f10, $f18, $f6
/* 09D30C 8011489C 46104100 */  add.s $f4, $f8, $f16
/* 09D310 801148A0 46045200 */  add.s $f8, $f10, $f4
/* 09D314 801148A4 46004407 */  neg.s $f16, $f8
/* 09D318 801148A8 E490FFFC */  swc1  $f16, -4($a0)
/* 09D31C 801148AC 8E990018 */  lw    $t9, 0x18($s4)
/* 09D320 801148B0 0139082B */  sltu  $at, $t1, $t9
/* 09D324 801148B4 5420FFE2 */  bnezl $at, .L80114840_ovl2
/* 09D328 801148B8 8D6D0014 */   lw    $t5, 0x14($t3)
.L801148BC_ovl2:
/* 09D32C 801148BC 27AC00FC */  addiu $t4, $sp, 0xfc
.L801148C0_ovl2:
/* 09D330 801148C0 8D8E0000 */  lw    $t6, ($t4)
/* 09D334 801148C4 27AF00F0 */  addiu $t7, $sp, 0xf0
/* 09D338 801148C8 256B00B8 */  addiu $t3, $t3, 0xb8
/* 09D33C 801148CC AD6EFFE8 */  sw    $t6, -0x18($t3)
/* 09D340 801148D0 8D8D0004 */  lw    $t5, 4($t4)
/* 09D344 801148D4 AD6DFFEC */  sw    $t5, -0x14($t3)
/* 09D348 801148D8 8D8E0008 */  lw    $t6, 8($t4)
/* 09D34C 801148DC AD6EFFF0 */  sw    $t6, -0x10($t3)
/* 09D350 801148E0 8DF90000 */  lw    $t9, ($t7)
/* 09D354 801148E4 3C0E8013 */  lui   $t6, %hi(D_8012D940) # $t6, 0x8013
/* 09D358 801148E8 AD79FFF4 */  sw    $t9, -0xc($t3)
/* 09D35C 801148EC 8DF80004 */  lw    $t8, 4($t7)
/* 09D360 801148F0 AD78FFF8 */  sw    $t8, -8($t3)
/* 09D364 801148F4 8DF90008 */  lw    $t9, 8($t7)
/* 09D368 801148F8 AD79FFFC */  sw    $t9, -4($t3)
/* 09D36C 801148FC 8FAC0110 */  lw    $t4, 0x110($sp)
/* 09D370 80114900 8DCED940 */  lw    $t6, %lo(D_8012D940)($t6)
/* 09D374 80114904 258D0001 */  addiu $t5, $t4, 1
/* 09D378 80114908 01AE082B */  sltu  $at, $t5, $t6
/* 09D37C 8011490C 1420FD98 */  bnez  $at, .L80113F70_ovl2
/* 09D380 80114910 AFAD0110 */   sw    $t5, 0x110($sp)
.L80114914_ovl2:
/* 09D384 80114914 0C043763 */  jal   func_8010DD8C
/* 09D388 80114918 00000000 */   nop   
/* 09D38C 8011491C 3C038005 */  lui   $v1, %hi(D_8004A7D0) # $v1, 0x8005
/* 09D390 80114920 2463A7D0 */  addiu $v1, %lo(D_8004A7D0) # addiu $v1, $v1, -0x5830
/* 09D394 80114924 8C6F0000 */  lw    $t7, ($v1)
/* 09D398 80114928 3C028011 */  lui   $v0, %hi(D_801133C8) # $v0, 0x8011
/* 09D39C 8011492C 244233C8 */  addiu $v0, %lo(D_801133C8) # addiu $v0, $v0, 0x33c8
/* 09D3A0 80114930 ADE20020 */  sw    $v0, 0x20($t7)
/* 09D3A4 80114934 8C780000 */  lw    $t8, ($v1)
/* 09D3A8 80114938 AF02001C */  sw    $v0, 0x1c($t8)
/* 09D3AC 8011493C 8FBF004C */  lw    $ra, 0x4c($sp)
/* 09D3B0 80114940 8FBE0048 */  lw    $fp, 0x48($sp)
/* 09D3B4 80114944 8FB70044 */  lw    $s7, 0x44($sp)
/* 09D3B8 80114948 8FB60040 */  lw    $s6, 0x40($sp)
/* 09D3BC 8011494C 8FB5003C */  lw    $s5, 0x3c($sp)
/* 09D3C0 80114950 8FB40038 */  lw    $s4, 0x38($sp)
/* 09D3C4 80114954 8FB30034 */  lw    $s3, 0x34($sp)
/* 09D3C8 80114958 8FB20030 */  lw    $s2, 0x30($sp)
/* 09D3CC 8011495C 8FB1002C */  lw    $s1, 0x2c($sp)
/* 09D3D0 80114960 8FB00028 */  lw    $s0, 0x28($sp)
/* 09D3D4 80114964 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 09D3D8 80114968 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 09D3DC 8011496C 03E00008 */  jr    $ra
/* 09D3E0 80114970 27BD0118 */   addiu $sp, $sp, 0x118
