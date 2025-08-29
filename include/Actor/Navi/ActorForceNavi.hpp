#pragma once

#include "Actor/ActorType.hpp"
#include "Actor/Navi/ActorNaviBase.hpp"

class ActorForceNavi : public ActorNaviBase {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 294 */

    /* b4 */ virtual FairyId GetFairyId() override;

    static ActorForceNavi *Create();
};
