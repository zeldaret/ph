#pragma once

#include "ModelRender.hpp"

struct UnkStruct_SkyboxModelRender_020e518c {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */
};

class SkyboxModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ u8 mUnk_5c;
    /* 5d */ unk8 mUnk_5d;
    /* 5e */ unk16 mUnk_5e;
    /* 60 */ UnkStruct_SkyboxModelRender_020e518c mUnk_60;
    /* 6c */

    /* 00 */ virtual ~SkyboxModelRender();
    /* 40 */ virtual void vfunc_40();
    /* 44 */ virtual s32 vfunc_44();

    SkyboxModelRender(ItemModel *itemModel);
};