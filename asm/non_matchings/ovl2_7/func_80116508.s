glabel func_80116508
/* 09EF78 80116508 27BDFF90 */  addiu $sp, $sp, -0x70
/* 09EF7C 8011650C AFBF006C */  sw    $ra, 0x6c($sp)
/* 09EF80 80116510 AFBE0068 */  sw    $fp, 0x68($sp)
/* 09EF84 80116514 AFB70064 */  sw    $s7, 0x64($sp)
/* 09EF88 80116518 AFB60060 */  sw    $s6, 0x60($sp)
/* 09EF8C 8011651C AFB5005C */  sw    $s5, 0x5c($sp)
/* 09EF90 80116520 AFB40058 */  sw    $s4, 0x58($sp)
/* 09EF94 80116524 AFB30054 */  sw    $s3, 0x54($sp)
/* 09EF98 80116528 AFB20050 */  sw    $s2, 0x50($sp)
/* 09EF9C 8011652C AFB1004C */  sw    $s1, 0x4c($sp)
/* 09EFA0 80116530 AFB00048 */  sw    $s0, 0x48($sp)
/* 09EFA4 80116534 F7BE0040 */  sdc1  $f30, 0x40($sp)
/* 09EFA8 80116538 F7BC0038 */  sdc1  $f28, 0x38($sp)
/* 09EFAC 8011653C F7BA0030 */  sdc1  $f26, 0x30($sp)
/* 09EFB0 80116540 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 09EFB4 80116544 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 09EFB8 80116548 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 09EFBC 8011654C 8C830000 */  lw    $v1, ($a0)
/* 09EFC0 80116550 3C0F800E */  lui   $t7, %hi(gEntitiesPosYArray) # $t7, 0x800e
/* 09EFC4 80116554 25EF2790 */  addiu $t7, %lo(gEntitiesPosYArray) # addiu $t7, $t7, 0x2790
/* 09EFC8 80116558 00031080 */  sll   $v0, $v1, 2
/* 09EFCC 8011655C 004FB021 */  addu  $s6, $v0, $t7
/* 09EFD0 80116560 C6C40000 */  lwc1  $f4, ($s6)
/* 09EFD4 80116564 3C0E800F */  lui   $t6, %hi(D_800EA6E0) # $t6, 0x800f
/* 09EFD8 80116568 3C18800F */  lui   $t8, %hi(D_800E98E0) # $t8, 0x800f
/* 09EFDC 8011656C 25CEA6E0 */  addiu $t6, %lo(D_800EA6E0) # addiu $t6, $t6, -0x5920
/* 09EFE0 80116570 271898E0 */  addiu $t8, %lo(D_800E98E0) # addiu $t8, $t8, -0x6720
/* 09EFE4 80116574 004EA821 */  addu  $s5, $v0, $t6
/* 09EFE8 80116578 0058A021 */  addu  $s4, $v0, $t8
/* 09EFEC 8011657C AE800000 */  sw    $zero, ($s4)
/* 09EFF0 80116580 3C018013 */  lui   $at, %hi(D_80128D1C) # $at, 0x8013
/* 09EFF4 80116584 E6A40000 */  swc1  $f4, ($s5)
/* 09EFF8 80116588 C43E8D1C */  lwc1  $f30, %lo(D_80128D1C)($at)
/* 09EFFC 8011658C 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 09F000 80116590 4481E000 */  mtc1  $at, $f28
/* 09F004 80116594 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 09F008 80116598 4481D000 */  mtc1  $at, $f26
/* 09F00C 8011659C 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 09F010 801165A0 4481C000 */  mtc1  $at, $f24
/* 09F014 801165A4 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 09F018 801165A8 3C12800E */  lui   $s2, %hi(D_800E3210) # $s2, 0x800e
/* 09F01C 801165AC 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 09F020 801165B0 3C17800E */  lui   $s7, %hi(D_800E3590) # $s7, 0x800e
/* 09F024 801165B4 3C1E800E */  lui   $fp, %hi(D_800E3910) # $fp, 0x800e
/* 09F028 801165B8 4481B000 */  mtc1  $at, $f22
/* 09F02C 801165BC 4480A000 */  mtc1  $zero, $f20
/* 09F030 801165C0 27DE3910 */  addiu $fp, %lo(D_800E3910) # addiu $fp, $fp, 0x3910
/* 09F034 801165C4 26F73590 */  addiu $s7, %lo(D_800E3590) # addiu $s7, $s7, 0x3590
/* 09F038 801165C8 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 09F03C 801165CC 26523210 */  addiu $s2, %lo(D_800E3210) # addiu $s2, $s2, 0x3210
.L801165D0_ovl2:
/* 09F040 801165D0 0C006291 */  jal   random_soft_s32_range
/* 09F044 801165D4 24040002 */   li    $a0, 2
/* 09F048 801165D8 50400008 */  beql  $v0, $zero, .L801165FC_ovl2
/* 09F04C 801165DC 8E6B0000 */   lw    $t3, ($s3)
/* 09F050 801165E0 8E790000 */  lw    $t9, ($s3)
/* 09F054 801165E4 8F280000 */  lw    $t0, ($t9)
/* 09F058 801165E8 00084880 */  sll   $t1, $t0, 2
/* 09F05C 801165EC 02495021 */  addu  $t2, $s2, $t1
/* 09F060 801165F0 10000006 */  b     .L8011660C_ovl2
/* 09F064 801165F4 E5560000 */   swc1  $f22, ($t2)
/* 09F068 801165F8 8E6B0000 */  lw    $t3, ($s3)
.L801165FC_ovl2:
/* 09F06C 801165FC 8D6C0000 */  lw    $t4, ($t3)
/* 09F070 80116600 000C6880 */  sll   $t5, $t4, 2
/* 09F074 80116604 024D7021 */  addu  $t6, $s2, $t5
/* 09F078 80116608 E5D80000 */  swc1  $f24, ($t6)
.L8011660C_ovl2:
/* 09F07C 8011660C 8E820000 */  lw    $v0, ($s4)
.L80116610_ovl2:
/* 09F080 80116610 5440001C */  bnezl $v0, .L80116684_ovl2
/* 09F084 80116614 24010001 */   li    $at, 1
/* 09F088 80116618 C6C60000 */  lwc1  $f6, ($s6)
/* 09F08C 8011661C C6A80000 */  lwc1  $f8, ($s5)
/* 09F090 80116620 46083001 */  sub.s $f0, $f6, $f8
/* 09F094 80116624 4600D03E */  c.le.s $f26, $f0
/* 09F098 80116628 00000000 */  nop   
/* 09F09C 8011662C 45020008 */  bc1fl .L80116650_ovl2
/* 09F0A0 80116630 461C003E */   c.le.s $f0, $f28
/* 09F0A4 80116634 8E6F0000 */  lw    $t7, ($s3)
/* 09F0A8 80116638 8DF80000 */  lw    $t8, ($t7)
/* 09F0AC 8011663C 0018C880 */  sll   $t9, $t8, 2
/* 09F0B0 80116640 02594021 */  addu  $t0, $s2, $t9
/* 09F0B4 80116644 1000000A */  b     .L80116670_ovl2
/* 09F0B8 80116648 E5180000 */   swc1  $f24, ($t0)
/* 09F0BC 8011664C 461C003E */  c.le.s $f0, $f28
.L80116650_ovl2:
/* 09F0C0 80116650 00000000 */  nop   
/* 09F0C4 80116654 45000006 */  bc1f  .L80116670_ovl2
/* 09F0C8 80116658 00000000 */   nop   
/* 09F0CC 8011665C 8E690000 */  lw    $t1, ($s3)
/* 09F0D0 80116660 8D2A0000 */  lw    $t2, ($t1)
/* 09F0D4 80116664 000A5880 */  sll   $t3, $t2, 2
/* 09F0D8 80116668 024B6021 */  addu  $t4, $s2, $t3
/* 09F0DC 8011666C E5960000 */  swc1  $f22, ($t4)
.L80116670_ovl2:
/* 09F0E0 80116670 0C002DAF */  jal   func_8000B6BC
/* 09F0E4 80116674 24040001 */   li    $a0, 1
/* 09F0E8 80116678 1000FFE5 */  b     .L80116610_ovl2
/* 09F0EC 8011667C 8E820000 */   lw    $v0, ($s4)
/* 09F0F0 80116680 24010001 */  li    $at, 1
.L80116684_ovl2:
/* 09F0F4 80116684 544100C3 */  bnel  $v0, $at, .L80116994_ovl2
/* 09F0F8 80116688 24010002 */   li    $at, 2
/* 09F0FC 8011668C 8E700000 */  lw    $s0, ($s3)
/* 09F100 80116690 3C01800E */  lui   $at, 0x800e
/* 09F104 80116694 2404000F */  li    $a0, 15
/* 09F108 80116698 8E0D0000 */  lw    $t5, ($s0)
/* 09F10C 8011669C 000D7080 */  sll   $t6, $t5, 2
/* 09F110 801166A0 02EE7821 */  addu  $t7, $s7, $t6
/* 09F114 801166A4 E5F40000 */  swc1  $f20, ($t7)
/* 09F118 801166A8 8E110000 */  lw    $s1, ($s0)
/* 09F11C 801166AC 00118880 */  sll   $s1, $s1, 2
/* 09F120 801166B0 02F1C021 */  addu  $t8, $s7, $s1
/* 09F124 801166B4 C70A0000 */  lwc1  $f10, ($t8)
/* 09F128 801166B8 00310821 */  addu  $at, $at, $s1
/* 09F12C 801166BC E42A3050 */  swc1  $f10, 0x3050($at)
/* 09F130 801166C0 8E190000 */  lw    $t9, ($s0)
/* 09F134 801166C4 3C01800E */  lui   $at, 0x800e
/* 09F138 801166C8 00194080 */  sll   $t0, $t9, 2
/* 09F13C 801166CC 00280821 */  addu  $at, $at, $t0
/* 09F140 801166D0 E43E3AD0 */  swc1  $f30, 0x3ad0($at)
/* 09F144 801166D4 3C018013 */  lui   $at, %hi(D_80128D20) # $at, 0x8013
/* 09F148 801166D8 C4308D20 */  lwc1  $f16, %lo(D_80128D20)($at)
/* 09F14C 801166DC 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 09F150 801166E0 44819000 */  mtc1  $at, $f18
/* 09F154 801166E4 8E090000 */  lw    $t1, ($s0)
/* 09F158 801166E8 3C018013 */  lui   $at, %hi(D_80128D24) # $at, 0x8013
/* 09F15C 801166EC 46128102 */  mul.s $f4, $f16, $f18
/* 09F160 801166F0 00095080 */  sll   $t2, $t1, 2
/* 09F164 801166F4 024A5821 */  addu  $t3, $s2, $t2
/* 09F168 801166F8 E5640000 */  swc1  $f4, ($t3)
/* 09F16C 801166FC 8E0C0000 */  lw    $t4, ($s0)
/* 09F170 80116700 C4268D24 */  lwc1  $f6, %lo(D_80128D24)($at)
/* 09F174 80116704 3C01800E */  lui   $at, 0x800e
/* 09F178 80116708 000C6880 */  sll   $t5, $t4, 2
/* 09F17C 8011670C 002D0821 */  addu  $at, $at, $t5
/* 09F180 80116710 E4263750 */  swc1  $f6, 0x3750($at)
/* 09F184 80116714 8E0E0000 */  lw    $t6, ($s0)
/* 09F188 80116718 3C01800E */  lui   $at, 0x800e
/* 09F18C 8011671C 000E7880 */  sll   $t7, $t6, 2
/* 09F190 80116720 002F0821 */  addu  $at, $at, $t7
/* 09F194 80116724 E43433D0 */  swc1  $f20, 0x33d0($at)
/* 09F198 80116728 8E180000 */  lw    $t8, ($s0)
/* 09F19C 8011672C 3C01800E */  lui   $at, 0x800e
/* 09F1A0 80116730 0018C880 */  sll   $t9, $t8, 2
/* 09F1A4 80116734 03D94021 */  addu  $t0, $fp, $t9
/* 09F1A8 80116738 E5140000 */  swc1  $f20, ($t0)
/* 09F1AC 8011673C 8E090000 */  lw    $t1, ($s0)
/* 09F1B0 80116740 00095080 */  sll   $t2, $t1, 2
/* 09F1B4 80116744 002A0821 */  addu  $at, $at, $t2
/* 09F1B8 80116748 0C002DAF */  jal   func_8000B6BC
/* 09F1BC 8011674C E43E3E50 */   swc1  $f30, 0x3e50($at)
/* 09F1C0 80116750 8E700000 */  lw    $s0, ($s3)
/* 09F1C4 80116754 3C01800E */  lui   $at, 0x800e
/* 09F1C8 80116758 3C02800E */  lui   $v0, %hi(D_800E3E50) # $v0, 0x800e
/* 09F1CC 8011675C 8E0B0000 */  lw    $t3, ($s0)
/* 09F1D0 80116760 24423E50 */  addiu $v0, %lo(D_800E3E50) # addiu $v0, $v0, 0x3e50
/* 09F1D4 80116764 24040001 */  li    $a0, 1
/* 09F1D8 80116768 000B6080 */  sll   $t4, $t3, 2
/* 09F1DC 8011676C 03CC6821 */  addu  $t5, $fp, $t4
/* 09F1E0 80116770 E5B40000 */  swc1  $f20, ($t5)
/* 09F1E4 80116774 8E110000 */  lw    $s1, ($s0)
/* 09F1E8 80116778 00118880 */  sll   $s1, $s1, 2
/* 09F1EC 8011677C 03D17021 */  addu  $t6, $fp, $s1
/* 09F1F0 80116780 C5C00000 */  lwc1  $f0, ($t6)
/* 09F1F4 80116784 00310821 */  addu  $at, $at, $s1
/* 09F1F8 80116788 E4203750 */  swc1  $f0, 0x3750($at)
/* 09F1FC 8011678C 8E0F0000 */  lw    $t7, ($s0)
/* 09F200 80116790 3C01800E */  lui   $at, 0x800e
/* 09F204 80116794 000FC080 */  sll   $t8, $t7, 2
/* 09F208 80116798 02F8C821 */  addu  $t9, $s7, $t8
/* 09F20C 8011679C E7200000 */  swc1  $f0, ($t9)
/* 09F210 801167A0 8E080000 */  lw    $t0, ($s0)
/* 09F214 801167A4 00084880 */  sll   $t1, $t0, 2
/* 09F218 801167A8 00290821 */  addu  $at, $at, $t1
/* 09F21C 801167AC E42033D0 */  swc1  $f0, 0x33d0($at)
/* 09F220 801167B0 8E0A0000 */  lw    $t2, ($s0)
/* 09F224 801167B4 3C01800E */  lui   $at, 0x800e
/* 09F228 801167B8 000A5880 */  sll   $t3, $t2, 2
/* 09F22C 801167BC 024B6021 */  addu  $t4, $s2, $t3
/* 09F230 801167C0 E5800000 */  swc1  $f0, ($t4)
/* 09F234 801167C4 8E0D0000 */  lw    $t5, ($s0)
/* 09F238 801167C8 000D7080 */  sll   $t6, $t5, 2
/* 09F23C 801167CC 002E0821 */  addu  $at, $at, $t6
/* 09F240 801167D0 E4203050 */  swc1  $f0, 0x3050($at)
/* 09F244 801167D4 8E0F0000 */  lw    $t7, ($s0)
/* 09F248 801167D8 3C01800E */  lui   $at, 0x800e
/* 09F24C 801167DC 000FC080 */  sll   $t8, $t7, 2
/* 09F250 801167E0 0058C821 */  addu  $t9, $v0, $t8
/* 09F254 801167E4 E73E0000 */  swc1  $f30, ($t9)
/* 09F258 801167E8 8E110000 */  lw    $s1, ($s0)
/* 09F25C 801167EC 00118880 */  sll   $s1, $s1, 2
/* 09F260 801167F0 00514021 */  addu  $t0, $v0, $s1
/* 09F264 801167F4 C5020000 */  lwc1  $f2, ($t0)
/* 09F268 801167F8 00310821 */  addu  $at, $at, $s1
/* 09F26C 801167FC E4223C90 */  swc1  $f2, 0x3c90($at)
/* 09F270 80116800 8E090000 */  lw    $t1, ($s0)
/* 09F274 80116804 3C01800E */  lui   $at, 0x800e
/* 09F278 80116808 00095080 */  sll   $t2, $t1, 2
/* 09F27C 8011680C 002A0821 */  addu  $at, $at, $t2
/* 09F280 80116810 0C002DAF */  jal   func_8000B6BC
/* 09F284 80116814 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 09F288 80116818 8E700000 */  lw    $s0, ($s3)
/* 09F28C 8011681C 3C01800E */  lui   $at, 0x800e
/* 09F290 80116820 24040016 */  li    $a0, 22
/* 09F294 80116824 8E0B0000 */  lw    $t3, ($s0)
/* 09F298 80116828 000B6080 */  sll   $t4, $t3, 2
/* 09F29C 8011682C 02EC6821 */  addu  $t5, $s7, $t4
/* 09F2A0 80116830 E5B40000 */  swc1  $f20, ($t5)
/* 09F2A4 80116834 8E110000 */  lw    $s1, ($s0)
/* 09F2A8 80116838 00118880 */  sll   $s1, $s1, 2
/* 09F2AC 8011683C 02F17021 */  addu  $t6, $s7, $s1
/* 09F2B0 80116840 C5C80000 */  lwc1  $f8, ($t6)
/* 09F2B4 80116844 00310821 */  addu  $at, $at, $s1
/* 09F2B8 80116848 E4283050 */  swc1  $f8, 0x3050($at)
/* 09F2BC 8011684C 8E0F0000 */  lw    $t7, ($s0)
/* 09F2C0 80116850 3C01800E */  lui   $at, 0x800e
/* 09F2C4 80116854 000FC080 */  sll   $t8, $t7, 2
/* 09F2C8 80116858 00380821 */  addu  $at, $at, $t8
/* 09F2CC 8011685C E43E3AD0 */  swc1  $f30, 0x3ad0($at)
/* 09F2D0 80116860 8E190000 */  lw    $t9, ($s0)
/* 09F2D4 80116864 3C018013 */  lui   $at, %hi(D_80128D28) # $at, 0x8013
/* 09F2D8 80116868 00194080 */  sll   $t0, $t9, 2
/* 09F2DC 8011686C 02484821 */  addu  $t1, $s2, $t0
/* 09F2E0 80116870 E5340000 */  swc1  $f20, ($t1)
/* 09F2E4 80116874 8E0A0000 */  lw    $t2, ($s0)
/* 09F2E8 80116878 C42A8D28 */  lwc1  $f10, %lo(D_80128D28)($at)
/* 09F2EC 8011687C 3C01800E */  lui   $at, 0x800e
/* 09F2F0 80116880 000A5880 */  sll   $t3, $t2, 2
/* 09F2F4 80116884 002B0821 */  addu  $at, $at, $t3
/* 09F2F8 80116888 E42A3750 */  swc1  $f10, 0x3750($at)
/* 09F2FC 8011688C 8E0C0000 */  lw    $t4, ($s0)
/* 09F300 80116890 3C01800E */  lui   $at, 0x800e
/* 09F304 80116894 000C6880 */  sll   $t5, $t4, 2
/* 09F308 80116898 002D0821 */  addu  $at, $at, $t5
/* 09F30C 8011689C E43433D0 */  swc1  $f20, 0x33d0($at)
/* 09F310 801168A0 8E0E0000 */  lw    $t6, ($s0)
/* 09F314 801168A4 3C01800E */  lui   $at, 0x800e
/* 09F318 801168A8 000E7880 */  sll   $t7, $t6, 2
/* 09F31C 801168AC 03CFC021 */  addu  $t8, $fp, $t7
/* 09F320 801168B0 E7140000 */  swc1  $f20, ($t8)
/* 09F324 801168B4 8E190000 */  lw    $t9, ($s0)
/* 09F328 801168B8 00194080 */  sll   $t0, $t9, 2
/* 09F32C 801168BC 00280821 */  addu  $at, $at, $t0
/* 09F330 801168C0 0C002DAF */  jal   func_8000B6BC
/* 09F334 801168C4 E43E3E50 */   swc1  $f30, 0x3e50($at)
/* 09F338 801168C8 8E700000 */  lw    $s0, ($s3)
/* 09F33C 801168CC 3C01800E */  lui   $at, 0x800e
/* 09F340 801168D0 8E090000 */  lw    $t1, ($s0)
/* 09F344 801168D4 00095080 */  sll   $t2, $t1, 2
/* 09F348 801168D8 03CA5821 */  addu  $t3, $fp, $t2
/* 09F34C 801168DC E5740000 */  swc1  $f20, ($t3)
/* 09F350 801168E0 8E110000 */  lw    $s1, ($s0)
/* 09F354 801168E4 00118880 */  sll   $s1, $s1, 2
/* 09F358 801168E8 03D16021 */  addu  $t4, $fp, $s1
/* 09F35C 801168EC C5800000 */  lwc1  $f0, ($t4)
/* 09F360 801168F0 00310821 */  addu  $at, $at, $s1
/* 09F364 801168F4 E4203750 */  swc1  $f0, 0x3750($at)
/* 09F368 801168F8 8E0D0000 */  lw    $t5, ($s0)
/* 09F36C 801168FC 3C01800E */  lui   $at, 0x800e
/* 09F370 80116900 000D7080 */  sll   $t6, $t5, 2
/* 09F374 80116904 02EE7821 */  addu  $t7, $s7, $t6
/* 09F378 80116908 E5E00000 */  swc1  $f0, ($t7)
/* 09F37C 8011690C 8E180000 */  lw    $t8, ($s0)
/* 09F380 80116910 0018C880 */  sll   $t9, $t8, 2
/* 09F384 80116914 00390821 */  addu  $at, $at, $t9
/* 09F388 80116918 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 09F38C 8011691C 8E080000 */  lw    $t0, ($s0)
/* 09F390 80116920 3C01800E */  lui   $at, 0x800e
/* 09F394 80116924 00084880 */  sll   $t1, $t0, 2
/* 09F398 80116928 02495021 */  addu  $t2, $s2, $t1
/* 09F39C 8011692C E5400000 */  swc1  $f0, ($t2)
/* 09F3A0 80116930 8E0B0000 */  lw    $t3, ($s0)
/* 09F3A4 80116934 000B6080 */  sll   $t4, $t3, 2
/* 09F3A8 80116938 002C0821 */  addu  $at, $at, $t4
/* 09F3AC 8011693C E4203050 */  swc1  $f0, 0x3050($at)
/* 09F3B0 80116940 8E0D0000 */  lw    $t5, ($s0)
/* 09F3B4 80116944 3C01800E */  lui   $at, 0x800e
/* 09F3B8 80116948 000D7080 */  sll   $t6, $t5, 2
/* 09F3BC 8011694C 002E0821 */  addu  $at, $at, $t6
/* 09F3C0 80116950 E43E3E50 */  swc1  $f30, 0x3e50($at)
/* 09F3C4 80116954 8E110000 */  lw    $s1, ($s0)
/* 09F3C8 80116958 3C01800E */  lui   $at, 0x800e
/* 09F3CC 8011695C 00118880 */  sll   $s1, $s1, 2
/* 09F3D0 80116960 00310821 */  addu  $at, $at, $s1
/* 09F3D4 80116964 C4223E50 */  lwc1  $f2, 0x3e50($at)
/* 09F3D8 80116968 3C01800E */  lui   $at, 0x800e
/* 09F3DC 8011696C 00310821 */  addu  $at, $at, $s1
/* 09F3E0 80116970 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 09F3E4 80116974 8E0F0000 */  lw    $t7, ($s0)
/* 09F3E8 80116978 3C01800E */  lui   $at, 0x800e
/* 09F3EC 8011697C 000FC080 */  sll   $t8, $t7, 2
/* 09F3F0 80116980 00380821 */  addu  $at, $at, $t8
/* 09F3F4 80116984 E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 09F3F8 80116988 1000FF11 */  b     .L801165D0_ovl2
/* 09F3FC 8011698C AE800000 */   sw    $zero, ($s4)
/* 09F400 80116990 24010002 */  li    $at, 2
.L80116994_ovl2:
/* 09F404 80116994 1441FF0E */  bne   $v0, $at, .L801165D0_ovl2
/* 09F408 80116998 00000000 */   nop   
/* 09F40C 8011699C 8E700000 */  lw    $s0, ($s3)
/* 09F410 801169A0 3C01800E */  lui   $at, 0x800e
/* 09F414 801169A4 2404000A */  li    $a0, 10
/* 09F418 801169A8 8E190000 */  lw    $t9, ($s0)
/* 09F41C 801169AC 00194080 */  sll   $t0, $t9, 2
/* 09F420 801169B0 02E84821 */  addu  $t1, $s7, $t0
/* 09F424 801169B4 E5340000 */  swc1  $f20, ($t1)
/* 09F428 801169B8 8E110000 */  lw    $s1, ($s0)
/* 09F42C 801169BC 00118880 */  sll   $s1, $s1, 2
/* 09F430 801169C0 02F15021 */  addu  $t2, $s7, $s1
/* 09F434 801169C4 C5500000 */  lwc1  $f16, ($t2)
/* 09F438 801169C8 00310821 */  addu  $at, $at, $s1
/* 09F43C 801169CC E4303050 */  swc1  $f16, 0x3050($at)
/* 09F440 801169D0 8E0B0000 */  lw    $t3, ($s0)
/* 09F444 801169D4 3C01800E */  lui   $at, 0x800e
/* 09F448 801169D8 000B6080 */  sll   $t4, $t3, 2
/* 09F44C 801169DC 002C0821 */  addu  $at, $at, $t4
/* 09F450 801169E0 E43E3AD0 */  swc1  $f30, 0x3ad0($at)
/* 09F454 801169E4 8E0D0000 */  lw    $t5, ($s0)
/* 09F458 801169E8 3C01C100 */  li    $at, 0xC1000000 # -8.000000
/* 09F45C 801169EC 44819000 */  mtc1  $at, $f18
/* 09F460 801169F0 000D7080 */  sll   $t6, $t5, 2
/* 09F464 801169F4 024E7821 */  addu  $t7, $s2, $t6
/* 09F468 801169F8 E5F20000 */  swc1  $f18, ($t7)
/* 09F46C 801169FC 8E180000 */  lw    $t8, ($s0)
/* 09F470 80116A00 3C01800E */  lui   $at, 0x800e
/* 09F474 80116A04 0018C880 */  sll   $t9, $t8, 2
/* 09F478 80116A08 00390821 */  addu  $at, $at, $t9
/* 09F47C 80116A0C E43433D0 */  swc1  $f20, 0x33d0($at)
/* 09F480 80116A10 8E080000 */  lw    $t0, ($s0)
/* 09F484 80116A14 3C01800E */  lui   $at, 0x800e
/* 09F488 80116A18 00084880 */  sll   $t1, $t0, 2
/* 09F48C 80116A1C 03C95021 */  addu  $t2, $fp, $t1
/* 09F490 80116A20 E5540000 */  swc1  $f20, ($t2)
/* 09F494 80116A24 8E0B0000 */  lw    $t3, ($s0)
/* 09F498 80116A28 000B6080 */  sll   $t4, $t3, 2
/* 09F49C 80116A2C 002C0821 */  addu  $at, $at, $t4
/* 09F4A0 80116A30 0C002DAF */  jal   func_8000B6BC
/* 09F4A4 80116A34 E43E3E50 */   swc1  $f30, 0x3e50($at)
/* 09F4A8 80116A38 8E700000 */  lw    $s0, ($s3)
/* 09F4AC 80116A3C 3C01800E */  lui   $at, 0x800e
/* 09F4B0 80116A40 8E0D0000 */  lw    $t5, ($s0)
/* 09F4B4 80116A44 000D7080 */  sll   $t6, $t5, 2
/* 09F4B8 80116A48 03CE7821 */  addu  $t7, $fp, $t6
/* 09F4BC 80116A4C E5F40000 */  swc1  $f20, ($t7)
/* 09F4C0 80116A50 8E110000 */  lw    $s1, ($s0)
/* 09F4C4 80116A54 00118880 */  sll   $s1, $s1, 2
/* 09F4C8 80116A58 03D1C021 */  addu  $t8, $fp, $s1
/* 09F4CC 80116A5C C7000000 */  lwc1  $f0, ($t8)
/* 09F4D0 80116A60 00310821 */  addu  $at, $at, $s1
/* 09F4D4 80116A64 E4203750 */  swc1  $f0, 0x3750($at)
/* 09F4D8 80116A68 8E190000 */  lw    $t9, ($s0)
/* 09F4DC 80116A6C 3C01800E */  lui   $at, 0x800e
/* 09F4E0 80116A70 00194080 */  sll   $t0, $t9, 2
/* 09F4E4 80116A74 02E84821 */  addu  $t1, $s7, $t0
/* 09F4E8 80116A78 E5200000 */  swc1  $f0, ($t1)
/* 09F4EC 80116A7C 8E0A0000 */  lw    $t2, ($s0)
/* 09F4F0 80116A80 000A5880 */  sll   $t3, $t2, 2
/* 09F4F4 80116A84 002B0821 */  addu  $at, $at, $t3
/* 09F4F8 80116A88 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 09F4FC 80116A8C 8E0C0000 */  lw    $t4, ($s0)
/* 09F500 80116A90 3C01800E */  lui   $at, 0x800e
/* 09F504 80116A94 000C6880 */  sll   $t5, $t4, 2
/* 09F508 80116A98 024D7021 */  addu  $t6, $s2, $t5
/* 09F50C 80116A9C E5C00000 */  swc1  $f0, ($t6)
/* 09F510 80116AA0 8E0F0000 */  lw    $t7, ($s0)
/* 09F514 80116AA4 000FC080 */  sll   $t8, $t7, 2
/* 09F518 80116AA8 00380821 */  addu  $at, $at, $t8
/* 09F51C 80116AAC E4203050 */  swc1  $f0, 0x3050($at)
/* 09F520 80116AB0 8E190000 */  lw    $t9, ($s0)
/* 09F524 80116AB4 3C01800E */  lui   $at, 0x800e
/* 09F528 80116AB8 00194080 */  sll   $t0, $t9, 2
/* 09F52C 80116ABC 00280821 */  addu  $at, $at, $t0
/* 09F530 80116AC0 E43E3E50 */  swc1  $f30, 0x3e50($at)
/* 09F534 80116AC4 8E110000 */  lw    $s1, ($s0)
/* 09F538 80116AC8 3C01800E */  lui   $at, 0x800e
/* 09F53C 80116ACC 00118880 */  sll   $s1, $s1, 2
/* 09F540 80116AD0 00310821 */  addu  $at, $at, $s1
/* 09F544 80116AD4 C4223E50 */  lwc1  $f2, 0x3e50($at)
/* 09F548 80116AD8 3C01800E */  lui   $at, 0x800e
/* 09F54C 80116ADC 00310821 */  addu  $at, $at, $s1
/* 09F550 80116AE0 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 09F554 80116AE4 8E090000 */  lw    $t1, ($s0)
/* 09F558 80116AE8 3C01800E */  lui   $at, 0x800e
/* 09F55C 80116AEC 00095080 */  sll   $t2, $t1, 2
/* 09F560 80116AF0 002A0821 */  addu  $at, $at, $t2
/* 09F564 80116AF4 0C02BE85 */  jal   func_800AFA14
/* 09F568 80116AF8 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 09F56C 80116AFC 1000FEB4 */  b     .L801165D0_ovl2
/* 09F570 80116B00 00000000 */   nop   
/* 09F574 80116B04 00000000 */  nop   
/* 09F578 80116B08 00000000 */  nop   
/* 09F57C 80116B0C 00000000 */  nop   
/* 09F580 80116B10 00000000 */  nop   
/* 09F584 80116B14 00000000 */  nop   
/* 09F588 80116B18 00000000 */  nop   
/* 09F58C 80116B1C 00000000 */  nop   
/* 09F590 80116B20 8FBF006C */  lw    $ra, 0x6c($sp)
/* 09F594 80116B24 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 09F598 80116B28 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 09F59C 80116B2C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 09F5A0 80116B30 D7BA0030 */  ldc1  $f26, 0x30($sp)
/* 09F5A4 80116B34 D7BC0038 */  ldc1  $f28, 0x38($sp)
/* 09F5A8 80116B38 D7BE0040 */  ldc1  $f30, 0x40($sp)
/* 09F5AC 80116B3C 8FB00048 */  lw    $s0, 0x48($sp)
/* 09F5B0 80116B40 8FB1004C */  lw    $s1, 0x4c($sp)
/* 09F5B4 80116B44 8FB20050 */  lw    $s2, 0x50($sp)
/* 09F5B8 80116B48 8FB30054 */  lw    $s3, 0x54($sp)
/* 09F5BC 80116B4C 8FB40058 */  lw    $s4, 0x58($sp)
/* 09F5C0 80116B50 8FB5005C */  lw    $s5, 0x5c($sp)
/* 09F5C4 80116B54 8FB60060 */  lw    $s6, 0x60($sp)
/* 09F5C8 80116B58 8FB70064 */  lw    $s7, 0x64($sp)
/* 09F5CC 80116B5C 8FBE0068 */  lw    $fp, 0x68($sp)
/* 09F5D0 80116B60 03E00008 */  jr    $ra
/* 09F5D4 80116B64 27BD0070 */   addiu $sp, $sp, 0x70
