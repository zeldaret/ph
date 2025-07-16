#include "GameStart/GameStart.hpp"
#include "Game/Game.hpp"
#include "Game/GameMode.hpp"
#include "Save/SaveItemManager.hpp"
#include "System/OverlayManager.hpp"
#include "Unknown/UnkStruct_020e9360.hpp"
#include "Unknown/UnkStruct_020e9370.hpp"
#include "Unknown/UnkStruct_020ec7dc.hpp"
#include "Unknown/UnkStruct_020ee0a0.hpp"
#include "Unknown/UnkStruct_020ee698.hpp"
#include "Unknown/UnkStruct_020ee6f8.hpp"
#include "Unknown/UnkStruct_020ee734.hpp"
#include "Unknown/UnkStruct_020ee820.hpp"
#include "Unknown/UnkStruct_020eec60.hpp"
#include "Unknown/UnkStruct_020eec68.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"
#include "Unknown/UnkStruct_020eed2c.hpp"
#include "Unknown/UnkStruct_027e0d54.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"
#include "Unknown/UnkStruct_027e0f88.hpp"
#include "Unknown/UnkStruct_func_0201f704.hpp"

#pragma dont_reuse_strings off

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
}

extern unk8 data_020691a0;
extern unk32 data_ov000_020ec754;
extern unk32 data_ov000_020d8795;
extern u8 data_ov000_020d88b4[24];

#define REG_DISPCNT (*(u32 *) 0x04000000)
#define REG_DISPCNT_SUB (*(u32 *) 0x04001000)
#define FRAME_COUNTER (*(u32 *) 0x027ffc3c)

ARM GameStart *GameStart::Create(GameModeId modeId) {
    return new(data_027e0ce0[1], 4) GameStart(modeId);
}

ARM GameStart::GameStart(GameModeId modeId) :
    GameMode(modeId) {
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

    switch (gGame.mFadeControl.mState) {
        case 1:
            if (!param1) {
                this->mUnk_008++;
                if (this->mUnk_008 == 1) {
                    this->mUnk_00c = FRAME_COUNTER;
                } else {
                    if (this->mUnk_008 == 2 && gGame.mPrevModeId == 1) {
                        GameStart::func_ov008_02112e88();
                    }
                    if (FRAME_COUNTER - this->mUnk_00c >= 60) {
                        gGame.func_0202cec8(1, 0);
                    }
                }
            }
            break;
        case 0:
            mode = GameModeId_Adventure;
            break;
        default:
            break;
    }

    return mode;
}

ARM void GameStart::vfunc_10(u16 *param1) {}

ARM void GameStart::func_ov008_02112e88() {
    func_020425e0();
    gOverlayManager.Load(OverlayIndex_Core, OverlayId_Core);
    data_ov000_020ee734.func_ov008_021131ac();
    data_027e0d54.func_ov008_02112f28();
    UnkStruct_027e0f88::func_ov008_02113678(data_027e0ce0[0]);
    func_ov000_0207a654(&data_ov000_020ec754);
}
