#pragma once

#include "global.h"
#include "types.h"

#include "Map/TriggerBase.hpp"
#include "Physics/Sphere.hpp"

class TriggerSphere : public TriggerBase {
public:
    /* 00 (base) */
    /* 14 */ Sphere mSphere;
    /* 24 */ s32 mHeight;
    /* 28 */

    /* 00 */ virtual ~TriggerSphere() override;
    /* 14 */ virtual bool Overlaps(Vec3p *point) override;
    /* 18 */ virtual bool GetBoundingBox(AABB *bbox) override;
    /* 1c */

    TriggerSphere(TriggerParams *params);
    TriggerSphere(u8 id, u32 param2, u32 param3, u32 param4);
};
