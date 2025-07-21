#include "Game/Game.hpp"

#include <nds/gfx.h>
#include <nds/irq.h>

#include "DTCM/UnkStruct_027e037c.hpp"
#include "DTCM/UnkStruct_027e05f8.hpp"
#include "DTCM/UnkStruct_027e077c.hpp"
#include "DTCM/UnkStruct_027e080c.hpp"
#include "DTCM/UnkStruct_027e08f8.hpp"
#include "DTCM/UnkStruct_027e08fc.hpp"
#include "DTCM/UnkStruct_027e0c38.hpp"
#include "DTCM/UnkStruct_027e0c54.hpp"
#include "DTCM/UnkStruct_027e0e2c.hpp"
#include "DTCM/UnkStruct_027e0ffc.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Game/GameModeAdventure.hpp"
#include "Game/GameModeBattle.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/TouchControl.hpp"
#include "Render/FadeController.hpp"
#include "System/OverlayManager.hpp"
#include "System/Random.hpp"
#include "Unknown/UnkStruct_0203dae0.hpp"
#include "Unknown/UnkStruct_02063220.hpp"
#include "Unknown/UnkStruct_02075dac.hpp"
#include "Unknown/UnkStruct_020ec7dc.hpp"
#include "Unknown/UnkStruct_020ee734.hpp"
#include "Unknown/UnkStruct_027e0d54.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"

#define FRAME_COUNTER (*(u32 *) 0x027ffc3c)
#define REG_POWER_CNT (*(u16 *) 0x04000304)
#define REG_DISPCNT_SUB (*(volatile u32 *) 0x04001000)

#define GAME_MODE_DATA(id) ((GameModeData *) (((u8 *) &gGameModes) + ((id) * sizeof(GameModeData))))

extern unk32 data_02068ed0;
extern unk32 data_02068e64;
extern unk32 data_02062d4c;
extern unk32 data_020683f4;
extern unk32 data_02063e4c;
extern unk32 data_02068780;
extern unk32 data_027e08e4;
extern bool data_027e0f8c;
extern unk32 data_ov009_0211e0c0;
extern unk32 data_ov010_0211e960;
extern unk32 data_ov007_02102920;
extern unk32 data_ov012_02134ea0;
extern unk32 data_ov013_021160b4;

