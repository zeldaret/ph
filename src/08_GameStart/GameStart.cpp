#include "GameStart/GameStart.hpp"
#include "Game/Game.hpp"
#include "Game/GameMode.hpp"
#include "System/OverlayManager.hpp"
#include "Unknown/UnkStruct_020ee698.hpp"
#include "Unknown/UnkStruct_020ee734.hpp"
#include "Unknown/UnkStruct_020ee820.hpp"
#include "Unknown/UnkStruct_020eec60.hpp"
#include "Unknown/UnkStruct_020eec68.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"

extern "C" {
// SDK functions
void func_02003f74(unk32);
void func_02003ce4(unk32);
void func_02004730(unk32);

unk32 *MountCompressedNarc(char *, char *, unk8 *, unk32, unk32);
void func_02031e1c(u32 *, const char *);
void func_02027ab4(unk32, u32 *, UNK_PTR, UNK_PTR, unk32, unk32, unk32, unk32);
void func_02016fcc(unk32 *);
void func_02004ba8();
void func_02004b94();
void func_02004c68();
void func_020425e0();
void func_ov000_0207a654(unk32 *);
void func_0200a23c();
void func_0200a318(u8 *);
unk32 func_0200dd94();
unk32 func_0200a284(u8 *);
u16 func_ov001_020efdac();
void *NewEXPH(char *id, s32 length, s32 param_3);
unk32 func_ov000_020773c0();
void func_020174a4(u32 *, void *);
void func_0201f378();
void func_0202019c(void *, const char *, u32 *, unk32);
void func_020213f0(u32 *);
void func_02021714(unk32, u32 *);
void func_020209a4(unk32, u32 *);
void func_0201f1ac(u32 *);
void func_0201f96c(unk32, unk32);
}

extern unk8 data_020691a0;
extern GameStart data_027e0d54;
extern unk32 data_ov000_020ec754;

#define REG_DISPCNT (*(u32 *) 0x04000000)
#define REG_DISPCNT_SUB (*(u32 *) 0x04001000)
#define UNK_027FFC3C (*(u32 *) 0x027ffc3c)

ARM GameStart *GameStart::Create(unk32 param1) {
    return new(data_027e0ce0[1], 4) GameStart(param1);
}

ARM GameStart::GameStart(unk32 param1) :
    GameMode(param1) {
    unk32 *uVar1;
    unk32 local_14;
    unk32 local_18;
    u32 local_1c;
    unk32 local_20;
    unk32 local_24;
    u32 local_28;

    this->mUnk_008 = 0;
    this->mUnk_00c = 0;

    func_02003f74(1);
    func_02003ce4(2);
    func_02004730(4);

    REG_DISPCNT &= ~0x1F00;
    REG_DISPCNT |= 0x1100;

    REG_DISPCNT_SUB &= ~0x1F00;
    REG_DISPCNT_SUB |= 0x0100;

    uVar1 = MountCompressedNarc("NLG", "Menu/Bg/NintendoLogo.bin", &data_020691a0, 0xCC00, 1);
    func_02031e1c(&local_28, "NLG:nLogo");
    func_02031e1c(&local_1c, "NLG:rightTxt");
    func_02027ab4(0, &local_28, &local_24, &local_20, 0, 0, 0, 2);
    func_02027ab4(4, &local_1c, &local_18, &local_14, 0, 0, 0, 2);
    func_02016fcc(uVar1);
}

ARM GameStart::~GameStart() {
    func_02004ba8();
    func_02004b94();
    func_02004c68();
}

ARM GameModeId GameStart::vfunc_08(bool param1) {
    GameModeId mode = GameModeId_Load;

    if (gGame.mFadeControl.mState != 0) {
        if (gGame.mFadeControl.mState != 1 && !param1) {
            this->mUnk_008++;

            if (this->mUnk_008 == 1) {
                this->mUnk_00c = UNK_027FFC3C;
            } else {
                if (this->mUnk_008 == 2 && gGame.mPrevModeId == 1) {
                    func_ov008_02112e88();
                }

                if (UNK_027FFC3C - this->mUnk_00c >= 60) {
                    gGame.func_0202cec8(1, 0);
                }
            }
        }
    } else {
        mode = GameModeId_Adventure;
    }

    return mode;
}

ARM void GameStart::vfunc_10(u16 *param1) {}

ARM void GameStart::func_ov008_02112e88() {
    func_020425e0();
    gOverlayManager.Load(OverlayIndex_Core, OverlayId_Core);
    data_ov000_020ee734.func_ov008_021131ac();
    data_027e0d54.func_ov008_02112f28();
    this->func_ov008_02113678(data_027e0ce0[0]);
    func_ov000_0207a654(&data_ov000_020ec754);
}

// --- class data_027e0d54 ---
ARM void GameStart::func_ov008_02112ee0() {}
ARM void GameStart::func_ov008_02112f28() {}

