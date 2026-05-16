#include "Render/FadeControl.hpp"

extern "C" void _ZN11FadeControlC2Ev(FadeControl *);

FadeControl::FadeControl() {
    _ZN11FadeControlC2Ev(this);
}

void FadeControl::Register() {}
void FadeControl::Unregister() {}
void FadeControl::func_0202aba8(s32 fadeLength, unk32 param2, unk32 newState) {}
bool FadeControl::func_0202abdc(s32 fadeLength, unk32 param2) {}
bool FadeControl::func_0202abf4(s32 fadeLength, unk32 param2) {}
bool FadeControl::func_0202ac0c(s32 currentFadeLength, u16 param2, s32 fadeLength, unk32 param4) {}
void FadeControl::UpdateFade(s32 speed) {}
