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
