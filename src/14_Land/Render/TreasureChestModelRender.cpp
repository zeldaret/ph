#include "Render/TreasureChestModelRender.hpp"

extern "C" unk32 func_0201e388(void *param1, const char *param2);

const char boxBModelName[20] = "box_B";

TreasureChestModelRender::TreasureChestModelRender(ItemModel *itemModel) :
    ModelRender(itemModel),
    isClosed(true) {
    this->UnkInit_Struct4_Params(2, 2);
}

void TreasureChestModelRender::vfunc_3c(ModelRenderCommandsData *renderData) {
    s32 boneIndex = func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, boxBModelName);
    if (renderData->currentCommand[1] == boneIndex && !this->isClosed) {
        *renderData->boneVisibilityPtr = 0;
    }
}

TreasureChestModelRender::~TreasureChestModelRender() {}