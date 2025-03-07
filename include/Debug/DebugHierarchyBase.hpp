#pragma once

#include "global.h"
#include "types.h"

#include "Debug/DebugHierarchyNode.hpp"
#include "System/SysNew.hpp"

class DebugHierarchyBase : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ void *mNodes;
    /* 08 */

    /* 00 */ virtual ~DebugHierarchyBase();
    /* 08 */ virtual void vfunc_08();
    /* 0c */ virtual void vfunc_0c();
    /* 10 */ virtual void vfunc_10();
    /* 14 */ virtual void vfunc_14();
    /* 18 */ virtual void vfunc_18();
    /* 1c */ virtual void vfunc_1c();
    /* 20 */ virtual void vfunc_20(unk32 param1, const char *param2, unk32 param3, unk32 param4, unk32 param5, unk32 param6);
    /* 24 */ virtual void vfunc_24();
    /* 28 */ virtual void vfunc_28();
    /* 2c */ virtual void vfunc_2c();
    /* 30 */ virtual void vfunc_30();
    /* 34 */ virtual bool GetChildNode(unk32 param1, const char *description, u32 parent, s32 *param4);
    /* 38 */ virtual void vfunc_38();
    /* 3c */ virtual void vfunc_3c();
    /* 40 */

    DebugHierarchyBase();
    DebugHierarchyNode *FindNode(u32 id);
};
