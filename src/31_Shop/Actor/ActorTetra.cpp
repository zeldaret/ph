#include "Actor/Character/ActorTetra.hpp"
#include "DTCM/UnkStruct_027e0fec.hpp"
#include "Save/AdventureFlags.hpp"

extern u32 **data_027e0fe0[];
extern UnkStruct_027e0fec *data_027e0fec;
extern unk32 data_ov031_02181b24;
extern unk32 data_ov031_02181b30;
extern unk32 data_ov031_02183d68;
extern unk32 data_ov031_02183d6c;

ARM ActorTetra *ActorTetra::Create() {
    return new(*data_027e0fe0[0], 4) ActorTetra();
}

ARM bool ActorTetra::vfunc_f4() {
    if (gAdventureFlags->Get(AdventureFlag_PlayedBellumTakesOverGhostShipCS)) {
        return false;
    }
    mUnk_1d8.func_ov014_02145a74(0x37, 0x37);
    mUnk_1d8.func_ov014_02145ae8(0x37, &data_ov031_02183d68, &data_ov031_02183d6c);
    func_ov014_021451f0(&data_ov031_02181b24);
    mUnk_448 = 4;
    if (mUnk_020.mUnk_00[0] == 0 && mUnk_020.mUnk_00[2] == 1) {
        mUnk_1d8.mUnk_18          = &data_ov031_02181b30;
        mUnk_1d8.mUnk_020.mUnk_8e = true;
        mUnk_1d8.func_ov014_02146120(0);
        mUnk_469         = true;
        mUnk_468         = true;
        mUnk_4b0.mUnk_04 = 0;
        mUnk_4b0.mUnk_00 = 0x1000;
    }
    mUnk_4b0.func_ov031_02181610(data_027e0fec->mUnk_c10, 0x800, 0x800, 0x800, 0x318C);
    return true;
}

ARM void ActorTetra::vfunc_c4() {
    if (mUnk_020.mUnk_00[0] == 0 && mUnk_020.mUnk_00[2] == 1) {
        mUnk_1d8.mUnk_10->mUnk_0c.mUnk_04 = 0;
    }
    ActorGenericCharacter::vfunc_c4();
}

void ActorTetra::vfunc_20(bool param1) {
    bool state = param1 ? mUnk_0a4.mUnk_01 : mUnk_0a4.mUnk_00;
    if (!state) {
        return;
    }
    ActorCharacter::vfunc_20(param1);
    mUnk_4b0.func_ov031_02181798();
}

void ActorTetra_4b0::func_ov031_02181610(unk32 param1, unk32 param2, unk32 param3, unk32 param4, u16 param5) {}

void ActorTetra_4b0::func_ov031_02181798() {}

ActorTetra::~ActorTetra() {}

void ActorTetra::vfunc_f8() {}
