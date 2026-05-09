#pragma once

#include "Render/ModelRender.hpp"
#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"
#include "Unknown/UnkStruct_ov000_020c5c2c.hpp"
#include "Unknown/UnkStruct_ov000_020d18f4.hpp"

class ActorCharacterBase : public Actor {
public:
    /* 000 (base) */
    /* 158 */ UnkStruct_ov000_020d18f4 mUnk_158;
    /* 1b4 */ unk32 mUnk_1b4;
    /* 1b8 */ unk32 mUnk_1b8;
    /* 1bc */ unk32 mUnk_1bc;
    /* 1c0 */ unk8 mUnk_1c0;
    /* 1c1 */ unk8 mUnk_1c1;
    /* 1c2 */ unk8 mUnk_1c2;
    /* 1c3 */ unk8 mUnk_1c3;
    /* 1c4 */

    /* 00 */ virtual ~ActorCharacterBase() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* 68 */ virtual void vfunc_68() override;
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
    /* d8 */ virtual unk32 vfunc_d8();
    /* dc */ virtual unk32 vfunc_dc();
    /* e0 */ virtual unk32 vfunc_e0();
    /* e4 */ virtual unk32 vfunc_e4();
    /* e8 */ virtual void vfunc_e8();
    /* ec */

    ActorCharacterBase();
};

struct ActorCharacter_1c4 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */
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
    /* 70 */ unk32 mUnk_70;
    /* 74 */ unk32 mUnk_74;
    /* 78 */ Vec3p mUnk_78;
    /* 84 */ unk32 mUnk_84;
    /* 88 */ unk32 mUnk_88;
    /* 8c */ unk8 mUnk_8c;
    /* 8d */ unk8 mUnk_8d;
    /* 8e */ unk8 mUnk_8e;
    /* 8f */ unk8 mUnk_8f;
    /* 90 */

    /* 00 */ virtual ~ActorCharacterModel() override;
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData) override;
    /* 40 */

    ActorCharacterModel();
};

class ActorCharacter_288 : public UnkStruct_ov000_020c0c08 {
public:
    /* 00 (base) */
    /* 24 */ UnkStruct_ov000_020c0c08_04 *mUnk_24;
    /* 28 */ PAD(0x28, 0x80);
    /* 80 */

    ActorCharacter_288();
};

struct ActorCharacter_430 {
    /* 00 */ PAD(0x00, 0x18);
    /* 18 */
};

class ActorCharacter : public ActorCharacterBase {
public:
    /* 000 (base) */
    /* 1c4 */ ActorCharacter_1c4 mUnk_1c4;
    /* 1d8 */ UnkStruct_ov000_020c5c2c mUnk_1d8;
    /* 1f8 */ ActorCharacterModel mUnk_1f8;
    /* 288 */ ActorCharacter_288 mUnk_288[2];
    /* 388 */ ActorCharacter_288 mUnk_388;
    /* 408 */ unk32 mUnk_408;
    /* 40c */ unk32 mUnk_40c;
    /* 410 */ unk32 mUnk_410;
    /* 414 */ unk32 mUnk_414;
    /* 418 */ unk32 mUnk_418;
    /* 41c */ unk32 mUnk_41c;
    /* 420 */ unk32 mUnk_420;
    /* 424 */ unk32 mUnk_424;
    /* 428 */ unk32 mUnk_428;
    /* 428 */ PAD(0x42c, 0x42e);
    /* 42e */ unk8 mUnk_42e;
    /* 42f */ unk8 mUnk_42f;
    /* 430 */ ActorCharacter_430 mUnk_430;
    /* 448 */ unk32 mUnk_448;
    /* 44c */ PAD(0x44c, 0x454);
    /* 454 */ unk32 mUnk_454;
    /* 458 */ unk32 mUnk_458;
    /* 44c */ PAD(0x45c, 0x460);
    /* 460 */ unk32 mUnk_460;
    /* 464 */ unk32 mUnk_464;
    /* 468 */ unk8 mUnk_468;
    /* 469 */ unk8 mUnk_469;
    /* 46a */ PAD(0x46a, 0x46c);
    /* 46c */ unk32 mUnk_46c[1];
    /* 470 */

    /* 00 */ virtual ~ActorCharacter() override;
    /* 08 */ virtual bool Init() override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* 40 */ virtual bool IsHitboxTouched(bool param1) override;
    /* 68 */ virtual void vfunc_68() override;
    /* 74 */ virtual void vfunc_74() override;
    /* 78 */ virtual bool vfunc_78() override;
    /* 7c */ virtual void vfunc_7c() override;
    /* 80 */ virtual void vfunc_80() override;
    /* 84 */ virtual void vfunc_84() override;
    /* 90 */ virtual bool vfunc_90() override;
    /* 94 */ virtual void vfunc_94() override;
    /* 98 */ virtual bool vfunc_98() override;
    /* 9c */ virtual bool vfunc_9c() override;
    /* c8 */ virtual void vfunc_c8() override;
    /* cc */ virtual void vfunc_cc() override;
    /* d0 */ virtual void vfunc_d0() override;
    /* ec */ virtual void vfunc_ec(unk32 param1);
    /* f0 */ virtual void vfunc_f0(unk32 param1);
    /* f4 */

    ActorCharacter();

    void func_ov014_02144d94();
    void func_ov014_02144dec();
    void func_ov014_02144e14();
    void func_ov014_02144e28();
    void func_ov014_02144e3c();
    void func_ov014_02144e58();
    void func_ov014_02144e74();

    void func_ov014_02145178();
    void func_ov014_021451f0(unk32 *param1);
    void func_ov014_02145258();
    unk32 func_ov014_021452b0();
    unk32 func_ov014_02145318();
    void func_ov014_021453f4();
    void func_ov014_02145414();
    void func_ov014_0214548c();
    void func_ov014_02145508();
    void func_ov014_0214552c();
    void func_ov014_0214591c();
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
