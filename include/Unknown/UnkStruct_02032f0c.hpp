#pragma once

#include "global.h"
#include "types.h"

#include "Message/BMG.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_02032e7c.hpp"

struct UnkStruct_000 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */

    UnkStruct_000();
};

class UnkSubClass1_02256FF8 {
public:
    /* 00 (vtable) */
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ u8 mUnk_1c;
    /* 20 */

    UnkSubClass1_02256FF8();
    /* 00 */ virtual ~UnkSubClass1_02256FF8() override;
    /* 08 */ virtual void vfunc_08(void) override;
    /* 0c */ virtual void vfunc_0c(void) override;
    /* 10 */ virtual void vfunc_10(void) override;
    /* 14 */ virtual void vfunc_14(void) override;
    /* 18 */ virtual void vfunc_18(void) override;
    /* 1c */ virtual void vfunc_1c(void) override;
    /* 20 */ virtual void vfunc_20(void) override;
    /* 24 */ virtual void vfunc_24(void) override;
    /* 28 */ virtual void vfunc_28(void) override;
    /* 2c */ virtual void vfunc_2c(void) override;
    /* 30 */ virtual void vfunc_30(void) override;
    /* 34 */ virtual void vfunc_34(void) override;
    /* 38 */ virtual void vfunc_38(void) override;
    /* 3c */
};

struct UnkStruct_MsgProc_Base_unk_2C {
    /* 00 */ s8 mUnk_00;
    /* 01 */ s8 mUnk_01;
    /* 02 */ u16 mUnk_02;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ u8 *mUnk_08;
    /* 0c */
};

struct func_0203b410_param1 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk16 mUnk_10;
    /* 12 */ unk16 mUnk_12;
    /* 14 */
};

// astruct_8, MsgProc_Base
class UnkStruct_02032f0c : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ unk32 *mUnk_04;
    /* 08 */ UnkSubClass1_02256FF8 *mUnk_08;
    /* 0c */ u16 *mUnk_0c;
    /* 10 */ unk32 *mUnk_10;
    /* 14 */ s32 mUnk_14; // some width?
    /* 18 */ s32 mUnk_18; // some height?
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk32 *mUnk_24;
    /* 28 */ unk32 *mUnk_28;
    /* 2c */ UnkStruct_MsgProc_Base_unk_2C **mUnk_2c;
    /* 30 */ s32 mUnk_30;
    /* 34 */ s32 mUnk_34;
    /* 38 */ unk32 mUnk_38;
    /* 3c */ unk16 mUnk_3c;
    /* 3e */ unk16 mUnk_3e;
    /* 40 */ unk32 mUnk_40;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ u8 mUnk_48;
    /* 49 */ u8 mUnk_49;
    /* 4a */ u16 mUnk_4a;
    /* 4c */ u8 mUnk_4c;
    /* 4d */ u8 mUnk_4d;
    /* 4e */ u8 mUnk_4e;
    /* 4f */ u8 mUnk_4f;
    /* 50 */ u8 mUnk_50;
    /* 51 */ u8 mUnk_51;
    /* 52 */

    /* 00 */ virtual ~UnkStruct_02032f0c();
    /* 08 */ virtual void vfunc_08(s32 param1, unk32 param2, s16 *param3, unk32 param4);
    /* 0c */ virtual void vfunc_0c(unk32 param1, unk32 param2, unk32 param3, unk32 param4);
    /* 10 */ virtual void vfunc_10(u32 param1, unk32);
    /* 14 */ virtual bool vfunc_14(s32 param1, s32 param2);
    /* 18 */ virtual unk32 vfunc_18(UnkStruct_02032e7c *param1, unk32 param2, unk32 param3);
    /* 1c */ virtual unk32 vfunc_1c(s32 param1, unk32 *param2, unk32 param3, unk32 param4);
    /* 20 */ virtual unk32 vfunc_20(s32 param1, s32 *param2);
    /* 24 */ virtual bool vfunc_24(s16 **param1);
    /* 28 */

    UnkStruct_02032f0c();
    u16 **func_02032f98(u16 *value);
    u8 func_02032fa4();
    s32 func_02032fb4();
    void func_02033214(unk32 param1, unk32 param2, unk32 param3, u8 param4, UnkSubClass1_02256FF8 *param5);
    void func_020334b4(u32 param1, s32 param2, s32 param3, s32 param4);
    unk32 func_02033628(UnkStruct_02032e7c *param1, u16 **param2, unk32 param3);
    u32 func_0203369c(u16 *param1, s32 param2);
    void func_02033780(s32 param1);
    s32 func_020337d8(s32 param1);
    s32 func_020337fc(s16 *param1, s32 param2);
    void func_020338a8(UnkStruct_02032e7c *param1, unk32 param2);
    void func_020338d0(unk32 *param1, unk32 param2);
    s32 func_02033904(unk32 param1, unk32 param2);
    s32 func_02033938(unk32 param1);
    s32 func_0203396c(u16 *param1);
    u16 *func_02033b0c(s32 param1);
    bool func_02033c6c();
    unk32 func_02033c88(u32 param1);
    s32 func_02033cbc(s16 *param1);
};
