glabel func_80009C38
/* 00A838 80009C38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00A83C 80009C3C AFBF0014 */  sw    $ra, 0x14($sp)
/* 00A840 80009C40 AFA50024 */  sw    $a1, 0x24($sp)
/* 00A844 80009C44 14800003 */  bnez  $a0, .L80009C54_ovl0
/* 00A848 80009C48 00803025 */   move  $a2, $a0
/* 00A84C 80009C4C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 00A850 80009C50 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
.L80009C54_ovl0:
/* 00A854 80009C54 0C002244 */  jal   object_manager_get_d_obj
/* 00A858 80009C58 AFA60020 */   sw    $a2, 0x20($sp)
/* 00A85C 80009C5C 8FA60020 */  lw    $a2, 0x20($sp)
/* 00A860 80009C60 00402825 */  move  $a1, $v0
/* 00A864 80009C64 240E0001 */  li    $t6, 1
/* 00A868 80009C68 8CC7003C */  lw    $a3, 0x3c($a2)
/* 00A86C 80009C6C 240F0001 */  li    $t7, 1
/* 00A870 80009C70 50E0000D */  beql  $a3, $zero, .L80009CA8_ovl0
/* 00A874 80009C74 A0CE000F */   sb    $t6, 0xf($a2)
/* 00A878 80009C78 8CE30008 */  lw    $v1, 8($a3)
/* 00A87C 80009C7C 00E02025 */  move  $a0, $a3
/* 00A880 80009C80 50600006 */  beql  $v1, $zero, .L80009C9C_ovl0
/* 00A884 80009C84 AC820008 */   sw    $v0, 8($a0)
/* 00A888 80009C88 00602025 */  move  $a0, $v1
.L80009C8C_ovl0:
/* 00A88C 80009C8C 8C630008 */  lw    $v1, 8($v1)
/* 00A890 80009C90 5460FFFE */  bnezl $v1, .L80009C8C_ovl0
/* 00A894 80009C94 00602025 */   move  $a0, $v1
/* 00A898 80009C98 AC820008 */  sw    $v0, 8($a0)
.L80009C9C_ovl0:
/* 00A89C 80009C9C 10000004 */  b     .L80009CB0_ovl0
/* 00A8A0 80009CA0 AC44000C */   sw    $a0, 0xc($v0)
/* 00A8A4 80009CA4 A0CE000F */  sb    $t6, 0xf($a2)
.L80009CA8_ovl0:
/* 00A8A8 80009CA8 ACC2003C */  sw    $v0, 0x3c($a2)
/* 00A8AC 80009CAC AC40000C */  sw    $zero, 0xc($v0)
.L80009CB0_ovl0:
/* 00A8B0 80009CB0 ACA60004 */  sw    $a2, 4($a1)
/* 00A8B4 80009CB4 ACAF0014 */  sw    $t7, 0x14($a1)
/* 00A8B8 80009CB8 ACA00008 */  sw    $zero, 8($a1)
/* 00A8BC 80009CBC ACA00010 */  sw    $zero, 0x10($a1)
/* 00A8C0 80009CC0 8FB80024 */  lw    $t8, 0x24($sp)
/* 00A8C4 80009CC4 00A02025 */  move  $a0, $a1
/* 00A8C8 80009CC8 ACB80050 */  sw    $t8, 0x50($a1)
/* 00A8CC 80009CCC 0C0026F5 */  jal   func_80009BD4
/* 00A8D0 80009CD0 AFA5001C */   sw    $a1, 0x1c($sp)
/* 00A8D4 80009CD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00A8D8 80009CD8 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00A8DC 80009CDC 27BD0020 */  addiu $sp, $sp, 0x20
/* 00A8E0 80009CE0 03E00008 */  jr    $ra
/* 00A8E4 80009CE4 00000000 */   nop   
