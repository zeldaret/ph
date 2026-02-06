#include "Render/SpikeModelRender.hpp"

extern "C" unk32 func_0201e388(void *param1, const char *param2);

SpikeModelRender::SpikeModelRender(ItemModel *itemModel) :
    ModelRender(itemModel),
    spikeRetractionPosition(0),
    mUnk_60(1) {
    this->UnkInit_Struct4_Params(6, 2);
}

#pragma readonly_strings on
void SpikeModelRender::vfunc_3c(ModelRenderCommandsData *renderData) {
    if (renderData->currentCommand[1] == func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "spike")) {
        if (this->mUnk_60 != '\0') {
            renderData->transformations->flags               = renderData->transformations->flags & ~4;
            renderData->transformations->translationVector.y = this->spikeRetractionPosition;
            renderData->transformations->translationVector.x = 0;
            renderData->transformations->translationVector.z = 0;
        } else {
            *renderData->boneVisibilityPtr = 0;
        }
    }
}
#pragma readonly_strings reset

SpikeModelRender::~SpikeModelRender() {}