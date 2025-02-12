#include "Unknown/UnkStruct_020397f8.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/TouchControl.hpp"
#include "Save/AdventureFlags.hpp"

extern "C" void func_ov000_020d0460(void *);
extern "C" void func_0203efd8(void *, void *);
extern "C" void func_0203ee48(void *);
extern "C" void func_ov018_02169634(UnkStruct_020397f8 *);

extern unk16 data_02056a0e[];
extern u8 data_02056a08[];
extern u32 data_027e0618[];

THUMB UnkStruct_020397f8::UnkStruct_020397f8() :
    UnkStruct_02038aa0(0, 0),
    mUnk_164(NULL) {
    UnknownMsgChoiceStruct *puVar3;

    this->mUnk_410.mUnk_00 = this;
    this->mUnk_414         = 0;
    this->mUnk_418         = NULL;
    this->mUnk_41c         = 0;
    this->mUnk_41e         = 0;
    this->mUnk_420         = 0;
    this->mUnk_424.mUnk_00 = this;

    // ???
    puVar3 = this->mUnk_428;
    do {
        puVar3->mUnk_00 = NULL;
        puVar3 += 1;
    } while ((unk32 *) puVar3 < (unk32 *) this->mUnk_528);

    func_0203ee48(&this->mUnk_424);
    func_ov000_020d0460(&this->mUnk_534);
    this->mUnk_53c = 0;
    this->mUnk_540 = ~0x7FFF;
    this->mUnk_544 = 3;
    func_ov000_020d0460(&this->mUnk_548);
    this->mUnk_550 = 0;
    this->mUnk_554 = 0x00016000;
    this->mUnk_558 = 3;
    this->mUnk_55c = -1;
    this->mUnk_560 = -1;
    this->mUnk_56c = 0;
    this->mUnk_56e = 0;
    this->mUnk_570 = 0;
    this->mUnk_572 = 0;
    this->mUnk_574 = 0;
    this->mUnk_576 = 0;
    this->mUnk_578 = 3;
    this->mUnk_57a = 0;
    this->mUnk_57b = -1;
    this->mUnk_57c = 0;
    this->mUnk_57d = 0;
    this->mUnk_57e = 0;
    this->mUnk_57f = 0;
    this->mUnk_580 = 0;
    this->mUnk_581 = 0;
    this->mUnk_582 = 0;
    this->mUnk_583 = 0;
    this->mUnk_585 = 0;
    this->mUnk_586 = 0;
    func_0203efd8(&this->mUnk_588, this);
    this->mUnk_124 = (UnkSubClass1_unk_124 *) &this->mUnk_588;
    this->func_02039ca8();

    if (this->func_02032fa4() != 0) {
        this->mUnk_168.func_020350b4(0x39, 0, 2, 0, 0);
        this->mUnk_1f0.func_020350b4(0x33, 0, 2, 0, 0);
        this->mUnk_278.func_020350b4(0x33, 1, 2, 0, 0);
    } else {
        this->mUnk_168.func_020350b4(0x34, 0, 2, 0, 0);
        this->mUnk_1f0.func_020350b4(0x32, 0, 2, 0, 0);
        this->mUnk_278.func_020350b4(0x32, 1, 2, 0, 0);
    }

    this->mUnk_168.func_020351b8(true, false, false, false);
    this->mUnk_1f0.func_020351b8(false, false, false, false);
    this->mUnk_278.func_020351b8(false, false, false, false);
}

THUMB void UnkStruct_020397f8::vfunc_4c() {
    this->func_02038b28();
    this->func_0203dcfc(this->mUnk_50, 0, 0, 2);
}

