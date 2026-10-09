#include "Actor/Character/ActorTetra.hpp"
#include "Save/AdventureFlags.hpp"

extern "C" {
void func_ov014_02145ae8(ActorCharacter_1d8 *, unk32, const unk32 *, const unk32 *);
void func_ov014_02146120(ActorCharacter_1d8 *, unk32, unk32);
}

extern const unk32 data_ov031_02183d68[];
extern const unk32 data_ov031_02183d6c[];
extern const unk32 data_ov031_02181b24[];
extern const unk32 data_ov031_02181b30[];
extern unk32 data_027e0fec;

ActorTetra *ActorTetra::Create() {}
ARM bool ActorTetra::vfunc_f4() {
    if (gAdventureFlags->Get((AdventureFlag) 0x148)) {
        return false;
    }

    mUnk_1d8.func_ov014_02145a74(0x37, 0x37);
    func_ov014_02145ae8(&mUnk_1d8, 0x37, data_ov031_02183d68, data_ov031_02183d6c);
    func_ov014_021451f0(data_ov031_02181b24);
    mUnk_448 = 4;

    if (*((u16 *) ((u8 *) this + 0x20)) == 0 && *((u16 *) ((u8 *) this + 0x24)) == 1) {
        *((unk32 *) ((u8 *) this + 0x1f0)) = (unk32) data_ov031_02181b30;
        *((u8 *) this + 0x286)             = 1;
        func_ov014_02146120(&mUnk_1d8, 0, 1);
        mUnk_469         = true;
        mUnk_468         = true;
        mUnk_4b0.mUnk_04 = 0;
        mUnk_4b0.mUnk_00 = 0x1000;
    }

    mUnk_4b0.func_ov031_02181610(*((unk32 *) ((u8 *) data_027e0fec + 0xc10)), 0x800, 0x800, 0x800, 0x318c);
    return true;
}
ARM void ActorTetra::vfunc_c4() {
    if (*((u16 *) ((u8 *) this + 0x20)) == 0 && *((u16 *) ((u8 *) this + 0x24)) == 1) {
        *((u32 *) *((u32 *) ((u8 *) this + 0x1e8)) + 4) = 0;
    }
    ActorGenericCharacter::vfunc_c4();
}
ARM void ActorTetra::vfunc_20(bool param1) {
    if ((param1 ? *((u8 *) this + 0xa5) : *((u8 *) this + 0xa4)) == 0) {
        return;
    }
    ActorCharacter::vfunc_20(param1);
    mUnk_4b0.func_ov031_02181798();
}

void ActorTetra_4b0::func_ov031_02181610(unk32 param1, unk32 param2, unk32 param3, unk32 param4, u16 param5) {}
void ActorTetra_4b0::func_ov031_02181798() {}

ARM ActorTetra::~ActorTetra() {}
void ActorTetra::vfunc_f8() {}
