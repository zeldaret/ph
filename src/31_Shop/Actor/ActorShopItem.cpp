#include "Actor/ActorShopItem.hpp"
#include "lib/files.hpp"

extern u32 **data_027e0fe0[];

ActorShopItemDM *ActorShopItemDM::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemDM();
}

ActorShopItemSoldOut *ActorShopItemSoldOut::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemSoldOut();
}

ActorShopItemHeartContainer *ActorShopItemHeartContainer::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemHeartContainer();
}

ActorShopItemArrows *ActorShopItemArrows::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemArrows();
}

ActorShopItemBombs *ActorShopItemBombs::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBombs();
}

ActorShopItemBombchus *ActorShopItemBombchus::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBombchus();
}

ActorShopItemQuiver *ActorShopItemQuiver::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemQuiver();
}

ActorShopItemBombBag *ActorShopItemBombBag::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBombBag();
}

ActorShopItemB2 *ActorShopItemB2::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemB2();
}

ActorShopItemTreasure *ActorShopItemTreasure::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemTreasure();
}

ActorShopItemShipPart *ActorShopItemShipPart::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemShipPart();
}

ActorShopItemGem *ActorShopItemGem::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemGem();
}

ActorShopItemShield *ActorShopItemShield::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemShield();
}

ActorShopItemPotion *ActorShopItemPotion::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemPotion();
}

ActorShopItemBK *ActorShopItemBK::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBK();
}

ActorShopItemCC *ActorShopItemCC::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemCC();
}

ActorShopItemBY *ActorShopItemBY::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBY();
}

static void func_ov031_0217dfec(FileEntry *param_1, FileEntry *param_2, char *param_3) {}
static void func_ov031_0217e040() {}
static void func_ov031_0217e2b4() {}

ActorShopItemBase::ActorShopItemBase() {}
ActorShopItem::ActorShopItem() {}
ActorShopItemShipPart::ActorShopItemShipPart() {}
ActorShopItemTreasure::ActorShopItemTreasure() {}
ActorShopItemUnk::ActorShopItemUnk() {}
ActorShopItemBY::ActorShopItemBY() {}

ActorShopItemBase::~ActorShopItemBase() {}
ActorShopItem::~ActorShopItem() {}
ActorShopItemSoldOut::~ActorShopItemSoldOut() {}
ActorShopItemShipPart::~ActorShopItemShipPart() {}
ActorShopItemTreasure::~ActorShopItemTreasure() {}

void ActorShopItem::vfunc_d4() {}
void ActorShopItemDM::vfunc_d4() {}
void ActorShopItemSoldOut::vfunc_d4() {}
void ActorShopItemShipPart::vfunc_d4() {}
void ActorShopItemTreasure::vfunc_d4() {}

bool ActorShopItemBase::Init() {}
bool ActorShopItem::Init() {}
bool ActorShopItemDM::Init() {}
bool ActorShopItemSoldOut::Init() {}
bool ActorShopItemHeartContainer::Init() {}
bool ActorShopItemArrows::Init() {}
bool ActorShopItemQuiver::Init() {}
bool ActorShopItemBombs::Init() {}
bool ActorShopItemBombBag::Init() {}
bool ActorShopItemBombchus::Init() {}
bool ActorShopItemB2::Init() {}
bool ActorShopItemShipPart::Init() {}
bool ActorShopItemTreasure::Init() {}
bool ActorShopItemGem::Init() {}
bool ActorShopItemShield::Init() {}
bool ActorShopItemPotion::Init() {}
bool ActorShopItemUnk::Init() {}

void ActorShopItemBase::vfunc_14(u32 param1) {}
void ActorShopItem::vfunc_14(u32 param1) {}
void ActorShopItemShipPart::vfunc_14(u32 param1) {}
void ActorShopItemUnk::vfunc_14(u32 param1) {}

void ActorShopItemBase::vfunc_18(u32 param1) {}

void ActorShopItem::vfunc_c8() {}
void ActorShopItem::vfunc_cc() {}
void ActorShopItem::func_ov031_0217f0b4() {}
unk32 ActorShopItem::vfunc_d8() {}
unk32 ActorShopItem::vfunc_dc() {}
void ActorShopItem::func_ov031_0217f114() {}
void ActorShopItem::func_ov031_0217f120() {}

