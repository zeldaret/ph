#include "global.h"
#include "types.h"
#include <nds/overlay.h>

typedef struct OverlayLoadInfo {
    Overlay overlay;
    Overlay *requested;
    u32 unk24;
    u32 unk28;
} OverlayLoadInfo;

extern "C" bool FS_LoadOverlayInfo(OverlayLoadInfo *info, Overlay *overlay, unk32 id);
extern "C" bool FS_LoadOverlayFile(OverlayLoadInfo *info);
extern "C" void FS_StartOverlay(OverlayLoadInfo *info);
extern "C" bool FS_StopOverlay(OverlayLoadInfo *info);

typedef struct UnkStruct_02076830 {
    u16 initialized;
    u16 unk02;
    u32 unk04;
    u32 unk08;
    u32 unk0c;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1c;
    u32 unk20;
    u32 unk24;
} UnkStruct_02076830;

extern "C" UnkStruct_02076830 data_02076830;
extern "C" THUMB void func_02008a50(UnkStruct_02076830 *state);
extern "C" ARM s32 func_02008b50(s32 param1, s32 param2);
extern "C" ARM void func_02008b04(s32 param1, void (*callback)(void));
extern "C" THUMB void func_02042768(void);
extern "C" ARM u32 OS_DisableInterrupts_Irq(void);
extern "C" ARM void OS_RestoreInterrupts(u32 state);
extern "C" THUMB bool func_02042afc(void);
extern "C" THUMB void func_02042acc(void);
extern "C" ARM void func_02042ad8(void);

extern "C" THUMB bool FS_LoadOverlay(Overlay *overlay, unk32 id) {
    OverlayLoadInfo info;

    if (!FS_LoadOverlayInfo(&info, overlay, id)) {
        goto fail;
    }

    if (FS_LoadOverlayFile(&info)) {
        goto success;
    }

fail:
    return false;

success:
    FS_StartOverlay(&info);
    return true;
}

extern "C" THUMB bool FS_UnloadOverlay(Overlay *overlay, unk32 id) {
    OverlayLoadInfo info;

    if (!FS_LoadOverlayInfo(&info, overlay, id)) {
        goto fail;
    }

    if (FS_StopOverlay(&info)) {
        goto success;
    }

fail:
    return false;

success:
    return true;
}

extern "C" THUMB void func_020425e0(void) {
    UnkStruct_02076830 *state = &data_02076830;

    if (state->initialized != 0) {
        return;
    }

    state->initialized = 1;
    state->unk04       = 0;
    state->unk08       = 0;
    state->unk20       = 0;
    state->unk0c       = 0;
    state->unk10       = 0;

    func_02008a50(state);

    while (func_02008b50(5, 1) == 0) {
    }

    func_02008b04(5, func_02042768);
}

extern "C" THUMB s32 func_02042620(u32 param1, u32 param2, u32 param3) {
    u32 interruptState = OS_DisableInterrupts_Irq();

    if (data_02076830.unk04 != 0) {
        OS_RestoreInterrupts(interruptState);
        return 1;
    }

    data_02076830.unk04 = 1;
    OS_RestoreInterrupts(interruptState);
    data_02076830.unk18 = 0;
    data_02076830.unk1c = 0;
    data_02076830.unk0c = param1;
    data_02076830.unk08 = param2;
    data_02076830.unk14 = param3;

    if (func_02042afc()) {
        return 0;
    }

    return 3;
}

extern "C" THUMB s32 func_02042668(u32 param) {
    s32 result = func_02042620(param, (u32) func_02042acc, 0);

    data_02076830.unk24 = result;

    if (result == 0) {
        func_02042ad8();
    }

    return data_02076830.unk24;
}
