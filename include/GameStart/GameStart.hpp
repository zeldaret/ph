#pragma once

#include "Game/GameMode.hpp"
#include "Player/TouchControl.hpp"
#include "System/SysNew.hpp"
#include "global.h"
#include "types.h"

class GameStart : public GameMode {
public:
    /* 000 (base) */
    /* 008 */ unk32 mUnk_008;
    /* 00c */ u32 mUnk_00c;
    /* 010 */

    /* 00 */ virtual ~GameStart() override;
    /* 04 */ virtual GameModeId vfunc_08(bool param1) override;
    /* 10 */ virtual void vfunc_10(u16 *param1) override;
    /* 14 */

    static GameStart *Create(unk32 param1);

    GameStart(unk32 param1);

    void func_ov008_02112e88();
    void func_ov008_02112ee0();
    void func_ov008_02112f28();

    void func_ov008_021130d0();
    void func_ov008_02113150();

    void func_ov008_02113284();
    void func_ov008_021132cc();
    void func_ov008_02113314();
    void func_ov008_0211337c();
    void func_ov008_021133bc();
    void func_ov008_021133f0();
    void func_ov008_02113460();
    void func_ov008_02113474();
    void func_ov008_021134b8();
    void func_ov008_0211351c();

    void func_ov008_021135bc();

    void func_ov008_021136ec();
    void func_ov008_021136fc();
    void func_ov008_02113730();
    void func_ov008_02113968();
    void func_ov008_0211396c();
    void func_ov008_02113984();
    void func_ov008_02113988();
    void func_ov008_021139d8();
    void func_ov008_021139dc();
    void func_ov008_02113a0c();
    void func_ov008_02113a40();
    void func_ov008_02113aa8();
};

class GameStart2 : public GameStart {
    /* 00 (base) */
    /* 010 */
};

class TouchControl2 : public TouchControl {
public:
    TouchControl2();
};
