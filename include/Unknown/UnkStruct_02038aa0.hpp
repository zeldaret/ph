#pragma once

#include "global.h"
#include "types.h"

#include "Message/MsgProc.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_02032e7c.hpp"
#include "Unknown/UnkStruct_0203881c.hpp"
#include "Unknown/UnkStruct_0203dae0.hpp"
#include "nds/math.h"

class UnkSubClass1_unk_124 {
public:
    /* 00 */ void *mUnk_00; // pointer to MsgProc_Main (well, the first members of the base class)
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */ unk8 mUnk_28;
    /* 29 */ unk8 mUnk_29;
    /* 2a */ unk8 mUnk_2a;
    /* 2b */ unk8 mUnk_2b;
    /* 2c */

    void func_0203f020(unk32, unk32);
};

struct UnkStruct_0203b264;
struct func_02038f44_param4;

// astruct_6, MsgProc_Main
class UnkStruct_02038aa0 : public UnkStruct_0203dae0 {
public:
    /* 000 (base) */
    /* 123 */ unk8 mUnk_123;
    /* 124 */ UnkSubClass1_unk_124 *mUnk_124;
    /* 128 */ UnkStruct_0203881c mUnk_128;
    /* 150 */ u8 mUnk_150[4];
    /* 154 */ EntryINF1 *pInfoEntry;
    /* 158 */ Vec2s mUnk_158; // textbox position?
    /* 15c */ s16 mUnk_15c;
    /* 15e */ s8 mUnk_15e;
    /* 15f */ s8 mUnk_15f;
    /* 160 */ u8 mUnk_160;
    /* 161 */

    /* 00 */ virtual ~UnkStruct_02038aa0();
    /* 08 */ virtual void vfunc_08(s32 param1, unk32 param2, s16 *param3, unk32 param4) override;
    /* 10 */ virtual void vfunc_10(u32 param1, unk32 param2) override;
    /* 1c */ virtual unk32 vfunc_1c(s32 param1, unk32 *param2, unk32 param3, unk32 param4) override;
    /* 20 */ virtual unk32 vfunc_20(s32 param1, s32 *param2) override;
    /* 2c */ virtual void vfunc_2c() override;
    /* 30 */ virtual void vfunc_30() override;
    /* 34 */ virtual unk32 vfunc_34(s32 param1);
    /* 38 */ virtual bool vfunc_38();
    /* 3c */ virtual void vfunc_3c(unk32 param_2, unk32 param_3)   = 0;
    /* 40 */ virtual void vfunc_40(s32 touchLastX, s32 touchLastY) = 0;
    /* 44 */ virtual void vfunc_44(s32 touchLastX, s32 touchLastY);
    /* 48 */ virtual void vfunc_48(u32 param1, unk32 param2);
    /* 4c */ virtual void vfunc_4c(EntryINF1 *param1, u32 param2, s16 *param3, UnkSubClass1_02256FF8 *param4);
    /* 50 */ virtual void vfunc_50();
    /* 54 */ virtual void vfunc_54();
    /* 58 */ virtual void vfunc_58();
    /* 5c */ virtual void vfunc_5c();
    /* 60 */ virtual void vfunc_60(func_0203b410_param1 *param1, unk32 param2, unk32 param3);
    /* 64 */ virtual s32 vfunc_64(unk32 param1);
    /* 68 */ virtual void vfunc_68(s32 *param1, s32 *param2);
    /* 6c */ virtual void vfunc_6c(s32 *param1, s32 *param2);
    /* 70 */ virtual void vfunc_70();
    /* 74 */

    static void func_020387e0(u8 *param_2);

    UnkStruct_02038aa0();
    UnkStruct_02038aa0(u8 param1, u8 param2);
    void func_02038b40();
    bool func_02038b78();
    s32 func_02038cb8(s32 param1);
    s32 func_02038cf4();
    s32 func_02038d10();
    bool func_02038ef4(s32 touchLastX, s32 touchLastY);
    void func_02039208(unk16 param1);
    unk32 func_02039250();
    void func_02039440(unk32 param1, unk32 param2);
    bool func_0203951c();
    u16 *func_02037604(u16 **);
};
