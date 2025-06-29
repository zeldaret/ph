#pragma once

#include "global.h"
#include "types.h"

#include "Message/MsgProc.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_02035064.hpp"
#include "Unknown/UnkStruct_02038aa0.hpp"

// does it host both choices?
struct UnknownMsgChoiceStruct {
    /* 00 */ UnkStruct_0203b264 *mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */
};

class UnkStruct_020397f8_410;

// astruct_2, MsgProc_Type1
class UnkStruct_020397f8 : public UnkStruct_02038aa0 {
public:
    /* 000 (base) */
    /* 161 */ unk8 mUnk_161[0x3];
    /* 164 */ UnkStruct_020397f8 *mUnk_164;
    /* 168 */ UnkStruct_02035064 mUnk_168;
    /* 1f0 */ UnkStruct_02035064 mUnk_1f0;
    /* 278 */ UnkStruct_02035064 mUnk_278;
    /* 300 */ UnkStruct_02035064 mUnk_300;
    /* 388 */ UnkStruct_02035064 mUnk_388;
    /* 410 */ UnkStruct_020397f8_410 mUnk_410;
    /* 414 */ unk32 mUnk_414;
    /* 418 */ UnkStruct_02038aa0 *mUnk_418;
    /* 41c */ unk16 mUnk_41c;
    /* 41e */ unk16 mUnk_41e;
    /* 420 */ unk16 mUnk_420;
    /* 422 */ unk16 mUnk_422;
    /* 424 */ UnkStruct_020397f8_424 mUnk_424;
    /* 428 */ UnknownMsgChoiceStruct mUnk_428[0x20];
    /* 528 */ unk16 mUnk_528[4]; // number of choices?
    /* 530 */ unk32 mUnk_530;
    /* 534 */ unk16 mUnk_534;
    /* 536 */ unk16 mUnk_536;
    /* 538 */ unk16 mUnk_538;
    /* 53a */ unk16 mUnk_53a;
    /* 53c */ unk32 mUnk_53c;
    /* 540 */ unk32 mUnk_540;
    /* 544 */ unk8 mUnk_544;
    /* 545 */ unk8 mUnk_545;
    /* 546 */ unk8 mUnk_546;
    /* 547 */ unk8 mUnk_547;
    /* 548 */ unk16 mUnk_548;
    /* 54a */ unk16 mUnk_54a;
    /* 54c */ unk16 mUnk_54c;
    /* 54e */ unk16 mUnk_54e;
    /* 550 */ unk32 mUnk_550;
    /* 554 */ unk32 mUnk_554;
    /* 558 */ unk8 mUnk_558;
    /* 559 */ unk8 mUnk_559;
    /* 55a */ unk8 mUnk_55a;
    /* 55b */ unk8 mUnk_55b;
    /* 55c */ unk32 mUnk_55c;
    /* 560 */ unk32 mUnk_560;
    /* 564 */ u16 mUnk_564[4];
    /* 56c */ unk16 mUnk_56c;
    /* 56e */ unk16 mUnk_56e;
    /* 570 */ unk16 mUnk_570;
    /* 572 */ u16 mUnk_572;
    /* 574 */ s16 mUnk_574;
    /* 576 */ unk16 mUnk_576;
    /* 578 */ s16 mUnk_578;
    /* 57a */ u8 mUnk_57a;
    /* 57b */ u8 mUnk_57b;
    /* 57c */ u8 mUnk_57c;
    /* 57d */ u8 mUnk_57d;
    /* 57e */ u8 mUnk_57e;
    /* 57f */ u8 mUnk_57f;
    /* 580 */ u8 mUnk_580;
    /* 581 */ u8 mUnk_581;
    /* 582 */ u8 mUnk_582;
    /* 583 */ u8 mUnk_583;
    /* 584 */ unk8 mUnk_584;
    /* 585 */ u8 mUnk_585;
    /* 586 */ u8 mUnk_586;
    /* 587 */ unk8 mUnk_587;
    /* 588 */ UnkSubClass1_unk_124 mUnk_588;
    /* 5b4 */

    UnkStruct_020397f8();
    /* 4c */ virtual void vfunc_4c();
    /* 2c */ virtual void vfunc_2c();
    void func_02039ca8();
    /* 3c */ virtual void vfunc_3c(unk32 param1);
    /* 40 */ virtual void vfunc_40(s32 param1, s32 param2);
    void func_0203a188(s32 param1, s32 param2); // void func_0203a188(unk32 param_2, unk32 param_3, unk32 param_4);
    bool func_0203a2c0();
    unk32 func_0203a30c();
    /* 48 */ virtual void vfunc_48();
    void func_0203a35c();
    bool func_0203a3e0();
    /* 44 */ virtual void vfunc_44(s32 touchLastX, s32 touchLastY);
    bool func_0203a6d0(unk32 param1, unk32 param2);
    /* 50 */ virtual void vfunc_50(EntryINF1 *param1, unk32 param2, s32 *param3, unk32 param4);
    /* 54 */ virtual void vfunc_54();
    /* 5c */ virtual void vfunc_5c();
    /* 58 */ virtual void vfunc_58();
    bool func_0203b0bc();
    s32 func_0203b0ec(u32 param1);
    /* 18 */ virtual unk32 vfunc_18(UnkStruct_0203b264 *param1, unk32 param2, unk32 param3);
    /* 1c */ virtual unk32 vfunc_1c(u16 *param1, UnkStruct_0203b264 *param2, unk8 param3, unk32 param4);
    /* 60 */ virtual void vfunc_60(func_0203b410_param1 *param1, unk32 param2, unk32 param3);
    /* 64 */ virtual void vfunc_64(s16 *param1);
    void func_0203b764();
    /* 20 */ virtual unk32 vfunc_20(s32 param1, s32 *param2);
    void func_0203bd8c(s32 param1); // void func_0203bd8c(u16 param_2);
    /* 6c */ virtual void vfunc_6c(s32 *param1, s32 *param2);
    void func_0203be08();
    void func_0203be64();
    bool func_0203c084();
    bool func_0203c13c();
    bool func_0203c1a0();
    static bool func_0203c25c(class UnkStruct_020397f8 *param1);
    /* 00 */ virtual ~UnkStruct_020397f8();
    /* 38 */ virtual bool vfunc_38();
    /* 74 */