void ActorShopItem::vfunc_20(bool param1) {}
void ActorShopItemShipPart::vfunc_20(bool param1) {}
void ActorShopItemDM::vfunc_20(bool param1) {}
void ActorShopItemUnk::vfunc_20(bool param1) {}

void ActorShopItemBK::vfunc_1c(u16 *param1) {}
void ActorShopItemCC::vfunc_1c(u16 *param1) {}
void ActorShopItemBY::vfunc_1c(u16 *param1) {}

unk32 ActorShopItem::func_ov031_0217f868() {}
unk32 ActorShopItemDM::vfunc_bc() {}
unk32 ActorShopItemSoldOut::vfunc_bc() {}
unk32 ActorShopItemHeartContainer::vfunc_bc() {}
unk32 ActorShopItemArrows::vfunc_bc() {}
unk32 ActorShopItemQuiver::vfunc_bc() {}
unk32 ActorShopItemBombs::vfunc_bc() {}
unk32 ActorShopItemBombBag::vfunc_bc() {}
unk32 ActorShopItemBombchus::vfunc_bc() {}
unk32 ActorShopItemB2::vfunc_bc() {}
unk32 ActorShopItemShipPart::vfunc_bc() {}
unk32 ActorShopItemTreasure::vfunc_bc() {}
unk32 ActorShopItemGem::vfunc_bc() {}
unk32 ActorShopItemShield::vfunc_bc() {}
unk32 ActorShopItemPotion::vfunc_bc() {}

unk32 ActorShopItem::vfunc_e0() {}
unk32 ActorShopItemHeartContainer::vfunc_e0() {}
unk32 ActorShopItemPotion::vfunc_e0() {}
unk32 ActorShopItemShipPart::vfunc_e0() {}
unk32 ActorShopItemTreasure::vfunc_e0() {}

unk32 ActorShopItem::vfunc_c0() {}

void ActorShopItem::vfunc_c4() {}
void ActorShopItemHeartContainer::vfunc_c4() {}
void ActorShopItemArrows::vfunc_c4() {}
void ActorShopItemQuiver::vfunc_c4() {}
void ActorShopItemBombs::vfunc_c4() {}
void ActorShopItemBombBag::vfunc_c4() {}
void ActorShopItemBombchus::vfunc_c4() {}
void ActorShopItemB2::vfunc_c4() {}
void ActorShopItemShipPart::vfunc_c4() {}
void ActorShopItemTreasure::vfunc_c4() {}
void ActorShopItemGem::vfunc_c4() {}
void ActorShopItemShield::vfunc_c4() {}
void ActorShopItemPotion::vfunc_c4() {}

bool ActorShopItemBase::vfunc_b4() {}
bool ActorShopItemBK::vfunc_b4() {}
bool ActorShopItemCC::vfunc_b4() {}
bool ActorShopItemBY::vfunc_b4() {}

bool ActorShopItemBase::vfunc_b8() {}
bool ActorShopItemBK::vfunc_b8() {}
bool ActorShopItemCC::vfunc_b8() {}
bool ActorShopItemBY::vfunc_b8() {}

unk32 ActorShopItemTreasure::func_ov031_02180248() {}
unk32 ActorShopItemTreasure::func_ov031_02180260() {}
unk32 ActorShopItemTreasure::func_ov031_02180278() {}

unk32 ActorShopItemDM::vfunc_d0() {}
unk32 ActorShopItemSoldOut::vfunc_d0() {}
unk32 ActorShopItemHeartContainer::vfunc_d0() {}
unk32 ActorShopItemArrows::vfunc_d0() {}
unk32 ActorShopItemQuiver::vfunc_d0() {}
unk32 ActorShopItemBombs::vfunc_d0() {}
unk32 ActorShopItemBombBag::vfunc_d0() {}
unk32 ActorShopItemBombchus::vfunc_d0() {}
unk32 ActorShopItemB2::vfunc_d0() {}
unk32 ActorShopItemShipPart::vfunc_d0() {}
unk32 ActorShopItemGem::vfunc_d0() {}
unk32 ActorShopItemShield::vfunc_d0() {}
unk32 ActorShopItemPotion::vfunc_d0() {}

void func_ov031_02180418(unk32 param_1);