glabel func_801727D8_ovl3
/* 0D3218 801727D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D321C 801727DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D3220 801727E0 3C018013 */  lui   $at, %hi(D_8012E7F0) # $at, 0x8013
/* 0D3224 801727E4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0D3228 801727E8 0C0473D6 */  jal   func_8011CF58
/* 0D322C 801727EC AC20E7F0 */   sw    $zero, %lo(D_8012E7F0)($at)
/* 0D3230 801727F0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D3234 801727F4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D3238 801727F8 3C01800E */  lui   $at, 0x800e
/* 0D323C 801727FC 240E000E */  li    $t6, 14
/* 0D3240 80172800 8C4F0000 */  lw    $t7, ($v0)
/* 0D3244 80172804 44802000 */  mtc1  $zero, $f4
/* 0D3248 80172808 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D324C 8017280C 000FC080 */  sll   $t8, $t7, 2
/* 0D3250 80172810 00380821 */  addu  $at, $at, $t8
/* 0D3254 80172814 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 0D3258 80172818 8C590000 */  lw    $t9, ($v0)
/* 0D325C 8017281C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D3260 80172820 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 0D3264 80172824 00194080 */  sll   $t0, $t9, 2
/* 0D3268 80172828 00A84821 */  addu  $t1, $a1, $t0
/* 0D326C 8017282C E5240000 */  swc1  $f4, ($t1)
/* 0D3270 80172830 8C430000 */  lw    $v1, ($v0)
/* 0D3274 80172834 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 0D3278 80172838 3C018019 */  lui   $at, %hi(D_8019741C) # $at, 0x8019
/* 0D327C 8017283C 00031880 */  sll   $v1, $v1, 2
/* 0D3280 80172840 00A35021 */  addu  $t2, $a1, $v1
/* 0D3284 80172844 C5460000 */  lwc1  $f6, ($t2)
/* 0D3288 80172848 00C35821 */  addu  $t3, $a2, $v1
/* 0D328C 8017284C 3C07800E */  lui   $a3, %hi(D_800E3C90) # $a3, 0x800e
/* 0D3290 80172850 E5660000 */  swc1  $f6, ($t3)
/* 0D3294 80172854 8C4C0000 */  lw    $t4, ($v0)
/* 0D3298 80172858 C428741C */  lwc1  $f8, %lo(D_8019741C)($at)
/* 0D329C 8017285C 24E73C90 */  addiu $a3, %lo(D_800E3C90) # addiu $a3, $a3, 0x3c90
/* 0D32A0 80172860 000C6880 */  sll   $t5, $t4, 2
/* 0D32A4 80172864 00ED7821 */  addu  $t7, $a3, $t5
/* 0D32A8 80172868 E5E80000 */  swc1  $f8, ($t7)
/* 0D32AC 8017286C 8C430000 */  lw    $v1, ($v0)
/* 0D32B0 80172870 3C0E800F */  lui   $t6, 0x800f
/* 0D32B4 80172874 3C19800E */  lui   $t9, %hi(D_800E64D0) # $t9, 0x800e
/* 0D32B8 80172878 00031880 */  sll   $v1, $v1, 2
/* 0D32BC 8017287C 01C37021 */  addu  $t6, $t6, $v1
/* 0D32C0 80172880 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 0D32C4 80172884 273964D0 */  addiu $t9, %lo(D_800E64D0) # addiu $t9, $t9, 0x64d0
/* 0D32C8 80172888 00792021 */  addu  $a0, $v1, $t9
/* 0D32CC 8017288C 31D80006 */  andi  $t8, $t6, 6
/* 0D32D0 80172890 1300002D */  beqz  $t8, .L80172948_ovl3
/* 0D32D4 80172894 3C014040 */   lui   $at, 0x4040
/* 0D32D8 80172898 3C19800E */  lui   $t9, %hi(D_800E64D0) # $t9, 0x800e
/* 0D32DC 8017289C 273964D0 */  addiu $t9, %lo(D_800E64D0) # addiu $t9, $t9, 0x64d0
/* 0D32E0 801728A0 00792021 */  addu  $a0, $v1, $t9
/* 0D32E4 801728A4 C4800000 */  lwc1  $f0, ($a0)
/* 0D32E8 801728A8 44805000 */  mtc1  $zero, $f10
/* 0D32EC 801728AC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0D32F0 801728B0 460A003C */  c.lt.s $f0, $f10
/* 0D32F4 801728B4 00000000 */  nop   
/* 0D32F8 801728B8 45020004 */  bc1fl .L801728CC_ovl3
/* 0D32FC 801728BC 46000086 */   mov.s $f2, $f0
/* 0D3300 801728C0 10000002 */  b     .L801728CC_ovl3
/* 0D3304 801728C4 46000087 */   neg.s $f2, $f0
/* 0D3308 801728C8 46000086 */  mov.s $f2, $f0
.L801728CC_ovl3:
/* 0D330C 801728CC 44810000 */  mtc1  $at, $f0
/* 0D3310 801728D0 3C01800E */  lui   $at, 0x800e
/* 0D3314 801728D4 00230821 */  addu  $at, $at, $v1
/* 0D3318 801728D8 4600103C */  c.lt.s $f2, $f0
/* 0D331C 801728DC 00000000 */  nop   
/* 0D3320 801728E0 4502000B */  bc1fl .L80172910_ovl3
/* 0D3324 801728E4 3C0140C0 */   lui   $at, %hi(D_40C06A10) # $at, 0x40c0
/* 0D3328 801728E8 C4306A10 */  lwc1  $f16, %lo(D_40C06A10)($at)
/* 0D332C 801728EC 3C01800E */  lui   $at, 0x800e
/* 0D3330 801728F0 E4900000 */  swc1  $f16, ($a0)
/* 0D3334 801728F4 8C480000 */  lw    $t0, ($v0)
/* 0D3338 801728F8 00084880 */  sll   $t1, $t0, 2
/* 0D333C 801728FC 00290821 */  addu  $at, $at, $t1
/* 0D3340 80172900 E4206850 */  swc1  $f0, 0x6850($at)
/* 0D3344 80172904 8C430000 */  lw    $v1, ($v0)
/* 0D3348 80172908 00031880 */  sll   $v1, $v1, 2
/* 0D334C 8017290C 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
.L80172910_ovl3:
/* 0D3350 80172910 44810000 */  mtc1  $at, $f0
/* 0D3354 80172914 00C35021 */  addu  $t2, $a2, $v1
/* 0D3358 80172918 3C018019 */  li    $at, 0x80190000 # -0.000000
/* 0D335C 8017291C E5400000 */  swc1  $f0, ($t2)
/* 0D3360 80172920 8C4B0000 */  lw    $t3, ($v0)
/* 0D3364 80172924 C4327420 */  lwc1  $f18, %lo(D_80197420)($at)
/* 0D3368 80172928 000B6080 */  sll   $t4, $t3, 2
/* 0D336C 8017292C 00AC6821 */  addu  $t5, $a1, $t4
/* 0D3370 80172930 E5B20000 */  swc1  $f18, ($t5)
/* 0D3374 80172934 8C4F0000 */  lw    $t7, ($v0)
/* 0D3378 80172938 000F7080 */  sll   $t6, $t7, 2
/* 0D337C 8017293C 00EEC021 */  addu  $t8, $a3, $t6
/* 0D3380 80172940 1000002C */  b     .L801729F4_ovl3
/* 0D3384 80172944 E7000000 */   swc1  $f0, ($t8)
.L80172948_ovl3:
/* 0D3388 80172948 C4800000 */  lwc1  $f0, ($a0)
/* 0D338C 8017294C 44802000 */  mtc1  $zero, $f4
/* 0D3390 80172950 00000000 */  nop   
/* 0D3394 80172954 4604003C */  c.lt.s $f0, $f4
/* 0D3398 80172958 00000000 */  nop   
/* 0D339C 8017295C 45020004 */  bc1fl .L80172970_ovl3
/* 0D33A0 80172960 46000086 */   mov.s $f2, $f0
/* 0D33A4 80172964 10000002 */  b     .L80172970_ovl3
/* 0D33A8 80172968 46000087 */   neg.s $f2, $f0
/* 0D33AC 8017296C 46000086 */  mov.s $f2, $f0
.L80172970_ovl3:
/* 0D33B0 80172970 44810000 */  mtc1  $at, $f0
/* 0D33B4 80172974 3C01800E */  lui   $at, 0x800e
/* 0D33B8 80172978 00230821 */  addu  $at, $at, $v1
/* 0D33BC 8017297C 4600103C */  c.lt.s $f2, $f0
/* 0D33C0 80172980 00000000 */  nop   
/* 0D33C4 80172984 4502000C */  bc1fl .L801729B8_ovl3
/* 0D33C8 80172988 3C014110 */   lui   $at, %hi(D_41106A10) # $at, 0x4110
/* 0D33CC 8017298C C4266A10 */  lwc1  $f6, %lo(D_41106A10)($at)
/* 0D33D0 80172990 3C01800E */  lui   $at, 0x800e
/* 0D33D4 80172994 46003202 */  mul.s $f8, $f6, $f0
/* 0D33D8 80172998 E4880000 */  swc1  $f8, ($a0)
/* 0D33DC 8017299C 8C480000 */  lw    $t0, ($v0)
/* 0D33E0 801729A0 00084880 */  sll   $t1, $t0, 2
/* 0D33E4 801729A4 00290821 */  addu  $at, $at, $t1
/* 0D33E8 801729A8 E4206850 */  swc1  $f0, 0x6850($at)
/* 0D33EC 801729AC 8C430000 */  lw    $v1, ($v0)
/* 0D33F0 801729B0 00031880 */  sll   $v1, $v1, 2
/* 0D33F4 801729B4 3C014110 */  li    $at, 0x41100000 # 9.000000
.L801729B8_ovl3:
/* 0D33F8 801729B8 44815000 */  mtc1  $at, $f10
/* 0D33FC 801729BC 00C35021 */  addu  $t2, $a2, $v1
/* 0D3400 801729C0 3C018019 */  lui   $at, %hi(D_80197424) # $at, 0x8019
/* 0D3404 801729C4 E54A0000 */  swc1  $f10, ($t2)
/* 0D3408 801729C8 8C4B0000 */  lw    $t3, ($v0)
/* 0D340C 801729CC C4307424 */  lwc1  $f16, %lo(D_80197424)($at)
/* 0D3410 801729D0 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 0D3414 801729D4 000B6080 */  sll   $t4, $t3, 2
/* 0D3418 801729D8 00AC6821 */  addu  $t5, $a1, $t4
/* 0D341C 801729DC E5B00000 */  swc1  $f16, ($t5)
/* 0D3420 801729E0 8C4F0000 */  lw    $t7, ($v0)
/* 0D3424 801729E4 44819000 */  mtc1  $at, $f18
/* 0D3428 801729E8 000F7080 */  sll   $t6, $t7, 2
/* 0D342C 801729EC 00EEC021 */  addu  $t8, $a3, $t6
/* 0D3430 801729F0 E7120000 */  swc1  $f18, ($t8)
.L801729F4_ovl3:
/* 0D3434 801729F4 0C029D9E */  jal   func_800A7678
/* 0D3438 801729F8 240400EA */   li    $a0, 234
/* 0D343C 801729FC 3C040002 */  lui   $a0, (0x000200B3 >> 16) # lui $a0, 2
/* 0D3440 80172A00 3C050002 */  lui   $a1, (0x000200B4 >> 16) # lui $a1, 2
/* 0D3444 80172A04 34A500B4 */  ori   $a1, (0x000200B4 & 0xFFFF) # ori $a1, $a1, 0xb4
/* 0D3448 80172A08 348400B3 */  ori   $a0, (0x000200B3 & 0xFFFF) # ori $a0, $a0, 0xb3
/* 0D344C 80172A0C 0C048C3A */  jal   func_801230E8
/* 0D3450 80172A10 24060001 */   li    $a2, 1
/* 0D3454 80172A14 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0D3458 80172A18 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0D345C 80172A1C 8C590030 */  lw    $t9, 0x30($v0)
/* 0D3460 80172A20 27280001 */  addiu $t0, $t9, 1
/* 0D3464 80172A24 0C02BE85 */  jal   func_800AFA14
/* 0D3468 80172A28 AC480030 */   sw    $t0, 0x30($v0)
/* 0D346C 80172A2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D3470 80172A30 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D3474 80172A34 03E00008 */  jr    $ra
/* 0D3478 80172A38 00000000 */   nop   
