#include "Unknown/UnkStruct_02063220.hpp"
#include "DTCM/UnkStruct_027e02a0.hpp"
#include "DTCM/UnkStruct_027e05f8.hpp"
#include "DTCM/UnkStruct_027e0618.hpp"
#include "DTCM/UnkStruct_027e08f8.hpp"
#include "System/OverlayManager.hpp"
#include "Unknown/UnkStruct_0206322c.hpp"
#include "Unknown/UnkStruct_020ee734.hpp"
#include "nds/button.h"
#include "nds/math.h"
#include <stdarg.h>
#include <string.h>

void DisplayDebugText(unk32 x, unk32 y, unk32 unkVal1, unk32 unkVal2, char *, unk32);
void DisplayDebugTextFormat(unk32 param1, unk32 x, unk32 y, unk32 unkVal1, unk32 unkVal2, char *fmt, va_list args);
void DisplayDebugTextFormat_thunk(unk32 param1, unk32 param2, unk32 param3, unk32 param4, unk32 param5, char *fmt, ...);
void DisplayDebugTextF(unk32 x, unk32 y, unk32 unkVal1, unk32 unkVal2, char *fmt, ...);
extern u8 data_02075ebc;

extern "C" {
void func_0200f248();
void func_0202bac4();
void func_0202c5e8(void);
void func_0202cf34(unk32);
void func_0202d164();
void func_0202e6a4(void);
void func_0203e8a0(void);
void func_0202f374();
char* strncpy(char*, char const*, unsigned int);

// probably GX/GXS functions?
void func_02003ce4(unk32);
void func_02004730(unk32);
void func_02003a9c(unk32, unk32, unk32);
void func_02003b04(unk32);
void SetBrightColor(u16 *, unk32);
}

#define ITCM_END ((s8 *) 0x01FFFFFF)
#define ARM9_RAM_START ((s8 *) 0x02000000)
#define ARM9_RAM_END ((s8 *) 0x0219B1C0)

#define REG_A_DISPCNT (*(u32 *) 0x04000000)
#define REG_A_2D_ENGINE (*(u16 *) 0x04000008)
#define REG_A_MASTER_BRIGHT ((u16 *) 0x0400006C)
#define REG_B_DISPCNT_ADDR (0x04001000)
#define REG_B_DISPCNT (*(u32 *) REG_B_DISPCNT_ADDR)
#define REG_B_2D_ENGINE (*(u16 *) 0x04001008)
#define REG_B_MASTER_BRIGHT ((u16 *) 0x0400106C)

const u16 data_020562e2[] = {
    BTN_DUP,   BTN_DDOWN, BTN_DDOWN, BTN_DUP,    BTN_SELECT, BTN_B,     BTN_R,
    BTN_START, BTN_DLEFT, BTN_DLEFT, BTN_DRIGHT, BTN_DLEFT,  BTN_START, BTN_DUP,
};

THUMB bool UnkStruct_02063220::func_0202f3f0(unk32 param1) {
    switch (param1) {
        case 2:
        case 3: return true;
        default: break;
    }

    return false;
}

THUMB unk32 UnkStruct_02063220::func_0202f400(unk32 param1) {
    unk32 ret = 0;

    switch (param1) {
        case 2: ret = 1; break;
        case 3: ret = 2; break;
        default: break;
    }

    return ret;
}

THUMB void UnkStruct_02063220::DisplayAssertError(char *file, u16 line, char *msg, ...) {
    va_list args;

    // reset screen data
    data_0206322c.func_020304a8(true, true);

    // "draw" strings to the screen array
    DisplayDebugText(0, 0, false, true, "Assert", 0);
    DisplayDebugTextF(0, 2, false, true, "FILE:%s", file);
    DisplayDebugTextF(0, 3, false, true, "LINE:%d", line);
    va_start(args, msg);
    DisplayDebugTextFormat(0, 0, 5, false, true, msg, args);
    va_end(args);

    // unknown but other "draw" stuff
    func_0202f374();
    func_0202d164();

    // "draw" last file
    this->func_0202f4b4();

    // actual draw of the screen
    this->func_0202f754(0);
}

// non-matching
THUMB void UnkStruct_02063220::func_0202f4b4(void) {
    char buffer[0x40];

    if (this->path != NULL) {
        DisplayDebugText(0, 21, 0, 0, "(LastFile)", 1);
        strncpy(buffer, this->path, sizeof(buffer) - 1);
        buffer[0] = '\0';
        DisplayDebugText(0, 22, 0, 0, buffer, 1);
    }
}

THUMB void UnkStruct_02063220::func_0202f500(void) {
    // "reigaichuu(%d,%d)"
    DisplayDebugTextF(16, 0, 0, 1, "レイガイチュウ(%d,%d)", data_02075ebc, this->mUnk_05);
}

