#include "Render/LinkModelRender.hpp"

char gLinkBodyParts[10][16] = {"center",    "body_chn",  "waist_chn", "neck_jnt",  "cl_podA",
                               "cl_LhandA", "cl_RhandA", "LlegB_jnt", "RlegB_jnt", "head_jnt"};
char gLinkMaterials[5][16]  = {"swA", "sheath", "swB", "sheathB", "body_all"};

extern "C" u32 *data_027e0ce0[];
extern "C" void func_ov000_020aa084(LinkModelRender *param1, s32 param2);
extern "C" void func_ov000_020aa0f0(LinkModelRender *param1, s32 param2, s32 param3);

THUMB LinkModelRender::LinkModelRender(ItemModel *itemModel) :
    ModelRender(itemModel),
    mUnk_9c(0),
    mUnk_a0(0) {
    for (int i = 0; i < 10; i++) {
        char *modelObj        = gLinkBodyParts[i];
        this->modelObjects[i] = this->GetObjectIndex(modelObj);
    }

    for (int i = 0; i < 5; i++) {
        char *modelMat          = gLinkMaterials[i];
        this->modelMaterials[i] = this->GetMaterialIndex(modelMat);
    }

    this->mUnk_98 = (u8 *) SysObject::operator new[](itemModel->numBoneMatrices, data_027e0ce0[1], 4);

    for (int i = 0; i < itemModel->numBoneMatrices; i++) {
        this->mUnk_98[i] = 0;
    }

    func_ov000_020aa084(this, this->modelObjects[1]);
    func_ov000_020aa0f0(this, 0, 0);
    func_ov000_020aa0f0(this, 2, 0);
}