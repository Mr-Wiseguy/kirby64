glabel func_800F62A4
/* 07ED14 800F62A4 3C03800C */  lui   $v1, %hi(D_800BE4F8) # $v1, 0x800c
/* 07ED18 800F62A8 2463E4F8 */  addiu $v1, %lo(D_800BE4F8) # addiu $v1, $v1, -0x1b08
/* 07ED1C 800F62AC 8C6E0000 */  lw    $t6, ($v1)
/* 07ED20 800F62B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07ED24 800F62B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07ED28 800F62B8 2DC10008 */  sltiu $at, $t6, 8
/* 07ED2C 800F62BC 10200078 */  beqz  $at, .L800F64A0_ovl2
/* 07ED30 800F62C0 AFA40018 */   sw    $a0, 0x18($sp)
/* 07ED34 800F62C4 000E7080 */  sll   $t6, $t6, 2
/* 07ED38 800F62C8 3C018013 */  lui   $at, 0x8013
/* 07ED3C 800F62CC 002E0821 */  addu  $at, $at, $t6
/* 07ED40 800F62D0 8C2E86E0 */  lw    $t6, -0x7920($at)
/* 07ED44 800F62D4 01C00008 */  jr    $t6
/* 07ED48 800F62D8 00000000 */   nop   
/* 07ED4C 800F62DC 3C0F800D */  lui   $t7, %hi(D_800D6B24) # $t7, 0x800d
/* 07ED50 800F62E0 8DEF6B24 */  lw    $t7, %lo(D_800D6B24)($t7)
/* 07ED54 800F62E4 55E0006F */  bnezl $t7, .L800F64A4_ovl2
/* 07ED58 800F62E8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07ED5C 800F62EC 0C008322 */  jal   func_80020C88_ovl2
/* 07ED60 800F62F0 00000000 */   nop   
/* 07ED64 800F62F4 00002025 */  move  $a0, $zero
/* 07ED68 800F62F8 00002825 */  move  $a1, $zero
/* 07ED6C 800F62FC 0C0295D1 */  jal   func_800A5744
/* 07ED70 800F6300 00003025 */   move  $a2, $zero
/* 07ED74 800F6304 00002025 */  move  $a0, $zero
/* 07ED78 800F6308 24050010 */  li    $a1, 16
/* 07ED7C 800F630C 0C029685 */  jal   func_800A5A14
/* 07ED80 800F6310 24060002 */   li    $a2, 2
/* 07ED84 800F6314 10000063 */  b     .L800F64A4_ovl2
/* 07ED88 800F6318 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07ED8C 800F631C 3C18800D */  lui   $t8, %hi(D_800D6B24) # $t8, 0x800d
/* 07ED90 800F6320 8F186B24 */  lw    $t8, %lo(D_800D6B24)($t8)
/* 07ED94 800F6324 5700005F */  bnezl $t8, .L800F64A4_ovl2
/* 07ED98 800F6328 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07ED9C 800F632C 0C03E158 */  jal   func_800F8560
/* 07EDA0 800F6330 00000000 */   nop   
/* 07EDA4 800F6334 24010002 */  li    $at, 2
/* 07EDA8 800F6338 14410006 */  bne   $v0, $at, .L800F6354_ovl2
/* 07EDAC 800F633C 24040001 */   li    $a0, 1
/* 07EDB0 800F6340 24040003 */  li    $a0, 3
/* 07EDB4 800F6344 0C02EE63 */  jal   func_800BB98C
/* 07EDB8 800F6348 24050002 */   li    $a1, 2
/* 07EDBC 800F634C 10000055 */  b     .L800F64A4_ovl2
/* 07EDC0 800F6350 8FBF0014 */   lw    $ra, 0x14($sp)
.L800F6354_ovl2:
/* 07EDC4 800F6354 0C02EE63 */  jal   func_800BB98C
/* 07EDC8 800F6358 24050002 */   li    $a1, 2
/* 07EDCC 800F635C 10000051 */  b     .L800F64A4_ovl2
/* 07EDD0 800F6360 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07EDD4 800F6364 3C19800D */  lui   $t9, %hi(D_800D6B24) # $t9, 0x800d
/* 07EDD8 800F6368 8F396B24 */  lw    $t9, %lo(D_800D6B24)($t9)
/* 07EDDC 800F636C 3C08800C */  lui   $t0, %hi(D_800BE4F0) # $t0, 0x800c
/* 07EDE0 800F6370 5720004C */  bnezl $t9, .L800F64A4_ovl2
/* 07EDE4 800F6374 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07EDE8 800F6378 8D08E4F0 */  lw    $t0, %lo(D_800BE4F0)($t0)
/* 07EDEC 800F637C 24010021 */  li    $at, 33
/* 07EDF0 800F6380 240400FF */  li    $a0, 255
/* 07EDF4 800F6384 1501000B */  bne   $t0, $at, .L800F63B4_ovl2
/* 07EDF8 800F6388 240500FF */   li    $a1, 255
/* 07EDFC 800F638C 00002025 */  move  $a0, $zero
/* 07EE00 800F6390 00002825 */  move  $a1, $zero
/* 07EE04 800F6394 0C0295D1 */  jal   func_800A5744
/* 07EE08 800F6398 00003025 */   move  $a2, $zero
/* 07EE0C 800F639C 00002025 */  move  $a0, $zero
/* 07EE10 800F63A0 24050001 */  li    $a1, 1
/* 07EE14 800F63A4 0C029685 */  jal   func_800A5A14
/* 07EE18 800F63A8 24060002 */   li    $a2, 2
/* 07EE1C 800F63AC 1000003D */  b     .L800F64A4_ovl2
/* 07EE20 800F63B0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800F63B4_ovl2:
/* 07EE24 800F63B4 0C0295D1 */  jal   func_800A5744
/* 07EE28 800F63B8 240600FF */   li    $a2, 255
/* 07EE2C 800F63BC 00002025 */  move  $a0, $zero
/* 07EE30 800F63C0 24050001 */  li    $a1, 1
/* 07EE34 800F63C4 0C029685 */  jal   func_800A5A14
/* 07EE38 800F63C8 24060002 */   li    $a2, 2
/* 07EE3C 800F63CC 10000035 */  b     .L800F64A4_ovl2
/* 07EE40 800F63D0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07EE44 800F63D4 3C02800D */  lui   $v0, %hi(D_800D6B58) # $v0, 0x800d
/* 07EE48 800F63D8 24426B58 */  addiu $v0, %lo(D_800D6B58) # addiu $v0, $v0, 0x6b58
/* 07EE4C 800F63DC 8C490000 */  lw    $t1, ($v0)
/* 07EE50 800F63E0 252AFFFF */  addiu $t2, $t1, -1
/* 07EE54 800F63E4 1540002E */  bnez  $t2, .L800F64A0_ovl2
/* 07EE58 800F63E8 AC4A0000 */   sw    $t2, ($v0)
/* 07EE5C 800F63EC 0C0473F8 */  jal   func_8011CFE0
/* 07EE60 800F63F0 00000000 */   nop   
/* 07EE64 800F63F4 0C029D36 */  jal   func_800A74D8
/* 07EE68 800F63F8 00000000 */   nop   
/* 07EE6C 800F63FC 00002025 */  move  $a0, $zero
/* 07EE70 800F6400 00002825 */  move  $a1, $zero
/* 07EE74 800F6404 0C0295D1 */  jal   func_800A5744
/* 07EE78 800F6408 00003025 */   move  $a2, $zero
/* 07EE7C 800F640C 00002025 */  move  $a0, $zero
/* 07EE80 800F6410 24050010 */  li    $a1, 16
/* 07EE84 800F6414 0C029685 */  jal   func_800A5A14
/* 07EE88 800F6418 24060002 */   li    $a2, 2
/* 07EE8C 800F641C 10000021 */  b     .L800F64A4_ovl2
/* 07EE90 800F6420 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07EE94 800F6424 3C02800D */  lui   $v0, %hi(D_800D6F3C) # $v0, 0x800d
/* 07EE98 800F6428 8C426F3C */  lw    $v0, %lo(D_800D6F3C)($v0)
/* 07EE9C 800F642C 3C0C800D */  lui   $t4, %hi(D_800D6F42) # $t4, 0x800d
/* 07EEA0 800F6430 28410002 */  slti  $at, $v0, 2
/* 07EEA4 800F6434 1420001A */  bnez  $at, .L800F64A0_ovl2
/* 07EEA8 800F6438 24010004 */   li    $at, 4
/* 07EEAC 800F643C 14410003 */  bne   $v0, $at, .L800F644C_ovl2
/* 07EEB0 800F6440 3C0E800D */   lui   $t6, %hi(D_800D6B24) # $t6, 0x800d
/* 07EEB4 800F6444 10000002 */  b     .L800F6450_ovl2
/* 07EEB8 800F6448 24021000 */   li    $v0, 4096
.L800F644C_ovl2:
/* 07EEBC 800F644C 34029000 */  li    $v0, 36864
.L800F6450_ovl2:
/* 07EEC0 800F6450 958C6F42 */  lhu   $t4, %lo(D_800D6F42)($t4)
/* 07EEC4 800F6454 01826824 */  and   $t5, $t4, $v0
/* 07EEC8 800F6458 51A00012 */  beql  $t5, $zero, .L800F64A4_ovl2
/* 07EECC 800F645C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07EED0 800F6460 8DCE6B24 */  lw    $t6, %lo(D_800D6B24)($t6)
/* 07EED4 800F6464 00002025 */  move  $a0, $zero
/* 07EED8 800F6468 00002825 */  move  $a1, $zero
/* 07EEDC 800F646C 15C0000C */  bnez  $t6, .L800F64A0_ovl2
/* 07EEE0 800F6470 00003025 */   move  $a2, $zero
/* 07EEE4 800F6474 0C0295D1 */  jal   func_800A5744
/* 07EEE8 800F6478 AC600000 */   sw    $zero, ($v1)
/* 07EEEC 800F647C 00002025 */  move  $a0, $zero
/* 07EEF0 800F6480 24050040 */  li    $a1, 64
/* 07EEF4 800F6484 0C029685 */  jal   func_800A5A14
/* 07EEF8 800F6488 24060002 */   li    $a2, 2
/* 07EEFC 800F648C 3C01800D */  lui   $at, %hi(D_800D6F38) # $at, 0x800d
/* 07EF00 800F6490 10000003 */  b     .L800F64A0_ovl2
/* 07EF04 800F6494 AC206F38 */   sw    $zero, %lo(D_800D6F38)($at)
/* 07EF08 800F6498 3C01800D */  lui   $at, %hi(D_800D6F38) # $at, 0x800d
/* 07EF0C 800F649C AC206F38 */  sw    $zero, %lo(D_800D6F38)($at)
.L800F64A0_ovl2:
/* 07EF10 800F64A0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800F64A4_ovl2:
/* 07EF14 800F64A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 07EF18 800F64A8 03E00008 */  jr    $ra
/* 07EF1C 800F64AC 00000000 */   nop   
