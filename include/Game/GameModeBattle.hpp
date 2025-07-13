#pragma once

#include "Game/GameModePlay.hpp"

class GameModeBattle : public GameModePlay {
public:
    /* 000 (base) */
    /* 008 */ unk8 mUnk_008[0x878];
    /* 880 */ unk16 mUnk_880;
    /* 882 */ unk8 mUnk_882[0xa];
    /* 88c */ unk16 mUnk_88c;
    /* 88e */ unk8 mUnk_88e[0x102];
    /* 990 */ unk32 mUnk_990;
    /* 994 */ unk32 mUnk_994;
    /* 998 */ unk32 mUnk_998;
    /* 99c */ unk8 mUnk_99c[0x4];
    /* 9a0 */

    /* 00 */ virtual ~GameModeBattle() override;
    /* 08 */ virtual unk32 vfunc_08(unk32 param1) override;
    /* 0c */ virtual void vfunc_0c(u16 *param1) override;
    /* 10 */ virtual void vfunc_10(u16 *param1) override;
    /* 14 */ virtual void vfunc_14(u16 *param1) override;
    /* 18 */ virtual void vfunc_18() override;
    /* 24 */ virtual void vfunc_24();
    /* 28 */

    GameModeBattle(unk32 param1);
    static GameModeBattle *Create(unk32 param1);
};
