#include "Render/MapModelRender.hpp"

extern "C" void func_02018cb8(ModelRender_UnkStruct_4 *param_1, void *param_2);
extern "C" void func_ov000_0209d9e0(ModelRenderCommandsData *param_1);

ARM MapModelRender::MapModelRender(ItemModel *itemModel) :
    ModelRender(itemModel) {
    this->modelCoverTransparency = 0;
    this->mUnk_60                = NULL;
    this->mUnk_04.mUnk_2c        = this;
    func_02018cb8(&this->mUnk_04, func_ov000_0209d9e0);
}

void MapModelRender::HideModelCovers(ModelRenderCommandsData *renderData) {
    u32 polygonId = (renderData->unkMaterialDataPTR->polygon_attr & 0x3f000000) >> 0x18;
    if (polygonId == 0x1b) { // Polygon ID for model covers (e.g. cv_section)
        u32 transparency = this->modelCoverTransparency << 0x10;
        renderData->unkMaterialDataPTR->polygon_attr =
            renderData->unkMaterialDataPTR->polygon_attr & 0xffe0ffff | transparency;
    }
}