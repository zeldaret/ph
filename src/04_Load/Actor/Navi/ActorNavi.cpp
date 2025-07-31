#include "Actor/Navi/ActorNavi.hpp"
#include "Item/ItemManager.hpp"

ActorNavi::ActorNavi() :
    mUnk_294(0),
    mUnk_2f0(&mUnk_314, gItemManager->GetItemModel(ItemModelId_Hammer)) {}
