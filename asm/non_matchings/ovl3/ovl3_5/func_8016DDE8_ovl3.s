glabel func_8016DDE8_ovl3
/* 0CE828 8016DDE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0CE82C 8016DDEC AFB00014 */  sw    $s0, 0x14($sp)
/* 0CE830 8016DDF0 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0CE834 8016DDF4 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0CE838 8016DDF8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CE83C 8016DDFC AFB10018 */  sw    $s1, 0x18($sp)
/* 0CE840 8016DE00 AFA40020 */  sw    $a0, 0x20($sp)
/* 0CE844 8016DE04 AE000030 */  sw    $zero, 0x30($s0)
/* 0CE848 8016DE08 A60000D2 */  sh    $zero, 0xd2($s0)
/* 0CE84C 8016DE0C 0C0473D6 */  jal   func_8011CF58
/* 0CE850 8016DE10 A60000D0 */   sh    $zero, 0xd0($s0)
/* 0CE854 8016DE14 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0CE858 8016DE18 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0CE85C 8016DE1C 8E220000 */  lw    $v0, ($s1)
/* 0CE860 8016DE20 3C01800E */  lui   $at, 0x800e
/* 0CE864 8016DE24 240F0003 */  li    $t7, 3
/* 0CE868 8016DE28 8C580000 */  lw    $t8, ($v0)
/* 0CE86C 8016DE2C 3C0A8019 */  lui   $t2, %hi(D_80190358) # $t2, 0x8019
/* 0CE870 8016DE30 3C098019 */  lui   $t1, %hi(D_801903E0) # $t1, 0x8019
/* 0CE874 8016DE34 0018C880 */  sll   $t9, $t8, 2
/* 0CE878 8016DE38 00390821 */  addu  $at, $at, $t9
/* 0CE87C 8016DE3C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 0CE880 8016DE40 92080004 */  lbu   $t0, 4($s0)
/* 0CE884 8016DE44 24010001 */  li    $at, 1
/* 0CE888 8016DE48 252903E0 */  addiu $t1, %lo(D_801903E0) # addiu $t1, $t1, 0x3e0
/* 0CE88C 8016DE4C 15010003 */  bne   $t0, $at, .L8016DE5C_ovl3
/* 0CE890 8016DE50 254A0358 */   addiu $t2, %lo(D_80190358) # addiu $t2, $t2, 0x358
/* 0CE894 8016DE54 10000002 */  b     .L8016DE60_ovl3
/* 0CE898 8016DE58 AE09015C */   sw    $t1, 0x15c($s0)
.L8016DE5C_ovl3:
/* 0CE89C 8016DE5C AE0A015C */  sw    $t2, 0x15c($s0)
.L8016DE60_ovl3:
/* 0CE8A0 8016DE60 8C4B0000 */  lw    $t3, ($v0)
/* 0CE8A4 8016DE64 3C0D800F */  lui   $t5, 0x800f
/* 0CE8A8 8016DE68 24010006 */  li    $at, 6
/* 0CE8AC 8016DE6C 000B6080 */  sll   $t4, $t3, 2
/* 0CE8B0 8016DE70 01AC6821 */  addu  $t5, $t5, $t4
/* 0CE8B4 8016DE74 8DAD8AE0 */  lw    $t5, -0x7520($t5)
/* 0CE8B8 8016DE78 00001025 */  move  $v0, $zero
/* 0CE8BC 8016DE7C 31AE0006 */  andi  $t6, $t5, 6
/* 0CE8C0 8016DE80 15C10003 */  bne   $t6, $at, .L8016DE90_ovl3
/* 0CE8C4 8016DE84 00000000 */   nop   
/* 0CE8C8 8016DE88 10000001 */  b     .L8016DE90_ovl3
/* 0CE8CC 8016DE8C 24020001 */   li    $v0, 1
.L8016DE90_ovl3:
/* 0CE8D0 8016DE90 1040001B */  beqz  $v0, .L8016DF00_ovl3
/* 0CE8D4 8016DE94 00000000 */   nop   
/* 0CE8D8 8016DE98 0C029D9E */  jal   func_800A7678
/* 0CE8DC 8016DE9C 2404010B */   li    $a0, 267
/* 0CE8E0 8016DEA0 3C014108 */  li    $at, 0x41080000 # 8.500000
/* 0CE8E4 8016DEA4 44810000 */  mtc1  $at, $f0
/* 0CE8E8 8016DEA8 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0CE8EC 8016DEAC 44812000 */  mtc1  $at, $f4
/* 0CE8F0 8016DEB0 8E220000 */  lw    $v0, ($s1)
/* 0CE8F4 8016DEB4 3C01800E */  lui   $at, 0x800e
/* 0CE8F8 8016DEB8 E60400CC */  swc1  $f4, 0xcc($s0)
/* 0CE8FC 8016DEBC 8C580000 */  lw    $t8, ($v0)
/* 0CE900 8016DEC0 00187880 */  sll   $t7, $t8, 2
/* 0CE904 8016DEC4 002F0821 */  addu  $at, $at, $t7
/* 0CE908 8016DEC8 E4203210 */  swc1  $f0, 0x3210($at)
/* 0CE90C 8016DECC 8C590000 */  lw    $t9, ($v0)
/* 0CE910 8016DED0 3C018019 */  lui   $at, %hi(D_8019735C) # $at, 0x8019
/* 0CE914 8016DED4 C426735C */  lwc1  $f6, %lo(D_8019735C)($at)
/* 0CE918 8016DED8 3C01800E */  lui   $at, 0x800e
/* 0CE91C 8016DEDC 00194080 */  sll   $t0, $t9, 2
/* 0CE920 8016DEE0 00280821 */  addu  $at, $at, $t0
/* 0CE924 8016DEE4 E4263750 */  swc1  $f6, 0x3750($at)
/* 0CE928 8016DEE8 8C490000 */  lw    $t1, ($v0)
/* 0CE92C 8016DEEC 3C01800E */  lui   $at, 0x800e
/* 0CE930 8016DEF0 00095080 */  sll   $t2, $t1, 2
/* 0CE934 8016DEF4 002A0821 */  addu  $at, $at, $t2
/* 0CE938 8016DEF8 1000001D */  b     .L8016DF70_ovl3
/* 0CE93C 8016DEFC E4203C90 */   swc1  $f0, 0x3c90($at)
.L8016DF00_ovl3:
/* 0CE940 8016DF00 0C029D9E */  jal   func_800A7678
/* 0CE944 8016DF04 240400F7 */   li    $a0, 247
/* 0CE948 8016DF08 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0CE94C 8016DF0C 44814000 */  mtc1  $at, $f8
/* 0CE950 8016DF10 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 0CE954 8016DF14 44816000 */  mtc1  $at, $f12
/* 0CE958 8016DF18 0C048C51 */  jal   func_80123144
/* 0CE95C 8016DF1C E60800CC */   swc1  $f8, 0xcc($s0)
/* 0CE960 8016DF20 8E220000 */  lw    $v0, ($s1)
/* 0CE964 8016DF24 3C01800E */  lui   $at, 0x800e
/* 0CE968 8016DF28 8C4B0000 */  lw    $t3, ($v0)
/* 0CE96C 8016DF2C 000B6080 */  sll   $t4, $t3, 2
/* 0CE970 8016DF30 002C0821 */  addu  $at, $at, $t4
/* 0CE974 8016DF34 E4203210 */  swc1  $f0, 0x3210($at)
/* 0CE978 8016DF38 8C4D0000 */  lw    $t5, ($v0)
/* 0CE97C 8016DF3C 3C018019 */  lui   $at, %hi(D_80197360) # $at, 0x8019
/* 0CE980 8016DF40 C42A7360 */  lwc1  $f10, %lo(D_80197360)($at)
/* 0CE984 8016DF44 3C01800E */  lui   $at, 0x800e
/* 0CE988 8016DF48 000D7080 */  sll   $t6, $t5, 2
/* 0CE98C 8016DF4C 002E0821 */  addu  $at, $at, $t6
/* 0CE990 8016DF50 E42A3750 */  swc1  $f10, 0x3750($at)
/* 0CE994 8016DF54 8C580000 */  lw    $t8, ($v0)
/* 0CE998 8016DF58 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0CE99C 8016DF5C 44818000 */  mtc1  $at, $f16
/* 0CE9A0 8016DF60 3C01800E */  lui   $at, 0x800e
/* 0CE9A4 8016DF64 00187880 */  sll   $t7, $t8, 2
/* 0CE9A8 8016DF68 002F0821 */  addu  $at, $at, $t7
/* 0CE9AC 8016DF6C E4303C90 */  swc1  $f16, 0x3c90($at)
.L8016DF70_ovl3:
/* 0CE9B0 8016DF70 8C590000 */  lw    $t9, ($v0)
/* 0CE9B4 8016DF74 3C01800F */  lui   $at, 0x800f
/* 0CE9B8 8016DF78 3C040002 */  lui   $a0, (0x0002009F >> 16) # lui $a0, 2
/* 0CE9BC 8016DF7C 00194080 */  sll   $t0, $t9, 2
/* 0CE9C0 8016DF80 00280821 */  addu  $at, $at, $t0
/* 0CE9C4 8016DF84 AC2083E0 */  sw    $zero, -0x7c20($at)
/* 0CE9C8 8016DF88 8C490000 */  lw    $t1, ($v0)
/* 0CE9CC 8016DF8C 3C01800F */  lui   $at, 0x800f
/* 0CE9D0 8016DF90 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0CE9D4 8016DF94 00095080 */  sll   $t2, $t1, 2
/* 0CE9D8 8016DF98 002A0821 */  addu  $at, $at, $t2
/* 0CE9DC 8016DF9C AC208920 */  sw    $zero, -0x76e0($at)
/* 0CE9E0 8016DFA0 920B0006 */  lbu   $t3, 6($s0)
/* 0CE9E4 8016DFA4 2401000B */  li    $at, 11
/* 0CE9E8 8016DFA8 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0CE9EC 8016DFAC 15610005 */  bne   $t3, $at, .L8016DFC4_ovl3
/* 0CE9F0 8016DFB0 3484009F */   ori   $a0, (0x0002009F & 0xFFFF) # ori $a0, $a0, 0x9f
/* 0CE9F4 8016DFB4 0C02A9E3 */  jal   func_800AA78C
/* 0CE9F8 8016DFB8 3C064040 */   lui   $a2, 0x4040
/* 0CE9FC 8016DFBC 10000008 */  b     .L8016DFE0_ovl3
/* 0CEA00 8016DFC0 92020004 */   lbu   $v0, 4($s0)
.L8016DFC4_ovl3:
/* 0CEA04 8016DFC4 8C4C0000 */  lw    $t4, ($v0)
/* 0CEA08 8016DFC8 3C04800E */  lui   $a0, 0x800e
/* 0CEA0C 8016DFCC 000C6880 */  sll   $t5, $t4, 2
/* 0CEA10 8016DFD0 008D2021 */  addu  $a0, $a0, $t5
/* 0CEA14 8016DFD4 0C02BE95 */  jal   func_800AFA54
/* 0CEA18 8016DFD8 8C84FA10 */   lw    $a0, -0x5f0($a0)
/* 0CEA1C 8016DFDC 92020004 */  lbu   $v0, 4($s0)
.L8016DFE0_ovl3:
/* 0CEA20 8016DFE0 3C040002 */  lui   $a0, (0x0002009F >> 16) # lui $a0, 2
/* 0CEA24 8016DFE4 3484009F */  ori   $a0, (0x0002009F & 0xFFFF) # ori $a0, $a0, 0x9f
/* 0CEA28 8016DFE8 10400009 */  beqz  $v0, .L8016E010_ovl3
/* 0CEA2C 8016DFEC 3C050002 */   lui   $a1, (0x000200A0 >> 16) # lui $a1, 2
/* 0CEA30 8016DFF0 24010001 */  li    $at, 1
/* 0CEA34 8016DFF4 1041000B */  beq   $v0, $at, .L8016E024_ovl3
/* 0CEA38 8016DFF8 3C040002 */   lui   $a0, 2
/* 0CEA3C 8016DFFC 24010002 */  li    $at, 2
/* 0CEA40 8016E000 1041000F */  beq   $v0, $at, .L8016E040_ovl3
/* 0CEA44 8016E004 3C040002 */   lui   $a0, (0x000200C7 >> 16) # lui $a0, 2
/* 0CEA48 8016E008 10000013 */  b     .L8016E058_ovl3
/* 0CEA4C 8016E00C 8E2E0000 */   lw    $t6, ($s1)
.L8016E010_ovl3:
/* 0CEA50 8016E010 34A500A0 */  ori   $a1, (0x000200A0 & 0xFFFF) # ori $a1, $a1, 0xa0
/* 0CEA54 8016E014 0C048C3A */  jal   func_801230E8
/* 0CEA58 8016E018 00003025 */   move  $a2, $zero
/* 0CEA5C 8016E01C 1000000E */  b     .L8016E058_ovl3
/* 0CEA60 8016E020 8E2E0000 */   lw    $t6, ($s1)
.L8016E024_ovl3:
/* 0CEA64 8016E024 3C050002 */  lui   $a1, (0x0002016E >> 16) # lui $a1, 2
/* 0CEA68 8016E028 34A5016E */  ori   $a1, (0x0002016E & 0xFFFF) # ori $a1, $a1, 0x16e
/* 0CEA6C 8016E02C 3484016D */  ori   $a0, (0x0002016D & 0xFFFF) # ori $a0, $a0, 0x16d
/* 0CEA70 8016E030 0C048C3A */  jal   func_801230E8
/* 0CEA74 8016E034 00003025 */   move  $a2, $zero
/* 0CEA78 8016E038 10000007 */  b     .L8016E058_ovl3
/* 0CEA7C 8016E03C 8E2E0000 */   lw    $t6, ($s1)
.L8016E040_ovl3:
/* 0CEA80 8016E040 3C050002 */  lui   $a1, (0x000200C8 >> 16) # lui $a1, 2
/* 0CEA84 8016E044 34A500C8 */  ori   $a1, (0x000200C8 & 0xFFFF) # ori $a1, $a1, 0xc8
/* 0CEA88 8016E048 348400C7 */  ori   $a0, (0x000200C7 & 0xFFFF) # ori $a0, $a0, 0xc7
/* 0CEA8C 8016E04C 0C048C3A */  jal   func_801230E8
/* 0CEA90 8016E050 00003025 */   move  $a2, $zero
/* 0CEA94 8016E054 8E2E0000 */  lw    $t6, ($s1)
.L8016E058_ovl3:
/* 0CEA98 8016E058 3C01800E */  lui   $at, 0x800e
/* 0CEA9C 8016E05C C61200CC */  lwc1  $f18, 0xcc($s0)
/* 0CEAA0 8016E060 8DD80000 */  lw    $t8, ($t6)
/* 0CEAA4 8016E064 00187880 */  sll   $t7, $t8, 2
/* 0CEAA8 8016E068 002F0821 */  addu  $at, $at, $t7
/* 0CEAAC 8016E06C C4243210 */  lwc1  $f4, 0x3210($at)
/* 0CEAB0 8016E070 4604903C */  c.lt.s $f18, $f4
/* 0CEAB4 8016E074 00000000 */  nop   
/* 0CEAB8 8016E078 4502000F */  bc1fl .L8016E0B8_ovl3
/* 0CEABC 8016E07C 960A00D2 */   lhu   $t2, 0xd2($s0)
.L8016E080_ovl3:
/* 0CEAC0 8016E080 0C002DAF */  jal   func_8000B6BC
/* 0CEAC4 8016E084 24040001 */   li    $a0, 1
/* 0CEAC8 8016E088 8E390000 */  lw    $t9, ($s1)
/* 0CEACC 8016E08C 3C01800E */  lui   $at, 0x800e
/* 0CEAD0 8016E090 C60600CC */  lwc1  $f6, 0xcc($s0)
/* 0CEAD4 8016E094 8F280000 */  lw    $t0, ($t9)
/* 0CEAD8 8016E098 00084880 */  sll   $t1, $t0, 2
/* 0CEADC 8016E09C 00290821 */  addu  $at, $at, $t1
/* 0CEAE0 8016E0A0 C4283210 */  lwc1  $f8, 0x3210($at)
/* 0CEAE4 8016E0A4 4608303C */  c.lt.s $f6, $f8
/* 0CEAE8 8016E0A8 00000000 */  nop   
/* 0CEAEC 8016E0AC 4501FFF4 */  bc1t  .L8016E080_ovl3
/* 0CEAF0 8016E0B0 00000000 */   nop   
/* 0CEAF4 8016E0B4 960A00D2 */  lhu   $t2, 0xd2($s0)
.L8016E0B8_ovl3:
/* 0CEAF8 8016E0B8 92020004 */  lbu   $v0, 4($s0)
/* 0CEAFC 8016E0BC 3C040002 */  lui   $a0, 2
/* 0CEB00 8016E0C0 254B0001 */  addiu $t3, $t2, 1
/* 0CEB04 8016E0C4 10400009 */  beqz  $v0, .L8016E0EC_ovl3
/* 0CEB08 8016E0C8 A60B00D2 */   sh    $t3, 0xd2($s0)
/* 0CEB0C 8016E0CC 24010001 */  li    $at, 1
/* 0CEB10 8016E0D0 1041000D */  beq   $v0, $at, .L8016E108_ovl3
/* 0CEB14 8016E0D4 3C040002 */   lui   $a0, 2
/* 0CEB18 8016E0D8 24010002 */  li    $at, 2
/* 0CEB1C 8016E0DC 10410011 */  beq   $v0, $at, .L8016E124_ovl3
/* 0CEB20 8016E0E0 3C040002 */   lui   $a0, (0x000200C9 >> 16) # lui $a0, 2
/* 0CEB24 8016E0E4 10000015 */  b     .L8016E13C_ovl3
/* 0CEB28 8016E0E8 8E0C0030 */   lw    $t4, 0x30($s0)
.L8016E0EC_ovl3:
/* 0CEB2C 8016E0EC 3C050002 */  lui   $a1, (0x000200A2 >> 16) # lui $a1, 2
/* 0CEB30 8016E0F0 34A500A2 */  ori   $a1, (0x000200A2 & 0xFFFF) # ori $a1, $a1, 0xa2
/* 0CEB34 8016E0F4 348400A1 */  ori   $a0, (0x000200A1 & 0xFFFF) # ori $a0, $a0, 0xa1
/* 0CEB38 8016E0F8 0C048C3A */  jal   func_801230E8
/* 0CEB3C 8016E0FC 24060001 */   li    $a2, 1
/* 0CEB40 8016E100 1000000E */  b     .L8016E13C_ovl3
/* 0CEB44 8016E104 8E0C0030 */   lw    $t4, 0x30($s0)
.L8016E108_ovl3:
/* 0CEB48 8016E108 3C050002 */  lui   $a1, (0x00020170 >> 16) # lui $a1, 2
/* 0CEB4C 8016E10C 34A50170 */  ori   $a1, (0x00020170 & 0xFFFF) # ori $a1, $a1, 0x170
/* 0CEB50 8016E110 3484016F */  ori   $a0, (0x0002016F & 0xFFFF) # ori $a0, $a0, 0x16f
/* 0CEB54 8016E114 0C048C3A */  jal   func_801230E8
/* 0CEB58 8016E118 24060001 */   li    $a2, 1
/* 0CEB5C 8016E11C 10000007 */  b     .L8016E13C_ovl3
/* 0CEB60 8016E120 8E0C0030 */   lw    $t4, 0x30($s0)
.L8016E124_ovl3:
/* 0CEB64 8016E124 3C050002 */  lui   $a1, (0x000200CA >> 16) # lui $a1, 2
/* 0CEB68 8016E128 34A500CA */  ori   $a1, (0x000200CA & 0xFFFF) # ori $a1, $a1, 0xca
/* 0CEB6C 8016E12C 348400C9 */  ori   $a0, (0x000200C9 & 0xFFFF) # ori $a0, $a0, 0xc9
/* 0CEB70 8016E130 0C048C3A */  jal   func_801230E8
/* 0CEB74 8016E134 24060001 */   li    $a2, 1
/* 0CEB78 8016E138 8E0C0030 */  lw    $t4, 0x30($s0)
.L8016E13C_ovl3:
/* 0CEB7C 8016E13C 258D0001 */  addiu $t5, $t4, 1
/* 0CEB80 8016E140 0C02BE85 */  jal   func_800AFA14
/* 0CEB84 8016E144 AE0D0030 */   sw    $t5, 0x30($s0)
/* 0CEB88 8016E148 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CEB8C 8016E14C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0CEB90 8016E150 8FB10018 */  lw    $s1, 0x18($sp)
/* 0CEB94 8016E154 03E00008 */  jr    $ra
/* 0CEB98 8016E158 27BD0020 */   addiu $sp, $sp, 0x20
