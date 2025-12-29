#pragma once

#include "global.h"
#include "types.h"

#include "System/SysNew.hpp"

#define BHIO_GROUP_MAGIC 'HFND'

struct BhioField {
    /* 00 */ char mName[0xc];
    /* 0c */ s32 mValue;
    /* 10 */
};

struct BhioGroup {
    /* 00 */ u32 mMagic;
    /* 04 */ u32 mUnk_04;
    /* 08 */ u32 mUnk_08;
    /* 0c */ u32 mUnk_0c;
    /* 10 */ u32 mGroupId;
    /* 14 */ u32 mNumFields;
    /* 18 */ unk8 mUnk_18[0x8];
    /* 20 */ BhioField mFields[];
};

class BhioBase : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ void *mNodes;
    /* 08 */

    /* 00 */ virtual ~BhioBase();
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
    /* 34 */ virtual bool GetField(bool param1, const char *fieldName, u32 groupId, s32 *pValue, unk32 param5, unk32 param6,
                                   unk32 param7, unk32 param8);
    /* 38 */ virtual void vfunc_38();
    /* 3c */ virtual void vfunc_3c(u32 groupId, s32 *pValue);
    /* 40 */

    BhioBase();
    BhioGroup *FindGroup(u32 id);

    inline bool GetField2(bool param1, u32 groupId, const char *fieldName, s32 *pValue, unk32 param5, unk32 param6,
                          unk32 param7) {
        if (param1) {
            this->vfunc_3c(groupId, pValue);
        }
        return this->GetField(param1, fieldName, groupId, pValue, param5, param6, param7, 0);
    }
};

class Bhio : public BhioBase {
public:
    /* 00 (base) */
    /* 08 */

    /* 00 */ virtual ~Bhio() override;
    /* 40 */
};
