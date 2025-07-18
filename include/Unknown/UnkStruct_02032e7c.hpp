#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

class UnkStruct_02032e7c : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ u16 *mUnk_04; // pointer to the current position in the message to display
    /* 08 */ unk16 mUnk_08;
    /* 0a */ unk16 mUnk_0a;
    /* 0c */ unk16 mUnk_0c;
    /* 0e */ unk16 mUnk_0e;
    /* 10 */ unk32 mUnk_10;
    /* 14 */

    /* 0 */ virtual ~UnkStruct_02032e7c();
    /* 8 */

    UnkStruct_02032e7c();
};