// non-matching
ARM void UnkStruct_020397f8::vfunc_2c() {
    if (data_027e0618[0x101] != 0) {
        if (((data_02056be4[data_027e077c.mUnk_0] & 1) != 0) != this->mUnk_50) {
            return;
        }
    }

    this->func_02038d20();

    if (this->mUnk_56c > 0) {
        this->mUnk_56c--;
    }

    if (this->mUnk_50 != ((data_02056be4[data_027e077c.mUnk_0] & 1) != 0)) {
        this->mUnk_57f = 0;
    }

    if (this->mUnk_15c > 0) {
        if ((this->mUnk_128.mUnk_04 == NULL || this->mUnk_128.mUnk_04[0] == 0) != 0) {
            this->mUnk_424.func_0203ef78(this->mUnk_128.mUnk_08);
        }

        this->func_0203be64();
        this->func_0203a35c();

        if (this->mUnk_580 != 0) {
            this->mUnk_168.func_0203516c();
        }

        if (this->mUnk_584 != 0) {
            this->mUnk_300.func_0203516c();
        }

        if (this->mUnk_585 != 0) {
            this->mUnk_388.func_0203516c();
        }

        if ((this->func_0203a2c0() != 0 && this->mUnk_57f == 0) && this->mUnk_56c <= 0) {
            this->mUnk_1f0.func_0203516c();
        }

        if (this->mUnk_08 != NULL) {
            bool value = this->mUnk_08->mUnk_1c;

            if ((value == 1) || (value == 2)) {
                this->mUnk_278.func_0203516c();
            }
        }

        if (this->mUnk_15e == 6) {
            func_ov018_02169634(this);
        } else {
            this->mUnk_410.func_0203ebf8();
        }
    }

    if (this->mUnk_15c == 1) {
        if (this->mUnk_586 == ((data_02056be4[data_027e077c.mUnk_0] & 1) != 0)) {
            switch (this->mUnk_150[1]) {
                case 0: this->func_0203b0ec(1); break;
                case 2:
                case 3:
                    if (this->func_0203a3e0() != 0) {
                        this->func_0203bd8c(this->mUnk_572);
                    } else {
                        this->func_0203b0ec(1);
                    }
                    break;
            }
        }
    }
}

ARM void UnkStruct_020397f8::func_02039ca8() {
    s32 i;

    for (i = 0; i < ARRAY_LEN(this->mUnk_564); i++) {
        this->mUnk_564[i] = 0x1A;
    }
}

ARM void UnkStruct_020397f8::vfunc_3c(unk32 param1) {
    if (this->mUnk_15c > 0 && this->func_0203de14(param1) != 0) {
        if (this->mUnk_124->mUnk_29 != 3) {
            if ((this->mUnk_50 == 0) && func_ov000_02079e04() != 0) {
                return;
            }

            if (data_027e0618[0x101] != 0) {
                if (((data_02056be4[data_027e077c.mUnk_0] & 1) != 0) != this->mUnk_50) {
                    return;
                }
            }

            this->vfunc_40(0, 0);
        }
    }
}

// non-matching
ARM void UnkStruct_020397f8::vfunc_40(s32 param1, s32 param2) {
    UnkStruct_02038aa0 *bVar1;
    s8 cVar2;
    unk32 iVar4;
    unk32 iVar6;
    unk32 iVar7;
    unk32 iVar8;
    unk32 uVar9;
    unk32 iStack_a8;
    unk32 iStack_a4;
    unk32 local_a0;
    unk32 local_9c;
    unk32 local_98;
    unk32 local_94;
    unk32 local_90;
    unk32 local_8c;
    unk32 iVar5;
    UnkStruct_01ffbe34 aStack_88;
    UnkStruct_01ffbe34 aStack_68;
    UnkStruct_01ffbe34 aStack_48;

    local_8c = 0;
    local_90 = 0;
    bVar1    = data_027e0c68.mUnk_28[this->mUnk_50];

    this->vfunc_6C(&local_8c, &local_90);
    this->func_0203a188(local_8c + param1, local_90 + param2);
    this->func_0203e1b0(param1 + local_8c + (this->mUnk_158.x - (this->mUnk_14 << 3) / 2),
                        param2 + local_90 + (this->mUnk_158.y - (this->mUnk_18 << 3) / 2), 0);

    if (this->mUnk_584 != 0) {
        iVar5 = this->mUnk_18 << 3;

        if (this->mUnk_580 != 0) {
            iVar5 = -0xC;
        } else {
            iVar5 = 0;
        }

        this->mUnk_300.func_02034a1c(param1 + local_8c + this->mUnk_55c + (this->mUnk_158.x - (this->mUnk_14 << 3) / 2),
                                     iVar5 + param2 + local_90 + this->mUnk_560 + ((this->mUnk_158.y - (iVar5 / 2))), 0);
    }

    if (this->mUnk_585 != 0 && ((data_02056be4[data_027e077c.mUnk_0] & 1) == 0)) {
        switch (data_027e0618[0]) {
            case 2:
                if (data_027e0cbc.func_0203d7e0(3) != 0) {
                    this->mUnk_388.func_02034b0c(0xBE, 0, 0, 0, 0);
                }
                break;
            case 6:
                if (data_027e0cbc.func_0203d7e0(0x58) != 0) {
                    this->mUnk_388.func_02034b0c(0x013B, 0, 0, 0, 0);
                }
                break;
        }
    }

    iVar5 = this->func_02032fa4();
    iVar8 = bVar1->mUnk_18;
    uVar9 = data_02056a04[iVar8];
    // func_0203489c(uVar9, data_02056a16[iVar8], &local_94, &local_98);
    iVar6 = this->mUnk_158.x - local_94;
    iVar7 = this->mUnk_158.y - local_98;

    if ((this->mUnk_15e != 7) && (this->func_0203a2c0() != 0)) {
        func_01ffbe34(&aStack_48);
        func_020347b0(uVar9, data_02056a10[iVar8], &local_9c, &local_a0, 4, 4);
        local_9c += param1 + local_8c + iVar6;
        local_a0 += param2 + local_90 + iVar7;

        if (data_027e0c38[5] == 1) {
            iVar8 = func_0202ab48();

            if (iVar8 == 0) {
                iVar8 = 0;
            } else {
                iVar8 = -3;
            }

            local_9c = (0x108 - local_9c) + iVar8;
        }

        if ((this->mUnk_57f == 0) && (this->mUnk_56c <= 0)) {
            func_01ffbe34(&aStack_68);
            aStack_68.mUnk_0a = 1;
            this->mUnk_1f0.func_02034a1c(local_9c, local_a0, &aStack_68);
        } else {
            // func_02034984(iVar5 != 0 ? 0x11F : 0x18, 0, local_9c, local_a0 + 2, 0);
        }
    }

    if (this->mUnk_08 != 0) {
        if ((this->mUnk_08->mUnk_1c == 1 || this->mUnk_08->mUnk_1c == 2) == 0) {
            return;
        }

        func_01ffbe34(&aStack_88);
        aStack_88.mUnk_0a = 1;
        func_02034698(iVar5 != 0 ? 0x11F : 0x18, 2, &iStack_a4, &iStack_a8);
        iStack_a4 += param1 + local_8c + iVar6;
        iStack_a8 += param2 + local_90 + iVar7;
        this->mUnk_278.func_02034a1c(iStack_a4, iStack_a8, &aStack_88);
    }
}

