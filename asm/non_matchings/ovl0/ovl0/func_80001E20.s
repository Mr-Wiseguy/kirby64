glabel func_80001E20
/* 002A20 80001E20 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 002A24 80001E24 AFBE0038 */  sw    $fp, 0x38($sp)
/* 002A28 80001E28 3C1E8005 */  lui   $fp, %hi(D_80048B8C) # $fp, 0x8005
/* 002A2C 80001E2C 27DE8B8C */  addiu $fp, %lo(D_80048B8C) # addiu $fp, $fp, -0x7474
/* 002A30 80001E30 8FC20000 */  lw    $v0, ($fp)
/* 002A34 80001E34 AFB20020 */  sw    $s2, 0x20($sp)
/* 002A38 80001E38 AFBF003C */  sw    $ra, 0x3c($sp)
/* 002A3C 80001E3C AFB70034 */  sw    $s7, 0x34($sp)
/* 002A40 80001E40 AFB60030 */  sw    $s6, 0x30($sp)
/* 002A44 80001E44 AFB5002C */  sw    $s5, 0x2c($sp)
/* 002A48 80001E48 AFB40028 */  sw    $s4, 0x28($sp)
/* 002A4C 80001E4C AFB30024 */  sw    $s3, 0x24($sp)
/* 002A50 80001E50 AFB1001C */  sw    $s1, 0x1c($sp)
/* 002A54 80001E54 AFB00018 */  sw    $s0, 0x18($sp)
/* 002A58 80001E58 10400003 */  beqz  $v0, .L80001E68_ovl0
/* 002A5C 80001E5C 00009025 */   move  $s2, $zero
/* 002A60 80001E60 10000002 */  b     .L80001E6C_ovl0
/* 002A64 80001E64 8C570004 */   lw    $s7, 4($v0)
.L80001E68_ovl0:
/* 002A68 80001E68 2417FFFF */  li    $s7, -1
.L80001E6C_ovl0:
/* 002A6C 80001E6C 3C028005 */  lui   $v0, %hi(D_80048B90) # $v0, 0x8005
/* 002A70 80001E70 8C428B90 */  lw    $v0, %lo(D_80048B90)($v0)
/* 002A74 80001E74 3C138005 */  lui   $s3, %hi(D_80048B94) # $s3, 0x8005
/* 002A78 80001E78 26738B94 */  addiu $s3, %lo(D_80048B94) # addiu $s3, $s3, -0x746c
/* 002A7C 80001E7C 10400002 */  beqz  $v0, .L80001E88_ovl0
/* 002A80 80001E80 3C108005 */   lui   $s0, %hi(D_80048B84) # $s0, 0x8005
/* 002A84 80001E84 8C570004 */  lw    $s7, 4($v0)
.L80001E88_ovl0:
/* 002A88 80001E88 8E640000 */  lw    $a0, ($s3)
/* 002A8C 80001E8C 2414FFFF */  li    $s4, -1
/* 002A90 80001E90 24160002 */  li    $s6, 2
/* 002A94 80001E94 10800003 */  beqz  $a0, .L80001EA4_ovl0
/* 002A98 80001E98 24150001 */   li    $s5, 1
/* 002A9C 80001E9C 10000001 */  b     .L80001EA4_ovl0
/* 002AA0 80001EA0 8C940004 */   lw    $s4, 4($a0)
.L80001EA4_ovl0:
/* 002AA4 80001EA4 8E108B84 */  lw    $s0, %lo(D_80048B84)($s0)
.L80001EA8_ovl0:
/* 002AA8 80001EA8 12000003 */  beqz  $s0, .L80001EB8_ovl0
/* 002AAC 80001EAC 2402FFFF */   li    $v0, -1
/* 002AB0 80001EB0 10000001 */  b     .L80001EB8_ovl0
/* 002AB4 80001EB4 8E020004 */   lw    $v0, 4($s0)
.L80001EB8_ovl0:
/* 002AB8 80001EB8 0282082A */  slt   $at, $s4, $v0
/* 002ABC 80001EBC 14200004 */  bnez  $at, .L80001ED0_ovl0
/* 002AC0 80001EC0 02A01825 */   move  $v1, $s5
/* 002AC4 80001EC4 00001825 */  move  $v1, $zero
/* 002AC8 80001EC8 10000002 */  b     .L80001ED4_ovl0
/* 002ACC 80001ECC 02802025 */   move  $a0, $s4
.L80001ED0_ovl0:
/* 002AD0 80001ED0 00402025 */  move  $a0, $v0
.L80001ED4_ovl0:
/* 002AD4 80001ED4 02E4082A */  slt   $at, $s7, $a0
/* 002AD8 80001ED8 14200003 */  bnez  $at, .L80001EE8_ovl0
/* 002ADC 80001EDC 00000000 */   nop   
/* 002AE0 80001EE0 10000024 */  b     .L80001F74_ovl0
/* 002AE4 80001EE4 02A09025 */   move  $s2, $s5
.L80001EE8_ovl0:
/* 002AE8 80001EE8 50600006 */  beql  $v1, $zero, .L80001F04_ovl0
/* 002AEC 80001EEC 8E640000 */   lw    $a0, ($s3)
/* 002AF0 80001EF0 50750012 */  beql  $v1, $s5, .L80001F3C_ovl0
/* 002AF4 80001EF4 8E020014 */   lw    $v0, 0x14($s0)
/* 002AF8 80001EF8 1000001E */  b     .L80001F74_ovl0
/* 002AFC 80001EFC 00000000 */   nop   
/* 002B00 80001F00 8E640000 */  lw    $a0, ($s3)
.L80001F04_ovl0:
/* 002B04 80001F04 24120001 */  li    $s2, 1
/* 002B08 80001F08 0C00B66F */  jal   osSpTaskLoad
/* 002B0C 80001F0C 24840028 */   addiu $a0, $a0, 0x28
/* 002B10 80001F10 8E640000 */  lw    $a0, ($s3)
/* 002B14 80001F14 0C00B6D3 */  jal   osSpTaskStartGo
/* 002B18 80001F18 24840028 */   addiu $a0, $a0, 0x28
/* 002B1C 80001F1C 8E6E0000 */  lw    $t6, ($s3)
/* 002B20 80001F20 ADD60008 */  sw    $s6, 8($t6)
/* 002B24 80001F24 8E640000 */  lw    $a0, ($s3)
/* 002B28 80001F28 0C000371 */  jal   func_80000DC4
/* 002B2C 80001F2C AFC40000 */   sw    $a0, ($fp)
/* 002B30 80001F30 10000010 */  b     .L80001F74_ovl0
/* 002B34 80001F34 00000000 */   nop   
/* 002B38 80001F38 8E020014 */  lw    $v0, 0x14($s0)
.L80001F3C_ovl0:
/* 002B3C 80001F3C 10400005 */  beqz  $v0, .L80001F54_ovl0
/* 002B40 80001F40 00000000 */   nop   
/* 002B44 80001F44 0040F809 */  jalr  $v0
/* 002B48 80001F48 02002025 */  move  $a0, $s0
/* 002B4C 80001F4C 10400009 */  beqz  $v0, .L80001F74_ovl0
/* 002B50 80001F50 02A09025 */   move  $s2, $s5
.L80001F54_ovl0:
/* 002B54 80001F54 0C00066F */  jal   func_800019BC
/* 002B58 80001F58 02002025 */   move  $a0, $s0
/* 002B5C 80001F5C 00409025 */  move  $s2, $v0
/* 002B60 80001F60 8E11000C */  lw    $s1, 0xc($s0)
/* 002B64 80001F64 0C000339 */  jal   func_80000CE4
/* 002B68 80001F68 02002025 */   move  $a0, $s0
/* 002B6C 80001F6C 10000001 */  b     .L80001F74_ovl0
/* 002B70 80001F70 02208025 */   move  $s0, $s1
.L80001F74_ovl0:
/* 002B74 80001F74 1240FFCC */  beqz  $s2, .L80001EA8_ovl0
/* 002B78 80001F78 00000000 */   nop   
/* 002B7C 80001F7C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 002B80 80001F80 8FB00018 */  lw    $s0, 0x18($sp)
/* 002B84 80001F84 8FB1001C */  lw    $s1, 0x1c($sp)
/* 002B88 80001F88 8FB20020 */  lw    $s2, 0x20($sp)
/* 002B8C 80001F8C 8FB30024 */  lw    $s3, 0x24($sp)
/* 002B90 80001F90 8FB40028 */  lw    $s4, 0x28($sp)
/* 002B94 80001F94 8FB5002C */  lw    $s5, 0x2c($sp)
/* 002B98 80001F98 8FB60030 */  lw    $s6, 0x30($sp)
/* 002B9C 80001F9C 8FB70034 */  lw    $s7, 0x34($sp)
/* 002BA0 80001FA0 8FBE0038 */  lw    $fp, 0x38($sp)
/* 002BA4 80001FA4 03E00008 */  jr    $ra
/* 002BA8 80001FA8 27BD0040 */   addiu $sp, $sp, 0x40
