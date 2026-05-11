#include "Actor/Navi/ActorForceNavi.hpp"

#pragma section sbss begin
ActorType ActorForceNavi::gType = ActorType(ActorTypeId_ForceNavi, (ActorCreateFunc) ActorForceNavi::Create, NULL);
#pragma section sbss end

extern u32 **data_027e0fe0[];
ARM ActorForceNavi *ActorForceNavi::Create() {
    return new(*data_027e0fe0[0], 4) ActorForceNavi();
}

ARM FairyId ActorForceNavi::GetFairyId() {
    return FairyId_Power;
}
