glabel func_801EE5B0_ovl10
/* 1DF320 801EE5B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1DF324 801EE5B4 AFB10028 */  sw    $s1, 0x28($sp)
/* 1DF328 801EE5B8 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1DF32C 801EE5BC 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1DF330 801EE5C0 8E230000 */  lw    $v1, ($s1)
/* 1DF334 801EE5C4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 1DF338 801EE5C8 AFB00024 */  sw    $s0, 0x24($sp)
/* 1DF33C 801EE5CC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1DF340 801EE5D0 AFA40030 */  sw    $a0, 0x30($sp)
/* 1DF344 801EE5D4 8C620000 */  lw    $v0, ($v1)
/* 1DF348 801EE5D8 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DF34C 801EE5DC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DF350 801EE5E0 00021080 */  sll   $v0, $v0, 2
/* 1DF354 801EE5E4 00220821 */  addu  $at, $at, $v0
/* 1DF358 801EE5E8 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DF35C 801EE5EC AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DF360 801EE5F0 8C780000 */  lw    $t8, ($v1)
/* 1DF364 801EE5F4 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1DF368 801EE5F8 02028021 */  addu  $s0, $s0, $v0
/* 1DF36C 801EE5FC 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1DF370 801EE600 3C01800E */ lui $at, %hi(D_800DF150)
/* 1DF374 801EE604 3C0F801F */  lui   $t7, %hi(D_801EE990) # $t7, 0x801f
/* 1DF378 801EE608 0018C880 */  sll   $t9, $t8, 2
/* 1DF37C 801EE60C 00390821 */  addu  $at, $at, $t9
/* 1DF380 801EE610 25EFE990 */  addiu $t7, %lo(D_801EE990) # addiu $t7, $t7, -0x1670
/* 1DF384 801EE614 AC2FF150 */ sw $t7, %lo(D_800DF150)($at)
/* 1DF388 801EE618 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DF38C 801EE61C 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DF390 801EE620 AE080098 */  sw    $t0, 0x98($s0)
/* 1DF394 801EE624 A200003C */  sb    $zero, 0x3c($s0)
/* 1DF398 801EE628 8E230000 */  lw    $v1, ($s1)
/* 1DF39C 801EE62C 4480A000 */  mtc1  $zero, $f20
/* 1DF3A0 801EE630 3C01800F */ lui $at, %hi(D_800E9020)
/* 1DF3A4 801EE634 8C690000 */  lw    $t1, ($v1)
/* 1DF3A8 801EE638 3C04800E */  lui   $a0, %hi(gEntitiesPosXArray) # $a0, 0x800e
/* 1DF3AC 801EE63C 248425D0 */  addiu $a0, %lo(gEntitiesPosXArray) # addiu $a0, $a0, 0x25d0
/* 1DF3B0 801EE640 00095080 */  sll   $t2, $t1, 2
/* 1DF3B4 801EE644 002A0821 */  addu  $at, $at, $t2
/* 1DF3B8 801EE648 E4349020 */ swc1 $f20, %lo(D_800E9020)($at)
/* 1DF3BC 801EE64C 8C620000 */  lw    $v0, ($v1)
/* 1DF3C0 801EE650 C4860000 */  lwc1  $f6, ($a0)
/* 1DF3C4 801EE654 00021080 */  sll   $v0, $v0, 2
/* 1DF3C8 801EE658 00825821 */  addu  $t3, $a0, $v0
/* 1DF3CC 801EE65C C5640000 */  lwc1  $f4, ($t3)
/* 1DF3D0 801EE660 4606203C */  c.lt.s $f4, $f6
/* 1DF3D4 801EE664 00000000 */  nop   
/* 1DF3D8 801EE668 45000006 */  bc1f  .L801EE684_ovl10
/* 1DF3DC 801EE66C 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 1DF3E0 801EE670 44814000 */  mtc1  $at, $f8
/* 1DF3E4 801EE674 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DF3E8 801EE678 00220821 */  addu  $at, $at, $v0
/* 1DF3EC 801EE67C 10000006 */  b     .L801EE698_ovl10
/* 1DF3F0 801EE680 E4286A10 */ swc1 $f8, %lo(D_800E6A10)($at)
.L801EE684_ovl10:
/* 1DF3F4 801EE684 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1DF3F8 801EE688 44815000 */  mtc1  $at, $f10
/* 1DF3FC 801EE68C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DF400 801EE690 00220821 */  addu  $at, $at, $v0
/* 1DF404 801EE694 E42A6A10 */ swc1 $f10, %lo(D_800E6A10)($at)
.L801EE698_ovl10:
/* 1DF408 801EE698 8C620000 */  lw    $v0, ($v1)
/* 1DF40C 801EE69C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DF410 801EE6A0 240401D2 */  li    $a0, 466
/* 1DF414 801EE6A4 00021080 */  sll   $v0, $v0, 2
/* 1DF418 801EE6A8 00220821 */  addu  $at, $at, $v0
/* 1DF41C 801EE6AC C4306A10 */ lwc1 $f16, %lo(D_800E6A10)($at)
/* 1DF420 801EE6B0 3C01801F */  lui   $at, %hi(D_801F4BEC_ovl10) # $at, 0x801f
/* 1DF424 801EE6B4 C4324BEC */  lwc1  $f18, %lo(D_801F4BEC_ovl10)($at)
/* 1DF428 801EE6B8 3C01800E */ lui $at, %hi(D_800E4C50)
/* 1DF42C 801EE6BC 00220821 */  addu  $at, $at, $v0
/* 1DF430 801EE6C0 46128102 */  mul.s $f4, $f16, $f18
/* 1DF434 801EE6C4 0C029D9E */  jal   func_800A7678
/* 1DF438 801EE6C8 E4244C50 */ swc1 $f4, %lo(D_800E4C50)($at)
/* 1DF43C 801EE6CC 8E0C0088 */  lw    $t4, 0x88($s0)
/* 1DF440 801EE6D0 4406A000 */  mfc1  $a2, $f20
/* 1DF444 801EE6D4 00002025 */  move  $a0, $zero
/* 1DF448 801EE6D8 8D8D0010 */  lw    $t5, 0x10($t4)
/* 1DF44C 801EE6DC 24050001 */  li    $a1, 1
/* 1DF450 801EE6E0 8DA70000 */  lw    $a3, ($t5)
/* 1DF454 801EE6E4 0C03F55C */  jal   func_800FD570
/* 1DF458 801EE6E8 E7B40010 */   swc1  $f20, 0x10($sp)
/* 1DF45C 801EE6EC 8E230000 */  lw    $v1, ($s1)
/* 1DF460 801EE6F0 3C0E800F */ lui $t6, %hi(D_800E8920)
/* 1DF464 801EE6F4 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DF468 801EE6F8 8C620000 */  lw    $v0, ($v1)
/* 1DF46C 801EE6FC 00021080 */  sll   $v0, $v0, 2
/* 1DF470 801EE700 01C27021 */  addu  $t6, $t6, $v0
/* 1DF474 801EE704 8DCE8920 */ lw $t6, %lo(D_800E8920)($t6)
/* 1DF478 801EE708 00220821 */  addu  $at, $at, $v0
/* 1DF47C 801EE70C 15C0000E */  bnez  $t6, .L801EE748_ovl10
/* 1DF480 801EE710 00000000 */   nop   
/* 1DF484 801EE714 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1DF488 801EE718 44813000 */  mtc1  $at, $f6
/* 1DF48C 801EE71C 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DF490 801EE720 00220821 */  addu  $at, $at, $v0
/* 1DF494 801EE724 E4263750 */ swc1 $f6, %lo(D_800E3750)($at)
/* 1DF498 801EE728 8C780000 */  lw    $t8, ($v1)
/* 1DF49C 801EE72C 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 1DF4A0 801EE730 44814000 */  mtc1  $at, $f8
/* 1DF4A4 801EE734 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DF4A8 801EE738 00187880 */  sll   $t7, $t8, 2
/* 1DF4AC 801EE73C 002F0821 */  addu  $at, $at, $t7
/* 1DF4B0 801EE740 10000011 */  b     .L801EE788_ovl10
/* 1DF4B4 801EE744 E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
.L801EE748_ovl10:
/* 1DF4B8 801EE748 E4343750 */  swc1  $f20, %lo(D_800E3750)($at)
/* 1DF4BC 801EE74C 8C620000 */  lw    $v0, ($v1)
/* 1DF4C0 801EE750 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DF4C4 801EE754 00021080 */  sll   $v0, $v0, 2
/* 1DF4C8 801EE758 00220821 */  addu  $at, $at, $v0
/* 1DF4CC 801EE75C C42A3750 */ lwc1 $f10, %lo(D_800E3750)($at)
/* 1DF4D0 801EE760 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DF4D4 801EE764 00220821 */  addu  $at, $at, $v0
/* 1DF4D8 801EE768 E42A3210 */ swc1 $f10, %lo(D_800E3210)($at)
/* 1DF4DC 801EE76C 8C790000 */  lw    $t9, ($v1)
/* 1DF4E0 801EE770 3C01801F */  lui   $at, %hi(D_801F4BF0_ovl10) # $at, 0x801f
/* 1DF4E4 801EE774 C4304BF0 */  lwc1  $f16, %lo(D_801F4BF0_ovl10)($at)
/* 1DF4E8 801EE778 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DF4EC 801EE77C 00194080 */  sll   $t0, $t9, 2
/* 1DF4F0 801EE780 00280821 */  addu  $at, $at, $t0
/* 1DF4F4 801EE784 E4303C90 */ swc1 $f16, %lo(D_800E3C90)($at)
.L801EE788_ovl10:
/* 1DF4F8 801EE788 8C620000 */  lw    $v0, ($v1)
/* 1DF4FC 801EE78C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DF500 801EE790 3C040001 */  lui   $a0, (0x00010280 >> 16) # lui $a0, 1
/* 1DF504 801EE794 00021080 */  sll   $v0, $v0, 2
/* 1DF508 801EE798 00220821 */  addu  $at, $at, $v0
/* 1DF50C 801EE79C C4326A10 */ lwc1 $f18, %lo(D_800E6A10)($at)
/* 1DF510 801EE7A0 3C01C080 */  li    $at, 0xC0800000 # -4.000000
/* 1DF514 801EE7A4 44812000 */  mtc1  $at, $f4
/* 1DF518 801EE7A8 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DF51C 801EE7AC 00220821 */  addu  $at, $at, $v0
/* 1DF520 801EE7B0 46049182 */  mul.s $f6, $f18, $f4
/* 1DF524 801EE7B4 34840280 */  ori   $a0, (0x00010280 & 0xFFFF) # ori $a0, $a0, 0x280
/* 1DF528 801EE7B8 E42664D0 */ swc1 $f6, %lo(D_800E64D0)($at)
/* 1DF52C 801EE7BC 8C690000 */  lw    $t1, ($v1)
/* 1DF530 801EE7C0 3C01800E */ lui $at, %hi(D_800E6690)
/* 1DF534 801EE7C4 00095080 */  sll   $t2, $t1, 2
/* 1DF538 801EE7C8 002A0821 */  addu  $at, $at, $t2
/* 1DF53C 801EE7CC E4346690 */ swc1 $f20, %lo(D_800E6690)($at)
/* 1DF540 801EE7D0 8C6B0000 */  lw    $t3, ($v1)
/* 1DF544 801EE7D4 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1DF548 801EE7D8 44814000 */  mtc1  $at, $f8
/* 1DF54C 801EE7DC 3C01800E */ lui $at, %hi(D_800E6850)
/* 1DF550 801EE7E0 000B6080 */  sll   $t4, $t3, 2
/* 1DF554 801EE7E4 002C0821 */  addu  $at, $at, $t4
/* 1DF558 801EE7E8 0C02A806 */  jal   func_800AA018
/* 1DF55C 801EE7EC E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
/* 1DF560 801EE7F0 3C040001 */  lui   $a0, (0x00010281 >> 16) # lui $a0, 1
/* 1DF564 801EE7F4 0C02A806 */  jal   func_800AA018
/* 1DF568 801EE7F8 34840281 */   ori   $a0, (0x00010281 & 0xFFFF) # ori $a0, $a0, 0x281
/* 1DF56C 801EE7FC 8E2D0000 */  lw    $t5, ($s1)
/* 1DF570 801EE800 3C10800F */  lui   $s0, %hi(D_800E8E60) # $s0, 0x800f
/* 1DF574 801EE804 26108E60 */  addiu $s0, %lo(D_800E8E60) # addiu $s0, $s0, -0x71a0
/* 1DF578 801EE808 8DAE0000 */  lw    $t6, ($t5)
/* 1DF57C 801EE80C 000EC080 */  sll   $t8, $t6, 2
/* 1DF580 801EE810 02187821 */  addu  $t7, $s0, $t8
/* 1DF584 801EE814 8DF90000 */  lw    $t9, ($t7)
/* 1DF588 801EE818 1720000A */  bnez  $t9, .L801EE844_ovl10
/* 1DF58C 801EE81C 00000000 */   nop   
.L801EE820_ovl10:
/* 1DF590 801EE820 0C002DAF */  jal   func_8000B6BC
/* 1DF594 801EE824 24040001 */   li    $a0, 1
/* 1DF598 801EE828 8E280000 */  lw    $t0, ($s1)
/* 1DF59C 801EE82C 8D090000 */  lw    $t1, ($t0)
/* 1DF5A0 801EE830 00095080 */  sll   $t2, $t1, 2
/* 1DF5A4 801EE834 020A5821 */  addu  $t3, $s0, $t2
/* 1DF5A8 801EE838 8D6C0000 */  lw    $t4, ($t3)
/* 1DF5AC 801EE83C 1180FFF8 */  beqz  $t4, .L801EE820_ovl10
/* 1DF5B0 801EE840 00000000 */   nop   
.L801EE844_ovl10:
/* 1DF5B4 801EE844 0C06F1E5 */  jal   func_801BC794_ovl10
/* 1DF5B8 801EE848 24040006 */   li    $a0, 6
/* 1DF5BC 801EE84C 0C002DAF */  jal   func_8000B6BC
/* 1DF5C0 801EE850 2404001E */   li    $a0, 30
/* 1DF5C4 801EE854 8E230000 */  lw    $v1, ($s1)
/* 1DF5C8 801EE858 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 1DF5CC 801EE85C 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 1DF5D0 801EE860 8C6D0000 */  lw    $t5, ($v1)
/* 1DF5D4 801EE864 3C01801F */  lui   $at, %hi(D_801F4BF4_ovl10) # $at, 0x801f
/* 1DF5D8 801EE868 C42C4BF4 */  lwc1  $f12, %lo(D_801F4BF4_ovl10)($at)
/* 1DF5DC 801EE86C 000D7080 */  sll   $t6, $t5, 2
/* 1DF5E0 801EE870 00CEC021 */  addu  $t8, $a2, $t6
/* 1DF5E4 801EE874 E7140000 */  swc1  $f20, ($t8)
/* 1DF5E8 801EE878 8C620000 */  lw    $v0, ($v1)
/* 1DF5EC 801EE87C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DF5F0 801EE880 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 1DF5F4 801EE884 00021080 */  sll   $v0, $v0, 2
/* 1DF5F8 801EE888 00C27821 */  addu  $t7, $a2, $v0
/* 1DF5FC 801EE88C C5EA0000 */  lwc1  $f10, ($t7)
/* 1DF600 801EE890 00220821 */  addu  $at, $at, $v0
/* 1DF604 801EE894 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 1DF608 801EE898 E42A64D0 */ swc1 $f10, %lo(D_800E64D0)($at)
/* 1DF60C 801EE89C 8C790000 */  lw    $t9, ($v1)
/* 1DF610 801EE8A0 3C01800E */ lui $at, %hi(D_800E6850)
/* 1DF614 801EE8A4 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 1DF618 801EE8A8 00194080 */  sll   $t0, $t9, 2
/* 1DF61C 801EE8AC 00280821 */  addu  $at, $at, $t0
/* 1DF620 801EE8B0 E42C6850 */ swc1 $f12, %lo(D_800E6850)($at)
/* 1DF624 801EE8B4 8C690000 */  lw    $t1, ($v1)
/* 1DF628 801EE8B8 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DF62C 801EE8BC 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 1DF630 801EE8C0 00095080 */  sll   $t2, $t1, 2
/* 1DF634 801EE8C4 008A5821 */  addu  $t3, $a0, $t2
/* 1DF638 801EE8C8 E5740000 */  swc1  $f20, ($t3)
/* 1DF63C 801EE8CC 8C620000 */  lw    $v0, ($v1)
/* 1DF640 801EE8D0 00021080 */  sll   $v0, $v0, 2
/* 1DF644 801EE8D4 00826021 */  addu  $t4, $a0, $v0
/* 1DF648 801EE8D8 C5800000 */  lwc1  $f0, ($t4)
/* 1DF64C 801EE8DC 00220821 */  addu  $at, $at, $v0
/* 1DF650 801EE8E0 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1DF654 801EE8E4 8C6D0000 */  lw    $t5, ($v1)
/* 1DF658 801EE8E8 3C01800E */ lui $at, %hi(D_800E3590)
/* 1DF65C 801EE8EC 000D7080 */  sll   $t6, $t5, 2
/* 1DF660 801EE8F0 002E0821 */  addu  $at, $at, $t6
/* 1DF664 801EE8F4 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1DF668 801EE8F8 8C780000 */  lw    $t8, ($v1)
/* 1DF66C 801EE8FC 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1DF670 801EE900 00187880 */  sll   $t7, $t8, 2
/* 1DF674 801EE904 002F0821 */  addu  $at, $at, $t7
/* 1DF678 801EE908 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1DF67C 801EE90C 8C790000 */  lw    $t9, ($v1)
/* 1DF680 801EE910 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DF684 801EE914 00194080 */  sll   $t0, $t9, 2
/* 1DF688 801EE918 00280821 */  addu  $at, $at, $t0
/* 1DF68C 801EE91C E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1DF690 801EE920 8C690000 */  lw    $t1, ($v1)
/* 1DF694 801EE924 3C01800E */ lui $at, %hi(D_800E3050)
/* 1DF698 801EE928 00095080 */  sll   $t2, $t1, 2
/* 1DF69C 801EE92C 002A0821 */  addu  $at, $at, $t2
/* 1DF6A0 801EE930 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1DF6A4 801EE934 8C6B0000 */  lw    $t3, ($v1)
/* 1DF6A8 801EE938 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DF6AC 801EE93C 000B6080 */  sll   $t4, $t3, 2
/* 1DF6B0 801EE940 00AC6821 */  addu  $t5, $a1, $t4
/* 1DF6B4 801EE944 E5AC0000 */  swc1  $f12, ($t5)
/* 1DF6B8 801EE948 8C620000 */  lw    $v0, ($v1)
/* 1DF6BC 801EE94C 00021080 */  sll   $v0, $v0, 2
/* 1DF6C0 801EE950 00A27021 */  addu  $t6, $a1, $v0
/* 1DF6C4 801EE954 C5C20000 */  lwc1  $f2, ($t6)
/* 1DF6C8 801EE958 00220821 */  addu  $at, $at, $v0
/* 1DF6CC 801EE95C E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1DF6D0 801EE960 8C780000 */  lw    $t8, ($v1)
/* 1DF6D4 801EE964 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1DF6D8 801EE968 00187880 */  sll   $t7, $t8, 2
/* 1DF6DC 801EE96C 002F0821 */  addu  $at, $at, $t7
/* 1DF6E0 801EE970 0C02BE85 */  jal   func_800AFA14
/* 1DF6E4 801EE974 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1DF6E8 801EE978 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1DF6EC 801EE97C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1DF6F0 801EE980 8FB00024 */  lw    $s0, 0x24($sp)
/* 1DF6F4 801EE984 8FB10028 */  lw    $s1, 0x28($sp)
/* 1DF6F8 801EE988 03E00008 */  jr    $ra
/* 1DF6FC 801EE98C 27BD0030 */   addiu $sp, $sp, 0x30
