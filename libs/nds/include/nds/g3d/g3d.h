#include "nds/math.h"

struct G3d_RenderState_;
typedef void (*G3d_CallbackFunction)(struct G3d_RenderState_ *);

typedef struct G3d_NameList_ {
    /* 00 */ u8 dummy;
    /* 01 */ u8 numElmnts;   // number of elements
    /* 02 */ u16 size;       // size of this NameList in bytes
    /* 04 */ u16 dummy2;
    /* 06 */ u16 ofsHeader;  // offset to the G3d_NameList_Header
    /* 08 */ void *entry[1]; // variable size
    /* 0c */
} G3d_NameList;

typedef struct G3d_NameList_Header_ {
    /* 00 */ u16 element_size;
    /* 02 */ u16 data_section_size;
    /* 04 */ u8 data[4];
    /* 08 */
} G3d_NameList_Header;

typedef struct G3d_InvBindMtx_ {
    /* 00 */ Mat4x3p mtx;
    /* 30 */ Mat3p unkMtx;
    /* 54 */
} G3d_InvBindMtx;

typedef struct G3d_BoneMtxStruct_ {
    /* 00 */ u32 flag;
    /* 04 */ u8 mUnk_04[0x24];
    /* 28 */ Mat3p rot;
    /* 58 */ u8 mUnk_58[0xc];
    /* 64 */
} G3d_BoneMtxStruct;

typedef enum {
    G3D_ANIMBIND_UNK    = 0xff,
    G3D_ANIMBIND_EXISTS = 0x100,
    G3D_ANIMBIND_OFF    = 0x200
} G3d_AnimationBinds;

typedef struct G3d_Animation_ {
    /* 00 */ u8 mUnk_00[0x10];
    /* 10 */ struct G3d_Animation_ *next; // next animation in the list
    /* 14 */ u8 mUnk_14[0x5];
    /* 19 */ u8 numElmnts; // number of elements in the elementBinds array
    /* 1a */ u16 elementBinds[1]; // each bit corresponds to a bone/material and determines whether an animation exists for it
    /* 1c */
} G3d_Animation;

// Structure representing the NSBMD model file
typedef struct G3d_Model_ {
    /* 00 */ u32 size; // size of the model in bytes
    /* 04 */ u32 offSbc; // offset of the SBC commands list
    /* 08 */ u32 offMat; // offset of the material list
    /* 0c */ u32 offMesh; // offset of the mesh list
    /* 10 */ u32 offInvBMtx; // offset of the InvBindMatrix list
    /* 14 */ u8 dummy1;
    /* 15 */ u8 scalingHandler; // Determines which of the G3d_gScaleHandlers to use for this model
    /* 16 */ u8 textureHandler; // Determines which of the G3d_gTextureHandlers to use for this model
    /* 17 */ u8 numBones; // number of nodes
    /* 18 */ u8 numMat; // number of materials
    /* 19 */ u8 numMesh; // number of meshes
    /* 1a */ u8 dummy2[2];
    /* 1c */ q20 upScale;
    /* 20 */ q20 downScale;
    /* 24 */ u16 numVertex; // number of vertices
    /* 26 */ u16 numPolygon; // number of polygons
    /* 28 */ u16 numTriangle; // number of triangles
    /* 2a */ u16 numQuad; // number of quads
    /* 2c */ q4 boundingBoxMin[3]; // bounding box lower vertex
    /* 32 */ q4 boundingBoxMax[3]; // bounding box upper vertex
    /* 38 */ u8 dummy3[8];
    /* 40 */ G3d_NameList boneList; // bone list
    /* 4c */
} G3d_Model;

static inline G3d_NameList *G3d_GetBoneList(const G3d_Model *mdl) {
    return (G3d_NameList *) &mdl->boneList;
}

static inline void *G3d_GetMat(const G3d_Model *mdl) {

    return (void *) ((u8 *) mdl + mdl->offMat);
}

