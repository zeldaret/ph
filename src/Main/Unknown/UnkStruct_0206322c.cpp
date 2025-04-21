#include "Unknown/UnkStruct_0206322c.hpp"
#include "global.h"
#include "types.h"
#include <stdarg.h>

void func_02027ab4(unk32, Screen *, UNK_PTR, UNK_PTR, unk32, unk32, unk32, unk32);

extern "C" {
unk32 *MountCompressedNarc(char *, char *, unk8 *, unk32, unk32);
unk8 data_020691a0[0xCC00];
UNK_PTR func_02032054(char *, unk32);
UNK_PTR func_0203206c(char *, unk32);
void func_02016fcc(unk32 *);

void GX_LoadBG0Scr(u16 *data, unk32, u32 size);
void GXS_LoadBG0Scr(u16 *data, unk32, u32 size);
void CleanAndInvalidateDataCacheLines(void *, u32 size); // DC_FlushRange?
void Fill16(unk32, void *, u32 size);
int vsnprintf(char *s, size_t n, const char *format, va_list arg);
}

THUMB void UnkStruct_0206322c::func_02030354(bool doTopScreen, bool doBottomScreen) {
    Screen *pScreen;
    unk32 *uVar1;

    uVar1         = MountCompressedNarc("BGF", "Menu/UI_main/DbgFntM.bin", data_020691a0, sizeof(data_020691a0), 1);
    this->mUnk_00 = func_02032054("BGF:DbgFntM.ncgr", 1);
    this->mUnk_04 = func_0203206c("BGF:UIM.nclr", 1);

    if (doTopScreen) {
        pScreen          = &this->topScreen;
        pScreen->mUnk_00 = 0x100;
        pScreen->mUnk_02 = 0xC0;
        pScreen->mUnk_04 = 0;
        pScreen->mUnk_06 = 0;
        pScreen->mUnk_08 = 0xC00;
        func_02027ab4(0, pScreen, this->mUnk_00, this->mUnk_04, 0, 0, 0, 2);
    }

    if (doBottomScreen) {
        pScreen          = &this->bottomScreen;
        pScreen->mUnk_00 = 0x100;
        pScreen->mUnk_02 = 0xC0;
        pScreen->mUnk_04 = 0;
        pScreen->mUnk_06 = 0;
        pScreen->mUnk_08 = 0xC00;
        func_02027ab4(4, pScreen, this->mUnk_00, this->mUnk_04, 0, 0, 0, 2);
    }

    func_02016fcc(uVar1);
}

THUMB void *UnkStruct_0206322c::func_02030408(void) {
    this->mUnk_00 = NULL;
    this->mUnk_04 = NULL;
    this->func_020304a8(true, true);
    return this;
}

THUMB void UnkStruct_0206322c::func_02030464(bool doTopScreen, bool doBottomScreen) {
    if (doTopScreen) {
        CleanAndInvalidateDataCacheLines(&this->topScreen.data, sizeof(this->topScreen.data));
        GX_LoadBG0Scr(this->topScreen.data, 0, sizeof(this->topScreen.data));
    }

    if (doBottomScreen) {
        CleanAndInvalidateDataCacheLines(&this->bottomScreen.data, sizeof(this->bottomScreen.data));
        GXS_LoadBG0Scr(this->bottomScreen.data, 0, sizeof(this->bottomScreen.data));
    }
}

THUMB void UnkStruct_0206322c::func_020304a8(bool doTopScreen, bool doBottomScreen) {
    if (doTopScreen) {
        Fill16(0, this->topScreen.data, sizeof(this->topScreen.data));
    }

    if (doBottomScreen) {
        Fill16(0, this->bottomScreen.data, sizeof(this->bottomScreen.data));
    }
}

void DisplayDebugText(unk32 x, unk32 y, unk32 unkVal1, unk32 unkVal2, char *, unk32);

THUMB void DisplayDebugTextFormat(unk32 param1, unk32 x, unk32 y, unk32 unkVal1, unk32 unkVal2, char *fmt, va_list args) {
    char buffer[0x100];

    vsnprintf(buffer, sizeof(buffer), fmt, args);
    DisplayDebugText(x, y, unkVal1, unkVal2, buffer, param1);
}

THUMB void DisplayDebugTextFormat_thunk(unk32 param1, unk32 param2, unk32 param3, unk32 param4, unk32 param5, char *fmt, ...) {
    va_list args;

    va_start(args, fmt);
    DisplayDebugTextFormat(param1, param2, param3, param4, param5, fmt, args);
    va_end(args);
}

THUMB void DisplayDebugTextF(unk32 x, unk32 y, unk32 unkVal1, unk32 unkVal2, char *fmt, ...) {
    va_list args;

    va_start(args, fmt);
    DisplayDebugTextFormat(0, x, y, unkVal1, unkVal2, fmt, args);
    va_end(args);
}
