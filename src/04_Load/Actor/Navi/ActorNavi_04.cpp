#include "Actor/Navi/ActorNavi.hpp"
#include "Item/ItemManager.hpp"

extern ItemModel *data_ov000_020ee1f8;
extern NsFile *data_ov000_020e67ac;

THUMB ActorNaviBase::ActorNaviBase() :
    mUnk_164(0),
    mUnk_168(data_ov000_020ee1f8),
    mUnk_1d0(GetJntAnimation(FindJntSection(data_ov000_020e67ac), 0), data_ov000_020ee1f8),
    mUnk_214(0),
    mUnk_222(-1),
    mUnk_224(0x1000000),
    mUnk_280(-1),
    mUnk_284(-1),
    mUnk_288(0),
    mUnk_289(0),
    mUnk_28a(0),
    mUnk_28c(0),
    mUnk_28d(0),
    mUnk_290(0),
    mUnk_291(0) {
    mOffsetPos = mPos;
    mUnk_130   = 0;
    mYOffset   = FLOAT_TO_Q20(0.2);
}

THUMB ActorNaviBase::~ActorNaviBase() {}

THUMB ActorNaviBase_Unk1::ActorNaviBase_Unk1() {}

THUMB bool ActorNaviBase::Init() {
    mGravity = 0;
    mHitbox.MakeEmpty();
    mUnk_08c.pos.x = 0;
    mUnk_08c.pos.y = 0;
    mUnk_08c.pos.z = 0;
    mUnk_08c.size  = FLOAT_TO_Q20(0.4);
    mUnk_0a4.mUnk_04.MakeEmpty();
    if (data_027e0d38->func_ov000_02078b40() == 2) {
        return true;
    }
    this->func_ov000_020b9770(0);
    mUnk_224.mUnk_20.id    = mRef.id;
    mUnk_224.mUnk_20.index = mRef.index;
    mUnk_28e               = 0;
    mUnk_28f               = 0;
    return true;
}

ActorNaviBase_Unk3::ActorNaviBase_Unk3(ItemModel *param1) :
    ModelRender(param1) {
    this->func_ov000_020a9998(6, 3);
}

THUMB ActorNavi::ActorNavi() :
    mUnk_294(gItemManager->GetItemModel(ItemModelId_Hammer)),
    mUnk_2f0(gItemManager->GetItemModel(ItemModelId_Hammer)),
    mUnk_340(0),
    mUnk_344(FLOAT_TO_Q20(1.0)),
    mUnk_348(0),
    mHammer(NULL),
    mUnk_3b8(data_02057200),
    mUnk_3c0(0),
    mUnk_3c1(0),
    mUnk_3c2(0) {}

extern const ItemManager_Unk1 data_ov000_020dc7d0;
THUMB bool ActorNavi::Init() {
    mUnk_2f0.func_ov000_020c0c44(gItemManager->func_ov00_020ad538(&data_ov000_020dc7d0));
    mUnk_2f0.func_ov000_020c0e5c(0);
    mUnk_294.func_ov000_020a9960(&mUnk_35c);
    mUnk_294.vfunc_24(&mUnk_2f0);
    mUnk_3c4        = ActorNaviBase::vfunc_c4();
    mUnk_3c6        = ActorNaviBase::vfunc_c8();
    mUnk_09c.mUnk_0 = 0xff;
    mUnk_09c.mUnk_0 = (s16) (mUnk_09c.mUnk_0 & ~2);
    mUnk_09c.mUnk_0 = (s16) (mUnk_09c.mUnk_0 & ~0x80);
    this->func_ov000_020b8200();
    return ActorNaviBase::Init();
}
