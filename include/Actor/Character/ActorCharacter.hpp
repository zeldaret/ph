#pragma once

#include "Actor/ActorRef.hpp"
#include "Render/ModelRender.hpp"
#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"
#include "Unknown/UnkStruct_ov000_020c5c2c.hpp"
#include "Unknown/UnkStruct_ov000_020d18f4.hpp"

struct UnkStruct_ov014_021448f4 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */

    UnkStruct_ov014_021448f4() :
        mUnk_00(0) {}
};

class ActorCharacterBase : public Actor {
public:
    /* 000 (base) */
    /* 158 */ UnkStruct_ov000_020d18f4 mUnk_158;
    /* 1b4 */ unk32 mUnk_1b4;
    /* 1b8 */ bool (*mUnk_1b8)(ActorCharacterBase *);
    /* 1bc */ ActorCharacterBase *mUnk_1bc;
    /* 1c0 */ bool mUnk_1c0;
    /* 1c1 */ bool mUnk_1c1;
    /* 1c2 */ bool mUnk_1c2;
    /* 1c3 */ bool mUnk_1c3;
    /* 1c4 */

    /* 00 */ virtual ~ActorCharacterBase() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* 68 */ virtual void vfunc_68(unk32 param1, UnkStruct_020397f8 *param2) override;
    /* 80 */ virtual void vfunc_80() override;
    /* 84 */ virtual void vfunc_84() override;
    /* b4 */ virtual void vfunc_b4();
    /* b8 */ virtual void vfunc_b8();
    /* bc */ virtual bool vfunc_bc();
    /* c0 */ virtual bool vfunc_c0();
    /* c4 */ virtual void vfunc_c4() = 0;
    /* c8 */ virtual void vfunc_c8();
    /* cc */ virtual void vfunc_cc();
    /* d0 */ virtual void vfunc_d0();
    /* d4 */ virtual unk32 vfunc_d4();
    /* d8 */ virtual unk32 vfunc_d8(unk32 param1);
    /* dc */ virtual unk32 vfunc_dc(unk32 param1);
    /* e0 */ virtual unk32 vfunc_e0(unk32 param1);
    /* e4 */ virtual unk32 vfunc_e4(unk32 param1);
    /* e8 */ virtual UnkStruct_ov014_021448f4 vfunc_e8(u16 param2, u16 param3);
    /* ec */

    ActorCharacterBase();
};

struct ActorCharacter_1c4 {
    /* 00 */ Vec3p mUnk_00;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */

    ActorCharacter_1c4();
};

class ActorCharacterModel : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ unk32 mUnk_5c;
    /* 60 */ unk32 mUnk_60;
    /* 64 */ unk16 mUnk_64;
    /* 66 */ unk16 mUnk_66;
    /* 68 */ unk16 mUnk_68;
    /* 6a */ unk16 mUnk_6a;
    /* 6c */ unk16 mUnk_6c;
    /* 6e */ unk16 mUnk_6e;
    /* 70 */ ActorRef mUnk_70;
    /* 78 */ Vec3p mUnk_78;
    /* 84 */ unk32 mUnk_84;
    /* 88 */ unk32 mUnk_88;
    /* 8c */ bool mUnk_8c;
    /* 8d */ unk8 mUnk_8d;
    /* 8e */ unk8 mUnk_8e;
    /* 8f */ bool mUnk_8f;
    /* 90 */

    /* 00 */ ARM virtual ~ActorCharacterModel() override {}
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData) override;
    /* 40 */

    ActorCharacterModel();

    void func_ov014_0214a92c(Vec3p *param1, Vec3p *param2, s16 angle);
    unk32 func_ov014_0214aa0c(Vec3p *param1, s16 angle);
};

class ActorCharacter_1d8_b0 : public UnkStruct_ov000_020c0c08 {
public:
    /* 00 (base) */
    /* 24 */ UnkStruct_ov000_020c0c08_04 mUnk_24;
    /* 44 */ PAD(0x44, 0x80);
    /* 80 */

    /* 00 */ virtual ~ActorCharacter_1d8_b0() override;
    /* 08 */

    inline ActorCharacter_1d8_b0();
};

struct ActorCharacter_430_04_04 {
    /* 00 */ PAD(0x00, 0x04);
    /* 04 */ Vec3p mUnk_04;
    /* 10 */ PAD(0x10, 0x24);
    /* 24 */
};