// non-matching
THUMB void UnkStruct_02063220::DisplayException(Registers *param1) {
    int iVar1;
    s8 *pbVar2;
    int iVar3;
    s32 *puVar4;
    int *piVar5;

    if (this->mUnk_05 != 0) {
        this->func_0202f500();
    } else {
        this->mUnk_05++;
        this->mUnk_05++;

        data_0206322c.func_020304a8(true, true);
        this->mUnk_05++;

        DisplayDebugText(0, 0, false, false, "レイガイ_ハセイ", 0);
        this->mUnk_05++;

        if (data_02075ebc != 0) {
            this->func_0202f500();
            this->mUnk_05++;
        }

        for (iVar3 = 0; iVar3 < ARRAY_LEN(param1->mUnk_04); iVar3++) {
            DisplayDebugTextF(0, iVar3 + 2, 0, 0, "R%02d  = 0x%08X", iVar3, param1->mUnk_04[iVar3]);
            this->mUnk_05++;
        }

        DisplayDebugTextF(0, 15, 0, 0, "SP    = 0x%08X", param1->mUnk_0C);
        this->mUnk_05++;

        DisplayDebugTextF(0, 16, 0, 1, "LR    = 0x%08X", param1->mUnk_10);
        this->mUnk_05++;

        DisplayDebugTextF(0, 17, 0, 1, "PC    = 0x%08X", param1->mUnk_14);
        this->mUnk_05++;

        DisplayDebugTextF(0, 18, 0, 0, "CPSR = 0x%08X", param1->mUnk_00);
        this->mUnk_05++;

        DisplayDebugTextF(0, 19, 0, 0, "SPSR = 0x%08X", param1->mUnk_3C);
        this->mUnk_05++;

        DisplayDebugTextF(0, 20, 0, 0, "CP15 = 0x%08X", param1->mUnk_38);
        this->mUnk_05++;

        func_0202f374();
        this->mUnk_05++;

        func_0203e8a0();
        this->mUnk_05++;

        func_0202d164();
        this->mUnk_05++;

        func_0202e6a4();
        this->mUnk_05++;

        this->func_0202f4b4();
        this->mUnk_05++;

        puVar4 = param1->mUnk_04;
        DisplayDebugText(21, 0, 0, 0, "SP", 1);
        DisplayDebugTextFormat_thunk(1, 23, 0, 0, 0, "%08X", puVar4);

        iVar3 = 1;

        for (iVar3 = 1; puVar4 < data_027e02a0[1].mUnk_94; puVar4++) {
            pbVar2 = (s8 *) puVar4;

            if ((ITCM_END < pbVar2 && pbVar2 < ARM9_RAM_END) || pbVar2 < ARM9_RAM_START) {
                DisplayDebugTextFormat_thunk(1, 23, iVar3, 0, 0, "%08X", pbVar2);
                iVar3++;
                if (iVar3 > 0x17) {
                    break;
                }
            }
        }

        this->mUnk_05++;
    }

    this->func_0202f754(1);
}

THUMB void UnkStruct_02063220::func_0202f754(unk32 param1) {
    u16 uVar1;
    int iVar3;
    u16 uVar4;
    bool bVar5;
    bool bVar6;

    func_0202c5e8();
    this->mUnk_04 = 0;
    this->mUnk_05 = 0;

    if (this->func_0202f3f0(param1) != 0) {
        this->mUnk_08.func_0202fd9c(this->func_0202f400(param1));
    } else {
        func_02003ce4(2);
        func_02004730(4);
        func_02003a9c(1, 0, 0);
        func_02003b04(0);

        REG_A_DISPCNT   = (REG_A_DISPCNT & 0xFFFFE0FF) | 0x100;
        REG_B_DISPCNT   = (REG_B_DISPCNT & 0xFFFFE0FF) | (REG_B_DISPCNT_ADDR >> 0x12);
        REG_A_2D_ENGINE = (REG_A_2D_ENGINE & 0x43) | 0x4;
        REG_B_2D_ENGINE = (REG_B_2D_ENGINE & 0x43) | 0x4;
        data_0206322c.func_02030354(1, 1);
    }

    do {
        if (this->func_0202f3f0(param1)) {
            bVar6 = true;
        } else {
            data_027e05f8.func_0202adf4(1, 0);

            if (param1 != 1) {
                data_027e08f8.func_0202f9a0(1);
            }

            uVar1 = data_027e05f8.mUnk_2;
            uVar4 = data_020562e2[this->mUnk_04];
            bVar5 = (uVar1 & uVar4) != 0;

            if (bVar5) {
                bVar6 = false;

                if (((~uVar4 & 0xFFF) & (~uVar1 & 0xFFFF)) != 0 && (uVar1 & 0xFFF) != 0) {
                    this->mUnk_04 = 0;
                }
            }
        }

        this->mUnk_04++;
        if (this->mUnk_04 >= 0xC ? 1 : 0) {
            this->func_0202f3f0(param1);
        }

        func_0202bac4();

        if (bVar6) {
            SetBrightColor(REG_A_MASTER_BRIGHT, 0);
            SetBrightColor(REG_B_MASTER_BRIGHT, 0);

            if (this->func_0202f3f0(param1) == 0) {
                data_0206322c.func_02030464(1, 1);
            }

            data_027e0618.func_0202cf34();

            if (gOverlayManager.mLoadedOverlays[OverlayIndex_Core] != -1) {
                data_ov000_020ee734.func_ov000_020d6620();
            }

            for (iVar3 = 0; iVar3 < 0x3C; iVar3++) {
                func_0202bac4();
            }

            func_0200f248();
        }
    } while (true);
}
