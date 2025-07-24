#pragma once

#include "global.h"
#include "types.h"

#include "Debug/DebugHierarchy.hpp"
#include "Message/BMG.hpp"
#include "Message/MsgProc.hpp"
#include "System/SysNew.hpp"
#include "nds/math.h"

#include "Unknown/UnkStruct_0202e1a0.hpp"
#include "Unknown/UnkStruct_02032f0c.hpp"
#include "Unknown/UnkStruct_02035064.hpp"
#include "Unknown/UnkStruct_02037750.hpp"
#include "Unknown/UnkStruct_02038aa0.hpp"
#include "Unknown/UnkStruct_020397f8.hpp"
#include "Unknown/UnkStruct_0203dae0.hpp"

class MessageManager : public SysObject {
public:
    /* 0x00 */ u8 mUnk_00[2];
    /* 0x02 */ u8 mUnk_02;
    /* 0x03 */ u8 mUnk_03;
    /* 0x04 */ bool mUnk_04; // halts actors and hides the item menu
    /* 0x05 */ u8 mUnk_05;
    /* 0x06 */ unk16 mUnk_06;
    /* 0x08 */ UnkStruct_020397f8 *mUnk_08;
    /* 0x0C */ u8 mUnk_0c;
    /* 0x0C */ u8 mUnk_0d;
    /* 0x0C */ unk16 mUnk_0e;
    /* 0x10 */ unk16 mUnk_10;
    /* 0x10 */ unk16 mUnk_12;
    /* 0x14 */ BMGGroups *pGroups;
    /* 0x18 */ UnkStruct_020386d8 *mUnk_18[2];
    /* 0x20 */ UnkStruct_02037750 *mUnk_20[2];
    /* 0x28 */ UnkStruct_02038aa0 *mUnk_28[6]; //! TODO: is it the right type?
    /* 0x40 */ UnkStruct_020397f8 *mUnk_40[2]; // is array size 6?
    /* 0x48 */ DebugHierarchy *mDebug;
    /* 0x4C */

    static void func_0203643c(u32 *param_1, MessageManager *param_2, u32 param_3);
    void func_02036490();
    void func_0203665c(void);
    MessageManager();
    ~MessageManager();
    UnkStruct_020397f8 *func_020366c4(void);
    UnkStruct_020397f8 *func_02036700(void);
    UnkStruct_020386d8 *func_0203673c(void);
    bool func_02036770(u32 param_2);
    unk32 func_02036798(void);
    bool func_020367dc(int param_2);
    bool MessageManager::func_020367ec(void);
    bool func_02036808(void);
    bool func_02036824(void);
    bool func_02036850(void);
    void func_02036888(UnkStruct_020386d8 *param_2);
    bool func_020368f4(UnkStruct_02037750 *param_2);
    void func_0203690c(unk32 param_2);
    void func_02036bbc(void);
    void func_02036c50(u16 *param_2);
    void func_02036ca4(unk32 param_2);
    bool func_02036ce4(UnkStruct_020386d8 *param_2, unk32 param_3);
    bool func_02036d30(UnkStruct_02037750 *param_2);
    bool func_02036d4c(UnkStruct_02037750 *param_2);
    void func_02036d6c(void);
    UnkStruct_02038aa0 *func_02036da8(u32 param_2, s16 *param_3);
    void func_02036edc(u32 param_2, u8 param_3);
    UnkStruct_020397f8 *func_02036f68(u32 param_2, u8 *param_3);
    UnkStruct_020386d8 *func_020370d0(unk32 param_2, unk32 param_3);
    UnkStruct_020386d8 *func_020370e8(unk32 param_2, unk16 param_3, unk16 param_4, unk32 param_5);
    void func_02037158(UnkSubClass1_02256FF8 *param_2);
    UnkStruct_02038aa0 *func_02037178(UnkSubClass1_02256FF8 *param_2);

    void func_ov004_021069c4(void);
    void func_ov004_02106db8(void);
};

extern MessageManager gMessageManager;
