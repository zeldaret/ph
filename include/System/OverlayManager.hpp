#pragma once

#include "types.h"

#include <nds/overlay.h>

#include "Item/Item.hpp"

EXTERN_OVERLAY_ID(0);
EXTERN_OVERLAY_ID(1);
EXTERN_OVERLAY_ID(2);
EXTERN_OVERLAY_ID(3);
EXTERN_OVERLAY_ID(4);
EXTERN_OVERLAY_ID(5);
EXTERN_OVERLAY_ID(6);
EXTERN_OVERLAY_ID(7);
EXTERN_OVERLAY_ID(8);
EXTERN_OVERLAY_ID(9);
EXTERN_OVERLAY_ID(10);
EXTERN_OVERLAY_ID(11);
EXTERN_OVERLAY_ID(12);
EXTERN_OVERLAY_ID(13);
EXTERN_OVERLAY_ID(14);
EXTERN_OVERLAY_ID(15);
EXTERN_OVERLAY_ID(16);
EXTERN_OVERLAY_ID(17);
EXTERN_OVERLAY_ID(18);
EXTERN_OVERLAY_ID(19);
EXTERN_OVERLAY_ID(20);
EXTERN_OVERLAY_ID(21);
EXTERN_OVERLAY_ID(22);
EXTERN_OVERLAY_ID(23);
EXTERN_OVERLAY_ID(24);
EXTERN_OVERLAY_ID(25);
EXTERN_OVERLAY_ID(26);
EXTERN_OVERLAY_ID(27);
EXTERN_OVERLAY_ID(28);
EXTERN_OVERLAY_ID(29);
EXTERN_OVERLAY_ID(30);
EXTERN_OVERLAY_ID(31);
EXTERN_OVERLAY_ID(32);
EXTERN_OVERLAY_ID(33);
EXTERN_OVERLAY_ID(34);
EXTERN_OVERLAY_ID(35);
EXTERN_OVERLAY_ID(36);
EXTERN_OVERLAY_ID(37);
EXTERN_OVERLAY_ID(38);
EXTERN_OVERLAY_ID(39);
EXTERN_OVERLAY_ID(40);
EXTERN_OVERLAY_ID(41);
EXTERN_OVERLAY_ID(42);
EXTERN_OVERLAY_ID(43);
EXTERN_OVERLAY_ID(44);
EXTERN_OVERLAY_ID(45);
EXTERN_OVERLAY_ID(46);
EXTERN_OVERLAY_ID(47);
EXTERN_OVERLAY_ID(48);
EXTERN_OVERLAY_ID(49);
EXTERN_OVERLAY_ID(50);
EXTERN_OVERLAY_ID(51);
EXTERN_OVERLAY_ID(52);
EXTERN_OVERLAY_ID(53);
EXTERN_OVERLAY_ID(54);
EXTERN_OVERLAY_ID(55);
EXTERN_OVERLAY_ID(56);
EXTERN_OVERLAY_ID(57);
EXTERN_OVERLAY_ID(58);
EXTERN_OVERLAY_ID(59);
EXTERN_OVERLAY_ID(60);
EXTERN_OVERLAY_ID(61);

