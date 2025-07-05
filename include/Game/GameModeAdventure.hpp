#pragma once

#include "global.h"
#include "types.h"

#include "Game/GameModePlay.hpp"
#include "Render/FadeControl.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_02037750.hpp"

class UnkStruct_020fadf4_Base : public SysObject {
public:
    unk32 func_ov009_021136c4();
    unk32 func_ov009_0211370c();
};

class UnkStruct_0211a9ac : public SysObject {
public:
    /* 000 */ unk8 pad[0x354];
    /* 354 */

    UnkStruct_0211a9ac();
    ~UnkStruct_0211a9ac();

    void func_ov002_020f50c0(unk32 param_1);
    void func_ov002_020f5390(u16 *param_1);
    void func_ov002_020f5504(u16 *param_1);
    void func_ov002_020f56c8(u16 *param_1);
};

// ov003
class UnkStruct_020fadf4 : public UnkStruct_020fadf4_Base {
public:
    /* 00 */ unk8 pad[0x4c];
    /* 4c */

    UnkStruct_020fadf4();
    UnkStruct_020fadf4(UnkStruct_0211a9ac *param_1);
    ~UnkStruct_020fadf4();

    void func_ov009_021135d0();
    void func_ov003_020fae64();
};

class UnkStruct_020f2978_00 {
public:
    /* 000 (vtable) */
    /* 04 */ unk8 pad[0x14];
    /* 18 */

    /* 00 */ virtual void vfunc_00(); // func_ov000_020d0670
    /* 04 */ virtual void vfunc_04(); // func_ov000_020cff1c
    /* 08 */ virtual void vfunc_08(); // func_ov000_020d0000
    /* 0c */ virtual void vfunc_0c(); // func_ov000_020d0048
    /* 10 */ virtual void vfunc_10(); // func_ov000_020cff8c

    UnkStruct_020f2978_00();
    ~UnkStruct_020f2978_00();
};

// ov003
class UnkStruct_020f2978 : public SysObject {
public:
    /* 00 */ UnkStruct_020f2978_00 mUnk_00[2];
    /* 30 */ UnkStruct_02037750 mUnk_30;
    /* 50 */ unk8 pad2[0x88 - 0x50];
    /* 88 */

    UnkStruct_020f2978();

    unk32 func_ov003_020f2a2c();
    unk32 func_ov003_020f2acc();
};

class UnkStruct_0211ac0c : public UnkStruct_020fadf4_Base {
public:
    /* 00 */ unk32 mUnk_00;
    /* 04 */ FadeControl mUnk_04;
    /* 28 */ unk8 pad[0x44 - 0x28];
    /* 44 */

    UnkStruct_0211ac0c();
    UnkStruct_0211ac0c(UnkStruct_020f2978 *param_1);

    void func_ov009_0211372c();
    void func_ov003_020fb26c();
    unk32 func_ov009_021136e8();
    unk32 func_ov003_020fb148();
    unk32 func_ov003_020fb258(u16 *param_1);
    void func_ov009_0211ac2c();
    void func_ov003_020faf90();
    void func_ov003_020fb010();
};

class GameModeAdventure : public GameModePlay {
public:
    /* 000 (base) */
    /* 008 */ UnkStruct_0211a9ac *mUnk_008;
    /* 00c */ UnkStruct_020fadf4 *mUnk_00c;
    /* 010 */ UnkStruct_020f2978 *mUnk_010;
    /* 014 */ UnkStruct_0211ac0c *mUnk_014;
    /* 018 */

    /* 00 */ virtual ~GameModeAdventure() override;
    /* 08 */ virtual unk32 vfunc_08(unk32 param1) override;
    /* 0c */ virtual void vfunc_0c(u16 *param1) override;
    /* 10 */ virtual void vfunc_10(u16 *param1) override;
    /* 14 */ virtual void vfunc_14(u16 *param1) override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 20 */ virtual void vfunc_20() override;
    /* 24 */

    GameModeAdventure(unk32 param1);
    static GameModeAdventure *Create(unk32 param1);
};
