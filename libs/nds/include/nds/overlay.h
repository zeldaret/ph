#ifndef _NDS_OVERLAY_H
#define _NDS_OVERLAY_H

#ifdef __cplusplus
extern "C" {
#endif

#define EXTERN_OVERLAY_ID(name_or_index) extern u32 OVERLAY_##name_or_index##_ID;
#define OVERLAY_ID(name_or_index) ((u32) & OVERLAY_##name_or_index##_ID)

typedef struct Overlay {
    /* 00 */ unk32 mId;
    /* 04 */ void *mBaseAddress;
    /* 08 */ u32 mTextSize;
    /* 0c */ s32 mBssSize;
    /* 10 */ unk32 mCtorStart;
    /* 14 */ unk32 mCtorEnd;
    /* 18 */ unk32 mFileId;
    /* 1c */ u32 mFileSize;
    /* 20 */
} Overlay;

u32 Overlay_FileSize(Overlay *overlay);
void Overlay_ClearCacheAndBss(Overlay *overlay);
void Overlay_func_02042238(unk32 *param1, Overlay *overlay);
bool Overlay_func_02042250(Overlay *param1, Overlay *param2, s32 param3, unk32 param4, s32 param5, u32 param6, s32 param7,
                           u32 param8);
bool Overlay_func_020422ec(Overlay *param1, Overlay *param2, s32 param3);
bool Overlay_func_0204238c(Overlay *overlay);
bool Overlay_func_020423e8(s32 param1, unk32 param2, unk32 param3);
void Overlay_Init(Overlay *overlay);
void Overlay_RunGlobalDestructors(Overlay *overlay);
bool Overlay_Destroy(Overlay *overlay);
bool FS_LoadOverlay(Overlay *overlay, unk32 param2);
bool FS_UnloadOverlay(Overlay *overlay, unk32 param2);

#ifdef __cplusplus
}
#endif

#endif