extern "C" GameMode *func_ov008_02112c20(GameModeId modeId);
extern "C" GameMode *func_ov010_02112c20(GameModeId modeId);
extern "C" GameMode *func_ov011_0212b934(GameModeId modeId);
extern "C" GameMode *func_ov007_02100ae0(GameModeId modeId);
extern "C" GameMode *func_ov013_02114f78(GameModeId modeId);
const GameModeData gGameModes[] = {
    {
        .mUnk_00         = 1,
        .mUnk_01         = 0,
        .mUnk_02         = 0,
        .mUnk_03         = 0,
        .slot1Overlay    = OverlayId_None,
        .slot2Overlay    = OverlayId_None,
        .slot3Overlay    = OverlayId_None,
        .slot12Overlay   = OverlayId_None,
        .mModeCreateFunc = (GameModeCreateFunc) NULL,
        .mUnk_18         = NULL,
    },
    {
        .mUnk_00         = 1,
        .mUnk_01         = 0,
        .mUnk_02         = 0,
        .mUnk_03         = 1,
        .slot1Overlay    = OverlayId_01,
        .slot2Overlay    = OverlayId_None,
        .slot3Overlay    = OverlayId_GameStart,
        .slot12Overlay   = OverlayId_None,
        .mModeCreateFunc = (GameModeCreateFunc) func_ov008_02112c20,
        .mUnk_18         = NULL,
    },
    {
        .mUnk_00         = 2,
        .mUnk_01         = 0,
        .mUnk_02         = 1,
        .mUnk_03         = 1,
        .slot1Overlay    = OverlayId_03,
        .slot2Overlay    = OverlayId_Load,
        .slot3Overlay    = OverlayId_Adventure,
        .slot12Overlay   = OverlayId_None,
        .mModeCreateFunc = (GameModeCreateFunc) GameModeAdventure::Create,
        .mUnk_18         = &data_ov009_0211e0c0,
    },
    {
        .mUnk_00         = 1,
        .mUnk_01         = 0,
        .mUnk_02         = 0,
        .mUnk_03         = 1,
        .slot1Overlay    = OverlayId_01,
        .slot2Overlay    = OverlayId_06,
        .slot3Overlay    = OverlayId_FileSelect,
        .slot12Overlay   = OverlayId_None,
        .mModeCreateFunc = (GameModeCreateFunc) func_ov010_02112c20,
        .mUnk_18         = &data_ov010_0211e960,
    },
    {
        .mUnk_00         = 1,
        .mUnk_01         = 0,
        .mUnk_02         = 0,
        .mUnk_03         = 1,
        .slot1Overlay    = OverlayId_01,
        .slot2Overlay    = OverlayId_None,
        .slot3Overlay    = OverlayId_DwcSetup,
        .slot12Overlay   = OverlayId_61,
        .mModeCreateFunc = (GameModeCreateFunc) func_ov011_0212b934,
        .mUnk_18         = NULL,
    },
    {
        .mUnk_00         = 1,
        .mUnk_01         = 0,
        .mUnk_02         = 0,
        .mUnk_03         = 1,
        .slot1Overlay    = OverlayId_01,
        .slot2Overlay    = OverlayId_DownloadPlay,
        .slot3Overlay    = OverlayId_None,
        .slot12Overlay   = OverlayId_None,
        .mModeCreateFunc = (GameModeCreateFunc) func_ov007_02100ae0,
        .mUnk_18         = &data_ov007_02102920,
    },
    {
        .mUnk_00         = 1,
        .mUnk_01         = 0,
        .mUnk_02         = 0,
        .mUnk_03         = 1,
        .slot1Overlay    = OverlayId_01,
        .slot2Overlay    = OverlayId_Load,
        .slot3Overlay    = OverlayId_Battle,
        .slot12Overlay   = OverlayId_60,
        .mModeCreateFunc = (GameModeCreateFunc) GameModeBattle::Create,
        .mUnk_18         = &data_ov012_02134ea0,
    },
    {
        .mUnk_00         = 1,
        .mUnk_01         = 0,
        .mUnk_02         = 0,
        .mUnk_03         = 1,
        .slot1Overlay    = OverlayId_01,
        .slot2Overlay    = OverlayId_None,
        .slot3Overlay    = OverlayId_Contact,
        .slot12Overlay   = OverlayId_None,
        .mModeCreateFunc = (GameModeCreateFunc) func_ov013_02114f78,
        .mUnk_18         = &data_ov013_021160b4,
    },
};

extern "C" void func_ov000_020d6488(unk32 *param0);
extern "C" void func_0203d14c(unk32 *param0);
extern "C" void func_020355e4(unk32 *param0, unk32 param1);
THUMB void Game::EndGameMode() {
    delete mMode;
    mMode = NULL;
    if (gOverlayManager.mLoadedOverlays[0] != -1) {
        data_027e0dbc.func_ov000_0207b9c8();
        data_ov000_020ee734.func_ov000_020d6488();
    }
    gMessageManager.func_0203665c();
    data_027e0cbc.func_0203d5c0();
    func_0203d14c(&data_02068ed0);
    func_020355e4(&data_02068e64, 2);
    data_027e0c54.func_02036050();
    gOverlayManager.UnloadGameMode();
    return;
}

