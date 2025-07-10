#include "Game/Game.hpp"
#include "DTCM/UnkStruct_027e05f8.hpp"
#include "DTCM/UnkStruct_027e077c.hpp"
#include "DTCM/UnkStruct_027e0e2c.hpp"
#include "DTCM/UnkStruct_027e0ffc.hpp"
#include "Game/GameModeAdventure.hpp"
#include "Game/GameModeBattle.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/TouchControl.hpp"
#include "Render/FadeController.hpp"
#include "System/OverlayManager.hpp"
#include "Unknown/UnkStruct_0203dae0.hpp"
#include "Unknown/UnkStruct_02075dac.hpp"
#include "Unknown/UnkStruct_020ee734.hpp"

#define FRAME_COUNTER (*(u32 *) 0x027ffc3c)
#define REG_POWER_CNT (*(u16 *) 0x04000304)
#define REG_DISPCNT_SUB (*(volatile u32 *) 0x04001000)

#define GAME_MODE_DATA(id) ((GameModeData *) (((u8 *) &gGameModes) + ((id) * sizeof(GameModeData))))

extern unk32 data_027e0dbc;
extern unk32 data_02068ed0;
extern unk32 data_02068e64;
extern unk32 data_02062d4c;
extern unk32 data_020683f4;
extern unk32 data_ov000_020ec7dc;
extern unk32 data_027e0d54;
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

extern "C" void func_ov000_0207b9c8(unk32 *param0);
extern "C" void func_ov000_020d6488(unk32 *param0);
extern "C" void func_0203d14c(unk32 *param0);
extern "C" void func_020355e4(unk32 *param0, unk32 param1);
extern "C" void func_02036050(u8 *param0);
THUMB void Game::EndGameMode() {
    delete mMode;
    mMode = NULL;
    if (gOverlayManager.mLoadedOverlays[0] != -1) {
        func_ov000_0207b9c8(&data_027e0dbc);
        data_ov000_020ee734.func_ov000_020d6488();
    }
    gMessageManager.func_0203665c();
    data_027e0cbc.func_0203d5c0();
    func_0203d14c(&data_02068ed0);
    func_020355e4(&data_02068e64, 2);
    func_02036050(&data_027e0c54);
    gOverlayManager.UnloadGameMode();
    return;
}

extern "C" void func_0202c0cc();
extern "C" void func_0202c128(unk32 param1, u16 param2);
extern "C" void func_02017cb0(unk32 *param0, unk32 param1);
extern "C" void func_02031024(unk32 *param0);
extern "C" void Fill16(unk16 value, void *dest, s32 count);
extern "C" void func_02033d40(unk32 (*param0)[]);
extern "C" void func_ov000_0207c0f0(unk32 *param0, unk32 param1);
extern "C" void func_ov000_0207a2e8(unk32 *param0, unk32 param1);
extern "C" void func_02036014(u8 *param0, unk32 param1);
extern "C" void func_02035604(unk32 *param0, unk32 param1);
extern "C" void func_0203d0c0(unk32 *param0, unk32 param1);
extern "C" void func_ov000_0207b988(unk32 *param0, GameModeId modeId);
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
    Fill16(0, &data_027e0d04, 6);
    func_02033d40(&data_027e0c38);
    data_027e05f8.Init();
    if (gOverlayManager.mLoadedOverlays[0] != OverlayId_None) {
        func_ov000_0207c0f0(&data_ov000_020ec7dc, mModeId);
        gTouchControl.Init();
        data_027e0e2c.func_ov000_0207bcb4();
        data_027e0db0.func_ov000_0207b288(mModeId);
        func_ov000_0207a2e8(&data_027e0d54, mModeId);
        data_027e0ffc.func_ov000_020ce704();
        data_027e0f8c = false;
    }

    gOverlayManager.LoadGameMode(mModeId);
    func_02036014(&data_027e0c54, mModeId);
    func_02035604(&data_02068e64, mModeId);
    func_0203d0c0(&data_02068ed0, mModeId);
    data_02075dac.func_0203f904();
    data_027e0cbc.func_0203d57c();
    gMessageManager.func_02036490();
    if (gOverlayManager.mLoadedOverlays[0] != OverlayId_None) {
        data_ov000_020ee734.func_ov000_020d6438(mModeId);
        func_ov000_0207b988(&data_027e0dbc, mModeId);
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

THUMB void Game::func_0202c974() {}
THUMB void Game::func_0202c97c() {}
ARM void Game::Run() {}
THUMB void Game::func_0202cec8(s32 param1, unk32 param2) {}
THUMB void Game::func_0202cf34() {}
ARM void Game::func_0202cf44() {}
ARM Game::~Game() {}
