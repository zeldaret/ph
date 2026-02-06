#pragma once

#include "ModelRender.hpp"

class TreasureChestModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ bool isClosed;
    /* 5d */

    /* 00 */ virtual ~TreasureChestModelRender() override;
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData) override;

    TreasureChestModelRender(ItemModel *itemModel);
};