#pragma once

#include "ModelRender.hpp"

class SpikeModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ q20 spikeRetractionPosition;
    /* 60 */ u8 mUnk_60;
    /* 61 */

    /* 00 */ virtual ~SpikeModelRender() override;
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData) override;

    SpikeModelRender(ItemModel *itemModel);
};