ARM void UnkStruct_020397f8::func_0203a188(s32 param1, s32 param2) {
    unk16 sVar1;
    unk16 sVar2;
    unk32 iVar3;
    unk32 iVar4;
    unk32 uVar5;
    unk32 iVar6;
    unk32 iStack_54;
    unk32 iStack_50;
    unk32 iStack_4c;
    unk32 iStack_48;
    UnkStruct_01ffbe34 aStack_44;
    unk32 uStack_24;

    if (this->mUnk_15e == 7) {
        return;
    }

    // (short)(ushort)*(byte *)((int)data_027e0c68.mUnk_28[(this->mUnk_50 - 0x28) * 0x18];

    iVar6 = data_027e0c68.mUnk_10 + this->mUnk_50;
    // uStack_24 = param_4;

    if (data_027e0cbc.func_0203d7e0(data_02056a00[iVar6]) != 0) {
        uVar5 = data_02056a04[iVar6];

        func_0203489c(uVar5, data_02056a16[iVar6], &iStack_48, &iStack_4c);
        iVar3 = iStack_50 + (this->mUnk_158.x - iStack_48);

        func_02034698(uVar5, data_02056a0e[iVar6], &iStack_50, &iStack_54);
        iVar4 = iStack_54 + (this->mUnk_158.y - iStack_4c);

        func_01ffbe34(&aStack_44);
        aStack_44.mUnk_0a = 1;

        if (this->mUnk_580 != 0) {
            this->mUnk_168.func_02034a1c(param1 + iVar3, param2 + iVar4, &aStack_44);
        } else {
            func_02034984(uVar5, data_02056a08[iVar6], param1 + iVar3, param2 + iVar4);
        }
    }
}

// non-matching
ARM bool UnkStruct_020397f8::func_0203a2c0() {
    if ((this->mUnk_150[1] != 1 && this->mUnk_150[1] != 2) && (this->func_02039250() != 0 && this->func_02038b78() != 0)) {
        return true;
    }

    return false;
}

ARM unk32 UnkStruct_020397f8::func_0203a30c() {
    return this->mUnk_574 / this->pInfoEntry->mUnk_06;
}

// non-matching (regalloc)
ARM void UnkStruct_020397f8::vfunc_48() {
    if (this->mUnk_164 != NULL && this->mUnk_164->mUnk_15c > 0) {
        this->func_02038b40();
    }

    this->mUnk_410.func_0203ec34();
}

