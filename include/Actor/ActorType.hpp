#pragma once

#include "global.h"
#include "types.h"

typedef u32 ActorTypeId;
enum ActorTypeId_ {
    ActorTypeId_Null = 'NULL',

    ActorTypeId_Navi       = 'NAVI',
    ActorTypeId_ForceNavi  = 'FCNV',
    ActorTypeId_WisdomNavi = 'WSNV',

    ActorTypeId_TreasureMap = 'TMAP',
    ActorTypeId_DigSpot     = 'DGTG',

    ActorTypeId_ShopItemBombchus       = 'ITBT',
    ActorTypeId_ShopItemBombs          = 'ITBM',
    ActorTypeId_ShopItemTreasure       = 'ITTR',
    ActorTypeId_ShopItemHeartContainer = 'ITHU',
    ActorTypeId_ShopItemQuiver         = 'ITAP',
    ActorTypeId_ShopItemBombBag        = 'ITBB',
    ActorTypeId_ShopItemRedPotion      = 'ITPB',
    ActorTypeId_ShopItemCourageGem     = 'ITSR',
    ActorTypeId_ShopItemShield         = 'ITSL',
    ActorTypeId_ShopItemSoldOut        = 'ITSO',

    ActorTypeId_RefillArrows   = 'FLAL',
    ActorTypeId_RefillBombs    = 'FLBM',
    ActorTypeId_RefillBombchus = 'FLBT',
    ActorTypeId_RefillTime     = 'FLTM',
    ActorTypeId_Heart          = 'HART',
    ActorTypeId_LSTM           = 'LSTM',
    ActorTypeId_Rupee          = 'RUPY',

    ActorTypeId_Arrow         = 'ARRW',
    ActorTypeId_Blast         = 'BLST',
    ActorTypeId_Bomb          = 'BOMB',
    ActorTypeId_GrapplingHook = 'ROPE',

    ActorTypeId_PlayerDummy = 'PLDM',
    ActorTypeId_PushBlock   = 'PSBL',
    ActorTypeId_WindBlock   = 'WBLK',
    ActorTypeId_StorageDrum = 'DRUM',

    ActorTypeId_SmallKey     = 'NKEY',
    ActorTypeId_SwitchObject = 'SWOB',
    ActorTypeId_EventIcon    = 'EVIC',
    ActorTypeId_ActionObject = 'ACOB',

    ActorTypeId_Sandworm       = 'MLDW',
    ActorTypeId_Tektite        = 'TEKT',
    ActorTypeId_PolsVoice      = 'PLSV',
    ActorTypeId_Yook           = 'YETI',
    ActorTypeId_Armos          = 'AMOS',
    ActorTypeId_Stalfos        = 'STLF',
    ActorTypeId_StalfosWarrior = 'STLW',
    ActorTypeId_ChuChu         = 'CHUC',
    ActorTypeId_Gel            = 'GELL',
    ActorTypeId_Bee            = 'BEE0',
    ActorTypeId_BeeHive        = 'BEEH',
    ActorTypeId_Cucco          = 'KOKO',
    ActorTypeId_Rope           = 'SNAK',
    ActorTypeId_Octorok        = 'OCTA',
    ActorTypeId_Keese          = 'KETH',
    ActorTypeId_Rat            = 'RAT0',
    ActorTypeId_Beamos         = 'BMOS',
    ActorTypeId_LikeLike       = 'LKLK',
    ActorTypeId_Crow           = 'CROW',

    ActorTypeId_Linebeck = 'LNBK',
    ActorTypeId_Mailbox  = 'POST',
    ActorTypeId_Postman  = 'PSTM',

    ActorTypeId_BIGR = 'BIGR',
    ActorTypeId_BKEY = 'BKEY',
    ActorTypeId_BMRN = 'BMRN',
    ActorTypeId_BMTY = 'BMTY',
    ActorTypeId_BTRF = 'BTRF',
    ActorTypeId_CBLS = 'CBLS',
    ActorTypeId_EVIC = 'EVIC',
    ActorTypeId_FLAL = 'FLAL',
    ActorTypeId_FLBM = 'FLBM',
    ActorTypeId_FLBT = 'FLBT',
    ActorTypeId_FLTB = 'FLTB',
    ActorTypeId_FLTM = 'FLTM',
    ActorTypeId_FORC = 'FORC',
    ActorTypeId_SBEM = 'SBEM',
    ActorTypeId_STNE = 'STNE',
    ActorTypeId_TARU = 'TARU',
    ActorTypeId_TSBH = 'TSBH',
    ActorTypeId_TSUB = 'TSUB',
    ActorTypeId_VLR0 = 'VLR0',
};

class ActorType_UnkClass {
public:
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    ActorType_UnkClass(u32 unk_00, u32 unk_04) :
        unk_00(unk_00),
        unk_04(unk_04) {}
};

class Actor;
typedef Actor *(*ActorCreateFunc)();

struct ActorType {
    /* 00 */ ActorTypeId id;
    /* 04 */ ActorCreateFunc create;
    /* 08 */ unk32 (*unk_08)();
    /* 0c */ unk32 unk_0c;
    /* 10 */ ActorType *next;
    /* 14 */

    inline ActorType() {}
    ActorType(ActorTypeId id, ActorCreateFunc create, unk32 (*unk_08)());
    ~ActorType();
    unk32 func_0203e7c8();
    void Register();
    void Unregister();
    static ActorType *Find(ActorTypeId id);
};

struct ActorTypeList {
    /* 0 */ ActorType *head;
    /* 4 */ ActorType *tail;
    /* 8 */
};
