#pragma once
#include "g3d.h"

typedef enum {
    G3D_RENDERST_FLAG_BONE_VISIBLE     = 0x1,
    G3D_RENDERST_FLAG_MAT_TRANSPARENT  = 0x2,
    G3D_RENDERST_FLAG_VALID_NODE       = 0x4,
    G3D_RENDERST_FLAG_VALID_MAT        = 0x8,
    G3D_RENDERST_FLAG_VALID_BONEMTX    = 0x10,
    G3D_RENDERST_FLAG_END              = 0x20,  // set when the end of the SBC command list is reached
    G3D_RENDERST_FLAG_SKIP_CALLBACK    = 0x40,  // skip callback
    G3D_RENDERST_FLAG_STORE            = 0x80,  // stores results in G3d_RenderObject local cache
    G3D_RENDERST_FLAG_SKIP_CMD         = 0x100, // skips pushing geometry commands to the FIFO
    G3D_RENDERST_FLAG_SKIP_SBC_DRAW    = 0x200, // skips the execution of rendering commands
    G3D_RENDERST_FLAG_SKIP_SBC_MTXCALC = 0x400  // skips the execution of matrix calculation commands
} G3d_RenderStateFlag;

struct G3d_RenderState {
    /* 00 */ u8 *currentCmd; // current command being processed
    /* 04 */ G3d_RenderObject *renderObj; // current render object being processed
    /* 08 */ u32 flag; // G3d_RenderStateFlag
    /* 0c */ G3d_CallbackFunction callbackFuncs[32]; // callback function array
    /* 8c */ u8 mUnk_10[32]; // related to callback
    /* ac */ u8 currentBoneId;
    /* ad */ u8 currentMaterialId;
    /* ae */ u8 currentBoneMtxId;
    /* af */ u8 dummy_;
    /* b0 */ void *mUnk_15;
    /* b4 */ void *mUnk_19;
    /* b8 */ void *mUnk_1d;
    /* bc */ u32 mUnk_21[2];
    /* c4 */ u32 mUnk_25[2];
    /* cc */ u32 mUnk_29[2];
    /* d4 */ G3d_NameList *boneList;
    /* d8 */ const void *materialList;
    /* dc */ G3d_NameList *meshList;
    /* e0 */ q20 upScale;
    /* e4 */ q20 downScale;
    /* e8 */ void *jntScalingHandler; // scaling handler
    /* ec */ void *jntSRTHandler;     // SRT transform handler
    /* f0 */ void *textureHandler;    // texture matrix handler
    /* f4 */ u8 mUnk_f4[0x93];
    /* 187 */ bool tmpVisAnmResult; // isVisible
    /* 188 */
};

typedef void (*G3d_FuncSbc)(G3d_RenderState *, u32);
extern G3d_FuncSbc G3d_FuncSbcTable[32];
void G3d_Render(G3d_RenderObject *renderObj);