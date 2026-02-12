#include "nds/g3d/sbc.h"
#include "DTCM/UnkStruct_027e037c.h"
#include "nds/gfx.h"

#define G3D_SBC_CMD_MASK 0x1f
#define G3D_SBC_FLG_MASK 0xe0

extern void Fill256(unk32, unk16 *, unk32);
extern void Fill32(unk32, u32 *, unk32);
extern void PushGeometryCommand(u32 command, void *data, s32 length);
extern void FlushGfxQueue();
extern s32 func_0200598c(Mat4p *matrix);
extern Mat4x3p *func_02018450();
extern Mat4x3p *func_02018738();
extern Mat4x3p *func_02018770();
extern s32 func_020059bc(Mat3p *matrix);
extern void func_0200567c(unk32 param1);
extern void func_02005644(Mat4x3p *matrix);

G3d_RenderState *G3d_gRenderState = NULL;
UnkStruct_0205ae08 data_0205ae08;

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
    renderState->mUnk_c4[0] = 1;
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
        renderState->callbackFuncs[renderObj->callbackIdx]   = renderObj->callbackFunction;
        renderState->callbackSegment[renderObj->callbackIdx] = renderObj->mUnk_25;
    }

    if (renderObj->flag & G3D_RENDEROBJ_FLAG_STORE) {
        renderState->flag |= G3D_RENDERST_FLAG_STORE;
    }

    if (renderObj->flag & G3D_RENDEROBJ_FLAG_SKIP_CMD) {
        renderState->flag |= G3D_RENDERST_FLAG_SKIP_CMD;
    }

    if (renderObj->flag & G3D_RENDEROBJ_FLAG_SKIP_SBC_DRAW) {
        renderState->flag |= G3D_RENDERST_FLAG_SKIP_SBC_RENDER;
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
        for (i = 0; i < anim->numElmnts; i++) {
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

// Renders the NOP SBC command
void G3d_SBCRender_NOP(G3d_RenderState *renderState) {
    if (renderState->callbackFuncs[G3D_SBC_CMD_NOP]) {
        (*renderState->callbackFuncs[G3D_SBC_CMD_NOP])(renderState);
    }
    renderState->currentCmd++;
}

// Renders the END SBC command
void G3d_SBCRender_END(G3d_RenderState *renderState) {
    if (renderState->callbackFuncs[G3D_SBC_CMD_END]) {
        (*renderState->callbackFuncs[G3D_SBC_CMD_END])(renderState);
    }
    renderState->flag |= G3D_RENDERST_FLAG_END;
}

// Renders the SBC command 0x7 (unknown)
void G3d_SBCRender_007(G3d_RenderState *renderState, u32 opCode) {

    u32 totalArgs = 2;

    static u32 funcArgs[] = {0x1b171012, // MTX_POP | MTX_MODE | MTX_LOAD_4x3 | MTX_SCALE
                             1,  // MTX_MODE = Position
                             2,          0x1000, 0, 0, 0, 0x1000, 0, 0, 0, 0x1000, // Identity MTX
                             0,          0,      0, 0, 0, 0};

    Vec3p *translationVec = (Vec3p *) &funcArgs[12];
    Vec3p *scaleVec       = (Vec3p *) &funcArgs[15];
    Mat4p currentMtx;
    u8 callbackSkip;
    u32 callbackSegment;

    if (renderState->flag & G3D_RENDERST_FLAG_SKIP_SBC_RENDER) {
        if (opCode == 0x40 || opCode == 0x60) {
            totalArgs++;
        }
        if (opCode == 0x20 || opCode == 0x60) {
            totalArgs++;
        }
        renderState->currentCmd += totalArgs;
        return;
    }

    if (opCode == 0x40 || opCode == 0x60) {
        totalArgs++;

        if (!(renderState->flag & G3D_RENDERST_FLAG_SKIP_CMD)) {
            u32 matrixIndex;
            if (opCode == 0x40) {
                matrixIndex = *(renderState->currentCmd + 2);
            } else {
                matrixIndex = *(renderState->currentCmd + 3);
            }
            PushGeometryCommand(0x14, &matrixIndex, 1); // MTX_RESTORE
        }
    }

    if (renderState->callbackFuncs[G3D_SBC_CMD_007]) {
        callbackSegment = renderState->callbackSegment[G3D_SBC_CMD_007];
    } else {
        callbackSegment = 0;
    }

    if (callbackSegment == 1) {
        renderState->flag &= ~G3D_RENDERST_FLAG_SKIP_CALLBACK;
        (*renderState->callbackFuncs[G3D_SBC_CMD_007])(renderState);
        if (renderState->callbackFuncs[G3D_SBC_CMD_007]) {
            callbackSegment = renderState->callbackSegment[G3D_SBC_CMD_007];
        } else {
            callbackSegment = 0;
        }
        callbackSkip = (renderState->flag & G3D_RENDERST_FLAG_SKIP_CALLBACK);
    } else {
        callbackSkip = 0;
    }

    if (!(renderState->flag & G3D_RENDERST_FLAG_SKIP_CMD) && !callbackSkip) {
        FlushGfxQueue();

        REG_GFX_FIFO = 0x151110; // MTX_MODE | MTX_PUSH | MTX_IDENTITY
        REG_GFX_FIFO = 0; // MTX_MODE = Projection

        REG_GFX_FIFO = 0;

        while (func_0200598c(&currentMtx))
            ;

        if (data_027e037c.flags & 1) {
            const Mat4x3p *mtx1 = func_02018738();
            Mat4p mtx2;

            Mat4x3p_CopyToMat4p(mtx1, &mtx2);
            Mat4p_Multiply(&currentMtx, &mtx2, &currentMtx);
        } else if (data_027e037c.flags & 2) {
            const Mat4x3p *mtx1 = &data_027e037c.mUnk_04c;
            Mat4p mtx2;

            Mat4x3p_CopyToMat4p(mtx1, &mtx2);
            Mat4p_Multiply(&currentMtx, &mtx2, &currentMtx);
        }

        translationVec->x = currentMtx.wColumn.x;
        translationVec->y = currentMtx.wColumn.y;
        translationVec->z = currentMtx.wColumn.z;

        scaleVec->x = Vec3p_Length((Vec3p *) &currentMtx.xColumn);
        scaleVec->y = Vec3p_Length((Vec3p *) &currentMtx.yColumn);
        scaleVec->z = Vec3p_Length((Vec3p *) &currentMtx.zColumn);

        if (data_027e037c.flags & 1) {
            REG_GFX_FIFO = 0x171012; // MTX_POP | MTX_MODE | MTX_LOAD_4x3
            Stream32(&funcArgs[1], &REG_GFX_FIFO, 8); // MTX_MODE = Position
            Stream32(func_02018770(), &REG_GFX_FIFO, 0x30);

            REG_GFX_FIFO = 0x1b19; // MTX_MULT_4x3 | MTX_SCALE
            Stream32(&funcArgs[3], &REG_GFX_FIFO, 0x3c); // Identity MTX
        } else if (data_027e037c.flags & 2) {
            REG_GFX_FIFO = 0x171012; // MTX_POP | MTX_MODE | MTX_LOAD_4x3
            Stream32(&funcArgs[1], &REG_GFX_FIFO, 8); // MTX_MODE = Position
            Stream32(func_02018450(), &REG_GFX_FIFO, 0x30);

            REG_GFX_FIFO = 0x1b19; // MTX_MULT_4x3 | MTX_SCALE
            Stream32(&funcArgs[3], &REG_GFX_FIFO, 0x3c); // Identity MTX
        } else {
            Stream32(&funcArgs, &REG_GFX_FIFO, 0x48); // MTX_POP | MTX_MODE | MTX_LOAD_4x3 | MTX_SCALE
        }
    }

    if (callbackSegment == 3) {
        renderState->flag &= ~G3D_RENDERST_FLAG_SKIP_CALLBACK;
        (*renderState->callbackFuncs[G3D_SBC_CMD_007])(renderState);
        callbackSkip = renderState->flag & G3D_RENDERST_FLAG_SKIP_CALLBACK;
    } else {
        callbackSkip = 0;
    }

    if (opCode == 0x20 || opCode == 0x60) {
        totalArgs++;

        if (!callbackSkip) {
            if (!(renderState->flag & G3D_RENDERST_FLAG_SKIP_CMD)) {
                u32 matrixIndex = *(renderState->currentCmd + 2);
                PushGeometryCommand(0x13, &matrixIndex, 1); // MTX_STORE
            }
        }
    }
    renderState->currentCmd += totalArgs;
}

// Renders the SBC command 0x8 (unknown)
void G3d_SBCRender_008(G3d_RenderState *renderState, u32 opCode) {
    u32 totalArgs = 2;
    Mat4p currentMtx;

    static u32 funcArgs[] = {0x1b171012, // MTX_POP | MTX_MODE | MTX_LOAD_4x3 | MTX_SCALE
                             1,  // MTX_MODE = Position
                             2,          0x1000, 0, 0, 0, 0x1000, 0, 0, 0, 0x1000, // Identity MTX
                             0,          0,      0, 0, 0, 0};

    Vec3p *translationVec = (Vec3p *) &funcArgs[12];
    Vec3p *scaleVec       = (Vec3p *) &funcArgs[15];
    Mat4x3p *mtx          = (Mat4x3p *) &funcArgs[3];
    u8 callbackSkip;
    u32 callbackSegment;

    if (renderState->flag & G3D_RENDERST_FLAG_SKIP_SBC_RENDER) {
        if (opCode == 0x40 || opCode == 0x60) {
            totalArgs++;
        }
        if (opCode == 0x20 || opCode == 0x60) {
            totalArgs++;
        }
        renderState->currentCmd += totalArgs;
        return;
    }

    if (opCode == 0x40 || opCode == 0x60) {
        totalArgs++;
        if (!(renderState->flag & G3D_RENDERST_FLAG_SKIP_CMD)) {
            u32 matrixIndex;
            if (opCode == 0x40) {
                matrixIndex = *(renderState->currentCmd + 2);
            } else {
                matrixIndex = *(renderState->currentCmd + 3);
            }
            PushGeometryCommand(0x14, &matrixIndex, 1);
        }
    }

    if (renderState->callbackFuncs[G3D_SBC_CMD_008]) {
        callbackSegment = renderState->callbackSegment[G3D_SBC_CMD_008];
    } else {
        callbackSegment = 0;
    }

    if (callbackSegment == 1) {
        renderState->flag &= ~G3D_RENDERST_FLAG_SKIP_CALLBACK;
        (*renderState->callbackFuncs[G3D_SBC_CMD_008])(renderState);
        if (renderState->callbackFuncs[G3D_SBC_CMD_008]) {
            callbackSegment = renderState->callbackSegment[G3D_SBC_CMD_008];
        } else {
            callbackSegment = 0;
        }
        callbackSkip = (renderState->flag & G3D_RENDERST_FLAG_SKIP_CALLBACK);
    } else {
        callbackSkip = 0;
    }

    if (!(renderState->flag & G3D_RENDERST_FLAG_SKIP_CMD) && !callbackSkip) {
        FlushGfxQueue();

        REG_GFX_FIFO = 0x151110; // MTX_MODE | MTX_PUSH | MTX_IDENTITY
        REG_GFX_FIFO = 0; // MTX_MODE = Projection

        REG_GFX_FIFO = 0;

        while (func_0200598c(&currentMtx))
            ;

        if (data_027e037c.flags & 1) {
            const Mat4x3p *mtx1 = func_02018738();
            Mat4p mtx2;

            Mat4x3p_CopyToMat4p(mtx1, &mtx2);
            Mat4p_Multiply(&currentMtx, &mtx2, &currentMtx);
        } else if (data_027e037c.flags & 2) {
            const Mat4x3p *mtx1 = &data_027e037c.mUnk_04c;
            Mat4p mtx2;

            Mat4x3p_CopyToMat4p(mtx1, &mtx2);
            Mat4p_Multiply(&currentMtx, &mtx2, &currentMtx);
        }

        translationVec->x = currentMtx.wColumn.x;
        translationVec->y = currentMtx.wColumn.y;
        translationVec->z = currentMtx.wColumn.z;

        scaleVec->x = Vec3p_Length((Vec3p *) &currentMtx.xColumn);
        scaleVec->y = Vec3p_Length((Vec3p *) &currentMtx.yColumn);
        scaleVec->z = Vec3p_Length((Vec3p *) &currentMtx.zColumn);

        if (currentMtx.yColumn.y != 0 || currentMtx.yColumn.z != 0) {
            Vec3p_Normalize((Vec3p *) &currentMtx.yColumn, (Vec3p *) &mtx->yColumn);

            mtx->zColumn.y = -mtx->yColumn.z;
            mtx->zColumn.z = mtx->yColumn.y;
        } else {
            Vec3p_Normalize((Vec3p *) &currentMtx.zColumn, (Vec3p *) &mtx->zColumn);

            mtx->yColumn.z = -mtx->zColumn.y;
            mtx->yColumn.y = mtx->zColumn.z;
        }

        if (data_027e037c.flags & 1) {
            REG_GFX_FIFO = 0x171012; // MTX_POP | MTX_MODE | MTX_LOAD_4x3
            Stream32(&funcArgs[1], &REG_GFX_FIFO, 8); // MTX_MODE = Position
            Stream32(func_02018770(), &REG_GFX_FIFO, 0x30);

            REG_GFX_FIFO = 0x1b19; // MTX_MULT_4x3 | MTX_SCALE
            Stream32(&funcArgs[3], &REG_GFX_FIFO, 0x3c); // Identity MTX
        } else if (data_027e037c.flags & 2) {
            REG_GFX_FIFO = 0x171012; // MTX_POP | MTX_MODE | MTX_LOAD_4x3
            Stream32(&funcArgs[1], &REG_GFX_FIFO, 8); // MTX_MODE = Position
            Stream32(func_02018450(), &REG_GFX_FIFO, 0x30);

            REG_GFX_FIFO = 0x1b19; // MTX_MULT_4x3 | MTX_SCALE
            Stream32(&funcArgs[3], &REG_GFX_FIFO, 0x3c); // Identity MTX
        } else {
            Stream32(&funcArgs, &REG_GFX_FIFO, 0x48); // MTX_POP | MTX_MODE | MTX_LOAD_4x3 | MTX_SCALE
        }
    }

    if (callbackSegment == 3) {
        renderState->flag &= ~G3D_RENDERST_FLAG_SKIP_CALLBACK;
        (*renderState->callbackFuncs[G3D_SBC_CMD_008])(renderState);
        callbackSkip = renderState->flag & G3D_RENDERST_FLAG_SKIP_CALLBACK;
    } else {
        callbackSkip = 0;
    }

    if (opCode == 0x20 || opCode == 0x60) {
        totalArgs++;

        if (!callbackSkip) {
            if (!(renderState->flag & G3D_RENDERST_FLAG_SKIP_CMD)) {
                u32 matrixIndex = *(renderState->currentCmd + 2);
                PushGeometryCommand(0x13, &matrixIndex, 1); // MTX_STORE
            }
        }
    }

    renderState->currentCmd += totalArgs;
}

// Renders the Skinning Equation SBC command
void G3d_SBCRender_SKN(G3d_RenderState *renderState) {
    G3d_InvBindMtx *invBMtx =
        (G3d_InvBindMtx *) ((u8 *) renderState->renderObj->model + renderState->renderObj->model->offInvBMtx);
    u32 numTerms = *(renderState->currentCmd + 2);
    s64 weight   = 0;
    u8 *termPtr  = renderState->currentCmd + 3;
    u32 i;
    struct {
        Mat4x3p mtx1;
        Mat3p mtx2;
    } mtxStruct;
    Mat4p *mat4x;
    Mat3p *mat3x;

    Fill256(0, (unk16 *) &mtxStruct, sizeof(mtxStruct));
    FlushGfxQueue();

    GFX_FIFO_MTX_MODE     = 0; // Projection
    GFX_FIFO_MTX_STORE    = 1;
    GFX_FIFO_MTX_IDENTITY = 0;
    GFX_FIFO_MTX_MODE     = 2; // Position + Vector

    for (i = 0; i < numTerms; i++) {
        u32 jntIndex = *(termPtr + 1);
        u32 unk      = G3d_FindInBitArray(&renderState->mUnk_cc[0], jntIndex);

        mat4x = &data_0205ae08.mUnk_1400[jntIndex].mtx1;
        if (!unk) {
            G3d_SetBitArray(&renderState->mUnk_cc[0], jntIndex);

            GFX_FIFO_MTX_RESTORE = (*termPtr);
            GFX_FIFO_MTX_MODE    = 1; // Position
            func_0200567c(&invBMtx[jntIndex].mtx);
        }

        if (i != 0) {
            mtxStruct.mtx2.xColumn.x += (weight * mat3x->xColumn.x) >> 0xc;
            mtxStruct.mtx2.xColumn.y += (weight * mat3x->xColumn.y) >> 0xc;
            mtxStruct.mtx2.xColumn.z += (weight * mat3x->xColumn.z) >> 0xc;

            mtxStruct.mtx2.yColumn.x += (weight * mat3x->yColumn.x) >> 0xc;
            mtxStruct.mtx2.yColumn.y += (weight * mat3x->yColumn.y) >> 0xc;
            mtxStruct.mtx2.yColumn.z += (weight * mat3x->yColumn.z) >> 0xc;

            mtxStruct.mtx2.zColumn.x += (weight * mat3x->zColumn.x) >> 0xc;
            mtxStruct.mtx2.zColumn.y += (weight * mat3x->zColumn.y) >> 0xc;
            mtxStruct.mtx2.zColumn.z += (weight * mat3x->zColumn.z) >> 0xc;
        }

        if (!unk) {
            while (func_0200598c(mat4x))
                ;
            GFX_FIFO_MTX_MODE = 2; // Position + Vector
            func_02005698(&invBMtx[jntIndex].unkMtx);
        }

        weight = *(termPtr + 2) << 4;

        mtxStruct.mtx1.xColumn.x += (weight * mat4x->xColumn.x) >> 0xc;
        mtxStruct.mtx1.xColumn.y += (weight * mat4x->xColumn.y) >> 0xc;
        mtxStruct.mtx1.xColumn.z += (weight * mat4x->xColumn.z) >> 0xc;

        mtxStruct.mtx1.yColumn.x += (weight * mat4x->yColumn.x) >> 0xc;
        mtxStruct.mtx1.yColumn.y += (weight * mat4x->yColumn.y) >> 0xc;
        mtxStruct.mtx1.yColumn.z += (weight * mat4x->yColumn.z) >> 0xc;

        mtxStruct.mtx1.zColumn.x += (weight * mat4x->zColumn.x) >> 0xc;
        mtxStruct.mtx1.zColumn.y += (weight * mat4x->zColumn.y) >> 0xc;
        mtxStruct.mtx1.zColumn.z += (weight * mat4x->zColumn.z) >> 0xc;

        mtxStruct.mtx1.wColumn.x += (weight * mat4x->wColumn.x) >> 0xc;
        mtxStruct.mtx1.wColumn.y += (weight * mat4x->wColumn.y) >> 0xc;
        mtxStruct.mtx1.wColumn.z += (weight * mat4x->wColumn.z) >> 0xc;

        termPtr += 3;
        mat3x = &data_0205ae08.mUnk_1400[jntIndex].mtx2;

        if (!unk) {
            while (func_020059bc(mat3x))
                ;
        }
    }
    mtxStruct.mtx2.xColumn.x += (weight * mat3x->xColumn.x) >> 0xc;
    mtxStruct.mtx2.xColumn.y += (weight * mat3x->xColumn.y) >> 0xc;
    mtxStruct.mtx2.xColumn.z += (weight * mat3x->xColumn.z) >> 0xc;

    mtxStruct.mtx2.yColumn.x += (weight * mat3x->yColumn.x) >> 0xc;
    mtxStruct.mtx2.yColumn.y += (weight * mat3x->yColumn.y) >> 0xc;
    mtxStruct.mtx2.yColumn.z += (weight * mat3x->yColumn.z) >> 0xc;

    mtxStruct.mtx2.zColumn.x += (weight * mat3x->zColumn.x) >> 0xc;
    mtxStruct.mtx2.zColumn.y += (weight * mat3x->zColumn.y) >> 0xc;
    mtxStruct.mtx2.zColumn.z += (weight * mat3x->zColumn.z) >> 0xc;

    func_02005644((const Mat4x3p *) &mtxStruct.mtx2);
    GFX_FIFO_MTX_MODE = 1; // Position
    func_02005644(&mtxStruct.mtx1);
    GFX_FIFO_MTX_MODE    = 0; // Projection
    GFX_FIFO_MTX_RESTORE = 1;
    GFX_FIFO_MTX_MODE    = 2; // Position + Vector
    GFX_FIFO_MTX_STORE   = (*(renderState->currentCmd + 1));
    renderState->currentCmd += 3 + *(renderState->currentCmd + 2) * 3;
}