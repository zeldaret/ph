#pragma once

#include "ModelRender.hpp"

class BombModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ unk32 mUnk_5c;
    /* 60 */ unk32 mUnk_60;
    /* 64 */ q20 mUnk_64;
    /* 68 */

    /* 00 */ virtual ~BombModelRender() override;
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData) override;

    BombModelRender(ItemModel *itemModel, unk32 param2, unk32 param3);
    void func_ov014_0212e234();
};