ARM void UnkStruct_020397f8::func_0203a35c() {
    if ((this->mUnk_57c == 1 || this->mUnk_150[3] != 0) ||
        (this->mUnk_128.mUnk_04 == NULL || this->mUnk_128.mUnk_04[0] == 0) != 0)
    {
        if (this->func_0203a3e0()) {
            s16 mUnk_56e                 = this->mUnk_56e;
            s16 mUnk_570                 = this->mUnk_570;
            UnkStruct_020397f8 *mUnk_164 = this->mUnk_164;

            mUnk_164->mUnk_168.mUnk_10 = mUnk_56e;
            mUnk_164->mUnk_168.mUnk_14 = mUnk_570;
            this->mUnk_164->func_02039208(4);
        }
    } else {
        this->mUnk_164->func_02038b40();
    }
}

ARM bool UnkStruct_020397f8::func_0203a3e0() {
    return this->mUnk_164->mUnk_168.mUnk_06 > 0;
}

// non-matching
ARM void UnkStruct_020397f8::vfunc_44(s32 touchLastX, s32 touchLastY) {
    unk32 iVar2;
    unk32 iVar5;
    unk32 iStack_14;
    unk32 iStack_18;

    if (this->mUnk_15c <= 0 || this->func_0203951c() == 0) {
        return;
    }

    iStack_14 = 0;
    iStack_18 = 0;

    this->vfunc_6C(&iStack_14, &iStack_18);

    iVar5 = touchLastX - iStack_14;
    iVar2 = touchLastY - iStack_18;

    if ((data_027e103c != 0 && data_027e103c->mUnk_1c == 0x8F) || (data_027e077c.mUnk_0 != data_027e077c.mUnk_4)) {
        return;
    }

    if ((data_02056be4[data_027e077c.mUnk_0] & 2) == 0) {
        if ((gTouchControl.mFlags & 1) != 0) {
            if (this->mUnk_50 == 0 && data_027e0d38 != 0) {
                if (func_ov000_02079e04() == 0 && data_027e0e28->func_ov000_0207bc48() == 0) {
                    if (data_027e0618[0x101] == 0 && data_027e103c->mUnk_24 == 0) {
                        return;
                    }
                }
            }

            if (this->func_0203a6d0(iVar5, iVar2) == 0 && this->func_0203a2c0() != 0) {
                this->mUnk_57f = 1;
            }
        } else {
            if (gTouchControl.mTouch != 0) {
                this->func_0203a6d0(iVar5, iVar2);
                return;
            }

            if (gTouchControl.mTouch == 0) {
                switch (this->mUnk_150[1]) {
                    case 3:
                    case 4: break;
                    case 5:
                        if (data_027e103c->mUnk_20 == 3) {
                            this->func_0203b0ec(1);
                        }
                        break;
                    case 6:
                        if (data_027e103c->mUnk_20 == 5) {
                            this->func_0203b0ec(1);
                        }
                        break;
                    case 7: break;
                    case 2:
                        //! TODO: fixme
                        // if (this->mUnk_164->mUnk_168.mUnk_06 <= 0) {
                        //     if ((gTouchControl.mFlags & 2) != 0) {
                        //         this->mUnk_128.mUnk_14 = 0;

                        //         if (this->func_0203b0bc() != 0) {
                        //             this->func_0203b0ec(1);
                        //         }

                        //         this->mUnk_1f0.mUnk_5c.mUnk_08 = 0;
                        //         this->mUnk_1f0.func_020352d8();
                        //     }
                        // }
                        break;
                    case 0:
                    case 1:
                    default:
                        if ((gTouchControl.mFlags & 2) != 0) {
                            this->mUnk_128.mUnk_14 = 0;

                            if (this->func_0203b0bc() != 0) {
                                this->func_0203b0ec(1);
                            }

                            this->mUnk_1f0.mUnk_5c.mUnk_08 = 0;
                            this->mUnk_1f0.func_020352d8();
                        }
                        break;
                }
            }
        }
    }
}

