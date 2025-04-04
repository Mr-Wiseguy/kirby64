#include <ultra64.h>
#include <macros.h>
#include <types.h>
#include "ovl0_2_5.h"
#include "ovl0_2.h"

struct Controller {
    u16 buttonHeld;
    u16 buttonPressed;
    u16 bufferedButtonPressed;
    u16 buttonHeldLong;
    u16 bufferedButtonHeldLong;
    u16 buttonReleased;
    u16 bufferedButtonReleased;
    s8 stick_x;
    s8 stick_y;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    u8 errno;
    u8 status;
};

struct UnkStruct80048F60 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
};

struct UnkStruct80048FC0 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    u32 unk3C;
    u32 unk40;
};

struct UnkStruct800490D0 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    s8 unk10;
    s8 unk11;
    s8 unk12;
    s8 unk13;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
};

// bss

OSMesgQueue sSIMesgQueue; // 0x80048DA0
OSMesg D_80048DB8; // 0x80048DB8
// 0x80048DBC? bss file boundary? lines up with function alignment
struct UnkStruct800009E8 D_80048DC0;
OSMesg D_80048DC8[7];
// 0x80048DE4?
OSMesgQueue D_80048DE8;
OSMesg D_80048E00[4];
OSMesgQueue D_80048E10;
OSMesg D_80048E28[4];
OSMesgQueue D_80048E38;
OSMesg D_80048E50;
// 0x80048E54?
OSMesgQueue D_80048E58;
OSContStatus sControllerStatuses[MAXCONTROLLERS]; // 0x80048E70
OSContPad sContPads[MAXCONTROLLERS]; // 0x80048E80
s32 D_80048E98; // num controllers? // 0x80048E98
s8 D_80048E9C[MAXCONTROLLERS]; // 0x80048E9C
struct Controller gControllers[MAXCONTROLLERS]; // 0x80048EA0
Controller_800D6FE8 D_80048F20[MAXCONTROLLERS]; // 0x80048F20
s32 D_80048F48; // 0x80048F48
s32 D_80048F4C; // 0x80048F4C
s32 D_80048F50; // 0x80048F50
s32 D_80048F54; // 0x80048F54
s32 D_80048F58; // 0x80048F58
// 0x80048F5C? bss file boundary? lines up with function alignment
struct UnkStruct80048F60 D_80048F60[4]; // 4 * 0x18
struct UnkStruct80048FC0 D_80048FC0[4]; // 4 * 0x44
struct UnkStruct800490D0 D_800490D0; // 0x20
OSPfs sPakDevices[MAXCONTROLLERS]; // 0x800490F0

// end bss, followed by ovl0_2_5.c

void func_80003DC0(void) {
    s32 port;

    for (port = 0; port < D_80048E98; port++)
    {
        if (gControllers[D_80048E9C[port]].errno == 0) {
            D_80048F20[port] = D_80048F20[D_80048E9C[port]];
        } else {
            D_80048F20[port].stickY = 0;
            D_80048F20[port].buttonHeldLong = 0;
            D_80048F20[port].buttonReleased = 0;
            D_80048F20[port].buttonPressed = 0;
            D_80048F20[port].buttonHeld = 0;
            D_80048F20[port].stickX = D_80048F20[port].stickY;
        }
    }
    for (; port < MAXCONTROLLERS; port++)
    {
        D_80048F20[port].buttonHeldLong = 0;
        D_80048F20[port].buttonReleased = 0;
        D_80048F20[port].buttonPressed = 0;
        D_80048F20[port].buttonHeld = 0;
        D_80048F20[port].stickX = D_80048F20[port].stickY = 0;
    }
}


void query_controllers(void) {
    s32 port;

    osContStartQuery(&sSIMesgQueue);
    osRecvMesg(&sSIMesgQueue, NULL, 1);
    osContGetQuery(sControllerStatuses);
    for (port = 0; port < MAXCONTROLLERS; port++)
    {
        if ((sControllerStatuses[port].errno == 0) && ((sControllerStatuses[port].status & 1) != 0)) {
            if (((gControllers[port].status & 1) == 0) || (gControllers[port].errno != 0)) {
                osMotorInit(&sSIMesgQueue, &sPakDevices[port], port);
            }
        }
        gControllers[port].errno = sControllerStatuses[port].errno;
        gControllers[port].status = sControllerStatuses[port].status;
    }
}

