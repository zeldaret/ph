#pragma once

#include "ModelRender.hpp"

class LinkModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ s32 modelObjects[10];
    /* 84 */ s32 modelMaterials[5];
    /* 98 */ u8 *mUnk_98;
    /* 9c */ unk32 mUnk_9c;
    /* a0 */ unk32 mUnk_a0;
    /* a4 */

    /* 00 */ virtual ~LinkModelRender();
    /* 3c */ virtual s32 vfunc_3c();

    LinkModelRender(ItemModel *itemModel);
};