ARM bool UnkStruct_020397f8::func_0203a6d0(unk32 param1, unk32 param2) {
    unk32 iVar1;
    unk32 uVar2;
    UnkStruct_0203b264 *piVar3;

    if (this->mUnk_164->mUnk_168.mUnk_06 > 0 && this->mUnk_164->mUnk_15c <= 0) {
        return false;
    }

    iVar1  = this->vfunc_34(param2);
    piVar3 = NULL;

    if (!(iVar1 < 0) && iVar1 < 4) {
        piVar3 = this->mUnk_424.func_0203eeb0(iVar1, param1);
    }

    if (piVar3 != NULL && ((piVar3->mUnk_0[3] << 0x10) | ((u16 *) piVar3->mUnk_0)[2]) == 0x00FF0002) {
        uVar2 = this->func_02038cb8(iVar1);
        this->mUnk_410.func_0203ec4c(piVar3, uVar2,
                                     (s16) (this->mUnk_158.x - ((this->mUnk_14 << 3) / 2)) + iVar1 + this->mUnk_56e,
                                     (s16) (this->mUnk_158.y - ((this->mUnk_18 << 3) / 2)) + iVar1 + this->mUnk_570);

        this->mUnk_57f = 0;
        return true;
    }

    return false;
}

// non-matching
ARM void UnkStruct_020397f8::vfunc_50(EntryINF1 *param1, unk32 param2, s32 *param3, unk32 param4) {
    bool bVar5;
    bool bVar2;
    int iVar4;
    int iVar6;
    s16 temp;

    iVar6 = param3[0];

    if (data_027e0c54 != 0) {
        UnkStruct_020397f8 *pVar4 = data_027e0c68.func_02036700();

        if (pVar4 != NULL && pVar4->mUnk_15c > 0) {
            this->func_02038b40();
        }
    }

    if (*((s32 *) data_027e0618) == 2 && data_027e0d38->func_ov000_02078b40() == 2 &&
        func_ov003_020f3f94(data_ov009_0211f5b4) == 0)
    {
        UnkStruct_020397f8 *pVar4 = (UnkStruct_020397f8 *) data_027e0c68.mUnk_28[4];

        if (pVar4 != NULL && pVar4->mUnk_15c > 0) {
            this->func_02038b40();
        }
    }

    this->mUnk_586 = (data_02056be4[data_027e077c.mUnk_0] & 1) != 0;
    temp           = param3[8];

    if (temp >= 0 && param3[9] >= 0) {
        temp = param3[10];
    }

    if (temp < 0) {
        this->mUnk_57b = temp;
    } else {
        this->mUnk_57b = 0;
    }

    // this->func_02038f44(param1, param2, param3, param4, iVar6);
    this->mUnk_574 = 0;

    if (data_027e0d38 != 0 && (data_02056be4[data_027e077c.mUnk_0] & 1) != 0 && (param3[11])) {
        data_027e103c->func_ov000_020cf284(0x80, 0);
    }
}

// switch decomp issue
ARM void UnkStruct_020397f8::vfunc_54() {}

ARM void UnkStruct_020397f8::vfunc_5c() {
    if (this->mUnk_15f == 0 || this->pInfoEntry->mUnk_06 <= 2) {
        this->mUnk_168.mUnk_5c.mUnk_08 = this->mUnk_168.mUnk_7c;
        this->mUnk_168.func_020352d8();
    } else {
        this->mUnk_168.mUnk_5c.mUnk_08 = 0;
        this->mUnk_168.func_020352d8();
        this->mUnk_168.func_020351b8(1, 0, 0, 0);
    }
}

// non-matching
ARM void UnkStruct_020397f8::vfunc_58() {
    bool bVar1;
    s8 *puVar2;
    int iVar3;
    char *pcVar4;

    if (this->mUnk_160 != 0) {
        if (data_027e103c != NULL) {
            if (data_027e103c->func_ov000_020cf4bc() != 0) {
                puVar2 = (s8 *) data_027e103c->func_ov000_020cef9c();

                if ((puVar2 + 0x244) != NULL || (puVar2[0x250] == '\x02')) {
                    puVar2 = (s8 *) data_027e103c->func_ov000_020cef9c();

                    if ((UnkStruct_020397f8 *) (puVar2 + 0x244) == this) {
                        data_027e103c->func_ov000_020cfb38();
                    }
                }
            }

            if (this->mUnk_581 != 0 && data_027e103c->func_ov000_020cf488() != 0) {
                data_027e103c->func_ov000_020cfa24(0, 0);
                this->mUnk_581 = 0;
            }

            if (this->mUnk_582 != 0) {
                data_027e103c->func_ov000_020cfe40(0, 2);
                this->mUnk_582 = 0;
            }

            if (this->mUnk_583 != 0) {
                data_027e103c->func_ov005_02104028(0);
                this->mUnk_583 = 0;
            }
        }

        // if (data_027e0618[0] == 2 && func_ov000_02079e04() && (data_027e1054.mUnk_04 + 0x99) != 0 &&
        //         (data_027e077c.mUnk_0 != 0x39 || data_027e103c->func_ov000_020cf0bc())) {
        //     data_027e1054.func_ov003_020f4874();
        //     data_027e103c->func_ov005_02103f8c(data_02057ed4);
        // }
    }

    this->func_02039398();
}