struct ActorCharacter_430_04 {
    /* 00 */ u8 *mUnk_00;
    /* 04 */ ActorCharacter_430_04_04 *mUnk_04;
    /* 08 */
};

struct ActorCharacter_430 {
    /* 00 */ PAD(0x00, 0x4);
    /* 04 */ ActorCharacter_430_04 *mUnk_04;
    /* 08 */ PAD(0x08, 0xc);
    /* 0c */ unk8 mUnk_0c;
    /* 0d */ PAD(0x0d, 0x18);
    /* 18 */

    ActorCharacter_430();
    ~ActorCharacter_430();

    bool func_ov000_020c66e4(Vec3p *pos, s16 angle, unk32 param3);
    bool func_ov000_020c6794(Vec3p *pos);
    void func_ov000_020c6838(Vec3p *pos, unk32 param2, s16 angle, unk32 param4, Vec3p *vel, u16 *pAngle);
    bool func_ov000_020c6e30(Vec3p *vec);
    void func_ov000_020c6f08(Vec3p *vec);
};

struct ActorCharacter_1d8_248 {
    /* 00 */ unk32 mUnk_00[2];
    /* 08 */ unk32 mUnk_08;
    /* 0c */ PAD(0x0c, 0x0e);
    /* 0e */ unk8 mUnk_0e;
    /* 0f */ unk8 mUnk_0f;
    /* 10 */

    inline ActorCharacter_1d8_248() {
        mUnk_08    = 0;
        mUnk_0e    = 1;
        mUnk_0f    = 0;
        mUnk_00[0] = -1;
        mUnk_00[1] = -1;
    }
};

class ActorCharacter_1d8 : public UnkStruct_ov000_020c5c2c {
public:
    /* 000 (base) */
    /* 020 */ ActorCharacterModel mUnk_020;
    /* 0b0 */ ActorCharacter_1d8_b0 mUnk_0b0[2];
    /* 1b0 */ ActorCharacter_1d8_b0 mUnk_1b0;
    /* 230 */ unk32 mUnk_230;
    /* 234 */ unk32 mUnk_234;
    /* 238 */ unk32 mUnk_238;
    /* 23c */ unk32 mUnk_23c;
    /* 240 */ unk32 mUnk_240;
    /* 244 */ unk32 mUnk_244;
    /* 248 */ ActorCharacter_1d8_248 mUnk_248;

    /* 00 */ virtual void vfunc_00(unk32 param1, unk32 *param2, unk32 *param3) override; // func_ov014_02145bcc
    /* 04 */ virtual void vfunc_04() override; // func_ov014_02146194
    /* 0c */

    inline ActorCharacter_1d8(void *param1) :
        UnkStruct_ov000_020c5c2c(param1, &mUnk_020, &mUnk_0b0[0]),
        mUnk_230(0),
        mUnk_234(0),
        mUnk_238(0),
        mUnk_23c(0),
        mUnk_240(0x1000),
        mUnk_244(0x11f) {}

    void func_ov014_02145cac();
    void func_ov014_02145e48(unk32 param1);
    bool func_ov014_02145f0c(unk32 param1);

    inline bool UnkFunc1(unk32 param1) {
        return param1 == mUnk_248.mUnk_00[mUnk_248.mUnk_08];
    }
};

class ActorCharacter : public ActorCharacterBase {
public:
    /* 000 (base) */
    /* 1c4 */ ActorCharacter_1c4 mUnk_1c4;
    /* 1d8 */ ActorCharacter_1d8 mUnk_1d8;
    /* 430 */ ActorCharacter_430 mUnk_430;
    /* 448 */ unk32 mUnk_448;
    /* 44c */ unk32 mUnk_44c;
    /* 450 */ unk32 mUnk_450;
    /* 454 */ unk32 mUnk_454;
    /* 458 */ unk32 mUnk_458;
    /* 44c */ unk32 mUnk_45c;
    /* 460 */ unk32 mUnk_460;
    /* 464 */ unk32 mUnk_464;
    /* 468 */ bool mUnk_468;
    /* 469 */ bool mUnk_469;
    /* 46a */ PAD(0x46a, 0x46c);
    /* 46c */ unk32 mUnk_46c[1];
    /* 470 */

