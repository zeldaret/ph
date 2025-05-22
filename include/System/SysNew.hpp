#pragma once

#include "types.h"

struct UnkStruct_0202e894 {
    /* 00 */ u32 mId;
    /* 04 */ u32 *mUnk_04;
    /* 08 */ unk8 mUnk_08[0x24];
    /* 2c */
};

void *SysNew(UnkStruct_0202e894 *param1, s32 length, s32 param3);
void SysDelete(void *ptr);
void *func_0202e99c(s32 length);
void *func_0202e9bc(s32 length);

class SysObject {
public:
    static void *operator new(unsigned long length, u32 *id, u32 idLength);
    static void *operator new[](unsigned long length, u32 *id, u32 idLength);
    static void operator delete(void *ptr);
    static void operator delete[](void *ptr);
};
