#include "nds/g3d/sbc.h"

#define G3D_SBC_CMD_MASK 0x1f
#define G3D_SBC_FLG_MASK 0xe0

extern "C" void Fill256(unk32, unk16 *, unk32);
extern "C" void Fill32(unk32, u32 *, unk32);

G3d_RenderState *G3d_gRenderState = NULL;

// Renders all SBC commands until the end of the list
static void G3d_RenderSBCCommands(G3d_RenderState *renderState) {
    do {
        renderState->flag &= ~G3D_RENDERST_FLAG_SKIP_CALLBACK;
        (*G3d_FuncSbcTable[(*renderState->currentCmd) & G3D_SBC_CMD_MASK])(renderState, (*renderState->currentCmd) &
                                                                                            (u32) G3D_SBC_FLG_MASK);
    } while (!(renderState->flag & G3D_RENDERST_FLAG_END));
}

// Initializes the render state and starts rendering the SBC command list
static void G3d_InitRenderState(G3d_RenderState *renderState, G3d_RenderObject *renderObj) {
    Fill256(0, (short *) renderState, sizeof(*renderState));
    renderState->mUnk_25[0] = 1;
    renderState->flag       = G3D_RENDERST_FLAG_BONE_VISIBLE;

    if (renderObj->unkCommandsList) {
        renderState->currentCmd = renderObj->unkCommandsList;
    } else {
        renderState->currentCmd = (u8 *) renderObj->model + renderObj->model->offSbc;
    }

    renderState->renderObj         = renderObj;
    renderState->boneList          = G3d_GetBoneList(renderObj->model);
    renderState->materialList      = G3d_GetMat(renderObj->model);
    renderState->meshList          = G3d_GetMesh(renderObj->model);
    renderState->jntScalingHandler = G3d_gScaleHandlers[renderObj->model->scalingHandler];
    renderState->jntSRTHandler     = G3d_gSRTTransformHandlers[renderObj->model->scalingHandler];
    renderState->textureHandler    = G3d_gTextureHandlers[renderObj->model->textureHandler];
    renderState->upScale           = renderObj->model->upScale;
    renderState->downScale         = renderObj->model->downScale;
    if (renderObj->callbackFunction && renderObj->callbackIdx < 32) {
        renderState->callbackFuncs[renderObj->callbackIdx] = renderObj->callbackFunction;
        renderState->mUnk_10[renderObj->callbackIdx]       = renderObj->mUnk_25;
    }

    if (renderObj->flag & G3D_RENDEROBJ_FLAG_STORE) {
        renderState->flag |= G3D_RENDERST_FLAG_STORE;
    }

    if (renderObj->flag & G3D_RENDEROBJ_FLAG_SKIP_CMD) {
        renderState->flag |= G3D_RENDERST_FLAG_SKIP_CMD;
    }

    if (renderObj->flag & G3D_RENDEROBJ_FLAG_SKIP_SBC_DRAW) {
        renderState->flag |= G3D_RENDERST_FLAG_SKIP_SBC_DRAW;
    }

    if (renderObj->flag & G3D_RENDEROBJ_FLAG_SKIP_SBC_MTXCALC) {
        renderState->flag |= G3D_RENDERST_FLAG_SKIP_SBC_MTXCALC;
    }

    if (renderObj->callbackInitFunc) {
        (*renderObj->callbackInitFunc)(renderState);
    }

    G3d_RenderSBCCommands(renderState);

    renderObj->flag &= ~G3D_RENDEROBJ_FLAG_STORE;
}

// Sets the bits in the anim array according to the map data of the animation
static void G3d_SetRenderObjAnimationMap(u32 *arr, const G3d_Animation *anim) {
    while (anim) {
        int i;
        for (i = 0; i < anim->numElmnts; ++i) {
            if (anim->elementBinds[i] & G3D_ANIMBIND_EXISTS) {
                arr[i >> 5] |= 1 << (i & 31);
            }
        }
        anim = anim->next;
    }
}

// Renders a model by processing the SBC command list
void G3d_Render(G3d_RenderObject *renderObj) {
    if ((renderObj->flag & G3D_RENDEROBJ_FLAG_ANIMMAP_OUTDATED) == G3D_RENDEROBJ_FLAG_ANIMMAP_OUTDATED) {
        Fill32(0, &renderObj->matAnimBindMap[0], 8);
        Fill32(0, &renderObj->jntAnimBindMap[0], 8);
        Fill32(0, &renderObj->unkAnimBindMap[0], 8);

        if (renderObj->matAnim) {
            G3d_SetRenderObjAnimationMap(&renderObj->matAnimBindMap[0], renderObj->matAnim);
        }
        if (renderObj->jntAnim) {
            G3d_SetRenderObjAnimationMap(&renderObj->jntAnimBindMap[0], renderObj->jntAnim);
        }
        if (renderObj->mUnk_18) {
            G3d_SetRenderObjAnimationMap(&renderObj->unkAnimBindMap[0], renderObj->mUnk_18);
        }
        renderObj->flag &= ~G3D_RENDEROBJ_FLAG_ANIMMAP_OUTDATED;
    }

    if (G3d_gRenderState) {
        G3d_InitRenderState(G3d_gRenderState, renderObj);
    } else {
        G3d_RenderState rs;
        G3d_gRenderState = &rs;
        G3d_InitRenderState(&rs, renderObj);
        G3d_gRenderState = NULL;
    }
}