glabel func_801513F8
/* 135788 801513F8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 13578C 801513FC 2401000D */  li    $at, 13
/* 135790 80151400 AFBF0014 */  sw    $ra, 0x14($sp)
/* 135794 80151404 AFA60040 */  sw    $a2, 0x40($sp)
/* 135798 80151408 14A1001E */  bne   $a1, $at, .L80151484_ovl6
/* 13579C 8015140C 00803825 */   move  $a3, $a0
/* 1357A0 80151410 30C5FFFF */  andi  $a1, $a2, 0xffff
/* 1357A4 80151414 04A0001E */  bltz  $a1, .L80151490_ovl6
/* 1357A8 80151418 00062403 */   sra   $a0, $a2, 0x10
/* 1357AC 8015141C 000420C0 */  sll   $a0, $a0, 3
/* 1357B0 80151420 0C02867B */  jal   func_800A19EC
/* 1357B4 80151424 AFA70038 */   sw    $a3, 0x38($sp)
/* 1357B8 80151428 8FA70038 */  lw    $a3, 0x38($sp)
/* 1357BC 8015142C 10400018 */  beqz  $v0, .L80151490_ovl6
/* 1357C0 80151430 00401825 */   move  $v1, $v0
/* 1357C4 80151434 8C4E004C */  lw    $t6, 0x4c($v0)
/* 1357C8 80151438 27A40020 */  addiu $a0, $sp, 0x20
/* 1357CC 8015143C 00E02825 */  move  $a1, $a3
/* 1357D0 80151440 11C0000E */  beqz  $t6, .L8015147C_ovl6
/* 1357D4 80151444 3406FFFF */   li    $a2, 65535
/* 1357D8 80151448 0C02C8D0 */  jal   func_800B2340
/* 1357DC 8015144C AFA3002C */   sw    $v1, 0x2c($sp)
/* 1357E0 80151450 8FA3002C */  lw    $v1, 0x2c($sp)
/* 1357E4 80151454 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 1357E8 80151458 8C6F004C */  lw    $t7, 0x4c($v1)
/* 1357EC 8015145C E5E40004 */  swc1  $f4, 4($t7)
/* 1357F0 80151460 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 1357F4 80151464 8C78004C */  lw    $t8, 0x4c($v1)
/* 1357F8 80151468 E7060008 */  swc1  $f6, 8($t8)
/* 1357FC 8015146C C7A80028 */  lwc1  $f8, 0x28($sp)
/* 135800 80151470 8C79004C */  lw    $t9, 0x4c($v1)
/* 135804 80151474 10000006 */  b     .L80151490_ovl6
/* 135808 80151478 E728000C */   swc1  $f8, 0xc($t9)
.L8015147C_ovl6:
/* 13580C 8015147C 10000004 */  b     .L80151490_ovl6
/* 135810 80151480 AC470048 */   sw    $a3, 0x48($v0)
.L80151484_ovl6:
/* 135814 80151484 00E02025 */  move  $a0, $a3
/* 135818 80151488 0C02C3CA */  jal   D_800B0F28_ovl6
/* 13581C 8015148C 8FA60040 */   lw    $a2, 0x40($sp)
.L80151490_ovl6:
/* 135820 80151490 8FBF0014 */  lw    $ra, 0x14($sp)
/* 135824 80151494 27BD0038 */  addiu $sp, $sp, 0x38
/* 135828 80151498 03E00008 */  jr    $ra
/* 13582C 8015149C 00000000 */   nop   
