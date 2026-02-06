#pragma once

#include "ModelRender.hpp"

class SignModelRender : public ModelRender {
public:
    /* 00 (base) */
    /* 5c */ u16 transparency;
    /* 5e */ s16 xRotationAngle;
    /* 60 */ s16 yRotationAngle;
    /* 62 */ u16 impactAngle;
    /* 64 */ Vec3p position;
    /* 70 */ Vec3p acceleration;
    /* 7c */

    /* 00 */ virtual ~SignModelRender() override;

    SignModelRender(ItemModel *itemModel);
    void SetImpactDirection(Vec3p *dir);
    bool CalculateBrokenSignState();
    void UpdateBrokenPiecePosition(ModelRenderCommandsData *renderData);
    void SetTransparencyAfterDamage(ModelRenderCommandsData *renderData);
    void func_ov014_0212d50c(ModelRenderCommandsData *renderData);
};