ARM bool UnkStruct_020397f8::func_0203b0bc() {
    return this->mUnk_57f != 0 && data_027e077c.mUnk_0 == data_027e077c.mUnk_4;
}

// non-matching
ARM s32 UnkStruct_020397f8::func_0203b0ec(u32 param1) {
    s32 iVar4;
    u16 *puVar2;
    u32 uVar3;
    s32 unaff_r6;
    bool bVar1;

    iVar4 = 0;
    bVar1 = false;

    uVar3 = param1;

    if (((data_02056be4[data_027e077c.mUnk_0] & 1) == 0)) {
        uVar3 = 0;
    } else {
        uVar3 = 1;
    }

    unaff_r6 = this->mUnk_50 == uVar3;

    this->mUnk_410.func_0203ec34();
    this->mUnk_585 = 0;
    this->mUnk_584 = 0;

    if (this->mUnk_150[3] != 0) {
        iVar4          = 1;
        this->mUnk_56c = this->mUnk_578;
        bVar1          = true;
        this->mUnk_15c = 0x78;
    } else {
        if ((this->mUnk_128.mUnk_04 == NULL || this->mUnk_128.mUnk_04[0] == 0) != 0) {
            this->func_02038b40();

            if (data_027e0d38 != 0) {
                data_027e103c->func_ov000_020cf224(1);
                data_027e103c->func_ov000_020cf2a0(1);
            }

            if (this->mUnk_08 == NULL) {
                this->vfunc_58();
            }

            iVar4 = 1;
        }
    }

    if (iVar4 != 0) {
        if (bVar1) {
            this->vfunc_54();
        }

        if (unaff_r6 != 0) {
            data_027e0d04.func_0203fe60(0);
        }
    }

    if (((param1 != 0 && iVar4 != 0) && unaff_r6 != 0) && this->mUnk_15e != 7) {
        data_ov000_020eec9c.func_ov000_020d77e4(0x19);
    }

    return iVar4;
}

// non-matching (regalloc)
ARM unk32 UnkStruct_020397f8::vfunc_18(UnkStruct_0203b264 *param1, unk32 param2, unk32 param3) {
    u16 sVar1;
    u32 uVar4;
    s32 unaff_r4;
    bool bVar5;

    if (this->func_0203951c() == 0) {
        return 1;
    }

    if (this->mUnk_580 != 0) {
        unaff_r4 = -0xC;
    } else {
        unaff_r4 = 0;
    }

    sVar1 = param1->mUnk_4[0];

    if (sVar1 != 0x1A || sVar1 == 0x1A) {
        bVar5 = true;

        if (sVar1 == 0x1A) {
            uVar4 = (param1->mUnk_0[3] << 0x10) | ((u16 *) param1->mUnk_0)[2];

            if (((uVar4 == 0x0001000A || uVar4 == 0x00020000) || uVar4 == 0x00FF0000)) {
                bVar5 = false;
            }
        }

        if (bVar5) {
            this->mUnk_424.func_0203ee80(this->mUnk_128.mUnk_08);
        }
    }

    return this->func_0203e284(param1, param2, param3 + unaff_r4);
}

// non-matching
ARM unk32 UnkStruct_020397f8::vfunc_1c(u16 *param1, UnkStruct_0203b264 *param2, unk8 param3, unk32 param4) {
    int iVar1;
    u16 *psVar3;

    psVar3 = param2->mUnk_4;

    if (psVar3[0] == 10) {
        this->mUnk_424.func_0203ef78(this->mUnk_128.mUnk_08, psVar3[0], param3);
        this->mUnk_574++;

        if (this->func_0203a30c() == 0) {
            this->mUnk_150[3] = 1;
        }
    }

    if (this->mUnk_15e == 6) {
        return 1;
    }

    switch (this->mUnk_57a) {
        case 0: return this->func_0203905c(param1, param2, param3, param4);
        case 1:
            UnknownMsgChoiceStruct *pChoiceData;
            s32 i       = this->func_0203a30c();
            pChoiceData = &this->mUnk_428[this->mUnk_528[i]];
            return this->mUnk_164->func_0203cb5c(
                *param1, (((pChoiceData->mUnk_00->mUnk_0[3] << 0x10) | ((u16 *) pChoiceData->mUnk_00->mUnk_0)[2]) + ~0xFFFE));
        default: break;
    }

    return 0;
}

