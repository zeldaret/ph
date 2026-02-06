#include "Render/MistModelRender.hpp"
#include "Game/Game.hpp"

ARM MistModelRender::MistModelRender(ItemModel *itemModel) :
    ModelRender(itemModel),
    mUnk_5c(0),
    mUnk_60(4),
    mUnk_64(0),
    mUnk_68(0) {
    this->UnkInit_Struct4_Params(4, 2);
}

ARM MistModelRender::~MistModelRender() {}

ARM void MistModelRender::vfunc_3c(ModelRenderCommandsData *renderData) {
    ModelRender_MaterialData *matPtr = renderData->unkMaterialDataPTR;
    matPtr->flags &= ~(0x4);

    if (gGame.mUnk_101 == 0) {
        this->mUnk_68 += this->mUnk_60;

        if (this->mUnk_68 >= 0x1000) {
            this->mUnk_68 = 0;
        } else if (this->mUnk_68 <= 0) {
            this->mUnk_68 = 0x1000;
        }

        this->mUnk_64 += this->mUnk_5c;

        if (this->mUnk_64 >= 0x2000) {
            this->mUnk_64 = 0;
        } else if (this->mUnk_64 <= 0) {
            this->mUnk_64 = 0x2000;
        }
    }

    matPtr->mUnk_24 = this->mUnk_64;
    matPtr->mUnk_28 = this->mUnk_68;
}