void read_controller_input(void) {
    s32 i;

    osContStartReadData(&sSIMesgQueue);
    osRecvMesg(&sSIMesgQueue, NULL, OS_MESG_BLOCK);
    osContGetReadData(sContPads);
    for (i = 0; i < MAXCONTROLLERS; i++)
    {
        if (!sContPads[i].errno && (sControllerStatuses[i].status & 1) && gControllers[i].errno) {
            osMotorInit(&sSIMesgQueue, &sPakDevices[i], i);
        }
        gControllers[i].errno = sContPads[i].errno;
        if (gControllers[i].errno == 0) {
            gControllers[i].buttonPressed = (sContPads[i].button ^ gControllers[i].buttonHeld) & sContPads[i].button;
            gControllers[i].buttonReleased = (sContPads[i].button ^ gControllers[i].buttonHeld) & gControllers[i].buttonHeld;
            if (sContPads[i].button ^ gControllers[i].buttonHeld) {
                gControllers[i].buttonHeldLong = gControllers[i].buttonPressed;
                gControllers[i].unk18 = gControllers[i].unk10;
            } else {
                gControllers[i].unk18--;
                if (gControllers[i].unk18 > 0) {
                    gControllers[i].buttonHeldLong = 0;
                } else {
                    gControllers[i].buttonHeldLong = sContPads[i].button;
                    gControllers[i].unk18 = gControllers[i].unk14;
                }
            }
            gControllers[i].buttonHeld = sContPads[i].button;
            gControllers[i].stick_x = sContPads[i].stick_x;
            gControllers[i].stick_y = sContPads[i].stick_y;
            gControllers[i].bufferedButtonPressed |= gControllers[i].buttonPressed;
            gControllers[i].bufferedButtonReleased |= gControllers[i].buttonReleased;
            gControllers[i].bufferedButtonHeldLong |= gControllers[i].buttonHeldLong;
        }
    }
    D_80048F48 = 1;
}

void func_800041A0() {
    s32 i = 0;

    for (i = 0; i != MAXCONTROLLERS; i++)
    {
        if (gControllers[i].errno == 0) {
            D_80048F20[i].buttonHeld = gControllers[i].buttonHeld;
            D_80048F20[i].buttonPressed = gControllers[i].bufferedButtonPressed;
            D_80048F20[i].buttonReleased = gControllers[i].bufferedButtonReleased;
            D_80048F20[i].buttonHeldLong = gControllers[i].bufferedButtonHeldLong;
            D_80048F20[i].stickX = gControllers[i].stick_x;            
            D_80048F20[i].stickY = gControllers[i].stick_y;
        } else {
            D_80048F20[i].buttonHeldLong = 0;
            D_80048F20[i].buttonReleased = 0;
            D_80048F20[i].buttonPressed = 0;
            D_80048F20[i].buttonHeld = 0;
            D_80048F20[i].stickX = D_80048F20[i].stickY = 0;
        }
        gControllers[i].bufferedButtonHeldLong = 0;
        gControllers[i].bufferedButtonReleased = 0;
        gControllers[i].bufferedButtonPressed = 0;
        if (i == 0) // Needed to match, may have been commented out code?
        {
        }
    }
    func_80003DC0();
    D_80048F48 = 0;
}

// might be a file boundary here based on bss

