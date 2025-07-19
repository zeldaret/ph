#include "DTCM/UnkStruct_027e103c.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/TouchControl.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/SysNew.hpp"
#include "global.h"

ARM MsgProc_Type3::MsgProc_Type3() :
    UnkStruct_02038aa0(1, 0),
    mUnk_162(1),
    mUnk_164(0x1A),
    mUnk_166(0xA6),
    mUnk_168(0x1D),
    mUnk_16a(0),
    mUnk_16c(1),
    mUnk_170(-1),
    mUnk_172(0),
    mUnk_174(-1) {
    this->mUnk_180[0].func_ov000_020d0644(0x1E, 0, 0x8A, 0, 0);
    this->mUnk_180[1].func_ov000_020d0644(0x1E, 1, 0x8B, 0, 0);
    this->mUnk_180[2].func_ov000_020d0644(0x1E, 2, 0x8C, 0, 0);
    this->mUnk_180[3].func_ov000_020d0644(0x1E, 3, 0x8D, 0, 0);
}

ARM UnkClass_func_ov000_020d0644::~UnkClass_func_ov000_020d0644() {}

ARM MsgProc_Type3::~MsgProc_Type3() {}
