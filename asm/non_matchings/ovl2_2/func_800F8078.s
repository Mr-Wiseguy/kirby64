glabel func_800F8078
/* 080AE8 800F8078 3C0E8013 */  lui   $t6, %hi(D_80129114) # $t6, 0x8013
/* 080AEC 800F807C 8DCE9114 */  lw    $t6, %lo(D_80129114)($t6)
/* 080AF0 800F8080 3C03800C */  lui   $v1, %hi(D_800BE50C) # $v1, 0x800c
/* 080AF4 800F8084 8C63E50C */  lw    $v1, %lo(D_800BE50C)($v1)
/* 080AF8 800F8088 8DCF0004 */  lw    $t7, 4($t6)
/* 080AFC 800F808C 3C07800C */  lui   $a3, %hi(D_800BE4FC) # $a3, 0x800c
/* 080B00 800F8090 24E7E4FC */  addiu $a3, %lo(D_800BE4FC) # addiu $a3, $a3, -0x1b04
/* 080B04 800F8094 8CE40000 */  lw    $a0, ($a3)
/* 080B08 800F8098 0003C100 */  sll   $t8, $v1, 4
/* 080B0C 800F809C 44802000 */  mtc1  $zero, $f4
/* 080B10 800F80A0 3C05800C */  lui   $a1, %hi(D_800BE510) # $a1, 0x800c
/* 080B14 800F80A4 3C06800C */  lui   $a2, %hi(D_800BE514) # $a2, 0x800c
/* 080B18 800F80A8 01F8C821 */  addu  $t9, $t7, $t8
/* 080B1C 800F80AC 24C6E514 */  addiu $a2, %lo(D_800BE514) # addiu $a2, $a2, -0x1aec
/* 080B20 800F80B0 24A5E510 */  addiu $a1, %lo(D_800BE510) # addiu $a1, $a1, -0x1af0
/* 080B24 800F80B4 8F220000 */  lw    $v0, ($t9)
/* 080B28 800F80B8 ACC00000 */  sw    $zero, ($a2)
/* 080B2C 800F80BC 10800008 */  beqz  $a0, .L800F80E0_ovl2
/* 080B30 800F80C0 E4A40000 */   swc1  $f4, ($a1)
/* 080B34 800F80C4 24080001 */  li    $t0, 1
/* 080B38 800F80C8 10880007 */  beq   $a0, $t0, .L800F80E8_ovl2
/* 080B3C 800F80CC 24090002 */   li    $t1, 2
/* 080B40 800F80D0 50890008 */  beql  $a0, $t1, .L800F80F4_ovl2
/* 080B44 800F80D4 90440003 */   lbu   $a0, 3($v0)
/* 080B48 800F80D8 10000021 */  b     .L800F8160_ovl2
/* 080B4C 800F80DC 844F000E */   lh    $t7, 0xe($v0)
.L800F80E0_ovl2:
/* 080B50 800F80E0 1000001E */  b     .L800F815C_ovl2
/* 080B54 800F80E4 ACE00000 */   sw    $zero, ($a3)
.L800F80E8_ovl2:
/* 080B58 800F80E8 1000001C */  b     .L800F815C_ovl2
/* 080B5C 800F80EC ACE80000 */   sw    $t0, ($a3)
/* 080B60 800F80F0 90440003 */  lbu   $a0, 3($v0)
.L800F80F4_ovl2:
/* 080B64 800F80F4 50800016 */  beql  $a0, $zero, .L800F8150_ovl2
/* 080B68 800F80F8 8CCC0000 */   lw    $t4, ($a2)
/* 080B6C 800F80FC 10880008 */  beq   $a0, $t0, .L800F8120_ovl2
/* 080B70 800F8100 3C013F80 */   lui   $at, 0x3f80
/* 080B74 800F8104 1089000B */  beq   $a0, $t1, .L800F8134_ovl2
/* 080B78 800F8108 3C0B8000 */   lui   $t3, 0x8000
/* 080B7C 800F810C 24010003 */  li    $at, 3
/* 080B80 800F8110 5081000B */  beql  $a0, $at, .L800F8140_ovl2
/* 080B84 800F8114 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 080B88 800F8118 1000000D */  b     .L800F8150_ovl2
/* 080B8C 800F811C 8CCC0000 */   lw    $t4, ($a2)
.L800F8120_ovl2:
/* 080B90 800F8120 44813000 */  mtc1  $at, $f6
/* 080B94 800F8124 3C0A8000 */  lui   $t2, 0x8000
/* 080B98 800F8128 ACCA0000 */  sw    $t2, ($a2)
/* 080B9C 800F812C 10000007 */  b     .L800F814C_ovl2
/* 080BA0 800F8130 E4A60000 */   swc1  $f6, ($a1)
.L800F8134_ovl2:
/* 080BA4 800F8134 10000005 */  b     .L800F814C_ovl2
/* 080BA8 800F8138 ACCB0000 */   sw    $t3, ($a2)
/* 080BAC 800F813C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
.L800F8140_ovl2:
/* 080BB0 800F8140 44814000 */  mtc1  $at, $f8
/* 080BB4 800F8144 00000000 */  nop   
/* 080BB8 800F8148 E4A80000 */  swc1  $f8, ($a1)
.L800F814C_ovl2:
/* 080BBC 800F814C 8CCC0000 */  lw    $t4, ($a2)
.L800F8150_ovl2:
/* 080BC0 800F8150 904D0002 */  lbu   $t5, 2($v0)
/* 080BC4 800F8154 018D7025 */  or    $t6, $t4, $t5
/* 080BC8 800F8158 ACCE0000 */  sw    $t6, ($a2)
.L800F815C_ovl2:
/* 080BCC 800F815C 844F000E */  lh    $t7, 0xe($v0)
.L800F8160_ovl2:
/* 080BD0 800F8160 3C01800C */  lui   $at, %hi(D_800BE518) # $at, 0x800c
/* 080BD4 800F8164 31F80004 */  andi  $t8, $t7, 4
/* 080BD8 800F8168 1700000C */  bnez  $t8, .L800F819C_ovl2
/* 080BDC 800F816C 00000000 */   nop   
/* 080BE0 800F8170 8CF90000 */  lw    $t9, ($a3)
/* 080BE4 800F8174 3C0A800C */  lui   $t2, %hi(D_800BE508) # $t2, 0x800c
/* 080BE8 800F8178 8D4AE508 */  lw    $t2, %lo(D_800BE508)($t2)
/* 080BEC 800F817C AC39E518 */  sw    $t9, %lo(D_800BE518)($at)
/* 080BF0 800F8180 3C01800C */  lui   $at, %hi(D_800BE51C) # $at, 0x800c
/* 080BF4 800F8184 AC2AE51C */  sw    $t2, %lo(D_800BE51C)($at)
/* 080BF8 800F8188 3C01800C */  lui   $at, %hi(D_800BE520) # $at, 0x800c
/* 080BFC 800F818C AC23E520 */  sw    $v1, %lo(D_800BE520)($at)
/* 080C00 800F8190 C4AA0000 */  lwc1  $f10, ($a1)
/* 080C04 800F8194 3C01800C */  lui   $at, %hi(D_800BE524) # $at, 0x800c
/* 080C08 800F8198 E42AE524 */  swc1  $f10, %lo(D_800BE524)($at)
.L800F819C_ovl2:
/* 080C0C 800F819C 03E00008 */  jr    $ra
/* 080C10 800F81A0 00000000 */   nop   
