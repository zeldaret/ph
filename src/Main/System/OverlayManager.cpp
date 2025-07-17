#include "System/OverlayManager.hpp"
#include "Game/Game.hpp"
#include "Unknown/UnkStruct_020ee698.hpp"
#include "global.h"
#include "nds/overlay.h"

extern u32 *data_027e0ce0[];
extern "C" void func_ov007_02102850(u32 **);
extern "C" void func_ov007_021028a0(u32 **);

THUMB void OverlayManager::Load(OverlayIndex index, OverlayId id) {
    if (id != OverlayId_None) {
        FS_LoadOverlay(NULL, id);
    }

    this->mLoadedOverlays[index] = id;
}

THUMB void OverlayManager::LoadIfNotLoaded(OverlayIndex index, OverlayId id) {
    OverlayId loadedId = this->mLoadedOverlays[index];

    if (loadedId != id) {
        this->Unload(index);
        this->Load(index, id);
    }
}

THUMB void OverlayManager::Unload(OverlayIndex index) {
    if (this->mLoadedOverlays[index] != OverlayId_None) {
        FS_UnloadOverlay(NULL, this->mLoadedOverlays[index]);
        this->mLoadedOverlays[index] = OverlayId_None;
    }
}

THUMB void OverlayManager::LoadGameMode(s32 mode) {
    OverlayId overlayId;
    const GameModeData *pSetup;

    pSetup = &gGameModes[mode];

    this->LoadIfNotLoaded(OverlayIndex_1, pSetup->slot1Overlay);
    this->LoadIfNotLoaded(OverlayIndex_2, pSetup->slot2Overlay);

    if (mode == 5) {
        func_ov007_02102850(data_027e0ce0);
    } else {
        overlayId = pSetup->slot12Overlay;

        if (mode == 6 && data_ov000_020ee698.mUnk_0c.mUnk_2c == 2) {
            overlayId = OverlayId_61;
        }

        this->Load(OverlayIndex_3, pSetup->slot3Overlay);
        this->Load(OverlayIndex_12, overlayId);
    }
}

THUMB void OverlayManager::UnloadGameMode() {
    this->Unload(OverlayIndex_12);
    this->Unload(OverlayIndex_3);

    if (this->mLoadedOverlays[2] == OverlayId_DownloadPlay) {
        func_ov007_021028a0(data_027e0ce0);
        this->Unload(OverlayIndex_2);
    }
}
