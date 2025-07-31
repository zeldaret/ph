#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_0202e1a0.hpp"

struct UnkStruct_ov000_020c0c08_04 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ char *mUnk_08;
    /* 0c */ unk8 mUnk_0c[0x4];
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk8 mUnk_18[0x8];
    /* 20 */
};

class ItemModel;

class UnkStruct_ov000_020c0c08 : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ UnkStruct_ov000_020c0c08_04 *mUnk_04;
    /* 08 */ ItemModel *mUnk_08;
    /* 0c */ UnkStruct_0202e1a0 mUnk_0c;
    /* 24 */

    /* 00 */ virtual ~UnkStruct_ov000_020c0c08();
    /* 08 */

    UnkStruct_ov000_020c0c08(UnkStruct_ov000_020c0c08_04 *param1, ItemModel *param2);

    void func_ov000_020c0c44(void *);
    void func_ov000_020c0e04();
    void func_ov000_020c0e5c(unk32);
};
