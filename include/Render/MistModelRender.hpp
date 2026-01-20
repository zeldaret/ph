#pragma once

#include "ModelRender.hpp"

class MistModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ unk32 mUnk_5c;
    /* 60 */ unk32 mUnk_60;
    /* 64 */ unk32 mUnk_64;
    /* 68 */ unk32 mUnk_68;
    /* 6c */

    /* 00 */ virtual ~MistModelRender() override;
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData) override;

    MistModelRender(ItemModel *itemModel);
};