    //! TODO: check if this is really here
    void func_02039a3c(void);
    unk32 func_02039250(void);
};

class MsgProc_Type3 : public UnkStruct_02038aa0 {
public:
    /* 000 (base) */
    /* 161 */ unk8 mUnk_161;
    /* 162 */ unk16 mUnk_162;
    /* 164 */ unk16 mUnk_164;
    /* 166 */ unk16 mUnk_166;
    /* 168 */ unk16 mUnk_168;
    /* 16a */ unk16 mUnk_16a;
    /* 16c */ unk16 mUnk_16c;
    /* 16e */ unk16 mUnk_16e;
    /* 170 */ unk16 mUnk_170;
    /* 172 */ unk16 mUnk_172;
    /* 174 */ unk16 mUnk_174;
    /* 178 */ unk32 mUnk_178;
    /* 17c */ unk32 mUnk_17c;
    /* 180 */ UnkClass_func_ov000_020d0644 mUnk_180[4];
    /* 1c0 */

    MsgProc_Type3();
    MsgProc_Type3(unk32 param_2, unk16 param_3, unk32 param_4);
    //! TODO: remove the function declarations that are not overridden
    /* 00 */ virtual ~MsgProc_Type3();
    /* 08 */ virtual void vfunc_08(unk32 *param_2, unk32 *param_3) override;
    /* 0c */ virtual void vfunc_0C(u8 param_2, u8 param_3, u8 param_4, unk32 param_5) override;
    /* 10 */ virtual void vfunc_10(u8 param_2, u8 param_3) override; // func_0203e060?
    /* 14 */ virtual bool vfunc_14(unk32 param_2, unk32 param_3) override;
    /* 18 */ virtual unk32 vfunc_18(UnkStruct_0203b264 *param_2, unk32 param_3, unk32 param_4) override;
    /* 1c */ virtual unk32 vfunc_1C(u16 *param_2, UnkStruct_0203b264 *param_3, unk8 param_4, unk32 param_5) override;
    /* 20 */ virtual void vfunc_20(void) override;
    /* 24 */ virtual void vfunc_24(void) override;
    /* 28 */ virtual bool vfunc_28(void) override;
    /* 2c */ virtual void vfunc_2C(void) override;
    /* 30 */ virtual void vfunc_30(void) override;
    /* 34 */ virtual unk32 vfunc_34(unk32 param_2) override;
    /* 38 */ virtual bool vfunc_38(void) override;
    /* 3c */ virtual void vfunc_3C(unk32 param_2) override;
    /* 40 */ virtual void vfunc_40(unk32 param_2, unk32 param_3) override;
    /* 44 */ virtual void vfunc_44(s32 touchLastX, s32 touchLastY) override;
    /* 48 */ virtual void vfunc_48(void) override;
    /* 4c */ virtual void vfunc_4C(void) override; // func_02039a3c?
    /* 50 */ virtual void vfunc_50(EntryINF1 *param_2, u32 param_3, s16 *param_4, UnkSubClass1_02256FF8 *param_5) override;
    /* 54 */ virtual void vfunc_54(void) override;
    /* 58 */ virtual void vfunc_58(void) override;
    /* 5c */ virtual void vfunc_5C(void) override;
    /* 60 */ virtual void vfunc_60(func_0203b410_param1 *param_2, unk32 param_3, unk32 param_4) override;
    /* 64 */ virtual void vfunc_64(s16 *param_2) override;
    /* 68 */ virtual unk32 vfunc_68(unk32 param_2) override;
    /* 6c */ virtual void vfunc_6C(unk32 *param_2, unk32 *param_3) override;
    /* 70 */ virtual void vfunc_70(unk32 *param_2, unk32 *param_3) override;
    /* 74 */

    static void func_0203c83c(void);
};

class MsgProc_Type2 : public UnkStruct_02038aa0 {
public:
    /* 000 (base) */
    /* 161 */ unk8 mUnk_161;
    /* 162 */ unk16 mUnk_162;
    /* 164 */ unk16 mUnk_164;
    /* 166 */ unk16 mUnk_166;
    /* 168 */ unk16 mUnk_168;
    /* 16a */ unk16 mUnk_16a;
    /* 16c */ unk16 mUnk_16c;
    /* 16e */ unk16 mUnk_16e;
    /* 170 */

    MsgProc_Type2();
    MsgProc_Type2(unk32 param_2, unk16 param_3, unk32 param_4);
    /* 00 */ virtual ~MsgProc_Type2();
    /* 14 */ /* func_0203c5c4 */ virtual bool vfunc_14(unk32 param_2, unk32 param_3) override;
    /* 3c */ /* func_0203c414 */ virtual void vfunc_3C(unk32 param_2) override;
    /* 40 */ /* func_0203c460 */ virtual void vfunc_40(unk32 param_2, unk32 param_3) override;
    /* 4c */ /* func_0203c39c */ virtual void vfunc_4C(void) override; // func_02039a3c?

    //! TODO: vfunc_4C?
    void func_0203c39c(unk32 param_2, unk32 param_3);

    void func_0203c4ac(unk32, unk32);
};
