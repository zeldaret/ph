#pragma once

#include "ModelRender.hpp"

class MapModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ u8 modelCoverTransparency;
    /* 5d */ unk8 mUnk_5d[3];
    /* 60 */ unk32 *mUnk_60;

    virtual ~MapModelRender();

    MapModelRender(ItemModel *itemModel);
    void HideModelCovers(ModelRenderCommandsData *renderData);
};