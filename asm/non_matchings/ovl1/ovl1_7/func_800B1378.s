glabel func_800B1378
/* 0595C8 800B1378 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0595CC 800B137C 44866000 */  mtc1  $a2, $f12
/* 0595D0 800B1380 2401FFFE */  li    $at, -2
/* 0595D4 800B1384 10A1000F */  beq   $a1, $at, .L800B13C4_ovl1
/* 0595D8 800B1388 AFBF0014 */   sw    $ra, 0x14($sp)
/* 0595DC 800B138C 2401FFFF */  li    $at, -1
/* 0595E0 800B1390 14A10018 */  bne   $a1, $at, .L800B13F4_ovl1
/* 0595E4 800B1394 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0595E8 800B1398 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0595EC 800B139C 3C19800E */  lui   $t9, %hi(D_800DD8D0) # $t9, 0x800e
/* 0595F0 800B13A0 2739D8D0 */  addiu $t9, %lo(D_800DD8D0) # addiu $t9, $t9, -0x2730
/* 0595F4 800B13A4 8DCF0000 */  lw    $t7, ($t6)
/* 0595F8 800B13A8 3C014000 */  lui   $at, 0x4000
/* 0595FC 800B13AC 000FC080 */  sll   $t8, $t7, 2
/* 059600 800B13B0 03191021 */  addu  $v0, $t8, $t9
/* 059604 800B13B4 8C480000 */  lw    $t0, ($v0)
/* 059608 800B13B8 01014825 */  or    $t1, $t0, $at
/* 05960C 800B13BC 10000019 */  b     .L800B1424_ovl1
/* 059610 800B13C0 AC490000 */   sw    $t1, ($v0)
.L800B13C4_ovl1:
/* 059614 800B13C4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 059618 800B13C8 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 05961C 800B13CC 3C0D800E */  lui   $t5, %hi(D_800DD8D0) # $t5, 0x800e
/* 059620 800B13D0 25ADD8D0 */  addiu $t5, %lo(D_800DD8D0) # addiu $t5, $t5, -0x2730
/* 059624 800B13D4 8D4B0000 */  lw    $t3, ($t2)
/* 059628 800B13D8 3C018000 */  lui   $at, 0x8000
/* 05962C 800B13DC 000B6080 */  sll   $t4, $t3, 2
/* 059630 800B13E0 018D1021 */  addu  $v0, $t4, $t5
/* 059634 800B13E4 8C4E0000 */  lw    $t6, ($v0)
/* 059638 800B13E8 01C17825 */  or    $t7, $t6, $at
/* 05963C 800B13EC 1000000D */  b     .L800B1424_ovl1
/* 059640 800B13F0 AC4F0000 */   sw    $t7, ($v0)
.L800B13F4_ovl1:
/* 059644 800B13F4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 059648 800B13F8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 05964C 800B13FC 3C02800E */ lui $v0, %hi(D_800DF310)
/* 059650 800B1400 8F190000 */  lw    $t9, ($t8)
/* 059654 800B1404 00194080 */  sll   $t0, $t9, 2
/* 059658 800B1408 00481021 */  addu  $v0, $v0, $t0
/* 05965C 800B140C 8C42F310 */ lw $v0, %lo(D_800DF310)($v0)
/* 059660 800B1410 50400005 */  beql  $v0, $zero, .L800B1428_ovl1
/* 059664 800B1414 8FBF0014 */   lw    $ra, 0x14($sp)
/* 059668 800B1418 44066000 */  mfc1  $a2, $f12
/* 05966C 800B141C 0040F809 */  jalr  $v0
/* 059670 800B1420 00000000 */  nop   
.L800B1424_ovl1:
/* 059674 800B1424 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B1428_ovl1:
/* 059678 800B1428 27BD0018 */  addiu $sp, $sp, 0x18
/* 05967C 800B142C 03E00008 */  jr    $ra
/* 059680 800B1430 00000000 */   nop   
