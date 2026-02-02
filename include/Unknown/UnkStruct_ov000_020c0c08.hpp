#pragma once

#include "global.h"
#include "types.h"

#include <nds/ns.h>

#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_0202e1a0.hpp"

struct UnkStruct_ov000_020c0c08_04 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ char *mUnk_08;
    /* 0c */ unk8 mUnk_0c[0x4];
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk8 mUnk_18[0x8];
    /* 20 */
};

class ItemModel {
public:
    /* 00 */ s32 fileSize;
    /* 04 */ s32 renderCmdsOffset;
    /* 08 */ s32 materialsOffset;
    /* 0c */ s32 meshesOffset;
    /* 10 */ s32 invBindsOffset;
    /* 14 */ unk8 mUnk_14[3];
    /* 17 */ u8 numBoneMatrices;
    /* 18 */ u8 numMaterials;
    /* 19 */ u8 numMeshes;
    /* 1a */ unk8 mUnk_1a[2];
    /* 1c */ s32 up_scale;
    /* 20 */ s32 down_scale;
    /* 24 */ s16 numVertices;
    /* 26 */ s16 numPolygons;
    /* 28 */ s16 numTriangles;
    /* 2a */ s16 numQuads;
    /* 2c */ unk8 boundingBox[0xc];
    /* 38 */ unk8 mUnk_38[0x8];
    /* 40 */ void *boneList;
};

class UnkStruct_ov000_020c0c08 : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ UnkStruct_ov000_020c0c08_04 *mUnk_04;
    /* 08 */ ItemModel *mUnk_08;
    /* 0c */ UnkStruct_0202e1a0 mUnk_0c;
    /* 24 */

    /* 00 */ virtual ~UnkStruct_ov000_020c0c08();
    /* 08 */

    UnkStruct_ov000_020c0c08(UnkStruct_ov000_020c0c08_04 *param1, ItemModel *param2);

    void func_ov000_020c0c44(void *);
    void func_ov000_020c0e04();
    void func_ov000_020c0e5c(unk32);
};
