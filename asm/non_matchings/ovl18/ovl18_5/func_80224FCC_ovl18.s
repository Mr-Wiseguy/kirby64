glabel func_80224FCC_ovl18
/* 23796C 80224FCC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 237970 80224FD0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 237974 80224FD4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 237978 80224FD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 23797C 80224FDC AFA40048 */  sw    $a0, 0x48($sp)
/* 237980 80224FE0 8DC20000 */  lw    $v0, ($t6)
/* 237984 80224FE4 3C18800F */ lui $t8, %hi(D_800E98E0)
/* 237988 80224FE8 00027880 */  sll   $t7, $v0, 2
/* 23798C 80224FEC 030FC021 */  addu  $t8, $t8, $t7
/* 237990 80224FF0 8F1898E0 */ lw $t8, %lo(D_800E98E0)($t8)
/* 237994 80224FF4 13000025 */  beqz  $t8, .L8022508C_ovl18
/* 237998 80224FF8 00000000 */   nop   
/* 23799C 80224FFC 0C044554 */  jal   func_80111550
/* 2379A0 80225000 00402025 */   move  $a0, $v0
/* 2379A4 80225004 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 2379A8 80225008 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 2379AC 8022500C 3C09800F */ lui $t1, %hi(D_800E98E0)
/* 2379B0 80225010 24010001 */  li    $at, 1
/* 2379B4 80225014 8F220000 */  lw    $v0, ($t9)
/* 2379B8 80225018 3C048023 */  lui   $a0, %hi(D_8022A5BC) # $a0, 0x8023
/* 2379BC 8022501C 2484A5BC */  addiu $a0, %lo(D_8022A5BC) # addiu $a0, $a0, -0x5a44
/* 2379C0 80225020 00024080 */  sll   $t0, $v0, 2
/* 2379C4 80225024 01284821 */  addu  $t1, $t1, $t0
/* 2379C8 80225028 8D2998E0 */ lw $t1, %lo(D_800E98E0)($t1)
/* 2379CC 8022502C 00402825 */  move  $a1, $v0
/* 2379D0 80225030 15210008 */  bne   $t1, $at, .L80225054_ovl18
/* 2379D4 80225034 00000000 */   nop   
/* 2379D8 80225038 3C048023 */  lui   $a0, %hi(D_8022A628) # $a0, 0x8023
/* 2379DC 8022503C 0C044722 */  jal   func_80111C88
/* 2379E0 80225040 2484A628 */   addiu $a0, %lo(D_8022A628) # addiu $a0, $a0, -0x59d8
/* 2379E4 80225044 0C0447B3 */  jal   func_80111ECC
/* 2379E8 80225048 00402025 */   move  $a0, $v0
/* 2379EC 8022504C 10000005 */  b     .L80225064_ovl18
/* 2379F0 80225050 00000000 */   nop   
.L80225054_ovl18:
/* 2379F4 80225054 0C044722 */  jal   func_80111C88
/* 2379F8 80225058 00402825 */   move  $a1, $v0
/* 2379FC 8022505C 0C0447B3 */  jal   func_80111ECC
/* 237A00 80225060 00402025 */   move  $a0, $v0
.L80225064_ovl18:
/* 237A04 80225064 0C0442C0 */  jal   func_80110B00
/* 237A08 80225068 27A40028 */   addiu $a0, $sp, 0x28
/* 237A0C 8022506C 14400007 */  bnez  $v0, .L8022508C_ovl18
/* 237A10 80225070 00000000 */   nop   
/* 237A14 80225074 0C0443F5 */  jal   func_80110FD4
/* 237A18 80225078 27A40028 */   addiu $a0, $sp, 0x28
/* 237A1C 8022507C 14400003 */  bnez  $v0, .L8022508C_ovl18
/* 237A20 80225080 00000000 */   nop   
/* 237A24 80225084 0C044054 */  jal   func_80110150
/* 237A28 80225088 27A40028 */   addiu $a0, $sp, 0x28
.L8022508C_ovl18:
/* 237A2C 8022508C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 237A30 80225090 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 237A34 80225094 3C0A800F */ lui $t2, %hi(D_800E9E20)
/* 237A38 80225098 3C01800E */ lui $at, %hi(D_800DDC50)
/* 237A3C 8022509C 8C430000 */  lw    $v1, ($v0)
/* 237A40 802250A0 3C04800E */ lui $a0, %hi(D_800DE510)
/* 237A44 802250A4 00031880 */  sll   $v1, $v1, 2
/* 237A48 802250A8 01435021 */  addu  $t2, $t2, $v1
/* 237A4C 802250AC 8D4A9E20 */ lw $t2, %lo(D_800E9E20)($t2)
/* 237A50 802250B0 00230821 */  addu  $at, $at, $v1
/* 237A54 802250B4 5140000A */  beql  $t2, $zero, .L802250E0_ovl18
/* 237A58 802250B8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 237A5C 802250BC AC20DC50 */ sw $zero, %lo(D_800DDC50)($at)
/* 237A60 802250C0 8C4B0000 */  lw    $t3, ($v0)
/* 237A64 802250C4 3C058022 */  lui   $a1, %hi(func_80224B54_ovl18) # $a1, 0x8022
/* 237A68 802250C8 24A54B54 */  addiu $a1, %lo(func_80224B54_ovl18) # addiu $a1, $a1, 0x4b54
/* 237A6C 802250CC 000B6080 */  sll   $t4, $t3, 2
/* 237A70 802250D0 008C2021 */  addu  $a0, $a0, $t4
/* 237A74 802250D4 0C02C7B2 */  jal   func_800B1EC8
/* 237A78 802250D8 8C84E510 */ lw $a0, %lo(D_800DE510)($a0)
/* 237A7C 802250DC 8FBF0014 */  lw    $ra, 0x14($sp)
.L802250E0_ovl18:
/* 237A80 802250E0 27BD0048 */  addiu $sp, $sp, 0x48
/* 237A84 802250E4 03E00008 */  jr    $ra
/* 237A88 802250E8 00000000 */   nop   