typedef u32 OverlayId;
#define OverlayId_None -1
#define OverlayId_Core OVERLAY_ID(0)
#define OverlayId_01 OVERLAY_ID(1)
#define OverlayId_02 OVERLAY_ID(2)
#define OverlayId_03 OVERLAY_ID(3)
#define OverlayId_Memory OVERLAY_ID(4)
#define OverlayId_05 OVERLAY_ID(5)
#define OverlayId_06 OVERLAY_ID(6)
#define OverlayId_07 OVERLAY_ID(7)
#define OverlayId_08 OVERLAY_ID(8)
#define OverlayId_09 OVERLAY_ID(9)
#define OverlayId_10 OVERLAY_ID(10)
#define OverlayId_11 OVERLAY_ID(11)
#define OverlayId_12 OVERLAY_ID(12)
#define OverlayId_13 OVERLAY_ID(13)
#define OverlayId_Land OVERLAY_ID(14)
#define OverlayId_15 OVERLAY_ID(15)
#define OverlayId_16 OVERLAY_ID(16)
#define OverlayId_17 OVERLAY_ID(17)
#define OverlayId_18 OVERLAY_ID(18)
#define OverlayId_19 OVERLAY_ID(19)
#define OverlayId_20 OVERLAY_ID(20)
#define OverlayId_21 OVERLAY_ID(21)
#define OverlayId_22 OVERLAY_ID(22)
#define OverlayId_23 OVERLAY_ID(23)
#define OverlayId_24 OVERLAY_ID(24)
#define OverlayId_25 OVERLAY_ID(25)
#define OverlayId_26 OVERLAY_ID(26)
#define OverlayId_27 OVERLAY_ID(27)
#define OverlayId_28 OVERLAY_ID(28)
#define OverlayId_29 OVERLAY_ID(29)
#define OverlayId_30 OVERLAY_ID(30)
#define OverlayId_31 OVERLAY_ID(31)
#define OverlayId_32 OVERLAY_ID(32)
#define OverlayId_33 OVERLAY_ID(33)
#define OverlayId_34 OVERLAY_ID(34)
#define OverlayId_35 OVERLAY_ID(35)
#define OverlayId_36 OVERLAY_ID(36)
#define OverlayId_37 OVERLAY_ID(37)
#define OverlayId_38 OVERLAY_ID(38)
#define OverlayId_39 OVERLAY_ID(39)
#define OverlayId_40 OVERLAY_ID(40)
#define OverlayId_41 OVERLAY_ID(41)
#define OverlayId_42 OVERLAY_ID(42)
#define OverlayId_43 OVERLAY_ID(43)
#define OverlayId_44 OVERLAY_ID(44)
#define OverlayId_45 OVERLAY_ID(45)
#define OverlayId_46 OVERLAY_ID(46)
#define OverlayId_47 OVERLAY_ID(47)
#define OverlayId_48 OVERLAY_ID(48)
#define OverlayId_49 OVERLAY_ID(49)
#define OverlayId_50 OVERLAY_ID(50)
#define OverlayId_51 OVERLAY_ID(51)
#define OverlayId_52 OVERLAY_ID(52)
#define OverlayId_PlayerBoomerang OVERLAY_ID(53)
#define OverlayId_PlayerScoop OVERLAY_ID(54)
#define OverlayId_PlayerBomb OVERLAY_ID(55)
#define OverlayId_PlayerBow OVERLAY_ID(56)
#define OverlayId_PlayerRope OVERLAY_ID(57)
#define OverlayId_PlayerBombchu OVERLAY_ID(58)
#define OverlayId_PlayerHammer OVERLAY_ID(59)
#define OverlayId_60 OVERLAY_ID(60)
#define OverlayId_61 OVERLAY_ID(61)

typedef u32 OverlayIndex;
enum OverlayIndex_ {
    OverlayIndex_Core,
    OverlayIndex_1,
    OverlayIndex_2,
    OverlayIndex_3,
    OverlayIndex_4,
    OverlayIndex_5,
    OverlayIndex_6,
    OverlayIndex_7,
    OverlayIndex_8,
    OverlayIndex_9,
    OverlayIndex_10,
    OverlayIndex_EquipItem,
    OverlayIndex_12,
    OverlayIndex_COUNT,
};

class OverlayManager {
public:
    OverlayId mLoadedOverlays[OverlayIndex_COUNT];

    void Load(OverlayIndex index, OverlayId id);
    void LoadIfNotLoaded(OverlayIndex index, OverlayId id);
    void Unload(OverlayIndex index);
    void LoadGameMode(s32 mode);
    void UnloadGameMode();

    void LoadEquipItem(ItemFlag equipId);
};

extern OverlayManager gOverlayManager;