static inline G3d_NameList *G3d_GetMesh(const G3d_Model *mdl) {
    return (G3d_NameList *) ((u8 *) mdl + mdl->offMesh);
}

typedef enum {
    G3D_RENDEROBJ_FLAG_STORE            = 0x1, // stores results in local cache
    G3D_RENDEROBJ_FLAG_SKIP_CMD         = 0x2, // skips pushing geometry commands to the FIFO
    G3D_RENDEROBJ_FLAG_SKIP_SBC_DRAW    = 0x4, // skips the execution of rendering commands
    G3D_RENDEROBJ_FLAG_SKIP_SBC_MTXCALC = 0x8, // skips the execution of matrix calculation commands
    G3D_RENDEROBJ_FLAG_ANIMMAP_OUTDATED = 0x10 // set when the animation map arrays in the render object are outdated
} G3d_RenderObjFlag;

// Structure that handles the parameters for drawing a model
typedef struct G3d_RenderObject_ {
    /* 00 */ u32 flag; // G3d_RenderObjFlag
    /* 04 */ G3d_Model *model;
    /* 08 */ G3d_Animation *matAnim; // material animation
    /* 0c */ void *mUnk_0c;
    /* 10 */ G3d_Animation *jntAnim; // joint animation
    /* 14 */ void *mUnk_14;
    /* 18 */ G3d_Animation *mUnk_18;
    /* 1c */ void *mUnk_1c;
    /* 20 */ G3d_CallbackFunction callbackFunction;
    /* 24 */ u8 callbackIdx; // index of the callbackFunction in the callback array of G3d_RenderState
    /* 25 */ u8 mUnk_25; // related to callback
    /* 26 */ u16 dummy_;
    /* 28 */ G3d_CallbackFunction callbackInitFunc; // initializes the G3d_RenderState callback array
    /* 2c */ void *modelRender; // pointer to the ModelRender that is rendering this model
    /* 30 */ u8 *unkCommandsList; // if not null, this command list is used instead of the one in the model
    /* 34 */ G3d_BoneMtxStruct *cacheJntAnm;
    /* 38 */ void *cacheMatAnm;
    /* 3c */ u32 matAnimBindMap[2];
    /* 44 */ u32 jntAnimBindMap[2];
    /* 4c */ u32 unkAnimBindMap[2];
    /* 54 */
} G3d_RenderObject;

typedef struct G3d_Material_List_ {
    /* 00 */ u16 texture_pairings_off;
    /* 02 */ u16 palette_pairings_off;
    /* 04 */ G3d_NameList materials;
    /* 10 */
} G3d_Material_List;

typedef struct G3d_Material_ {
    /* 00 */ u32 mUnk_00;
    /* 04 */ u32 dif_amb;
    /* 08 */ u32 spe_emi;
    /* 0c */ u32 polygon_attr;
    /* 10 */ u32 mUnk_10;
    /* 14 */ u32 teximage_params;
    /* 18 */ u32 mUnk_18;
    /* 1c */ u16 pltt_base;
    /* 1e */ u16 flag;
    /* 20 */ u16 width;
    /* 22 */ u16 height;
    /* 24 */ u8 mUnk_24[0x8];
    /* 2c */
} G3d_Material;

typedef struct G3d_MaterialAnimation_ {
    /* 00 */ u32 flag;
    /* 04 */ u32 dif_amb;
    /* 08 */ u32 spe_emi;
    /* 0c */ u32 polygon_attr;
    /* 10 */ u32 teximage_params;
    /* 14 */ u32 pltt_base;
    /* 18 */ u8 mUnk_18[0x14];
    /* 2c */ u16 width;
    /* 2e */ u16 height;
    /* 30 */ u8 mUnk_30[0x8];
    /* 38 */
} G3d_MaterialAnimation;

#define G3D_TEXIMAGE_PARM_TEX_COORD_MODE 0xc0000000

extern void *G3d_gScaleHandlers[3];
extern void *G3d_gSRTTransformHandlers[3];
extern void *G3d_gTextureHandlers[4];