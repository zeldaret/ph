extern "C" {
#include <string.h>
}

#include "Unknown/UnkStruct_02063220.hpp"
#include "global.h"
#include "types.h"

struct UnkStruct_02041ca8 {
    u8 unk_00[0x24];
    u32 unk_24;
    u32 unk_28;
    u8 unk_2c[0x20];
};

extern "C" {
void func_02041ca8(UnkStruct_02041ca8 *);
bool func_02041e7c(UnkStruct_02041ca8 *, char *);
void func_02041ea8(UnkStruct_02041ca8 *);
s32 func_02041fa4(UnkStruct_02041ca8 *, u32 *, u32);
u32 *func_0202d1c4(int, u32 *, u32, int);
void func_0202d21c(u32 *);
u32 *func_0202d23c(UnkStruct_02041ca8 *, int, u32 *, int, int, u32, u32 *, int, int);
}

THUMB u32 *func_0202d3bc(int param_1, u32 *param_2, char *path, int param_4, int param_5, bool param_6, int param_7,
                         int param_8) {
    u32 *pdVar4 = (u32 *) param_4;
    UnkStruct_02041ca8 file;

    data_02063220.path = path;
    u32 *result        = (u32 *) 0;

    if (pdVar4 != NULL) {
        *pdVar4 = (u32) result;
    }

    func_02041ca8(&file);
    if (func_02041e7c(&file, path)) {
        u32 size = file.unk_28 - file.unk_24;

        if (size != 0) {
            if (param_6) {
                result = func_0202d23c(&file, param_1, param_2, param_5, 0, size, pdVar4, param_7, param_8);
            } else {
                u32 *buffer = NULL;

                if (param_7 == 0) {
                    buffer = func_0202d1c4(param_1, param_2, size, param_5);
                } else if (size <= (u32) param_8) {
                    buffer = (u32 *) param_7;
                }

                if (buffer != NULL) {
                    if (func_02041fa4(&file, buffer, size) == -1) {
                        if (param_7 == 0) {
                            func_0202d21c(buffer);
                        }
                    } else {
                        result = buffer;
                        if (pdVar4 != NULL) {
                            *pdVar4 = size;
                        }
                    }
                }
            }
        }
        func_02041ea8(&file);
    }

    return result;
}

THUMB void func_0202d550(int param_1, unsigned int *param_2, char *path, int param_4, int param_5, bool param_6) {
    func_0202d3bc(param_1, param_2, path, param_4, param_5, param_6, 0, 0);
}