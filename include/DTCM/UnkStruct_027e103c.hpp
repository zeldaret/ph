#pragma once

#include "global.h"
#include "types.h"

struct UnkStruct_027e103c {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk16 *mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk16 mUnk_1c;
    /* 1e */ unk16 mUnk_1a;
    /* 20 */ unk16 mUnk_20;
    /* 22 */ s16 mUnk_22;
    /* 24 */ u8 mUnk_24;
    /* 25 */ unk8 mUnk_25[0x5];
    /* 2a */ unk8 mUnk_2a;
    /* 2b */ unk8 mUnk_2b;
    /* 2c */

    void *func_ov000_020cef9c();
    unk32 func_ov000_020cefbc();
    unk32 func_ov000_020cefdc();
    unk32 func_ov000_020ceffc();
    unk32 func_ov000_020cf01c();
    unk32 func_ov000_020cf03c();
    unk32 func_ov000_020cf05c();
    unk32 func_ov000_020cf07c();
    unk32 func_ov000_020cf09c();
    unk32 func_ov000_020cf0bc();
    unk32 func_ov000_020cf0dc();
    unk32 func_ov000_020cf0fc();
    unk32 func_ov000_020cf11c();
    void func_ov000_020cf13c(s32 param1);
    void func_ov000_020cf1b8();
    void func_ov000_020cf1d4(unk32 param1);
    void func_ov000_020cf20c();
    void func_ov000_020cf224(unk32 param1);
    void func_ov000_020cf238(unk32 param1, unk32 param2);
    bool func_ov000_020cf270(u16 param1);
    void func_ov000_020cf284(u16 param1, s32 param2);
    void func_ov000_020cf2a0(u32 param1);
    void func_ov000_020cf2b8();
    void func_ov000_020cf2d8();
    void func_ov000_020cf2f8();
    void func_ov000_020cf330();
    void func_ov000_020cf348();
    s32 func_ov000_020cf374(bool param1);
    void func_ov000_020cf384();
    void func_ov000_020cf398();
    void func_ov000_020cf3b8();
    void func_ov000_020cf3c8();
    void func_ov000_020cf3dc();
    void func_ov000_020cf3f0();
    void func_ov000_020cf404();
    void func_ov000_020cf414();
    bool func_ov000_020cf42c();
    bool func_ov000_020cf444();
    bool func_ov000_020cf488();
    bool func_ov000_020cf4bc();
    bool func_ov000_020cf4d8();
    bool func_ov000_020cf4f4();
    bool func_ov000_020cf518();
    bool func_ov000_020cf534();
    bool func_ov000_020cf550();
    bool func_ov000_020cf678();
    bool func_ov000_020cf750();
    bool func_ov000_020cf7c4();
    void func_ov000_020cf7e8();
    u32 func_ov000_020cf864(u32 param1);
    bool func_ov000_020cf8fc(u32 param1);
    bool func_ov000_020cf948();
    void func_ov000_020cf9dc(s32 param1, s32 param2);
    void func_ov000_020cfa24(s32 param1, s32 param2);
    unk8 func_ov000_020cfa64();
    void func_ov000_020cfa70(s32 param1, s32 param2);
    unk8 func_ov000_020cfab0();
    void func_ov000_020cfabc(s32 param1, s32 param2);
    void func_ov000_020cfae8(s32 param1, s32 param2);

    //! TODO: find out if the type is always `UnkStruct_020397f8*`
    void func_ov000_020cfb20(void *);

    void func_ov000_020cfb38();
    void func_ov000_020cfb48();
    void func_ov000_020cfb58();
    void func_ov000_020cfb68();
    void func_ov000_020cfb84();
    void func_ov000_020cfb94();
    unk32 func_ov000_020cfbb0();
    void func_ov000_020cfbd8(unk8 param1);
    void func_ov000_020cfbf0(unk32 param1, unk32 param2, unk32 param3);
    void func_ov000_020cfc20();
    void func_ov000_020cfc44(unk32 param1);
    void func_ov000_020cfc70(unk32 param1);
    void func_ov000_020cfc9c(unk32 param1, unk32 param2);
    void func_ov000_020cfcec();
    bool func_ov000_020cfcf8();
    void func_ov000_020cfde4(unk32 param1);
    void func_ov000_020cfe10(unk8 param1);
    void func_ov000_020cfe40(unk8 param1, unk32 param2);
    void func_ov000_020cfe74(unk32 param1, unk32 param2);
    unk32 func_ov000_020cfea8();

    UnkStruct_027e103c();
    ~UnkStruct_027e103c();
    static void Create();
    static void Destroy();
    void func_ov004_02104d68();
    static bool func_ov004_02104f5c();
    void func_ov004_02104f78();
    void func_ov004_02104fa8();
    void func_ov004_02104fb8();
    void func_ov004_02104ffc(unk32 param1, unk32 param2);
    void func_ov004_0210504c();

    void func_ov005_02103f20();
    void func_ov005_02103f3c();
    bool func_ov005_02103f4c();
    void func_ov005_02103f70();
    void func_ov005_02103f80(unk8 param1);
    void func_ov005_02103f8c(char *param1);
    void func_ov005_02103fb4();
    void func_ov005_02103fc8(unk8 param1);
    void func_ov005_02103fd8();
    void func_ov005_02103ff0();
    void WalletFull();
    void func_ov005_02104104();
    void func_ov005_02104028(bool param1);
    void func_ov005_02104058();
    void func_ov005_02104070();
    void func_ov005_02104088(unk32 param1);
    void func_ov005_021040c8();
    bool func_ov005_021040ec();
    void func_ov005_02104114();
    void func_ov005_0210413c();
    void func_ov005_02104160();
    void func_Ov005_0210418c(char param1);
};

extern UnkStruct_027e103c *data_027e103c;