// non-matching
ARM void UnkStruct_020397f8::vfunc_60(func_0203b410_param1 *param1, unk32 param2, unk32 param3) {
    unk16 sVar1;
    unk16 uVar2;
    unk32 iVar3;
    unk32 iVar4;
    unk32 uVar5;
    u32 uVar6;

    uVar6 = 0;

    if (this->func_02032fa4() == 0) {
        switch (param1->mUnk_0c) {
            case 0:
            case 1: uVar6 = this->mUnk_580 != 0; break;
            case 2: uVar6 = 2; break;
            case 3: uVar6 = 3; break;
            case 5: uVar6 = 4; break;
            case 6: uVar6 = 5; break;
            default:
                // why???
                switch (param1->mUnk_0c) {
                    case 4: uVar6 = 8; break;
                    case 7: uVar6 = 9; break;
                    default:
                        if (this->mUnk_580 != 0) {
                            uVar6 = 7;
                        } else {
                            uVar6 = 6;
                        }
                        break;
                }
                break;
        }
    }

    // PTR_PTR_0203b5ac[(byte)param_1[0x50]] = (char)uVar6;
    data_027e0c68.mUnk_28[this->mUnk_50]->mUnk_50 = uVar6;

    if (this->mUnk_15e == 7) {
        uVar5 = func_0202d5b4(data_02057f08, data_02057eec, data_020691a0, 0xCC00, 1);
        func_02032304(data_02068894, data_02057ed8, data_02056af0, 1, param3);
        iVar3 = func_02016fcc(uVar5);
    } else {
        if (this->func_02032fa4() != 0) {
            uVar5 = 0x33;
        } else {
            uVar5 = 0x32;
        }

        data_027e0cbc.func_0203d77c(uVar5, 1, 1);
        iVar3 = data_027e0cbc.func_0203d77c(data_02056a00[uVar6 * 0x18] - 2, 1, 1);
    }

    if (param1->mUnk_10 < 0) {
        iVar3 = param1->mUnk_12;
    }

    if (param1->mUnk_10 <= 0 && iVar3 > 0) {
        uVar2            = param1->mUnk_12;
        this->mUnk_158.x = param1->mUnk_10;
        this->mUnk_158.y = uVar2;
    } else {
        this->func_0203b764();
    }
}

// non-matching (regalloc)
ARM void UnkStruct_020397f8::vfunc_64(s16 *param1) {
    unk32 uVar2;

    if (this->mUnk_50 != 0 || data_027e0db0.mUnk_04 > 0 || func_0203c084() != 0 ||
        (gAdventureFlags->Exists() && gAdventureFlags->func_ov00_02097738()))
    {
        uVar2 = 0x16;
    } else {
        uVar2 = 0;
    }

    this->mUnk_124->func_0203f020(param1, uVar2);
    this->func_0203be08();

    if (this->func_02032fa4()) {
        this->mUnk_168.func_020350b4(0x39, 0, 2, 0, 0);
        this->mUnk_1f0.func_020350b4(0x33, 0, 2, 0, 0);
        this->mUnk_278.func_020350b4(0x33, 1, 2, 0, 0);
    } else {
        this->mUnk_168.func_020350b4(0x34, 0, 2, 0, 0);
        this->mUnk_1f0.func_020350b4(0x32, 0, 2, 0, 0);
        this->mUnk_278.func_020350b4(0x32, 1, 2, 0, 0);
    }

    this->mUnk_168.func_020351b8(1, 0, 0, 0);
    this->mUnk_1f0.func_020351b8(0, 0, 0, 0);
    this->mUnk_278.func_020351b8(0, 0, 0, 0);
    this->func_020393a8(param1);
}

// non-matching
ARM void UnkStruct_020397f8::func_0203b764() {
    s32 i = data_027e0c68.mUnk_00[this->mUnk_50];

    this->func_02039440(data_02056a04[i * 0x18], data_02056a16[i]);

    switch (this->mUnk_57b) {
        case 1: this->mUnk_158.y -= 38; break;
        case 2:
            switch (this->pInfoEntry->mUnk_06) {
                case 2: this->mUnk_158.y -= 111; break;
                case 3: this->mUnk_158.y -= 98; break;
                default: break;
            }
            break;
        default: break;
    }
}