// --- TouchControl ---
ARM TouchControl::TouchControl() {
    u8 auStack_10[8];

    this->Init();
    func_0200a23c();

    if (func_0200dd94() != 0) {
        func_0200a318(NULL);
    } else {
        if (func_0200a284(auStack_10) != 0) {
            func_0200a318(auStack_10);
        }
    }
}

// --- data_ov000_020ee698 ---
ARM UnkStruct_020ee698::UnkStruct_020ee698() {
    void *newHeap;

    this->mUnk_00 = 0;
    this->mUnk_02 = 0;
    this->mUnk_04 = func_ov001_020efdac();
    this->mUnk_08 = 0x0D;
    this->mUnk_2c = 4;
    Fill16(0, this->mUnk_0c, 0x1E);

    newHeap = NewEXPH((char *) data_027e0ce0[1], 0x700, 0x20);

    if (func_ov000_020773c0() == 3) {
        this->mUnk_00 = 1;
    }

    func_020174a4(data_027e0ce0[1], newHeap);
}

// --- data_ov000_020ee734 ---
ARM UnkStruct_020ee734::UnkStruct_020ee734() {
    this->mUnk_90 = 0;
    this->mUnk_94 = 1;
    this->mUnk_95 = 0;
    this->mUnk_96 = 0;
    this->mUnk_97 = 0;
    this->mUnk_98 = 0;
    this->mUnk_99 = 0;
    this->mUnk_9a = 0;
    this->mUnk_9c = 0;
    this->mUnk_a0 = 0;
    this->mUnk_a4 = -1;
    this->mUnk_a8 = 0;
    this->mUnk_a9 = 0;

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_ac); i++) {
        this->mUnk_ac[i] = 0;
    }
}

ARM void UnkStruct_020ee734::func_ov008_021131ac() {
    if (func_0200dd94() == 0 && !this->mUnk_98) {
        func_0201f378();
        this->mUnk_90 = data_027e0ce0[3];
        func_0202019c(this, "SoundData/final_sound_data.sdat", data_027e0ce0[3], 0);
        func_020213f0(this->mUnk_90);
        func_02021714(9, this->mUnk_90);
        func_020209a4(1, this->mUnk_90);
        func_0201f1ac(this->mUnk_90);
        this->mUnk_b0 = 1;

        data_ov000_020eec68.func_ov008_021132cc();
        data_ov000_020eec9c.func_ov008_0211337c();
        data_ov000_020ee820.func_ov008_021133f0();
        data_ov000_020eec60.func_ov008_02113474();
        data_ov000_020ee820.func_ov000_020d69e4();

        for (s32 i = 0; i < 16; i++) {
            func_0201f96c(i, 0);
        }

        this->mUnk_98 = 1;
    }
}

// --- data_ov000_020eec68 ---
ARM void GameStart::func_ov008_02113284() {}
ARM void GameStart::func_ov008_021132cc() {}

// --- data_ov000_020eec9c ---
ARM void GameStart::func_ov008_02113314() {}
ARM void GameStart::func_ov008_0211337c() {}

// --- data_ov000_020ee820 ---
ARM void GameStart::func_ov008_021133bc() {}
ARM void GameStart::func_ov008_021133f0() {}

// --- data_ov000_020eec60 ---
ARM void GameStart::func_ov008_02113460() {}
ARM void GameStart::func_ov008_02113474() {}

// --- data_ov000_020ee6f8 ---
ARM void GameStart::func_ov008_021134b8() {}

// --- data_ov000_020ee0a0 ---
ARM void GameStart::func_ov008_0211351c() {}
ARM void GameStart::func_ov008_021135b8() {}

// --- data_027e0f88 ---
ARM void GameStart::func_ov008_021135bc() {} // ctor
ARM void GameStart::func_ov008_02113678(u32 *param_1) {} // create function
ARM void GameStart::func_ov008_021136c0() {} // sub-class ctor

// --- data_ov000_020eed2c ---
ARM void GameStart::func_ov008_021136ec() {}

// --- data_027e0dbc ---
ARM void GameStart::func_ov008_021136fc() {}

// --- gSaveItemManager ---
ARM void GameStart::func_ov008_02113730() {}
ARM void GameStart::func_ov008_02113968() {} // sub-class 1 dtor (array?)
ARM void GameStart::func_ov008_0211396c() {} // sub-class 1 ctor (array?)
ARM void GameStart::func_ov008_02113984() {} // sub-class 2 dtor (array?)
ARM void GameStart::func_ov008_02113988() {} // sub-class 2 ctor (array?)
ARM void GameStart::func_ov008_021139d8() {} // sub-class 3 dtor (array?)
ARM void GameStart::func_ov008_021139dc() {} // sub-class 3 ctor (array?)

// --- data_ov000_020e9370 ---
ARM void GameStart::func_ov008_02113a0c() {}

// --- data_ov000_020e9360 ---
ARM void GameStart::func_ov008_02113a40() {}

// --- data_ov000_020ec7dc ---
ARM void GameStart::func_ov008_02113aa8() {}
