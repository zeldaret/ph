#include "Actor/Character/ActorTetra.hpp"

extern u32 **data_027e0fe0[];

ActorTetra *ActorTetra::Create() {
    return new(*data_027e0fe0[0], 4) ActorTetra();
}
void ActorTetra::vfunc_f4() {}
void ActorTetra::vfunc_c4() {}
void ActorTetra::vfunc_20(bool param1) {}

void ActorTetra_4b0::func_ov031_02181610(unk32 param1, unk32 param2, unk32 param3, unk32 param4, u16 param5) {}
void ActorTetra_4b0::func_ov031_02181798() {}

ActorTetra::~ActorTetra() {}
void ActorTetra::vfunc_f8() {}