#ifdef a
s32 *func_80004250(void) {
    u8 sp43;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_s0_3;
    s32 i,j;

    osCreateMesgQueue(&sSIMesgQueue, &D_80048DB8, 1);
    osSetEventMesg(5, &sSIMesgQueue, 1);
    osContInit(&sSIMesgQueue, &sp43, sControllerStatuses);
    for (phi_s0 = 0; phi_s0 < MAXCONTROLLERS; phi_s0++)
    {
        if ((sControllerStatuses[phi_s0].status & 1) != 0) {
            osMotorInit(&sSIMesgQueue, &sPakDevices[phi_s0], phi_s0);
        }
    }

    osCreateMesgQueue(&D_80048E10, &D_80048E00, 4);
    for (phi_s0_2 = 0; phi_s0_2 < MAXCONTROLLERS; phi_s0_2++)
    {
        D_80048F60[phi_s0_2].unk8 = phi_s0_2;
        D_80048F60[phi_s0_2].unk0 = 0;
        D_80048F60[phi_s0_2].unk4 = 5;
        D_80048F60[phi_s0_2].unkC = &D_80048E10;
        // needs members to result in 0x18 in struct size
    }

    osCreateMesgQueue(&D_80048E38, &D_80048E28, 4);
    for (phi_s0_3 = 0; phi_s0_3 < MAXCONTROLLERS; phi_s0_3++)
    {
        D_80048FC0[phi_s0_3].unk8 = phi_s0_3;
        D_80048FC0[phi_s0_3].unk0 = 0;
        D_80048FC0[phi_s0_3].unk4 = 0xA;
        D_80048FC0[phi_s0_3].unkC = &D_80048E38;
        // needs members to result in 0x44 in struct size
    }

    osCreateMesgQueue(&D_80048E58, &D_80048E50, 1);
    D_800490D0.unk0 = 0;
    D_800490D0.unk4 = 0xB;
    D_800490D0.unk8 = phi_s0_3;
    D_800490D0.unkC = &D_80048E58;
    // seems to be 0x20 in size

    for (i = 0; i < MAXCONTROLLERS; i++)
    {
        gControllers[i].stick_y = 0;
        D_80048F20[i].stickY = 0;
        sContPads[i].button = 0;
        gControllers[i].buttonHeldLong = 0;
        gControllers[i].buttonPressed = 0;
        gControllers[i].buttonHeld = 0;
        gControllers[i].unk18 = 30;
        gControllers[i].unk10 = 30;
        gControllers[i].unk14 = 5;
        D_80048F20[i].buttonHeldLong = 0;
        D_80048F20[i].buttonPressed = 0;
        D_80048F20[i].buttonHeld = 0;
        gControllers[i].stick_x = gControllers[i].stick_y;
        gControllers[i].errno = sControllerStatuses[i].errno;
        gControllers[i].status = sControllerStatuses[i].status;
        D_80048F20[i].stickX = D_80048F20[i].stickY;
    }

    D_80048E98 = 0;
    D_80048E9C[0] = -1;
    if (gControllers[0].errno == 0) {
        D_80048E9C[D_80048E98] = 0;
        D_80048E98++;
    }
    D_80048E9C[1] = -1;
    if (gControllers[1].errno == 0) {
        D_80048E9C[D_80048E98] = 1;
        D_80048E98++;
    }
    D_80048E9C[2] = -1;
    if (gControllers[2].errno == 0) {
        D_80048E9C[D_80048E98] = 2;
        D_80048E98++;
    }
    D_80048E9C[3] = -1;
    if (gControllers[3].errno == 0) {
        D_80048E9C[D_80048E98] = 3;
        D_80048E98++;
    }
    D_80048F48 = 0;
    D_80048F4C = NULL;
    D_80048F50 = 1;
    D_80048F54 = 1;
    D_80048F58 = 1;
    D_8004929A = 0;
    D_80049298 = 0;
    D_8004929C = 0;
    D_8004929E = 0;
    D_800492A0 = 0;
    D_800492A1 = 0;
    return &D_80048F54;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004250.s")
#endif

#ifdef MIPS_TO_C
void func_800045C0(void *arg0) {
    ? sp34;
    ? sp1C;

    arg0 = arg0;
    osCreateMesgQueue(&sp1C, &sp34, 1);
    arg0->unk4 = 1;
    arg0->unk8 = &sp1C;
    osSendMesg(&D_80048DE8, arg0, 1);
    osRecvMesg(&sp1C, NULL, 1);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_800045C0.s")
#endif

void func_80004624(void) {
    struct Ovl0_2_MessageType1 msg;

    msg.unk0 = 1;
    func_800045C0(&msg);
}

void func_8000464C(void) {
    struct Ovl0_2_MessageType2 msg;

    msg.unk0 = 2;
    func_800045C0(&msg);
}

void func_80004674(s32 arg0, s32 arg1) {
    struct Ovl0_2_MessageType3 msg;

    msg.unk0 = 3;
    msg.unkC = arg0;
    msg.unk10 = arg1;

    func_800045C0(&msg);
}

void func_800046A4(s32 arg0) {
    struct Ovl0_2_MessageType4 msg;

    msg.unk0 = 4;
    msg.unkC = arg0;

    func_800045C0(&msg);
}

void func_800046D0(s32 arg0) {
    struct Ovl0_2_MessageType6 msg;

    msg.unk0 = 6;
    msg.unkC = arg0;

    func_800045C0(&msg);
}

#ifdef MIPS_TO_C
void func_800046FC(s32 arg0, s32 arg1) {
    s32 sp1C;
    s32 temp_v1;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_v1_2;
    void *phi_v0_2;
    void *phi_v0_3;

    phi_v0 = &D_80048F60;
    phi_v1 = 0;
loop_1:
    phi_v1_2 = phi_v1;
    phi_v0_2 = phi_v0;
    if (*phi_v0 != 0) {
        temp_v1 = phi_v1 + 1;
        temp_v0 = phi_v0 + 0x18;
        phi_v0 = temp_v0;
        phi_v1 = temp_v1;
        phi_v1_2 = temp_v1;
        phi_v0_2 = temp_v0;
        if (temp_v1 < 4) {
            goto loop_1;
        }
    }
    sp1C = phi_v1_2;
    if (phi_v1_2 == 4) {
        osRecvMesg(&D_80048E10, &sp1C, 1);
        phi_v0_3 = (sp1C * 0x18) + &D_80048F60;
    } else {
        *phi_v0_2 = 1;
        phi_v0_3 = phi_v0_2;
    }
    phi_v0_3->unk10 = arg0;
    phi_v0_3->unk14 = arg1;
    osSendMesg(&D_80048DE8, phi_v0_3 + 4, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_800046FC.s")
#endif

void func_800047B0(s32 arg0) {
    func_800046FC(arg0, 1);
}

void func_800047D0(s32 arg0) {
    func_800046FC(arg0, 2);
}

void func_800047F0(s32 arg0) {
    func_800046FC(arg0, 0);
}

struct Unk_Func8004810 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    u16 unk14;
    u16 unk16;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    s32 unk3C;
};

#ifdef NEEDS_RODATA
void func_80004810(struct Unk_Func8004810 *arg0) {
    arg0->unk3C = func_80035D30(&sSIMesgQueue, &sPakDevices[arg0->unkC][0], arg0->unkC);
    if (arg0->unk3C == 0) {
        switch (arg0->unk10) {
        // temp_t7 = arg0->unk10;
        // if (temp_t7 < 5) {
        //     goto **(&jtbl_8003FF30 + (temp_t7 * 4));
            case 0:
                arg0->unk3C = func_800320D0(&sPakDevices[arg0->unkC], arg0->unk14, arg0->unk18, arg0->unk1C, arg0->unk20, arg0->unk28);
                break;
            case 1:
                arg0->unk3C = func_800350F0(&sPakDevices[arg0->unkC], arg0->unk14, arg0->unk18, arg0->unk1C, arg0->unk20);
                break;
            case 2:
                arg0->unk3C = func_80030DF0(&sPakDevices[arg0->unkC] arg0->unk14, arg0->unk18, arg0->unk1C, arg0->unk20, arg0->unk24, arg0->unk28);
                break;
            case 3:
                arg0->unk3C = func_80030794(&sPakDevices[arg0->unkC], arg0->unk2C, 0, arg0->unk30, arg0->unk34, arg0->unk38);
                break;
            case 4:
                arg0->unk3C = func_80030794(&sPakDevices[arg0->unkC], arg0->unk2C, 1, arg0->unk30, arg0->unk34, arg0->unk38);
                break;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004810.s")
#endif

#ifdef MIPS_TO_C
s32 func_800049BC(s32 arg0, ?32 arg1, ?32 arg2, ?32 arg3, s32 arg4) {
    ? sp1C;

    D_80048FC0.unk10 = arg0;
    D_80048FC0.unk30 = arg1;
    D_80048FC0.unk34 = arg2;
    D_80048FC0.unk14 = 4;
    D_80048FC0.unk38 = arg3;
    D_80048FC0.unk3C = arg4;
    osSendMesg(&D_80048DE8, &D_80048FC4, 0);
    osRecvMesg(&D_80048E38, &sp1C, 1);
    return D_80048FC0.unk40;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_800049BC.s")
#endif

#ifdef MIPS_TO_C
s32 func_80004A3C(s32 arg0, ?32 arg1, ?32 arg2, ?32 arg3, s32 arg4) {
    ? sp1C;

    D_80048FC0.unk10 = arg0;
    D_80048FC0.unk30 = arg1;
    D_80048FC0.unk34 = arg2;
    D_80048FC0.unk14 = 3;
    D_80048FC0.unk38 = arg3;
    D_80048FC0.unk3C = arg4;
    osSendMesg(&D_80048DE8, &D_80048FC4, 0);
    osRecvMesg(&D_80048E38, &sp1C, 1);
    return D_80048FC0.unk40;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004A3C.s")
#endif

#ifdef MIPS_TO_C
s32 func_80004ABC(s32 arg0, u16 arg1, ?32 arg2, ?32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    ? sp1C;

    D_80048FC0.unk10 = arg0;
    D_80048FC0.unk1C = arg2;
    D_80048FC0.unk14 = 2;
    D_80048FC0.unk20 = arg3;
    D_80048FC0.unk18 = arg1;
    D_80048FC0.unk24 = arg4;
    D_80048FC0.unk28 = arg5;
    D_80048FC0.unk2C = arg6;
    osSendMesg(&D_80048DE8, &D_80048FC4, 0);
    osRecvMesg(&D_80048E38, &sp1C, 1);
    return D_80048FC0.unk40;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004ABC.s")
#endif

#ifdef MIPS_TO_C
s32 func_80004B50(s32 arg0, u16 arg1, ?32 arg2, ?32 arg3, s32 arg4) {
    ? sp1C;

    D_80048FC0.unk10 = arg0;
    D_80048FC0.unk1C = arg2;
    D_80048FC0.unk14 = 1;
    D_80048FC0.unk20 = arg3;
    D_80048FC0.unk18 = arg1;
    D_80048FC0.unk24 = arg4;
    osSendMesg(&D_80048DE8, &D_80048FC4, 0);
    osRecvMesg(&D_80048E38, &sp1C, 1);
    return D_80048FC0.unk40;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004B50.s")
#endif

#ifdef MIPS_TO_C
s32 func_80004BD4(s32 arg0, u16 arg1, ?32 arg2, ?32 arg3, s32 arg4, s32 arg5) {
    ? sp1C;

    D_80048FC0.unk10 = arg0;
    D_80048FC0.unk1C = arg2;
    D_80048FC0.unk14 = 0;
    D_80048FC0.unk20 = arg3;
    D_80048FC0.unk18 = arg1;
    D_80048FC0.unk24 = arg4;
    D_80048FC0.unk2C = arg5;
    osSendMesg(&D_80048DE8, &D_80048FC4, 0);
    osRecvMesg(&D_80048E38, &sp1C, 1);
    return D_80048FC0.unk40;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004BD4.s")
#endif

#ifdef MIPS_TO_C
s32 func_80004C5C(u8 arg0, u8 arg1, ?32 arg2, ?32 arg3) {
    ? sp1C;

    D_800490D0.unk14 = arg2;
    D_800490D0.unk18 = arg3;
    D_800490D0.unk10 = arg0;
    D_800490D0.unk11 = arg1;
    osSendMesg(&D_80048DE8, &D_800490D4, 1);
    osRecvMesg(&D_80048E58, &sp1C, 1);
    return D_800490D0.unk1C;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004C5C.s")
#endif

void func_80004CD4(void) {
    func_80004C5C(0, 0, 0, 0);
}

#ifdef MIPS_TO_C
void func_80004D00(u8 arg0, s32 arg1, ? arg2) {
    func_80004C5C(3, arg0, arg1, arg2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004D00.s")
#endif

#ifdef MIPS_TO_C
void func_80004D34(u8 arg0, s32 arg1, ? arg2) {
    func_80004C5C(4, arg0, arg1, arg2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004D34.s")
#endif

#ifdef MIPS_TO_C
void func_80004D68(u8 arg0, ? arg1) {
    func_80004C5C(1, arg0, arg1, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004D68.s")
#endif

#ifdef MIPS_TO_C
void func_80004D98(u8 arg0, ? arg1) {
    func_80004C5C(2, arg0, arg1, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004D98.s")
#endif

// Sent as an OSMesg based on code path
struct Unk_Func8004DC8 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    s32 unk10;
    s32 unk14;
    s32 unk18;
};

#ifdef NEEDS_RODATA
void func_80004DC8(struct Unk_Func8004DC8 *arg0) {
    switch (arg0->unkC)
    {
        case 0:
            arg0->unk18 = func_80032060(&sSIMesgQueue); // osEepromProbe
            break;
        case 1:
            arg0->unk18 = osEepromRead(&sSIMesgQueue, arg0->unkD, arg0->unk10);
            break;
        case 2:
            arg0->unk18 = osEepromWrite(&sSIMesgQueue, arg0->unkD, arg0->unk10);
            break;
        case 3:
            arg0->unk18 = osEepromLongRead(&sSIMesgQueue, arg0->unkD, arg0->unk10, arg0->unk14);
            break;
        case 4:
            arg0->unk18 = osEepromLongWrite(&sSIMesgQueue, arg0->unkD, arg0->unk10, arg0->unk14);
            break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004DC8.s")
#endif

#ifdef MIPS_TO_C
void func_80004E98(void *arg0) {
    void *sp18;
    OSMesgQueue *temp_a0;
    OSMesgQueue *temp_a0_2;
    OSMesgQueue *temp_a0_3;
    OSMesgQueue *temp_a0_4;
    OSMesgQueue *temp_a0_5;
    OSMesgQueue *temp_a0_7;
    OSMesgQueue *temp_a0_8;
    OSMesgQueue *temp_a0_9;
    s32 temp_v0_2;
    s32 temp_v1;
    u32 temp_t7;
    void *temp_a0_6;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_3;
    void *phi_a3;
    void *phi_a3_2;

    temp_a3 = arg0;
    temp_t7 = arg0->unk0 - 1;
    if (temp_t7 < 0xB) {
        goto **(&jtbl_8003FF58 + (temp_t7 * 4));
    case 0:
        arg0 = temp_a3;
        read_controller_input();
        func_800041A0();
        temp_a0 = arg0->unk8;
        if (temp_a0 != 0) {
            osSendMesg(temp_a0, arg0->unk4, 0);
            return;
        case 1:
            if (D_80048F48 == 0) {
                D_80048F4C = temp_a3;
                return;
            case 2:
                D_80048EB4 = temp_a3->unkC;
                D_80048EB4 = temp_a3->unk10;
                D_80048ED4 = temp_a3->unkC;
                D_80048ED4 = temp_a3->unk10;
                D_80048EF4 = temp_a3->unkC;
                D_80048EF4 = temp_a3->unk10;
                D_80048F14 = temp_a3->unkC;
                D_80048F14 = temp_a3->unk10;
                temp_a0_3 = temp_a3->unk8;
                if (temp_a0_3 == 0) {
                default:
                    return;
                    return;
                }
                osSendMesg(temp_a0_3, temp_a3->unk4, 0);
                return;
            case 3:
                D_80048F50 = temp_a3->unkC;
                temp_a0_4 = temp_a3->unk8;
                if (temp_a0_4 == 0) {
                default:
                    return;
                    return;
                }
                osSendMesg(temp_a0_4, temp_a3->unk4, 0);
                return;
            case 5:
                D_80048F54 = temp_a3->unkC;
                temp_a0_5 = temp_a3->unk8;
                if (temp_a0_5 == 0) {
                default:
                    return;
                    return;
                }
                osSendMesg(temp_a0_5, temp_a3->unk4, 0);
                return;
            case 4:
                temp_v1 = temp_a3->unkC;
                temp_v0 = (temp_v1 << 5) + &gControllers;
                phi_a3 = temp_a3;
                if (temp_v0->unk1C == 0) {
                    phi_a3 = temp_a3;
                    if ((temp_v0->unk1D & 1) != 0) {
                        temp_v0_2 = temp_a3->unk10;
                        if (temp_v0_2 != 0) {
                            if (temp_v0_2 != 1) {
                                if (temp_v0_2 != 2) {
                                    phi_a3 = temp_a3;
                                } else {
                                    temp_a0_6 = (temp_v1 * 0x68) + &sPakDevices;
                                    sp18 = temp_a0_6;
                                    arg0 = temp_a3;
                                    func_8002F040(temp_a0_6, 0, temp_v1, temp_a3);
                                    func_8002F040(temp_a0_6, 0);
                                    func_8002F040(temp_a0_6, 0);
block_24:
                                    phi_a3 = arg0;
                                }
                            } else {
                                phi_a3 = temp_a3;
                                if (D_80048CDC == 0) {
                                    arg0 = temp_a3;
                                    func_8002F040((temp_v1 * 0x68) + &sPakDevices, 1, temp_v1, temp_a3);
                                    goto block_24;
                                }
                            }
                        } else {
                            arg0 = temp_a3;
                            osMotorInit(&sSIMesgQueue, (temp_v1 * 0x68) + &sPakDevices, temp_v1, temp_a3);
                            goto block_24;
                        }
                    }
                }
                temp_a0_7 = phi_a3->unk8;
                if (temp_a0_7 == 0) {
                default:
                    return;
                    return;
                }
                osSendMesg(temp_a0_7, phi_a3->unk4, 0);
                return;
            case 9:
                temp_v0_3 = (temp_a3->unkC << 5) + &gControllers;
                phi_a3_2 = temp_a3;
                if (temp_v0_3->unk1C == 0) {
                    phi_a3_2 = temp_a3;
                    if ((temp_v0_3->unk1D & 1) != 0) {
                        arg0 = temp_a3;
                        func_80004810(temp_a3, temp_a3);
                        phi_a3_2 = arg0;
                    }
                }
                temp_a0_8 = phi_a3_2->unk8;
                if (temp_a0_8 == 0) {
                default:
                    return;
                    return;
                }
                osSendMesg(temp_a0_8, phi_a3_2->unk4, 0);
                return;
            case 10:
                arg0 = temp_a3;
                func_80004DC8(temp_a3, temp_a3);
                temp_a0_9 = arg0->unk8;
                if (temp_a0_9 != 0) {
                    osSendMesg(temp_a0_9, arg0->unk4, 0);
                }
            default:
                return;
                return;
            }
            arg0 = temp_a3;
            func_800041A0(temp_a3);
            temp_a0_2 = arg0->unk8;
            if (temp_a0_2 != 0) {
                osSendMesg(temp_a0_2, arg0->unk4, 0);
                return;
                return;
                return;
                return;
                return;
                return;
                return;
            }
        }
    }
default:
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_80004E98.s")
#endif

extern struct {
    u32 unk0;
    OSMesg unk4;
    OSMesgQueue *unk8;
} *D_8004F4C0;



extern OSMesgQueue D_80048A08;


#if 0
void func_800051E0(void *arg) {
    OSMesg sp44;

    func_80004250();
    func_800009E8(&D_80048DC0, &D_80048DE8, D_80048DC8, 7);
    osSendMesg(&D_80048A08, 1, OS_MESG_NOBLOCK);
    while(1) {
        osRecvMesg(&D_80048DE8, &sp44, OS_MESG_BLOCK);
        if (sp44 == (OSMesg)1) {
            if (D_80048F58 != 0) {
                D_80048F58--;
            }
            if (D_80048F58 == 0) {
                query_controllers();
                D_80048F58 = D_80048F54;
            }
            if (D_80048F50 == 0) {
                continue;
            }
            read_controller_input();
            if (D_80048F4C == 0) {
                continue;
            }
            func_800041A0();
            if (D_8004F4C0->unk8 != 0) {
                osSendMesg(D_8004F4C0->unk8, D_8004F4C0->unk4, OS_MESG_NOBLOCK);
            }
            D_80048F4C = 0;
            continue;
        }
        func_80004E98();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2/func_800051E0.s")
#endif
