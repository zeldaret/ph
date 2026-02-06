#include "Render/SkyboxModelRender.hpp"

static UnkStruct_SkyboxModelRender_020e518c data_ov000_020e518c = {0, 0x180000,
                                                                   0x280000}; // this is initialized by a static initializer

ARM SkyboxModelRender::SkyboxModelRender(ItemModel *itemModel) :
    ModelRender(itemModel),
    mUnk_5c(1),
    mUnk_5e(0),
    mUnk_60(data_ov000_020e518c) {}

SkyboxModelRender::~SkyboxModelRender() {}

void SkyboxModelRender::vfunc_40() {
    if (this->mUnk_5c != 0) {
        this->mUnk_5e += 7;
    }
}

s32 SkyboxModelRender::vfunc_44() {
    return 1;
}