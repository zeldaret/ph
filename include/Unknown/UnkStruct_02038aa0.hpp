#pragma once

#include "global.h"
#include "types.h"

#include "Message/MsgProc.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_0203dae0.hpp"
#include "nds/math.h"

class UnkStruct_02038aa0;
typedef bool (*UnknownCallback)(class UnkStruct_020397f8 *);

class UnkStruct_0203881c : public UnkStruct_02032e7c {
public:
    /* 00 (base) */
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ UnknownCallback mUnk_1c;
    /* 20 */ class UnkStruct_020397f8 *mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */

    /* 0 */ virtual ~UnkStruct_0203881c();
    /* 8 */

    UnkStruct_0203881c();
    void func_02038858(unk32 param1);
    void func_02038888();
    void func_02038950(UnkStruct_02038aa0 *param1, s32 param2);
    void func_02038a80(s32 param1);
};

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

    void func_0203f020(s16 *, unk32);
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
    /* 08 */ virtual void vfunc_08(s32 param1, unk32 *param2, s16 *param3, unk32 param4);
    /* 0c */ virtual void vfunc_0c(u8 param_2, u8 param_3, u8 param_4, unk32 param_5);
    /* 10 */ virtual void vfunc_10();
    /* 1c */ virtual unk32 vfunc_1c(s32 param1, unk32 *param2, unk32 param3, unk32 param4);
    /* 20 */ virtual unk32 vfunc_20(s32 param1, s32 *param2);
    /* 2c */ virtual void vfunc_2c();
    /* 30 */ virtual void vfunc_30(unk32 param_2, unk32 param_3);
    /* 34 */ virtual unk32 vfunc_34(s32 param1);
    /* 38 */ virtual bool vfunc_38();
    /* 3c */ virtual void vfunc_3c();
    /* 40 */ virtual void vfunc_40();
    /* 44 */ virtual void vfunc_44(s32 touchLastX, s32 touchLastY);
    /* 48 */ virtual void vfunc_48();
    /* 4c */ virtual void vfunc_4c(u32 param1, unk32 param2);
    /* 50 */ virtual void vfunc_50(EntryINF1 *param1, u32 param2, s16 *param3, UnkSubClass1_02256FF8 *param4);
    /* 54 */ virtual void vfunc_54();
    /* 58 */ virtual void vfunc_58();
    /* 5c */ virtual void vfunc_5c(u16 *param_2, struct UnkStruct_0203b264 *param_3, unk8 param_4, unk32 param_5);
    /* 60 */ virtual void vfunc_60();
    /* 64 */ virtual void vfunc_64();
    /* 68 */ virtual s32 vfunc_68(unk32 param1);
    /* 6c */ virtual void vfunc_6c(s32 *param1, s32 *param2);
    /* 70 */ virtual void vfunc_70(s32 *param1, s32 *param2);
    /* 74 */

    // /* 0x08 */ /* func_02039228 */ virtual void vfunc_08(unk32* param_2, unk32* param_3) override;
    // /* 0x0C */ virtual void vfunc_0C(u8 param_2, u8 param_3, u8 param_4, unk32 param_5) override;
    // /* 0x10 */ virtual void vfunc_10(u8 param_2, u8 param_3) override; // func_0203e060?
    // /* 0x14 */ virtual bool vfunc_14(unk32 param_2, unk32 param_3) override;
    // /* 0x18 */ virtual unk32 vfunc_18(UnkStruct_0203b264* param_2, unk32 param_3, unk32 param_4) override;
    // /* 0x1C */ /* func_0203905c */ virtual unk32 vfunc_1C(u16* param_2, UnkStruct_0203b264* param_3, unk8 param_4, unk32
    // param_5) override;
    // /* 0x20 */ /* func_020390a4 */ virtual UNK_TYPE vfunc_20(UNK_TYPE) override;
    // /* 0x24 */ virtual UNK_TYPE vfunc_24(UNK_TYPE) override;
    // /* 0x28 */ virtual bool vfunc_28(void) override;
    // /* 0x2C */ /* func_02038d20 */ virtual void vfunc_2C(void) override;
    // /* 0x30 */ /* func_02038ed0 */ virtual void vfunc_30(void) override;
    // /* 0x34 */ /* func_02038c34 */ virtual unk32 vfunc_34(unk32 param_2) override;
    // /* 0x38 */ /* func_02039570 */ virtual bool vfunc_38(void) override;

    UnkStruct_02038aa0(u8 param1, u8 param2);
    void func_02038b40();
    bool func_02038b78();
    s32 func_02038cb8(s32 param1);
    s32 func_02038cf4();
    s32 func_02038d10();
    bool func_02038ef4(s32 param1, s32 param2);
    void func_02039208(unk16 param1);
    unk32 func_02039250();
    void func_02039440(unk32 param1, unk32 param2);
    bool func_0203951c();

    static void func_020387e0(u8 *param_2);

    unk32 func_02032fb4(void);
    u16 *func_02037604(u16 **);
    void func_02038b28(void);
    void func_02038b74(void); // is this a dtor?
    void func_02038f40(void);
    void func_02038f44(EntryINF1 *param_2, u32 param_3, struct func_02038f44_param4 *param_4, UnkSubClass1_02256FF8 *param_5,
                       unk32 param_6);
    void func_02039058(void);
    unk32 func_0203905c(u16 *param_2, UnkStruct_0203b264 *param_3, unk8 param_4, unk32 param_5);
    void func_02038d20(void);
    void func_020392b4(void);
    void func_02039398(void);
    void func_020393a8(s16 *param_2);
    void func_0203a188(unk32, unk32);
    unk32 func_0203a3e0(void);
    unk32 func_0203cb5c(unk8, s16);

    void func_0203dcfc(unk32 param_2, unk32 param_3, unk32 param_4, unk32 param_5);
    unk32 func_0203de14(u16 *);
    void func_0203e090(void);
    void func_0203e1b0(unk32, unk32, unk32);

    //! TODO: not sure it belongs to this class:

    void func_02033190(unk32 param_2, unk32 param_3, unk32 param_4, unk32 param_5);
    void func_020331c4(unk32, unk32);
    void func_0203947c(void);
    void func_0203cabc(unk32);
    unk32 func_0203e284(UnkStruct_0203b264 *, unk32, unk32);
    void func_0203e2ac(unk32 *param_2);
    s16 func_0203d318(s16, s16);
};
