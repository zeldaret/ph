#include "global.h"

#include "DTCM/UnkStruct_027e0d38.hpp"
#include "Game/Game.hpp"
#include "Game/GameModeAdventure.hpp"
#include "Message/MsgProc.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/OverlayManager.hpp"

extern unk32 data_027e1044;
extern unk32 data_ov000_020eab04;
extern unk32 data_ov000_020eab08;
extern unk8 data_ov000_020eab09;

extern "C" void *func_ov003_020f4510();
extern "C" void func_ov000_02078b0c();
extern "C" void func_ov003_020f4534();

extern UnkStruct_0211ac0c data_ov009_0211f5dc;

extern "C" void func_ov029_0216dcf4(unk32 *, unk32);
extern unk32 data_ov022_0217a4ac;

extern "C" void func_ov015_0217707c(unk32 *);
extern unk32 data_027e1060;

extern "C" void func_ov005_0210274c(void *, unk32, u16 *);
extern "C" void func_ov005_021026f8(void *, unk32, u16 *);
extern "C" void func_ov005_02102828(void *, unk32, u16 *);
extern "C" void func_ov003_020f40c0(unk32 **, u16 *);
extern "C" void func_ov003_020f40e8(unk32 **, u16 *);

THUMB GameModeAdventure *GameModeAdventure::Create(unk32 param1) {
    return new(data_027e0ce0[1], 4) GameModeAdventure(param1);
}

// non-matching
THUMB GameModeAdventure::GameModeAdventure(unk32 param1) :
    GameModePlay(param1) {
    FlagsUnk2 local_28;

    this->mUnk_008 = new(data_027e0ce0[1], 4) UnkStruct_0211a9ac();
    this->mUnk_00c = new(data_027e0ce0[1], 4) UnkStruct_020fadf4(this->mUnk_008);
    this->mUnk_010 = new(data_027e0ce0[1], 4) UnkStruct_020f2978();
    this->mUnk_014 = new(data_027e0ce0[1], 4) UnkStruct_0211ac0c(this->mUnk_010);
    data_027e1044  = param1;
    func_ov003_020f4510();

    local_28.mUnk_00.mUnk_00   = 0x47;
    local_28.mUnk_04.mUnk_00.x = 0;
    local_28.mUnk_04.mUnk_00.y = 0;
    local_28.mUnk_04.mUnk_00.z = -2;
    local_28.mUnk_04.mUnk_0c   = 0;
    local_28.mUnk_04.mUnk_0e   = -1;
    local_28.mUnk_04.mUnk_0f   = 0;
    local_28.mUnk_04.mUnk_10   = 0;
    local_28.mUnk_04.mUnk_11   = 0;

    if (gGame.mUnk_102 != 0) {
        AdventureFlags::Get_FlagsUnk_00(0x17, &local_28);
    } else {
        if (gGame.mPrevModeId == 1) {
            AdventureFlags::Get_FlagsUnk_00(0x17, &local_28);
        } else if (data_ov000_020eab04 == 0x47) {
            AdventureFlags::Get_FlagsUnk_00(0x01, &local_28);
        } else {
            unk32 index = AdventureFlags::func_ov00_02097ecc();

            if (index != 0x21) {
                AdventureFlags::Get_FlagsUnk_00(index, &local_28);
            } else {
                local_28.mUnk_00.mUnk_00 = data_ov000_020eab04;
                local_28.mUnk_04.mUnk_0e = data_ov000_020eab08;
                local_28.mUnk_04.mUnk_0f = data_ov000_020eab09;
            }
        }
    }

    local_28.func_ov004_02100ae0();
    data_027e0d38->func_ov004_02100bcc();
    gOverlayManager.LoadIfNotLoaded(OverlayIndex_2, OverlayId_05);
}

ARM UnkStruct_020f2978_00::~UnkStruct_020f2978_00() {}

// non-matching
THUMB GameModeAdventure::~GameModeAdventure() {
    func_ov000_02078b0c();
    func_ov003_020f4534();
    data_027e1044 = 0;

    if (this->mUnk_014 != NULL) {
        this->mUnk_014->mUnk_04.Unregister();
        delete this->mUnk_014;
    }

    delete this->mUnk_010;
    delete this->mUnk_00c;
    delete this->mUnk_008;
}

