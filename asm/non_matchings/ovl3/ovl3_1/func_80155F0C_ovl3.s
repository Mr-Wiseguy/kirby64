glabel func_80155F0C_ovl3
/* 0B694C 80155F0C 3C0E8013 */  lui   $t6, %hi(D_8012E804) # $t6, 0x8013
/* 0B6950 80155F10 8DCEE804 */  lw    $t6, %lo(D_8012E804)($t6)
/* 0B6954 80155F14 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0B6958 80155F18 AFB00020 */  sw    $s0, 0x20($sp)
/* 0B695C 80155F1C 24010002 */  li    $at, 2
/* 0B6960 80155F20 00808025 */  move  $s0, $a0
/* 0B6964 80155F24 11C10004 */  beq   $t6, $at, .L80155F38_ovl3
/* 0B6968 80155F28 AFBF0024 */   sw    $ra, 0x24($sp)
/* 0B696C 80155F2C 948F0010 */  lhu   $t7, 0x10($a0)
/* 0B6970 80155F30 15E0001B */  bnez  $t7, .L80155FA0_ovl3
/* 0B6974 80155F34 00000000 */   nop   
.L80155F38_ovl3:
/* 0B6978 80155F38 0C046EAF */  jal   func_8011BABC
/* 0B697C 80155F3C 02002025 */   move  $a0, $s0
/* 0B6980 80155F40 AFA20044 */  sw    $v0, 0x44($sp)
/* 0B6984 80155F44 24180002 */  li    $t8, 2
/* 0B6988 80155F48 A0580054 */  sb    $t8, 0x54($v0)
/* 0B698C 80155F4C 0C029D9E */  jal   func_800A7678
/* 0B6990 80155F50 2404000A */   li    $a0, 10
/* 0B6994 80155F54 27A40038 */  addiu $a0, $sp, 0x38
/* 0B6998 80155F58 0C0291E5 */  jal   func_800A4794
/* 0B699C 80155F5C 8FA50044 */   lw    $a1, 0x44($sp)
/* 0B69A0 80155F60 27A4002C */  addiu $a0, $sp, 0x2c
/* 0B69A4 80155F64 0C02936E */  jal   func_800A4DB8
/* 0B69A8 80155F68 8FA50044 */   lw    $a1, 0x44($sp)
/* 0B69AC 80155F6C 9606000C */  lhu   $a2, 0xc($s0)
/* 0B69B0 80155F70 27B9002C */  addiu $t9, $sp, 0x2c
/* 0B69B4 80155F74 AFB90010 */  sw    $t9, 0x10($sp)
/* 0B69B8 80155F78 24040006 */  li    $a0, 6
/* 0B69BC 80155F7C 24050003 */  li    $a1, 3
/* 0B69C0 80155F80 27A70038 */  addiu $a3, $sp, 0x38
/* 0B69C4 80155F84 0C02A00B */  jal   func_800A802C
/* 0B69C8 80155F88 00063040 */   sll   $a2, $a2, 1
/* 0B69CC 80155F8C 00002025 */  move  $a0, $zero
/* 0B69D0 80155F90 0C02ED1A */  jal   func_800BB468
/* 0B69D4 80155F94 00002825 */   move  $a1, $zero
/* 0B69D8 80155F98 10000025 */  b     .L80156030_ovl3
/* 0B69DC 80155F9C 00001025 */   move  $v0, $zero
.L80155FA0_ovl3:
/* 0B69E0 80155FA0 0C046F4C */  jal   func_8011BD30
/* 0B69E4 80155FA4 02002025 */   move  $a0, $s0
/* 0B69E8 80155FA8 27A40038 */  addiu $a0, $sp, 0x38
/* 0B69EC 80155FAC 0C0291E5 */  jal   func_800A4794
/* 0B69F0 80155FB0 00402825 */   move  $a1, $v0
/* 0B69F4 80155FB4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0B69F8 80155FB8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0B69FC 80155FBC 3C01800F */  lui   $at, 0x800f
/* 0B6A00 80155FC0 9606000C */  lhu   $a2, 0xc($s0)
/* 0B6A04 80155FC4 8D020000 */  lw    $v0, ($t0)
/* 0B6A08 80155FC8 3C07800F */  lui   $a3, 0x800f
/* 0B6A0C 80155FCC 00063040 */  sll   $a2, $a2, 1
/* 0B6A10 80155FD0 00021080 */  sll   $v0, $v0, 2
/* 0B6A14 80155FD4 00220821 */  addu  $at, $at, $v0
/* 0B6A18 80155FD8 C424A8A0 */  lwc1  $f4, -0x5760($at)
/* 0B6A1C 80155FDC 3C01800F */  lui   $at, 0x800f
/* 0B6A20 80155FE0 00220821 */  addu  $at, $at, $v0
/* 0B6A24 80155FE4 C426AA60 */  lwc1  $f6, -0x55a0($at)
/* 0B6A28 80155FE8 00E23821 */  addu  $a3, $a3, $v0
/* 0B6A2C 80155FEC 8CE7A6E0 */  lw    $a3, -0x5920($a3)
/* 0B6A30 80155FF0 24C60001 */  addiu $a2, $a2, 1
/* 0B6A34 80155FF4 24040006 */  li    $a0, 6
/* 0B6A38 80155FF8 24050003 */  li    $a1, 3
/* 0B6A3C 80155FFC E7A40010 */  swc1  $f4, 0x10($sp)
/* 0B6A40 80156000 0C029FDD */  jal   func_800A7F74
/* 0B6A44 80156004 E7A60014 */   swc1  $f6, 0x14($sp)
/* 0B6A48 80156008 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0B6A4C 8015600C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0B6A50 80156010 3C01800F */  lui   $at, 0x800f
/* 0B6A54 80156014 24090001 */  li    $t1, 1
/* 0B6A58 80156018 8D4B0000 */  lw    $t3, ($t2)
/* 0B6A5C 8015601C 24020001 */  li    $v0, 1
/* 0B6A60 80156020 000B6080 */  sll   $t4, $t3, 2
/* 0B6A64 80156024 002C0821 */  addu  $at, $at, $t4
/* 0B6A68 80156028 10000001 */  b     .L80156030_ovl3
/* 0B6A6C 8015602C AC298220 */   sw    $t1, -0x7de0($at)
.L80156030_ovl3:
/* 0B6A70 80156030 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0B6A74 80156034 8FB00020 */  lw    $s0, 0x20($sp)
/* 0B6A78 80156038 27BD0048 */  addiu $sp, $sp, 0x48
/* 0B6A7C 8015603C 03E00008 */  jr    $ra
/* 0B6A80 80156040 00000000 */   nop   

/* 0B6A84 80156044 00000000 */  nop   
/* 0B6A88 80156048 00000000 */  nop   
/* 0B6A8C 8015604C 00000000 */  nop   
