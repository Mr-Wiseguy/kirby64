glabel func_80115618
/* 09E088 80115618 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09E08C 8011561C AFBF001C */  sw    $ra, 0x1c($sp)
/* 09E090 80115620 AFB00018 */  sw    $s0, 0x18($sp)
/* 09E094 80115624 AFA40020 */  sw    $a0, 0x20($sp)
/* 09E098 80115628 8C8F0000 */  lw    $t7, ($a0)
/* 09E09C 8011562C 3C19800E */  lui   $t9, 0x800e
/* 09E0A0 80115630 3C098012 */  lui   $t1, %hi(D_80124E14) # $t1, 0x8012
/* 09E0A4 80115634 000FC040 */  sll   $t8, $t7, 1
/* 09E0A8 80115638 0338C821 */  addu  $t9, $t9, $t8
/* 09E0AC 8011563C 973977A0 */  lhu   $t9, 0x77a0($t9)
/* 09E0B0 80115640 25294E14 */  addiu $t1, %lo(D_80124E14) # addiu $t1, $t1, 0x4e14
/* 09E0B4 80115644 24040017 */  li    $a0, 23
/* 09E0B8 80115648 001940C0 */  sll   $t0, $t9, 3
/* 09E0BC 8011564C 01194023 */  subu  $t0, $t0, $t9
/* 09E0C0 80115650 00084080 */  sll   $t0, $t0, 2
/* 09E0C4 80115654 0C02BE60 */  jal   func_800AF980
/* 09E0C8 80115658 01098021 */   addu  $s0, $t0, $t1
/* 09E0CC 8011565C 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 09E0D0 80115660 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 09E0D4 80115664 8E040004 */  lw    $a0, 4($s0)
/* 09E0D8 80115668 0C02A619 */  jal   func_800A9864
/* 09E0DC 8011566C 24060010 */   li    $a2, 16
/* 09E0E0 80115670 0C02A806 */  jal   func_800AA018
/* 09E0E4 80115674 8E040008 */   lw    $a0, 8($s0)
/* 09E0E8 80115678 8E04000C */  lw    $a0, 0xc($s0)
/* 09E0EC 8011567C 10800003 */  beqz  $a0, .L8011568C_ovl2
/* 09E0F0 80115680 00000000 */   nop   
/* 09E0F4 80115684 0C02A806 */  jal   func_800AA018
/* 09E0F8 80115688 00000000 */   nop   
.L8011568C_ovl2:
/* 09E0FC 8011568C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 09E100 80115690 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 09E104 80115694 8CAB0000 */  lw    $t3, ($a1)
/* 09E108 80115698 8E0A0010 */  lw    $t2, 0x10($s0)
/* 09E10C 8011569C 3C01800E */  lui   $at, 0x800e
/* 09E110 801156A0 8D6C0000 */  lw    $t4, ($t3)
/* 09E114 801156A4 8FAE0020 */  lw    $t6, 0x20($sp)
/* 09E118 801156A8 000C6880 */  sll   $t5, $t4, 2
/* 09E11C 801156AC 002D0821 */  addu  $at, $at, $t5
/* 09E120 801156B0 AC2AEF90 */  sw    $t2, -0x1070($at)
/* 09E124 801156B4 9603001A */  lhu   $v1, 0x1a($s0)
/* 09E128 801156B8 10600017 */  beqz  $v1, .L80115718_ovl2
/* 09E12C 801156BC 00037880 */   sll   $t7, $v1, 2
/* 09E130 801156C0 8DC2004C */  lw    $v0, 0x4c($t6)
/* 09E134 801156C4 3C09800E */  lui   $t1, 0x800e
/* 09E138 801156C8 01E37823 */  subu  $t7, $t7, $v1
/* 09E13C 801156CC 90590003 */  lbu   $t9, 3($v0)
/* 09E140 801156D0 3C188012 */  lui   $t8, %hi(D_80126CD0) # $t8, 0x8012
/* 09E144 801156D4 27186CD0 */  addiu $t8, %lo(D_80126CD0) # addiu $t8, $t8, 0x6cd0
/* 09E148 801156D8 00194080 */  sll   $t0, $t9, 2
/* 09E14C 801156DC 01284821 */  addu  $t1, $t1, $t0
/* 09E150 801156E0 8D29E350 */  lw    $t1, -0x1cb0($t1)
/* 09E154 801156E4 000F7880 */  sll   $t7, $t7, 2
/* 09E158 801156E8 01F88021 */  addu  $s0, $t7, $t8
/* 09E15C 801156EC ACA90000 */  sw    $t1, ($a1)
/* 09E160 801156F0 0C02A806 */  jal   func_800AA018
/* 09E164 801156F4 8E040004 */   lw    $a0, 4($s0)
/* 09E168 801156F8 8E040008 */  lw    $a0, 8($s0)
/* 09E16C 801156FC 50800004 */  beql  $a0, $zero, .L80115710_ovl2
/* 09E170 80115700 8FAB0020 */   lw    $t3, 0x20($sp)
/* 09E174 80115704 0C02A806 */  jal   func_800AA018
/* 09E178 80115708 00000000 */   nop   
/* 09E17C 8011570C 8FAB0020 */  lw    $t3, 0x20($sp)
.L80115710_ovl2:
/* 09E180 80115710 3C018005 */  lui   $at, %hi(D_8004A7C4) # $at, 0x8005
/* 09E184 80115714 AC2BA7C4 */  sw    $t3, %lo(D_8004A7C4)($at)
.L80115718_ovl2:
/* 09E188 80115718 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09E18C 8011571C 8FB00018 */  lw    $s0, 0x18($sp)
/* 09E190 80115720 27BD0020 */  addiu $sp, $sp, 0x20
/* 09E194 80115724 03E00008 */  jr    $ra
/* 09E198 80115728 00000000 */   nop   