extern "C" void func_0202c0cc();
extern "C" void func_0202c128(unk32 param1, u16 param2);
extern "C" void func_02017cb0(unk32 *param0, unk32 param1);
extern "C" void func_02031024(unk32 *param0);
extern "C" void Fill16(int value, unsigned short *dst, int size);
extern "C" void func_ov000_0207c0f0(unk32 *param0, unk32 param1);
extern "C" void func_ov000_0207a2e8(unk32 *param0, unk32 param1);
extern "C" void func_02036014(u8 *param0, unk32 param1);
extern "C" void func_02035604(unk32 *param0, unk32 param1);
extern "C" void func_0203d0c0(unk32 *param0, unk32 param1);
extern "C" void FlushGfxQueue();
extern "C" void func_0200eec8();
extern "C" void func_02005778();
extern "C" void func_02003a54();
THUMB bool Game::StartGameMode() {
    func_0202c0cc();

    bool bVar1  = (mModeId == 2) || (mModeId == 6);
    unk16 uVar3 = bVar1 ? 0x7f72 : 0;

    mUnk_0fe = uVar3;
    mUnk_0fc = mUnk_0fe;
    func_0202c128(1, mUnk_0fc);
    func_02017cb0(&data_02062d4c, 0xc);
    mUnk_0f0 = 0;
    mUnk_0f4 = 0;
    mUnk_101 = 0;
    mUnk_103 = GAME_MODE_DATA(mModeId)->mUnk_03;
    mUnk_0f2 = GAME_MODE_DATA(mModeId)->mUnk_00;

    func_02031024(&data_020683f4);
    data_027e077c.Init(0);
    Fill16(0, (u16 *) &data_027e0d04, 6);
    data_027e0c38.func_02033d40();
    data_027e05f8 = UnkStruct_027e05f8();
    if (gOverlayManager.mLoadedOverlays[0] != OverlayId_None) {
        data_ov000_020ec7dc.func_ov000_0207c0f0(mModeId);
        gTouchControl.Init();
        data_027e0e2c.func_ov000_0207bcb4();
        data_027e0db0.func_ov000_0207b288(mModeId);
        data_027e0d54.func_ov000_0207a2e8(mModeId);
        data_027e0ffc.func_ov000_020ce704();
        data_027e0f8c = false;
    }

    gOverlayManager.LoadGameMode(mModeId);
    data_027e0c54.func_02036014(mModeId);
    func_02035604(&data_02068e64, mModeId);
    func_0203d0c0(&data_02068ed0, mModeId);
    data_02075dac.func_0203f904();
    data_027e0cbc.func_0203d57c();
    gMessageManager.func_02036490();
    if (gOverlayManager.mLoadedOverlays[0] != OverlayId_None) {
        data_ov000_020ee734.func_ov000_020d6438(mModeId);
        data_027e0dbc.func_ov000_0207b988(mModeId);
    }

    mMode    = GAME_MODE_DATA(mModeId)->mModeCreateFunc(mModeId);
    mUnk_102 = 0;

    data_027e0cbc.func_0203d6d0();
    FlushGfxQueue();
    func_0200eec8();

    mUnk_0f8 = FRAME_COUNTER;
    func_02005778();
    bVar1 = (mModeId == 2) || (mModeId == 6);
    if (!bVar1) {
        REG_POWER_CNT |= 0x8000;
    }

    func_02003a54();
    u8 unk1 = GAME_MODE_DATA(mModeId)->mUnk_03;
    if (unk1 != 0) {
        REG_DISPCNT_SUB |= 0x10000;
    } else {
        REG_DISPCNT_SUB &= ~0x10000;
    }

    gFadeController.func_0202d77c(&mFadeControl);
    return mFadeControl.func_0202abdc(0x20, 0);
}

THUMB void Game::func_0202c974() {
    this->func_0202cf34();
}

THUMB void Game::func_0202c97c() {}

