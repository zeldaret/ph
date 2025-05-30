#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorType.hpp"

class ActorRefill : public Actor {
public:
    /* 000 (base) */
    /* 158 */ unk32 mUnk_158;
    /* 15c */ unk32 mUnk_15c;
    /* 160 */ unk32 mUnk_160;
    /* 164 */ u8 mUnk_164;
    /* 165 */ unk8 mUnk_165[0x3];
    /* 168 */

public:
    ActorRefill(unk32 param1);

    /* 00 */ virtual ~ActorRefill() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* b4 */ virtual ItemFlag GetAmmoItem() = 0;
    /* b8 */

    bool func_ov014_02135364(unk32 param1);
    void func_ov014_02135474();
};

class ActorRefillBombs : public ActorRefill {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

public:
    ActorRefillBombs();
    static ActorRefillBombs *Create();

    /* 00 */ virtual ~ActorRefillBombs() override;
    /* b4 */ virtual ItemFlag GetAmmoItem() override;
    /* b8 */
};

class ActorRefillBombchus : public ActorRefill {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

public:
    ActorRefillBombchus();
    static ActorRefillBombchus *Create();

    /* 00 */ virtual ~ActorRefillBombchus() override;
    /* b4 */ virtual ItemFlag GetAmmoItem() override;
    /* b8 */
};

class ActorRefillArrows : public ActorRefill {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

public:
    ActorRefillArrows();
    static ActorRefillArrows *Create();

    /* 00 */ virtual ~ActorRefillArrows() override;
    /* b4 */ virtual ItemFlag GetAmmoItem() override;
    /* b8 */
};

class ActorRefillTime : public ActorRefill {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

public:
    ActorRefillTime();
    static ActorRefillTime *Create();

    /* 00 */ virtual ~ActorRefillTime() override;
    /* 08 */ virtual bool Init() override;
    /* b4 */ virtual ItemFlag GetAmmoItem() override;
    /* b8 */
};

class ActorLSTM : public ActorRefill {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

public:
    ActorLSTM();
    static ActorLSTM *Create();

    /* 00 */ virtual ~ActorLSTM() override;
    /* 08 */ virtual bool Init() override;
    /* b4 */ virtual ItemFlag GetAmmoItem() override;
    /* b8 */
};