// switch decomp issue
ARM unk32 UnkStruct_020397f8::vfunc_20(s32 param1, s32 *param2) {}

ARM void UnkStruct_020397f8::func_0203bd8c(s32 param1) {
    this->mUnk_576 = param1;

    if (this->func_0203b0ec(0) != 0) {
        data_ov000_020eec9c.func_ov000_020d77e4(this->mUnk_564[param1]);
    }
}

ARM void UnkStruct_020397f8::vfunc_6c(s32 *param1, s32 *param2) {
    this->func_0203947c();
    *param1 += this->mUnk_56e;
    *param2 += this->mUnk_570;
}

ARM void UnkStruct_020397f8::func_0203be08() {
    if (data_027e0d38 != 0) {
        if (data_027e103c->func_ov000_020cf42c() != 0) {
            this->mUnk_534 = this->mUnk_538;
        } else {
            this->mUnk_534 = this->mUnk_536;
        }

        if (this->func_0203c084() != 0) {
            this->mUnk_548 = this->mUnk_54c;
        }
    }
}

ARM void UnkStruct_020397f8::func_0203be64() {}

// non-matching
ARM bool UnkStruct_020397f8::func_0203c084() {
    unk32 uVar4;
    bool bVar2;
    bool bVar1;
    bool bVar3;

    uVar4 = 0;

    if (this->mUnk_50 == 0) {
        bVar2 = true;
        bVar1 = true;

        if ((data_02056be4[data_027e077c.mUnk_0] & 1) == 0 && data_027e103c->func_ov000_020cf8fc(0x8F) == 0) {
            bVar1 = false;
        }

        if (!bVar1 && data_027e0618[0x101] == 0) {
            if ((data_027e0d38 != NULL && data_027e0d38->mUnk_14 == 1) == 0) {
                bVar2 = false;
            }
        }

        if (bVar2) {
            uVar4 = 1;
        }
    }

    return uVar4;
}

ARM bool UnkStruct_020397f8::func_0203c13c() {
    if (this->func_02032fa4() == 0) {
        data_ov000_020eec9c.func_ov000_020d77e4(6);
        data_027e103c->func_ov000_020cfb20(this);
        this->mUnk_585         = 1;
        this->mUnk_584         = 1;
        this->mUnk_128.mUnk_18 = 0x00016000;
        this->mUnk_128.mUnk_1c = NULL;
        this->mUnk_128.mUnk_20 = 0;
        this->mUnk_128.mUnk_24 = 0;

        return true;
    }

    return false;
}

// non-matching
ARM bool UnkStruct_020397f8::func_0203c1a0() {
    s8 *pVar1;
    u8 *iVar3;

    if ((data_02056be4[data_027e077c.mUnk_0] & 1) == 0) {
        this->mUnk_584 = 1;

        pVar1 = (s8 *) data_027e103c->func_ov000_020cef9c();
        iVar3 = data_027e0f7c.func_ov000_0209d90c(pVar1[0x24F], 0);
        data_027e1054.func_ov003_020f4760(iVar3[1], 0);
        data_ov000_020eec9c.func_ov000_020d77e4(6);
        data_027e103c->func_ov000_020cfb58();

        this->mUnk_128.mUnk_18 = 0x0000A000;
        this->mUnk_128.mUnk_1c = this->func_0203c25c;
        this->mUnk_128.mUnk_20 = this;
        this->mUnk_128.mUnk_24 = 0;

        return 0;
    }

    return 0;
}

ARM bool UnkStruct_020397f8::func_0203c25c(UnkStruct_020397f8 *param1) {
    if (data_027e1054.mUnk_00->mUnk_00->mUnk_95 != 0) {
        return false;
    }

    if ((data_02056be4[data_027e077c.mUnk_0] & 1) == 0) {
        param1->mUnk_585         = 1;
        param1->mUnk_128.mUnk_18 = 0x00016000;
        param1->mUnk_128.mUnk_1c = NULL;
        param1->mUnk_128.mUnk_20 = 0;
        param1->mUnk_128.mUnk_24 = 0;
        return true;
    }

    return false;
}

ARM UnkStruct_020397f8::~UnkStruct_020397f8() {}

ARM bool UnkStruct_020397f8::vfunc_38() {
    return true;
}
