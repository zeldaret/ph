#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Render/ModelRender.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_0202e1a0.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"

struct UnkStruct_ov000_020c5c2c_10 {
    /* 00 */ PAD(0x00, 0x0c);
    /* 0c */ UnkStruct_0202e1a0 mUnk_0c;
    /* 24 */
};

class UnkStruct_ov000_020c5c2c : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ PAD(0x04, 0x10);
    /* 10 */ UnkStruct_ov000_020c5c2c_10 *mUnk_10;
    /* 14 */ PAD(0x14, 0x1c);
    /* 1c */ Actor *mActor;
    /* 20 */

    /* 00 */ virtual void vfunc_00(unk32 param1, unk32 *param2, unk32 *param3); // func_ov000_020c5d34
    /* 04 */ virtual void vfunc_04(); // func_ov000_020c5e54
    /* 08 */ virtual void vfunc_08(); // func_ov000_020c5e58
    /* 0c*/

    UnkStruct_ov000_020c5c2c(void *param1, ModelRender *param2, UnkStruct_ov000_020c0c08 *param3);
};
