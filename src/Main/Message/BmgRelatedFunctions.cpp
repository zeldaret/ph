extern "C" {
#include <string.h>
}

#include "Unknown/UnkStruct_02063220.hpp"
#include "global.h"
#include "types.h"

struct Archive {
    /* 00 */ int id;
    /* 04 */ unk32 next;
    /* 08 */ unk8 mUnk_08;
    /* 09 */ unk8 mUnk_09;
    /* 0a */ unk8 mUnk_0a;
    /* 0b */ unk8 mUnk_0b;
    /* 0c */ unk8 mUnk_0c;
    /* 0d */ unk8 mUnk_0d;
    /* 0e */ unk8 mUnk_0e;
    /* 0f */ unk8 mUnk_0f;
    /* 10 */ unk8 mUnk_10;
    /* 11 */ unk8 mUnk_11;
    /* 12 */ unk8 mUnk_12;
    /* 13 */ unk8 mUnk_13;
    /* 14 */ unk8 mUnk_14;
    /* 15 */ unk8 mUnk_15;
    /* 16 */ unk8 mUnk_16;
    /* 17 */ unk8 mUnk_17;
    /* 18 */ unk8 mUnk_18;
    /* 19 */ unk8 mUnk_19;
    /* 1a */ unk8 mUnk_1a;
    /* 1b */ unk8 mUnk_1b;
    /* 1c */ unk32 *flags;
};

class UnkStruct_astruct_3 {
public:
    /* 00 */ s32 mUnk_00;
    /* 04 */ s32 *mUnk_04;
    /* 08 */ Archive *archive;
    /* 0c */ u32 mUnk_0c;
    /* 10 */ u32 mUnk_10;
    /* 14 */ s32 mUnk_14;
    /* 18 */ s32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk8 mUnk_20;
    /* 21 */ unk8 mUnk_21;
    /* 22 */ unk8 mUnk_22;
    /* 23 */ unk8 mUnk_23;
    /* 24 */ void *fileStart;
    /* 28 */ void *fileEnd;
    /* 2c */ unk8 mUnk_2c;
    /* 2d */ unk8 mUnk_2d;
    /* 2e */ unk8 mUnk_2e;
    /* 2f */ unk8 mUnk_2f;
    /* 30 */ void *archive2;
    /* 34 */ s32 id;
    /* 38 */ unk32 mUnk_38;
    /* 3c */ char *mUnk_3c;
    /* 40 */ unk32 mUnk_40;
    /* 44 */ s32 mUnk_44;
    /* 48 */

    UnkStruct_astruct_3();
    // ~UnkStruct_astruct_3();

    unk32 func_02041e7c(char *path);
    unk32 func_02041fa4(void *param_1, u32 size);
    void func_02041ea8(); // dtor?
    void *func_0202d23c(int param_1, unsigned int *param_2, int param_3, unk32 param_4, u32 size, int *param_6, int param_7,
                        int param_8);
};

extern "C" void *func_0202d1c4(int, unsigned int *, u32, int);
extern "C" void func_0202d21c(void *);

THUMB void *func_0202d3bc(int param_1, unsigned int *param_2, char *path, int *param_4, int param_5, bool param_6, int param_7,
                          int param_8) {
    int *puVar4;
    void *local_64;
    unk32 *puStack_18;
    u32 size;
    void *pvVar2;

    data_02063220.path = path;
    puVar4             = param_4;
    local_64           = NULL;

    if (puVar4 != 0) {
        *puVar4 = 0;
    }

    puStack_18 = puVar4;

    UnkStruct_astruct_3 aStack_60;

    if (aStack_60.func_02041e7c(path) != 0) {
        size = (u32) aStack_60.fileEnd - (u32) aStack_60.fileStart;

        if (size != 0) {
            if (param_6) {
                local_64 = aStack_60.func_0202d23c(param_1, param_2, param_5, 0, size, puVar4, param_7, param_8);
            } else {
                pvVar2 = NULL;

                if (param_7 == 0) {
                    pvVar2 = func_0202d1c4(param_1, param_2, size, param_5);
                } else {
                    if (size <= param_8) {
                        pvVar2 = (void *) param_7;
                    }
                }

                if (pvVar2 != NULL) {
                    if (aStack_60.func_02041fa4(pvVar2, size) == -1) {
                        if (param_7 == 0) {
                            func_0202d21c(pvVar2);
                        }
                    } else {
                        local_64 = pvVar2;

                        if (puVar4 != NULL) {
                            *puVar4 = size;
                        }
                    }
                }
            }
        }

        aStack_60.func_02041ea8();
    }

    return local_64;
}

extern "C" unk32 func_02016efc(void *, char *, void *);

THUMB void *func_0202d474(unk32 param_1, unk32 param_2, char *drive, char *narcPath, unk32 param_5, u8 param_6, void *param_7,
                          u32 param_8) {
    bool bVar1;
    void *iVar2;
    u32 uVar3;
    u32 size;
    void *local_60;

    data_02063220.path = narcPath;
    local_60           = NULL;

    UnkStruct_astruct_3 aStack_5c;

    if (aStack_5c.func_02041e7c(narcPath) != 0) {
        size = (u32) aStack_5c.fileEnd - (u32) aStack_5c.fileStart;

        if (size != 0) {
            if (param_6 != 0) {
                iVar2 = aStack_5c.func_0202d23c(param_1, (u32 *) param_2, param_5, 1, size, 0, (int) param_7, param_8);
            } else {
                uVar3 = (size + 0xF & ~0xF) + 0x70;

                if (param_7 == 0) {
                    iVar2 = func_0202d1c4(param_1, (u32 *) param_2, uVar3, param_5);
                } else {
                    iVar2 = 0;

                    if (uVar3 <= param_8) {
                        iVar2 = param_7;
                    }
                }
            }

            if (iVar2 != 0) {
                bVar1 = false;

                if (param_6 == 0) {
                    if (aStack_5c.func_02041fa4((void *) ((int) iVar2 + 0x70), size) != -1) {
                        bVar1 = true;
                    }
                } else {
                    bVar1 = true;
                }

                if (bVar1 && func_02016efc(iVar2, drive, (void *) ((int) iVar2 + 0x70)) != 0) {
                    local_60 = iVar2;
                }

                if ((local_60 == 0) && (param_7 == 0)) {
                    func_0202d21c(iVar2);
                }
            }
        }

        aStack_5c.func_02041ea8();
    }

    return local_60;
}

THUMB void func_0202d550(int param_1, unsigned int *param_2, char *path, int *param_4, int param_5, bool param_6) {
    func_0202d3bc(param_1, param_2, path, param_4, param_5, param_6, 0, 0);
}