// non-matching
ARM unk32 GameModeAdventure::vfunc_08(bool param1) {
    unk32 uVar2 = 0;

    if (data_027e0d38->mUnk_14 == 1) {
        uVar2 = data_027e0d38->func_ov005_02100b7c(param1);
    } else {
        if (data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 2) {
            func_ov015_0217707c(&data_027e1060);
            uVar2 = data_027e0d38->func_ov005_02100b7c(param1);
        } else {
            if (this->mUnk_00c->func_ov009_0211370c() == 0) {
                if (this->mUnk_00c->func_ov009_021136c4() != 0) {
                    this->mUnk_008->func_ov002_020f50c0(param1);
                } else {
                    if (data_ov009_0211f5dc.func_ov009_021136e8() != 0) {
                        if (this->mUnk_014->func_ov009_0211370c() == 0) {
                            if (this->mUnk_014->func_ov009_021136c4() != 0) {
                                uVar2 = this->mUnk_010->func_ov003_020f2a2c();
                            } else {
                                uVar2 = data_027e0d38->func_ov005_02100b7c(param1);

                                if (data_027e0d38->mUnk_14 == 1) {
                                    return uVar2;
                                }

                                if (gOverlayManager.mLoadedOverlays[OverlayIndex_6] == OverlayId_29) {
                                    func_ov029_0216dcf4(&data_ov022_0217a4ac, param1);
                                } else {
                                    func_ov003_020f4060(&data_ov009_0211f5b4);
                                }
                            }
                        }
                    }

                    data_027e1054->func_ov003_020f4960();
                }

                data_ov009_0211f5dc.func_ov003_020fb148();
            }

            this->mUnk_00c->func_ov009_021135d0();
            this->mUnk_014->func_ov009_0211372c();
            data_027e0e28->func_ov000_0207bc9c();
        }
    }

    return uVar2;
}

ARM void GameModeAdventure::vfunc_0c(u16 *param1) {
    if (data_027e0d38->mUnk_14 == 1) {
        func_ov005_021026f8(data_027e0d38->mUnk_24, data_027e0d38->mUnk_04, param1);
        return;
    }

    if (this->mUnk_00c->func_ov009_0211370c() != 0) {
        return;
    }

    if (this->mUnk_00c->func_ov009_021136c4() != 0) {
        this->mUnk_008->func_ov002_020f5390(param1);
        return;
    }

    if (data_ov009_0211f5dc.func_ov009_021136e8() == 0) {
        return;
    }

    if (this->mUnk_014->func_ov009_021136e8() == 0) {
        return;
    }

    func_ov005_021026f8(data_027e0d38->mUnk_24, data_027e0d38->mUnk_04, param1);
    func_ov003_020f40c0(&data_ov009_0211f5b4, param1);
    data_027e1054->func_ov003_020f4a5c();
}

ARM void GameModeAdventure::vfunc_10(u16 *param1) {
    if (data_027e0d38->mUnk_14 == 1) {
        func_ov005_0210274c(data_027e0d38->mUnk_24, data_027e0d38->mUnk_04, param1);
        return;
    }

    if (this->mUnk_00c->func_ov009_0211370c() != 0) {
        return;
    }

    if (this->mUnk_00c->func_ov009_021136c4() != 0) {
        this->mUnk_008->func_ov002_020f5504(param1);
        return;
    }

    if (this->mUnk_014->func_ov009_0211370c() != 0) {
        return;
    }

    if (this->mUnk_014->func_ov009_021136c4() != 0) {
        this->mUnk_010->func_ov003_020f2acc();
        return;
    }

    func_ov005_0210274c(data_027e0d38->mUnk_24, data_027e0d38->mUnk_04, param1);
    func_ov003_020f40e8(&data_ov009_0211f5b4, param1);

    if (data_ov009_0211f5dc.func_ov009_021136c4() == 0) {
        return;
    }

    data_ov009_0211f5dc.func_ov003_020fb258(param1);
}

ARM void GameModeAdventure::vfunc_14(u16 *param1) {
    if (data_027e0d38->mUnk_14 == 1) {
        func_ov005_02102828(data_027e0d38->mUnk_24, data_027e0d38->mUnk_04, param1);
        return;
    }

    if (this->mUnk_00c->func_ov009_0211370c() != 0) {
        return;
    }

    if (this->mUnk_00c->func_ov009_021136c4() != 0) {
        this->mUnk_008->func_ov002_020f56c8(param1);
        return;
    }

    if (data_ov009_0211f5dc.func_ov009_0211370c() != 0) {
        return;
    }

    if (data_ov009_0211f5dc.func_ov009_021136c4() != 0) {
        data_ov009_0211f5dc.func_ov003_020fb26c();
        return;
    }

    if (this->mUnk_014->func_ov009_021136e8() == 0) {
        return;
    }

    func_ov005_02102828(data_027e0d38->mUnk_24, data_027e0d38->mUnk_04, param1);
}

THUMB void GameModeAdventure::vfunc_1c() {
    this->GameModePlay::vfunc_1c();

    if (data_027e0d38->mUnk_14 != 1) {
        this->mUnk_00c->func_ov003_020fae64();
        data_ov009_0211f5dc.func_ov003_020faf90();
        this->mUnk_014->func_ov009_0211ac2c();
        data_027e1054->func_ov003_020f4678(1);
    }
}

THUMB void GameModeAdventure::vfunc_20() {
    if (data_027e0d38->mUnk_14 != 1) {
        data_027e1054->func_ov003_02f46f8();
        data_ov009_0211f5dc.func_ov003_020fb010();
    }

    this->GameModePlay::vfunc_20();
}
