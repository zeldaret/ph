#pragma once

#include "ModelRender.hpp"

class BoxModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ bool isClosed;
    /* 5d */

    /* 00 */ virtual ~BoxModelRender() override;
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData) override;

    BoxModelRender(ItemModel *itemModel);
};