extern "C" void func_0200a440();
extern "C" void func_020310fc(unk32 *param0);
extern "C" void func_02025c7c(unk32 *param0);
extern "C" void func_020363c8(u16 *param0, UnkStruct_027e0c54 *param1);
extern "C" void func_02025d2c();
extern "C" void func_0202f2ac(unk32 *param0);
extern "C" bool func_0202f328(unk32 *param0);
ARM void Game::Run() {
    bool bVar2;
    u32 uVar4;
    s32 iVar5;
    bool ov00Loaded;
    bool bVar6;
    s32 nextGameMode;
    u16 local_28[2];
    unk8 *vcount;

    func_0202c97c();
    do {
        this->StartGameMode();
        do {
            data_027e0c54.func_020363b0();
            data_027e08fc.func_0202fbe4();
            bVar2      = data_027e0c54.func_02036174();
            ov00Loaded = gOverlayManager.mLoadedOverlays[0] != -1;
            data_027e0cbc.func_0203d64c(bVar2);
            if ((ov00Loaded) && (bVar2 == 0)) {
                func_0200a440();
            }
            data_027e05f8.func_0202adf4(this->mUnk_0f2, bVar2);
            data_027e08f8.func_0202f9a0(0);
            bVar6 = data_027e080c.mUnk_04 == 3 || data_027e080c.mUnk_10[0].mUnk_00 == 3;
            data_027e080c.func_0202eebc(this->mUnk_0f2);
            data_027e0d04.func_0203fe00();
            data_027e0c38.func_02033d70(bVar2);
            if (ov00Loaded) {
                gTouchControl.func_ov00_0207af38(this->mUnk_0f2, bVar2);
                if ((this->mUnk_0f4 & 7U) == 0) {
                    data_027e0dbc.func_ov000_0207b9dc();
                } else {
                    gRandom.Next(0, 0);
                }
            }
            nextGameMode = 0;
            if (!bVar6) {
                nextGameMode = this->mMode->vfunc_08(bVar2);
            }
            gMessageManager.func_0203690c(bVar2);
            data_027e0cbc.func_0203d664(bVar2);
            if (this->mModeId != 1) {
                iVar5 = 1;
                if (data_027e0c54.mUnk_0) {
                    iVar5 = bVar2;
                }
                if (iVar5 != 0) {
                    data_ov000_020ee734.func_ov000_020d64ac();
                }
            }
            if (bVar6) {
                gFadeController.ProcessFade((u32) this->mUnk_0f2);
                if ((this->mUnk_101 == 0) && (ov00Loaded)) {
                    data_027e0e2c.func_ov000_0207be84(bVar2);
                    data_027e0db0.func_ov000_0207b378(bVar2);
                }
                if (this->mModeId == 2) {
                    data_027e077c.func_ov009_02116364();
                }
            }
            data_027e037c.scale.x       = FLOAT_TO_Q20(1.0);
            data_027e037c.scale.y       = FLOAT_TO_Q20(1.0);
            data_027e037c.scale.z       = FLOAT_TO_Q20(1.0);
            data_027e037c.translation.x = 0;
            data_027e037c.translation.y = 0;
            data_027e037c.translation.z = 0;
            Mat3p_InitIdentity(&data_027e037c.rotation);
            data_027e037c.flags = 0;
            FlushGfxQueue();
            GFX_FIFO_VIEWPORT = 0xbfff0000;
            this->mMode->vfunc_14(data_027e0c54.func_020361d0());
            FlushGfxQueue();
            func_020310fc(&data_02063e4c);
            func_02025c7c(&data_02068780);
            func_020363c8(local_28, &data_027e0c54);
            this->mUnk_0f0 = local_28[0];
            this->mMode->vfunc_10(&this->mUnk_0f0);
            gMessageManager.func_02036ca4((unk32) & this->mUnk_0f0);
            if (this->mModeId == 2) {
                data_027e103c->func_ov005_02103e58(&this->mUnk_0f0);
            }
            func_02025d2c();
            bool unk = (this->mUnk_0f2 >= 1);
            bVar2    = (s32) (this->mUnk_0f2 - (FRAME_COUNTER - this->mUnk_0f8) - 1) > 0;
            if (unk && bVar2) {
                do {
                    if ((s32) REG_VCOUNT < 0xb0) {
                        break;
                    }
                } while ((s32) REG_VCOUNT <= 0xc5);
                bVar2 = (u32) this->mUnk_0f2 - (FRAME_COUNTER - this->mUnk_0f8);
                while ((0 < bVar2 + -1) ? 1 : 0) {
                    func_0202f2ac(&data_027e08e4);
                    bVar2 = (u32) this->mUnk_0f2 - (FRAME_COUNTER - this->mUnk_0f8);
                }
            }
            uVar4                 = OS_DisableInterrupts_Irq();
            this->mUnk_100        = 1;
            GFX_FIFO_SWAP_BUFFERS = 3;
            OS_RestoreInterrupts(uVar4);
            func_0202f2ac(&data_027e08e4);
            this->mUnk_100 = 0;
            this->mUnk_0f8 = FRAME_COUNTER;
            if (gOverlayManager.mLoadedOverlays[0] != -1) {
                switch (data_027e0d54.mUnk_0f) {
                    case 1:
                        data_02063220.func_0202f754(2);
                        break;
                    case 2:
                        data_02063220.func_0202f754(3);
                        break;
                }
            }
        } while (nextGameMode == 0);
        while (func_0202f328(&data_027e08e4)) {
            func_0202f2ac(&data_027e08e4);
        }
        FlushGfxQueue();
        this->EndGameMode();
        FlushGfxQueue();
        this->mPrevModeId = this->mModeId;
        this->mModeId     = nextGameMode;
    } while (true);
}

THUMB void Game::func_0202cec8(s32 param1, unk32 param2) {}
THUMB void Game::func_0202cf34() {}
ARM void Game::func_0202cf44() {}
ARM Game::~Game() {}
