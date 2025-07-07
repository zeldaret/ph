#include "DTCM/UnkStruct_027e103c.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/TouchControl.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/SysNew.hpp"
#include "global.h"

extern "C" void __cxa_vec_ctor(void *, unk32, unk32, void *, void *);

// non-matching
ARM MsgProc_Type3::MsgProc_Type3(unk32 param_2, unk16 param_3, unk32 param_4) :
    UnkStruct_02038aa0(1, 0) {
    this->mUnk_162 = 1;
    this->mUnk_164 = 0x1A;
    this->mUnk_166 = 0xA6;
    this->mUnk_168 = 0x1D;
    this->mUnk_16a = 0;
    this->mUnk_16c = 1;
    this->mUnk_170 = -1;
    this->mUnk_172 = -1;
    this->mUnk_174 = -1;

    //! TODO: move instructions above in an inlined ctor (create a dedicated class for it).
    //! The call below will be automatically generated.
    __cxa_vec_ctor(this->mUnk_180, ARRAY_LEN(this->mUnk_180), sizeof(UnkClass_func_ov000_020d0644),
                   UnkClass_func_ov000_020d0644::func_020d060c, this->func_0203c83c);

    this->mUnk_180[0].func_ov000_020d0644(0x1E, 0, 0x8A, 0, 0);
    this->mUnk_180[1].func_ov000_020d0644(0x1E, 1, 0x8B, 0, 0);
    this->mUnk_180[2].func_ov000_020d0644(0x1E, 2, 0x8C, 0, 0);
    this->mUnk_180[3].func_ov000_020d0644(0x1E, 3, 0x8D, 0, 0);
}

ARM void MsgProc_Type3::func_0203c83c(void) {}

ARM MsgProc_Type3::~MsgProc_Type3() {}
