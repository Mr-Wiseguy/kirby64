glabel func_80101400
/* 089E70 80101400 27BDFF00 */  addiu $sp, $sp, -0x100
/* 089E74 80101404 3C0C8013 */  lui   $t4, %hi(gCollisionState) # $t4, 0x8013
/* 089E78 80101408 258CBCF8 */  addiu $t4, %lo(gCollisionState) # addiu $t4, $t4, -0x4308
/* 089E7C 8010140C 8D860000 */  lw    $a2, ($t4)
/* 089E80 80101410 AFBF002C */  sw    $ra, 0x2c($sp)
/* 089E84 80101414 AFB00028 */  sw    $s0, 0x28($sp)
/* 089E88 80101418 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 089E8C 8010141C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 089E90 80101420 8CD80008 */  lw    $t8, 8($a2)
/* 089E94 80101424 27AE00A0 */  addiu $t6, $sp, 0xa0
/* 089E98 80101428 27B90094 */  addiu $t9, $sp, 0x94
/* 089E9C 8010142C ADD80000 */  sw    $t8, ($t6)
/* 089EA0 80101430 8CCF000C */  lw    $t7, 0xc($a2)
/* 089EA4 80101434 4480B000 */  mtc1  $zero, $f22
/* 089EA8 80101438 00808025 */  move  $s0, $a0
/* 089EAC 8010143C ADCF0004 */  sw    $t7, 4($t6)
/* 089EB0 80101440 8CD80010 */  lw    $t8, 0x10($a2)
/* 089EB4 80101444 00004025 */  move  $t0, $zero
/* 089EB8 80101448 27AB00B0 */  addiu $t3, $sp, 0xb0
/* 089EBC 8010144C ADD80008 */  sw    $t8, 8($t6)
/* 089EC0 80101450 8CCE0014 */  lw    $t6, 0x14($a2)
/* 089EC4 80101454 AF2E0000 */  sw    $t6, ($t9)
/* 089EC8 80101458 8CCD0018 */  lw    $t5, 0x18($a2)
/* 089ECC 8010145C AF2D0004 */  sw    $t5, 4($t9)
/* 089ED0 80101460 8CCE001C */  lw    $t6, 0x1c($a2)
/* 089ED4 80101464 AF2E0008 */  sw    $t6, 8($t9)
/* 089ED8 80101468 8CC90030 */  lw    $t1, 0x30($a2)
/* 089EDC 8010146C 8CC30034 */  lw    $v1, 0x34($a2)
/* 089EE0 80101470 8D250024 */  lw    $a1, 0x24($t1)
/* 089EE4 80101474 8D270014 */  lw    $a3, 0x14($t1)
.L80101478_ovl2:
/* 089EE8 80101478 001078C0 */  sll   $t7, $s0, 3
/* 089EEC 8010147C 00AF5021 */  addu  $t2, $a1, $t7
/* 089EF0 80101480 95580000 */  lhu   $t8, ($t2)
/* 089EF4 80101484 0018C900 */  sll   $t9, $t8, 4
/* 089EF8 80101488 00F92021 */  addu  $a0, $a3, $t9
/* 089EFC 8010148C 50640033 */  beql  $v1, $a0, .L8010155C_ovl2
/* 089F00 80101490 95440002 */   lhu   $a0, 2($t2)
/* 089F04 80101494 50600043 */  beql  $v1, $zero, .L801015A4_ovl2
/* 089F08 80101498 C4820000 */   lwc1  $f2, ($a0)
/* 089F0C 8010149C C4820000 */  lwc1  $f2, ($a0)
/* 089F10 801014A0 C4600000 */  lwc1  $f0, ($v1)
/* 089F14 801014A4 46001032 */  c.eq.s $f2, $f0
/* 089F18 801014A8 00000000 */  nop   
/* 089F1C 801014AC 45020014 */  bc1fl .L80101500_ovl2
/* 089F20 801014B0 C488000C */   lwc1  $f8, 0xc($a0)
/* 089F24 801014B4 C4840004 */  lwc1  $f4, 4($a0)
/* 089F28 801014B8 C4660004 */  lwc1  $f6, 4($v1)
/* 089F2C 801014BC 46062032 */  c.eq.s $f4, $f6
/* 089F30 801014C0 00000000 */  nop   
/* 089F34 801014C4 4502000E */  bc1fl .L80101500_ovl2
/* 089F38 801014C8 C488000C */   lwc1  $f8, 0xc($a0)
/* 089F3C 801014CC C4880008 */  lwc1  $f8, 8($a0)
/* 089F40 801014D0 C46A0008 */  lwc1  $f10, 8($v1)
/* 089F44 801014D4 460A4032 */  c.eq.s $f8, $f10
/* 089F48 801014D8 00000000 */  nop   
/* 089F4C 801014DC 45020008 */  bc1fl .L80101500_ovl2
/* 089F50 801014E0 C488000C */   lwc1  $f8, 0xc($a0)
/* 089F54 801014E4 C484000C */  lwc1  $f4, 0xc($a0)
/* 089F58 801014E8 C466000C */  lwc1  $f6, 0xc($v1)
/* 089F5C 801014EC 46062032 */  c.eq.s $f4, $f6
/* 089F60 801014F0 00000000 */  nop   
/* 089F64 801014F4 45030019 */  bc1tl .L8010155C_ovl2
/* 089F68 801014F8 95440002 */   lhu   $a0, 2($t2)
/* 089F6C 801014FC C488000C */  lwc1  $f8, 0xc($a0)
.L80101500_ovl2:
/* 089F70 80101500 C464000C */  lwc1  $f4, 0xc($v1)
/* 089F74 80101504 46004287 */  neg.s $f10, $f8
/* 089F78 80101508 46045032 */  c.eq.s $f10, $f4
/* 089F7C 8010150C 00000000 */  nop   
/* 089F80 80101510 45020024 */  bc1fl .L801015A4_ovl2
/* 089F84 80101514 C4820000 */   lwc1  $f2, ($a0)
/* 089F88 80101518 C4680004 */  lwc1  $f8, 4($v1)
/* 089F8C 8010151C C48A0004 */  lwc1  $f10, 4($a0)
/* 089F90 80101520 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 089F94 80101524 44813000 */  mtc1  $at, $f6
/* 089F98 80101528 460A4102 */  mul.s $f4, $f8, $f10
/* 089F9C 8010152C 00000000 */  nop   
/* 089FA0 80101530 46020202 */  mul.s $f8, $f0, $f2
/* 089FA4 80101534 46044280 */  add.s $f10, $f8, $f4
/* 089FA8 80101538 C4840008 */  lwc1  $f4, 8($a0)
/* 089FAC 8010153C C4680008 */  lwc1  $f8, 8($v1)
/* 089FB0 80101540 46044202 */  mul.s $f8, $f8, $f4
/* 089FB4 80101544 46085100 */  add.s $f4, $f10, $f8
/* 089FB8 80101548 46043032 */  c.eq.s $f6, $f4
/* 089FBC 8010154C 00000000 */  nop   
/* 089FC0 80101550 45000013 */  bc1f  .L801015A0_ovl2
/* 089FC4 80101554 00000000 */   nop   
/* 089FC8 80101558 95440002 */  lhu   $a0, 2($t2)
.L8010155C_ovl2:
/* 089FCC 8010155C 95420004 */  lhu   $v0, 4($t2)
/* 089FD0 80101560 1080000B */  beqz  $a0, .L80101590_ovl2
/* 089FD4 80101564 00000000 */   nop   
/* 089FD8 80101568 10400007 */  beqz  $v0, .L80101588_ovl2
/* 089FDC 8010156C 00086840 */   sll   $t5, $t0, 1
/* 089FE0 80101570 016D7021 */  addu  $t6, $t3, $t5
/* 089FE4 80101574 A5C20000 */  sh    $v0, ($t6)
/* 089FE8 80101578 8CC30034 */  lw    $v1, 0x34($a2)
/* 089FEC 8010157C 8D270014 */  lw    $a3, 0x14($t1)
/* 089FF0 80101580 8D250024 */  lw    $a1, 0x24($t1)
/* 089FF4 80101584 25080001 */  addiu $t0, $t0, 1
.L80101588_ovl2:
/* 089FF8 80101588 1000FFBB */  b     .L80101478_ovl2
/* 089FFC 8010158C 00808025 */   move  $s0, $a0
.L80101590_ovl2:
/* 08A000 80101590 104000D3 */  beqz  $v0, .L801018E0_ovl2
/* 08A004 80101594 00000000 */   nop   
/* 08A008 80101598 1000FFB7 */  b     .L80101478_ovl2
/* 08A00C 8010159C 00408025 */   move  $s0, $v0
.L801015A0_ovl2:
/* 08A010 801015A0 C4820000 */  lwc1  $f2, ($a0)
.L801015A4_ovl2:
/* 08A014 801015A4 C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* 08A018 801015A8 C48C0004 */  lwc1  $f12, 4($a0)
/* 08A01C 801015AC C7A600A4 */  lwc1  $f6, 0xa4($sp)
/* 08A020 801015B0 460A1202 */  mul.s $f8, $f2, $f10
/* 08A024 801015B4 C48E0008 */  lwc1  $f14, 8($a0)
/* 08A028 801015B8 C490000C */  lwc1  $f16, 0xc($a0)
/* 08A02C 801015BC 46066102 */  mul.s $f4, $f12, $f6
/* 08A030 801015C0 C7A600A8 */  lwc1  $f6, 0xa8($sp)
/* 08A034 801015C4 00002825 */  move  $a1, $zero
/* 08A038 801015C8 00003825 */  move  $a3, $zero
/* 08A03C 801015CC 00001825 */  move  $v1, $zero
/* 08A040 801015D0 00001025 */  move  $v0, $zero
/* 08A044 801015D4 46044280 */  add.s $f10, $f8, $f4
/* 08A048 801015D8 46067202 */  mul.s $f8, $f14, $f6
/* 08A04C 801015DC C7A60094 */  lwc1  $f6, 0x94($sp)
/* 08A050 801015E0 46085100 */  add.s $f4, $f10, $f8
/* 08A054 801015E4 46061282 */  mul.s $f10, $f2, $f6
/* 08A058 801015E8 C7A80098 */  lwc1  $f8, 0x98($sp)
/* 08A05C 801015EC 46102480 */  add.s $f18, $f4, $f16
/* 08A060 801015F0 46086102 */  mul.s $f4, $f12, $f8
/* 08A064 801015F4 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* 08A068 801015F8 4612B03C */  c.lt.s $f22, $f18
/* 08A06C 801015FC 46045180 */  add.s $f6, $f10, $f4
/* 08A070 80101600 46087282 */  mul.s $f10, $f14, $f8
/* 08A074 80101604 460A3100 */  add.s $f4, $f6, $f10
/* 08A078 80101608 45000003 */  bc1f  .L80101618_ovl2
/* 08A07C 8010160C 46102500 */   add.s $f20, $f4, $f16
/* 08A080 80101610 10000001 */  b     .L80101618_ovl2
/* 08A084 80101614 24050001 */   li    $a1, 1
.L80101618_ovl2:
/* 08A088 80101618 4614B03C */  c.lt.s $f22, $f20
/* 08A08C 8010161C 00000000 */  nop   
/* 08A090 80101620 45000003 */  bc1f  .L80101630_ovl2
/* 08A094 80101624 00000000 */   nop   
/* 08A098 80101628 10000001 */  b     .L80101630_ovl2
/* 08A09C 8010162C 24070001 */   li    $a3, 1
.L80101630_ovl2:
/* 08A0A0 80101630 46169032 */  c.eq.s $f18, $f22
/* 08A0A4 80101634 00000000 */  nop   
/* 08A0A8 80101638 45010003 */  bc1t  .L80101648_ovl2
/* 08A0AC 8010163C 00000000 */   nop   
/* 08A0B0 80101640 10000001 */  b     .L80101648_ovl2
/* 08A0B4 80101644 24030001 */   li    $v1, 1
.L80101648_ovl2:
/* 08A0B8 80101648 4616A032 */  c.eq.s $f20, $f22
/* 08A0BC 8010164C 00000000 */  nop   
/* 08A0C0 80101650 45010003 */  bc1t  .L80101660_ovl2
/* 08A0C4 80101654 00000000 */   nop   
/* 08A0C8 80101658 10000001 */  b     .L80101660_ovl2
/* 08A0CC 8010165C 24020001 */   li    $v0, 1
.L80101660_ovl2:
/* 08A0D0 80101660 54A70004 */  bnel  $a1, $a3, .L80101674_ovl2
/* 08A0D4 80101664 8CC20038 */   lw    $v0, 0x38($a2)
/* 08A0D8 80101668 1062007E */  beq   $v1, $v0, .L80101864_ovl2
/* 08A0DC 8010166C 00000000 */   nop   
/* 08A0E0 80101670 8CC20038 */  lw    $v0, 0x38($a2)
.L80101674_ovl2:
/* 08A0E4 80101674 1044007B */  beq   $v0, $a0, .L80101864_ovl2
/* 08A0E8 80101678 00000000 */   nop   
/* 08A0EC 8010167C 50400029 */  beql  $v0, $zero, .L80101724_ovl2
/* 08A0F0 80101680 AFA40088 */   sw    $a0, 0x88($sp)
/* 08A0F4 80101684 C4400000 */  lwc1  $f0, ($v0)
/* 08A0F8 80101688 46001032 */  c.eq.s $f2, $f0
/* 08A0FC 8010168C 00000000 */  nop   
/* 08A100 80101690 45020011 */  bc1fl .L801016D8_ovl2
/* 08A104 80101694 C448000C */   lwc1  $f8, 0xc($v0)
/* 08A108 80101698 C4480004 */  lwc1  $f8, 4($v0)
/* 08A10C 8010169C 46086032 */  c.eq.s $f12, $f8
/* 08A110 801016A0 00000000 */  nop   
/* 08A114 801016A4 4502000C */  bc1fl .L801016D8_ovl2
/* 08A118 801016A8 C448000C */   lwc1  $f8, 0xc($v0)
/* 08A11C 801016AC C4460008 */  lwc1  $f6, 8($v0)
/* 08A120 801016B0 46067032 */  c.eq.s $f14, $f6
/* 08A124 801016B4 00000000 */  nop   
/* 08A128 801016B8 45020007 */  bc1fl .L801016D8_ovl2
/* 08A12C 801016BC C448000C */   lwc1  $f8, 0xc($v0)
/* 08A130 801016C0 C44A000C */  lwc1  $f10, 0xc($v0)
/* 08A134 801016C4 460A8032 */  c.eq.s $f16, $f10
/* 08A138 801016C8 00000000 */  nop   
/* 08A13C 801016CC 45010065 */  bc1t  .L80101864_ovl2
/* 08A140 801016D0 00000000 */   nop   
/* 08A144 801016D4 C448000C */  lwc1  $f8, 0xc($v0)
.L801016D8_ovl2:
/* 08A148 801016D8 46008107 */  neg.s $f4, $f16
/* 08A14C 801016DC 46082032 */  c.eq.s $f4, $f8
/* 08A150 801016E0 00000000 */  nop   
/* 08A154 801016E4 4502000F */  bc1fl .L80101724_ovl2
/* 08A158 801016E8 AFA40088 */   sw    $a0, 0x88($sp)
/* 08A15C 801016EC 46020282 */  mul.s $f10, $f0, $f2
/* 08A160 801016F0 C4440004 */  lwc1  $f4, 4($v0)
/* 08A164 801016F4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 08A168 801016F8 44813000 */  mtc1  $at, $f6
/* 08A16C 801016FC 460C2202 */  mul.s $f8, $f4, $f12
/* 08A170 80101700 46085100 */  add.s $f4, $f10, $f8
/* 08A174 80101704 C44A0008 */  lwc1  $f10, 8($v0)
/* 08A178 80101708 460E5202 */  mul.s $f8, $f10, $f14
/* 08A17C 8010170C 46082280 */  add.s $f10, $f4, $f8
/* 08A180 80101710 460A3032 */  c.eq.s $f6, $f10
/* 08A184 80101714 00000000 */  nop   
/* 08A188 80101718 45010052 */  bc1t  .L80101864_ovl2
/* 08A18C 8010171C 00000000 */   nop   
/* 08A190 80101720 AFA40088 */  sw    $a0, 0x88($sp)
.L80101724_ovl2:
/* 08A194 80101724 AFA50070 */  sw    $a1, 0x70($sp)
/* 08A198 80101728 AFA7006C */  sw    $a3, 0x6c($sp)
/* 08A19C 8010172C AFA800AC */  sw    $t0, 0xac($sp)
/* 08A1A0 80101730 AFA90090 */  sw    $t1, 0x90($sp)
/* 08A1A4 80101734 AFAA008C */  sw    $t2, 0x8c($sp)
/* 08A1A8 80101738 E7B20078 */  swc1  $f18, 0x78($sp)
/* 08A1AC 8010173C 8CD90044 */  lw    $t9, 0x44($a2)
/* 08A1B0 80101740 0320F809 */  jalr  $t9
/* 08A1B4 80101744 00000000 */  nop   
/* 08A1B8 80101748 3C0C8013 */  lui   $t4, %hi(gCollisionState) # $t4, 0x8013
/* 08A1BC 8010174C 258CBCF8 */  addiu $t4, %lo(gCollisionState) # addiu $t4, $t4, -0x4308
/* 08A1C0 80101750 8FA40088 */  lw    $a0, 0x88($sp)
/* 08A1C4 80101754 8FA50070 */  lw    $a1, 0x70($sp)
/* 08A1C8 80101758 8FA7006C */  lw    $a3, 0x6c($sp)
/* 08A1CC 8010175C 8FA800AC */  lw    $t0, 0xac($sp)
/* 08A1D0 80101760 8FA90090 */  lw    $t1, 0x90($sp)
/* 08A1D4 80101764 8FAA008C */  lw    $t2, 0x8c($sp)
/* 08A1D8 80101768 27AB00B0 */  addiu $t3, $sp, 0xb0
/* 08A1DC 8010176C 1040003D */  beqz  $v0, .L80101864_ovl2
/* 08A1E0 80101770 C7B20078 */   lwc1  $f18, 0x78($sp)
/* 08A1E4 80101774 8D860000 */  lw    $a2, ($t4)
/* 08A1E8 80101778 C4840000 */  lwc1  $f4, ($a0)
/* 08A1EC 8010177C C48A0004 */  lwc1  $f10, 4($a0)
/* 08A1F0 80101780 C4C80020 */  lwc1  $f8, 0x20($a2)
/* 08A1F4 80101784 8CD80000 */  lw    $t8, ($a2)
/* 08A1F8 80101788 8CCF0004 */  lw    $t7, 4($a2)
/* 08A1FC 8010178C 46082182 */  mul.s $f6, $f4, $f8
/* 08A200 80101790 C4C40024 */  lwc1  $f4, 0x24($a2)
/* 08A204 80101794 001868C0 */  sll   $t5, $t8, 3
/* 08A208 80101798 3C018013 */  lui    $at, %hi(D_80128A50) # -0.000000
/* 08A20C 8010179C 46045202 */  mul.s $f8, $f10, $f4
/* 08A210 801017A0 C4840008 */  lwc1  $f4, 8($a0)
/* 08A214 801017A4 01ED1021 */  addu  $v0, $t7, $t5
/* 08A218 801017A8 46083280 */  add.s $f10, $f6, $f8
/* 08A21C 801017AC C4C60028 */  lwc1  $f6, 0x28($a2)
/* 08A220 801017B0 46062202 */  mul.s $f8, $f4, $f6
/* 08A224 801017B4 46085000 */  add.s $f0, $f10, $f8
/* 08A228 801017B8 4616003C */  c.lt.s $f0, $f22
/* 08A22C 801017BC 00000000 */  nop   
/* 08A230 801017C0 45020004 */  bc1fl .L801017D4_ovl2
/* 08A234 801017C4 46000086 */   mov.s $f2, $f0
/* 08A238 801017C8 10000002 */  b     .L801017D4_ovl2
/* 08A23C 801017CC 46000087 */   neg.s $f2, $f0
/* 08A240 801017D0 46000086 */  mov.s $f2, $f0
.L801017D4_ovl2:
/* 08A244 801017D4 C4248A50 */  lwc1  $f4, %lo(D_80128A50)($at)
/* 08A248 801017D8 4604103C */  c.lt.s $f2, $f4
/* 08A24C 801017DC 00000000 */  nop   
/* 08A250 801017E0 45020019 */  bc1fl .L80101848_ovl2
/* 08A254 801017E4 46009283 */   div.s $f10, $f18, $f0
/* 08A258 801017E8 4616903C */  c.lt.s $f18, $f22
/* 08A25C 801017EC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08A260 801017F0 45020004 */  bc1fl .L80101804_ovl2
/* 08A264 801017F4 46009006 */   mov.s $f0, $f18
/* 08A268 801017F8 10000002 */  b     .L80101804_ovl2
/* 08A26C 801017FC 46009007 */   neg.s $f0, $f18
/* 08A270 80101800 46009006 */  mov.s $f0, $f18
.L80101804_ovl2:
/* 08A274 80101804 4616A03C */  c.lt.s $f20, $f22
/* 08A278 80101808 00000000 */  nop   
/* 08A27C 8010180C 45020004 */  bc1fl .L80101820_ovl2
/* 08A280 80101810 4600A086 */   mov.s $f2, $f20
/* 08A284 80101814 10000002 */  b     .L80101820_ovl2
/* 08A288 80101818 4600A087 */   neg.s $f2, $f20
/* 08A28C 8010181C 4600A086 */  mov.s $f2, $f20
.L80101820_ovl2:
/* 08A290 80101820 4602003C */  c.lt.s $f0, $f2
/* 08A294 80101824 00000000 */  nop   
/* 08A298 80101828 45020004 */  bc1fl .L8010183C_ovl2
/* 08A29C 8010182C 44813000 */   mtc1  $at, $f6
/* 08A2A0 80101830 10000007 */  b     .L80101850_ovl2
/* 08A2A4 80101834 E4560004 */   swc1  $f22, 4($v0)
/* 08A2A8 80101838 44813000 */  mtc1  $at, $f6
.L8010183C_ovl2:
/* 08A2AC 8010183C 10000004 */  b     .L80101850_ovl2
/* 08A2B0 80101840 E4460004 */   swc1  $f6, 4($v0)
/* 08A2B4 80101844 46009283 */  div.s $f10, $f18, $f0
.L80101848_ovl2:
/* 08A2B8 80101848 46005207 */  neg.s $f8, $f10
/* 08A2BC 8010184C E4480004 */  swc1  $f8, 4($v0)
.L80101850_ovl2:
/* 08A2C0 80101850 A4500000 */  sh    $s0, ($v0)
/* 08A2C4 80101854 8D860000 */  lw    $a2, ($t4)
/* 08A2C8 80101858 8CCE0000 */  lw    $t6, ($a2)
/* 08A2CC 8010185C 25D90001 */  addiu $t9, $t6, 1
/* 08A2D0 80101860 ACD90000 */  sw    $t9, ($a2)
.L80101864_ovl2:
/* 08A2D4 80101864 14A00003 */  bnez  $a1, .L80101874_ovl2
/* 08A2D8 80101868 00000000 */   nop   
/* 08A2DC 8010186C 10E00003 */  beqz  $a3, .L8010187C_ovl2
/* 08A2E0 80101870 00002025 */   move  $a0, $zero
.L80101874_ovl2:
/* 08A2E4 80101874 10000001 */  b     .L8010187C_ovl2
/* 08A2E8 80101878 95440002 */   lhu   $a0, 2($t2)
.L8010187C_ovl2:
/* 08A2EC 8010187C 10A00003 */  beqz  $a1, .L8010188C_ovl2
/* 08A2F0 80101880 00808025 */   move  $s0, $a0
/* 08A2F4 80101884 14E00003 */  bnez  $a3, .L80101894_ovl2
/* 08A2F8 80101888 00001025 */   move  $v0, $zero
.L8010188C_ovl2:
/* 08A2FC 8010188C 10000001 */  b     .L80101894_ovl2
/* 08A300 80101890 95420004 */   lhu   $v0, 4($t2)
.L80101894_ovl2:
/* 08A304 80101894 1080000B */  beqz  $a0, .L801018C4_ovl2
/* 08A308 80101898 00000000 */   nop   
/* 08A30C 8010189C 10400005 */  beqz  $v0, .L801018B4_ovl2
/* 08A310 801018A0 8D860000 */   lw    $a2, ($t4)
/* 08A314 801018A4 0008C040 */  sll   $t8, $t0, 1
/* 08A318 801018A8 01787821 */  addu  $t7, $t3, $t8
/* 08A31C 801018AC A5E20000 */  sh    $v0, ($t7)
/* 08A320 801018B0 25080001 */  addiu $t0, $t0, 1
.L801018B4_ovl2:
/* 08A324 801018B4 8D250024 */  lw    $a1, 0x24($t1)
/* 08A328 801018B8 8D270014 */  lw    $a3, 0x14($t1)
/* 08A32C 801018BC 1000FEEE */  b     .L80101478_ovl2
/* 08A330 801018C0 8CC30034 */   lw    $v1, 0x34($a2)
.L801018C4_ovl2:
/* 08A334 801018C4 10400006 */  beqz  $v0, .L801018E0_ovl2
/* 08A338 801018C8 00408025 */   move  $s0, $v0
/* 08A33C 801018CC 8D860000 */  lw    $a2, ($t4)
/* 08A340 801018D0 8D250024 */  lw    $a1, 0x24($t1)
/* 08A344 801018D4 8D270014 */  lw    $a3, 0x14($t1)
/* 08A348 801018D8 1000FEE7 */  b     .L80101478_ovl2
/* 08A34C 801018DC 8CC30034 */   lw    $v1, 0x34($a2)
.L801018E0_ovl2:
/* 08A350 801018E0 11000009 */  beqz  $t0, .L80101908_ovl2
/* 08A354 801018E4 00086840 */   sll   $t5, $t0, 1
/* 08A358 801018E8 8D860000 */  lw    $a2, ($t4)
/* 08A35C 801018EC 016D7021 */  addu  $t6, $t3, $t5
/* 08A360 801018F0 95D0FFFE */  lhu   $s0, -2($t6)
/* 08A364 801018F4 2508FFFF */  addiu $t0, $t0, -1
/* 08A368 801018F8 8D250024 */  lw    $a1, 0x24($t1)
/* 08A36C 801018FC 8D270014 */  lw    $a3, 0x14($t1)
/* 08A370 80101900 1000FEDD */  b     .L80101478_ovl2
/* 08A374 80101904 8CC30034 */   lw    $v1, 0x34($a2)
.L80101908_ovl2:
/* 08A378 80101908 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08A37C 8010190C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 08A380 80101910 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 08A384 80101914 8FB00028 */  lw    $s0, 0x28($sp)
/* 08A388 80101918 03E00008 */  jr    $ra
/* 08A38C 8010191C 27BD0100 */   addiu $sp, $sp, 0x100