    /* 00 */ virtual ~ActorCharacter() override;
    /* 08 */ virtual bool Init() override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* 40 */ virtual bool IsHitboxTouched(bool param1) override;
    /* 74 */ virtual void vfunc_74(ActorRef *ref) override;
    /* 78 */ virtual bool vfunc_78() override;
    /* 7c */ virtual void vfunc_7c(ActorRef *ref) override;
    /* 80 */ virtual void vfunc_80() override;
    /* 84 */ virtual void vfunc_84() override;
    /* 90 */ virtual bool vfunc_90(unk32 param1, unk32 param2) override;
    /* 94 */ virtual void vfunc_94(unk32 param1, unk32 param2) override;
    /* 98 */ virtual bool vfunc_98() override;
    /* 9c */ virtual bool vfunc_9c() override;
    /* c8 */ virtual void vfunc_c8() override;
    /* cc */ virtual void vfunc_cc() override;
    /* d0 */ virtual void vfunc_d0() override;
    /* ec */ virtual void vfunc_ec(unk32 param1);
    /* f0 */ virtual void vfunc_f0(unk32 param1, unk32 param2);
    /* f4 */

    ActorCharacter();

    void func_ov014_02144d94();
    void func_ov014_02144dec();
    bool func_ov014_02144e14();
    bool func_ov014_02144e28();
    bool func_ov014_02144e3c();
    bool func_ov014_02144e58();
    bool func_ov014_02144e74();

    void func_ov014_02145178();
    void func_ov014_021451f0(unk32 *param1);
    void func_ov014_02145258();
    unk32 func_ov014_021452b0();
    unk32 func_ov014_02145318();
    void func_ov014_021453f4(unk32 param1);
    void func_ov014_02145414(unk32 param1, unk32 param2);
    void func_ov014_0214548c(unk32 param1);
    void func_ov014_02145508();
    static bool func_ov014_02145520(ActorCharacterBase *actor);
    bool func_ov014_0214552c();
    void func_ov014_0214591c();

    inline unk32 UnkInline1() {
        unk32 ret = 1;
        if (mUnk_458 != -1) {
            ret      = mUnk_458;
            mUnk_458 = -1;
        }
        return ret;
    }
};

class ActorGenericCharacter : public ActorCharacter {
public:
    /* 000 (base) */
    /* 470 */ PAD(0x470, 0x474);
    /* 474 */ ActorGenericCharacter *mUnk_474;
    /* 478 */ void *mUnk_478;
    /* 47c */ unk32 mUnk_47c;
    /* 480 */ PAD(0x480, 0x484);
    /* 484 */ unk32 mUnk_484;
    /* 488 */ unk32 mUnk_488;
    /* 48c */ unk32 mUnk_48c;
    /* 490 */ unk8 mUnk_490;
    /* 491 */ PAD(0x491, 0x492);
    /* 492 */ unk16 mUnk_492;
    /* 494 */ unk16 mUnk_494;
    /* 496 */ unk16 mUnk_496;
    /* 498 */ unk16 mUnk_498;
    /* 49a */ PAD(0x49a, 0x49c);
    /* 49c */

    /* 00 */ virtual ~ActorGenericCharacter() override;
    /* 08 */ virtual bool Init() override;
    /* 68 */ virtual void vfunc_68() override;
    /* 80 */ virtual void vfunc_80() override;
    /* 84 */ virtual void vfunc_84() override;
    /* c0 */ virtual bool vfunc_c0() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* f4 */ virtual void vfunc_f4() = 0;
    /* f8 */ virtual void vfunc_f8();
    /* fc */

    ActorGenericCharacter();

    void func_ov014_02147940();
    void func_ov014_02147950();

    void func_ov014_02147ae8();
    bool func_ov014_02147b18();
    void func_ov014_02147ba0();
    bool func_ov014_02147bb0();
    unk32 func_ov014_02147bd8();
    void func_ov014_02147c00();

    void func_ov014_02147c98();
    void func_ov014_02147ce8(unk32 param1);
    void func_ov014_02147d44(unk32 param1);

    void func_ov014_02147dfc();
    void func_ov014_02147e1c();
    void func_ov014_02147e64();
    void func_ov014_02147ebc();

    void func_ov014_02147ee4();
    void func_ov014_02147fbc();
    void func_ov014_02147fcc();
    void func_ov014_021480dc();
    void func_ov014_02148130();
    void func_ov014_0214813c();
    void func_ov014_02148168();
    void func_ov014_02148198();
    void func_ov014_021481cc();
    void func_ov014_021481fc();
};
