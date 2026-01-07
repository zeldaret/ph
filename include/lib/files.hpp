#pragma once

#include "global.h"
#include "types.h"

struct FileEntry_Unk8 {
    /* 00 */ unk8 mUnk_00[0x8];
    /* 08 */ u16 mUnk_08;
    /* 0a */ u16 mUnk_0a;
    /* 0c */ // more fields, probably
};

class FileEntry {
public:
    /* 00 (vtable) */
    /* 04 */ char *path;
    /* 08 */ FileEntry_Unk8 *mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */

    /* 00 */ virtual ~FileEntry()                           = 0;
    /* 08 */ virtual FileEntry_Unk8 *vfunc_08(unk32 param1) = 0;
    /* 0c */ virtual void vfunc_0c()                        = 0;
    /* 10 */ virtual u32 vfunc_10(u32 param1)               = 0;
    /* 14 */
};

class FileEntryFlag : public FileEntry {
public:
    /* 00 (base) */
    /* 10 */ unk8 mUnk_10;
    /* 14 */

    /* 00 */ virtual ~FileEntryFlag() override;
    /* 08 */ virtual FileEntry_Unk8 *vfunc_08(unk32 param1) override;
    /* 0c */ virtual void vfunc_0c() override;
    /* 10 */ virtual u32 vfunc_10(u32 param1) override;
    /* 14 */
};
