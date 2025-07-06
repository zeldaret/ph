#pragma once

#include "nds/math.h"

#include "DTCM/UnkStruct_027e077c.hpp"
#include "Game/Game.hpp"
#include "Message/BMG.hpp"
#include "System/SysNew.hpp"
#include "Unknown/func_ov000_020d0644.hpp"

// temp
#define UNK_TYPE void

#define ESCAPE_SEQUENCE_MARKER '\x1A'
#define CHECK_UNK_FLAGS(val) (((data_02056be4[data_027e077c.mUnk_0] & (val)) != 0))

typedef struct UnkStruct_0203b264 {
    /* 0 */ u8 mUnk_0[0x4];
    /* 4 */ u16 *mUnk_4;
    /* 8 */
} UnkStruct_0203b264;

class UnkStruct_020397f8_410 {
public:
    /* 0x00 */ struct UnkStruct_020397f8 *mUnk_00;
    /* 0x04 */

    void func_0203ec34(void);
    void func_0203ebe0(void);
    void func_0203ebf8(void);
    void func_0203ec4c(UnkStruct_0203b264 *param_2, unk32 param_3, s32 param_4, s32 param_5);
};

// same as UnkStruct_020397f8_410?
class UnkStruct_020397f8_424 {
public:
    /* 0x00 */ struct UnkStruct_020397f8 *mUnk_00;
    /* 0x04 */

    void func_0203ee80(unk32);
    void func_0203ef78(unk16, u16, unk8);
    void func_0203ef78(unk16); // overload?
    void func_0203ee48(void);
    UnkStruct_0203b264 *func_0203eeb0(unk32 param_2, unk32 param_3);
};

class UnkStruct_0203dae0_114 : public SysObject {
public:
    /* 0x00 (vtable) */
    /* 0x04 */ unk32 *mUnk_04;
    /* 0x08 */

    UnkStruct_0203dae0_114();
    /* 0x00 */ virtual ~UnkStruct_0203dae0_114() override;
    /* 0x08 */ virtual unk32 vfunc_08(void *);
    /* 0x08 */ virtual unk32 vfunc_0c(void);
    /* 0x0C */

    unk32 *func_0203d1b4(void);
};

struct func_02038f44_param4 {
    u8 mUnk_00;
    u8 mUnk_01;
    u8 mUnk_02;
    u8 mUnk_03;
    unk32 mUnk_04;
    unk32 mUnk_08;
    unk32 mUnk_0c;
    unk32 mUnk_10;
    unk8 mUnk_14;
    u8 mUnk_15;
};

// TEMPORARY

extern "C" u32 func_01ff9b4c(unk32, unk32);
extern "C" unk32 func_0203c084(void);
extern "C" unk32 func_ov000_02079e04(void);
extern "C" unk32 func_02016fcc(unk32);
extern "C" void func_02032304(unk32 *, char *, unk32, unk32, unk32);
extern "C" unk32 func_0202d5b4(char *, char *, unk32, unk32, unk32);
extern unk32 data_020691a0;
extern unk32 *data_02068894;
extern unk32 data_02056af0;
extern unk32 *data_02056a00;
extern char *data_02057f08; // "MSP"
extern char *data_02057eec; // "Menu/UI_main/opening.bin"
extern char *data_02057ed8; // "MSP:opening.nclr"

struct Struct_027e0db0 {
    /* 0x00 */ unk32 mUnk_00;
    /* 0x04 */ unk32 mUnk_04;

    void func_ov000_0207b288(GameModeId modeId);
};
extern Struct_027e0db0 data_027e0db0;

class UnkClass_027e0cbc {
public:
    void func_0203d57c();
    void func_0203d5c0();
    void func_0203d6d0();
    unk32 func_0203d7e0(unk32);
    unk32 func_0203d77c(unk32, s32, s32);
};
extern UnkClass_027e0cbc data_027e0cbc;
extern unk16 data_02056a10[];
extern unk16 data_02056a16[];
extern unk32 data_02056a04[];
extern unk32 data_027e0c38[];
extern "C" void func_0203489c(unk32, unk16, unk32 *, unk32 *);
extern "C" void func_020347b0(unk32, unk16, unk32 *, unk32 *, unk32, unk32);
extern THUMB unk32 func_0202ab48(void);
extern "C" void func_02034984(unk32, u8, unk32, unk32);
extern "C" void func_02034698(unk32, unk32, unk32 *, unk32 *);
extern struct TouchControl gTouchControl;

class UnkClass_027e0e28 {
public:
    unk32 func_ov000_0207bc48();
    void func_ov000_0207bc9c();
};
extern UnkClass_027e0e28 *data_027e0e28;
extern u8 data_027e0c54;
extern unk32 *data_ov009_0211f5b4;
extern "C" unk32 func_ov003_020f3f94(unk32 *);
extern "C" void func_ov003_020f4060(unk32 **);
extern unk32 *data_02057ed4;

// see Actor.cpp
typedef struct UnkStruct_01ffbe34 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk8 mUnk_08;
    /* 09 */ unk8 mUnk_09;
    /* 0a */ unk8 mUnk_0a;
    /* 0b */ unk8 mUnk_0b;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk8 mUnk_14;
    /* 15 */ unk8 mUnk_15;
    /* 16 */ unk16 mUnk_16;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */
} UnkStruct_01ffbe34;
extern "C" void func_01ffbe34(UnkStruct_01ffbe34 *param1);

struct UnkClass_027e1054_unk_00_unk00 {
    /* 0x00 */ u8 mUnk_00[0x95];
    /* 0x95 */ u8 mUnk_95;
};
struct UnkClass_027e1054_unk_00 {
    /* 0x00 */ unk32 mUnk_04;
    /* 0x00 */ UnkClass_027e1054_unk_00_unk00 *mUnk_00;
};
class UnkClass_027e1054 {
public:
    UnkClass_027e1054_unk_00 *mUnk_00;
    unk32 mUnk_04;

    void func_ov003_020f4874(void);
    void func_ov003_020f4760(u8, unk32);
    unk32 func_ov003_020f4960(void);
    void func_ov003_020f4a5c(void);
    void func_ov003_02f46f8(void);
    void func_ov003_020f4678(unk32);
};
extern UnkClass_027e1054 *data_027e1054;

class UnkClass_ov000_020eec9c {
public:
    void func_ov000_020d77e4(unk32);
    unk32 func_ov000_020d7f18(unk32);
};
extern UnkClass_ov000_020eec9c data_ov000_020eec9c;

class UnkClass_ov000_027e0d04 {
public:
    /* 0x00 */ unk16 mUnk_00;

    void func_0203fe60(unk32);
};
extern UnkClass_ov000_027e0d04 data_027e0d04;

class UnkClass_data_027e0f7c {
public:
    u8 *func_ov000_0209d90c(s8, s8);
};
extern UnkClass_data_027e0f7c data_027e0f7c;
