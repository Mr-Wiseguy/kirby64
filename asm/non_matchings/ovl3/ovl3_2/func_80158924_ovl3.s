glabel func_80158924_ovl3
/* 0B9364 80158924 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B9368 80158928 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B936C 8015892C AFB00018 */  sw    $s0, 0x18($sp)
/* 0B9370 80158930 0C0473D6 */  jal   func_8011CF58
/* 0B9374 80158934 AFA40020 */   sw    $a0, 0x20($sp)
/* 0B9378 80158938 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0B937C 8015893C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0B9380 80158940 3C01800E */  lui   $at, 0x800e
/* 0B9384 80158944 240E0049 */  li    $t6, 73
/* 0B9388 80158948 8C4F0000 */  lw    $t7, ($v0)
/* 0B938C 8015894C 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0B9390 80158950 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0B9394 80158954 000FC080 */  sll   $t8, $t7, 2
/* 0B9398 80158958 00380821 */  addu  $at, $at, $t8
/* 0B939C 8015895C AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 0B93A0 80158960 8C590000 */  lw    $t9, ($v0)
/* 0B93A4 80158964 C6040148 */  lwc1  $f4, 0x148($s0)
/* 0B93A8 80158968 3C01800F */  lui   $at, 0x800f
/* 0B93AC 8015896C 00194080 */  sll   $t0, $t9, 2
/* 0B93B0 80158970 00280821 */  addu  $at, $at, $t0
/* 0B93B4 80158974 8FA40020 */  lw    $a0, 0x20($sp)
/* 0B93B8 80158978 0C055F17 */  jal   func_80157C5C_ovl3
/* 0B93BC 8015897C E424A6E0 */   swc1  $f4, -0x5920($at)
/* 0B93C0 80158980 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0B93C4 80158984 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0B93C8 80158988 3C0C800E */  lui   $t4, 0x800e
/* 0B93CC 8015898C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0B93D0 80158990 8C4A0000 */  lw    $t2, ($v0)
/* 0B93D4 80158994 44810000 */  mtc1  $at, $f0
/* 0B93D8 80158998 3C01800F */  lui   $at, 0x800f
/* 0B93DC 8015899C 000A5880 */  sll   $t3, $t2, 2
/* 0B93E0 801589A0 018B6021 */  addu  $t4, $t4, $t3
/* 0B93E4 801589A4 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 0B93E8 801589A8 24090001 */  li    $t1, 1
/* 0B93EC 801589AC 3C040002 */  lui   $a0, (0x00020141 >> 16) # lui $a0, 2
/* 0B93F0 801589B0 000C6880 */  sll   $t5, $t4, 2
/* 0B93F4 801589B4 002D0821 */  addu  $at, $at, $t5
/* 0B93F8 801589B8 AC2998E0 */  sw    $t1, -0x6720($at)
/* 0B93FC 801589BC AE000044 */  sw    $zero, 0x44($s0)
/* 0B9400 801589C0 8C4F0000 */  lw    $t7, ($v0)
/* 0B9404 801589C4 3C01800E */  lui   $at, 0x800e
/* 0B9408 801589C8 3C050002 */  lui   $a1, (0x00020142 >> 16) # lui $a1, 2
/* 0B940C 801589CC 000F7080 */  sll   $t6, $t7, 2
/* 0B9410 801589D0 002E0821 */  addu  $at, $at, $t6
/* 0B9414 801589D4 E42064D0 */  swc1  $f0, 0x64d0($at)
/* 0B9418 801589D8 8C580000 */  lw    $t8, ($v0)
/* 0B941C 801589DC 3C013F20 */  li    $at, 0x3F200000 # 0.625000
/* 0B9420 801589E0 44813000 */  mtc1  $at, $f6
/* 0B9424 801589E4 3C01800E */  lui   $at, 0x800e
/* 0B9428 801589E8 0018C880 */  sll   $t9, $t8, 2
/* 0B942C 801589EC 00390821 */  addu  $at, $at, $t9
/* 0B9430 801589F0 E4266690 */  swc1  $f6, 0x6690($at)
/* 0B9434 801589F4 8C480000 */  lw    $t0, ($v0)
/* 0B9438 801589F8 3C01800E */  lui   $at, 0x800e
/* 0B943C 801589FC 34A50142 */  ori   $a1, (0x00020142 & 0xFFFF) # ori $a1, $a1, 0x142
/* 0B9440 80158A00 00085080 */  sll   $t2, $t0, 2
/* 0B9444 80158A04 002A0821 */  addu  $at, $at, $t2
/* 0B9448 80158A08 34840141 */  ori   $a0, (0x00020141 & 0xFFFF) # ori $a0, $a0, 0x141
/* 0B944C 80158A0C 00003025 */  move  $a2, $zero
/* 0B9450 80158A10 0C048C3A */  jal   func_801230E8
/* 0B9454 80158A14 E4206850 */   swc1  $f0, 0x6850($at)
/* 0B9458 80158A18 8E0B0044 */  lw    $t3, 0x44($s0)
/* 0B945C 80158A1C 15600006 */  bnez  $t3, .L80158A38_ovl3
/* 0B9460 80158A20 00000000 */   nop   
.L80158A24_ovl3:
/* 0B9464 80158A24 0C002DAF */  jal   func_8000B6BC
/* 0B9468 80158A28 24040001 */   li    $a0, 1
/* 0B946C 80158A2C 8E0C0044 */  lw    $t4, 0x44($s0)
/* 0B9470 80158A30 1180FFFC */  beqz  $t4, .L80158A24_ovl3
/* 0B9474 80158A34 00000000 */   nop   
.L80158A38_ovl3:
/* 0B9478 80158A38 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0B947C 80158A3C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0B9480 80158A40 44800000 */  mtc1  $zero, $f0
/* 0B9484 80158A44 3C01800E */  lui   $at, 0x800e
/* 0B9488 80158A48 8C490000 */  lw    $t1, ($v0)
/* 0B948C 80158A4C 00096880 */  sll   $t5, $t1, 2
/* 0B9490 80158A50 002D0821 */  addu  $at, $at, $t5
/* 0B9494 80158A54 E42064D0 */  swc1  $f0, 0x64d0($at)
/* 0B9498 80158A58 8C4F0000 */  lw    $t7, ($v0)
/* 0B949C 80158A5C 3C01800E */  lui   $at, 0x800e
/* 0B94A0 80158A60 000F7080 */  sll   $t6, $t7, 2
/* 0B94A4 80158A64 002E0821 */  addu  $at, $at, $t6
/* 0B94A8 80158A68 E4206690 */  swc1  $f0, 0x6690($at)
/* 0B94AC 80158A6C 8C580000 */  lw    $t8, ($v0)
/* 0B94B0 80158A70 3C01800E */  lui   $at, 0x800e
/* 0B94B4 80158A74 0018C880 */  sll   $t9, $t8, 2
/* 0B94B8 80158A78 00390821 */  addu  $at, $at, $t9
/* 0B94BC 80158A7C 0C02BD02 */  jal   func_800AF408
/* 0B94C0 80158A80 E4206850 */   swc1  $f0, 0x6850($at)
/* 0B94C4 80158A84 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 0B94C8 80158A88 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 0B94CC 80158A8C 0C02BEED */  jal   func_800AFBB4
/* 0B94D0 80158A90 00002025 */   move  $a0, $zero
/* 0B94D4 80158A94 0C03EF87 */  jal   func_800FBE1C
/* 0B94D8 80158A98 00000000 */   nop   
/* 0B94DC 80158A9C 0C03E905 */  jal   func_800FA414
/* 0B94E0 80158AA0 24040003 */   li    $a0, 3
/* 0B94E4 80158AA4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0B94E8 80158AA8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0B94EC 80158AAC 3C01800E */  lui   $at, 0x800e
/* 0B94F0 80158AB0 44804000 */  mtc1  $zero, $f8
/* 0B94F4 80158AB4 8C480000 */  lw    $t0, ($v0)
/* 0B94F8 80158AB8 3C04800E */  lui   $a0, %hi(D_800E6D90) # $a0, 0x800e
/* 0B94FC 80158ABC 24846D90 */  addiu $a0, %lo(D_800E6D90) # addiu $a0, $a0, 0x6d90
/* 0B9500 80158AC0 00085080 */  sll   $t2, $t0, 2
/* 0B9504 80158AC4 002A0821 */  addu  $at, $at, $t2
/* 0B9508 80158AC8 AC205F90 */  sw    $zero, 0x5f90($at)
/* 0B950C 80158ACC 8C4B0000 */  lw    $t3, ($v0)
/* 0B9510 80158AD0 3C01800E */  lui   $at, 0x800e
/* 0B9514 80158AD4 000B6080 */  sll   $t4, $t3, 2
/* 0B9518 80158AD8 008C4821 */  addu  $t1, $a0, $t4
/* 0B951C 80158ADC E5280000 */  swc1  $f8, ($t1)
/* 0B9520 80158AE0 8C430000 */  lw    $v1, ($v0)
/* 0B9524 80158AE4 00031880 */  sll   $v1, $v1, 2
/* 0B9528 80158AE8 00836821 */  addu  $t5, $a0, $v1
/* 0B952C 80158AEC C5AA0000 */  lwc1  $f10, ($t5)
/* 0B9530 80158AF0 00230821 */  addu  $at, $at, $v1
/* 0B9534 80158AF4 0C02BE85 */  jal   func_800AFA14
/* 0B9538 80158AF8 E42A6BD0 */   swc1  $f10, 0x6bd0($at)
/* 0B953C 80158AFC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B9540 80158B00 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B9544 80158B04 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B9548 80158B08 03E00008 */  jr    $ra
/* 0B954C 80158B0C 00000000 */   nop   
