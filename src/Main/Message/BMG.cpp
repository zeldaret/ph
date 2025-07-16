extern "C" {
#include <string.h>
}
#include "Message/BMG.hpp"

char *func_0202ab38(u32 *lang);
u32 *func_0202d550(int, u32 *, char *path, int, int, int);
void func_0202d590(BMGHeader *);

extern u32 *data_027e0ce0[];
extern u32 data_027e05f4; // language
extern u32 *data_ov002_0210016c;

static char *sBMGFileNames[BMG_FILE_INDEX_MAX] = {
    "system",       // BMG_FILE_INDEX_SYSTEM
    "regular",      // BMG_FILE_INDEX_REGULAR
    "battle",       // BMG_FILE_INDEX_BATTLE
    "test",         // BMG_FILE_INDEX_TEST
    "default",      // BMG_FILE_INDEX_DEFAULT
    "sea",          // BMG_FILE_INDEX_SEA
    "kaitei",       // BMG_FILE_INDEX_KAITEI
    "main_isl",     // BMG_FILE_INDEX_MAIN_ISL
    "brave",        // BMG_FILE_INDEX_BRAVE
    "flame",        // BMG_FILE_INDEX_FLAME
    "wind",         // BMG_FILE_INDEX_WIND
    "frost",        // BMG_FILE_INDEX_FROST
    "power",        // BMG_FILE_INDEX_POWER
    "wisdom",       // BMG_FILE_INDEX_WISDOM
    "ghost",        // BMG_FILE_INDEX_GHOST
    "hidari",       // BMG_FILE_INDEX_HIDARI
    "sennin",       // BMG_FILE_INDEX_SENNIN
    "ship",         // BMG_FILE_INDEX_SHIP
    "collect",      // BMG_FILE_INDEX_COLLECT
    "mainselect",   // BMG_FILE_INDEX_MAINSELECT
    "field",        // BMG_FILE_INDEX_FIELD
    "wisdom_dngn",  // BMG_FILE_INDEX_WISDOM_DNGN
    "demo",         // BMG_FILE_INDEX_DEMO
    "battleCommon", // BMG_FILE_INDEX_BATTLECOMMON
    "bossLast1",    // BMG_FILE_INDEX_BOSSLAST1
    "bossLast3",    // BMG_FILE_INDEX_BOSSLAST3
    "torii",        // BMG_FILE_INDEX_TORII
    "myou",         // BMG_FILE_INDEX_MYOU
    "kojima1",      // BMG_FILE_INDEX_KOJIMA1
    "kojima2",      // BMG_FILE_INDEX_KOJIMA2
    "kojima5",      // BMG_FILE_INDEX_KOJIMA5
    "kojima3",      // BMG_FILE_INDEX_KOJIMA3
    "staff",        // BMG_FILE_INDEX_STAFF
    "kaitei_F",     // BMG_FILE_INDEX_KAITEI_F
};

THUMB void BMGFileInfo::func_020371b4() {
    this->pHeader = NULL;
    this->pINF1   = NULL;
    this->pFLW1   = NULL;
    this->pFLI1   = NULL;
    this->pDAT1   = NULL;
    this->mUnk_14 = NULL;
    this->mUnk_18 = 0;
}

// non-matching (equivalent)
THUMB u16 BMGFileInfo::func_020371c8(u32 *pFile, s16 unk_18) {
    SectionBase *pSection;
    u16 groupId;
    u32 i;
    BMGHeader *pHeader = (BMGHeader *) pFile;

    groupId       = -1;
    this->mUnk_14 = pHeader;
    this->mUnk_18 = unk_18;
    this->pHeader = pHeader;
    pSection      = (SectionBase *) ((u8 *) pFile + sizeof(BMGHeader));

    for (i = 0; i < this->mUnk_14->numSections; i++) {
        switch (pSection->tag) {
            case BMG_TAG_MID1:
                // unused
                break;
            case BMG_TAG_STR1:
                // unused
                break;
            case BMG_TAG_INF1:
                this->pINF1 = (SectionINF1 *) pSection;
                groupId     = this->pINF1->groupId;
                break;
            case BMG_TAG_DAT1:
                //! TODO: fake?
                this->pDAT1 = (SectionDAT1 *) (pSection + 1);
                break;
            case BMG_TAG_FLW1:
                this->pFLW1 = (SectionFLW1 *) pSection;
                break;
            case BMG_TAG_FLI1:
                this->pFLI1 = (SectionFLI1 *) pSection;
                break;
        }

        pSection = (SectionBase *) ((u8 *) pSection + pSection->size);
    }

    return groupId;
}

ARM EntryINF1 *BMGFileInfo::func_02037258(u16 param_2) {
    if (this->pINF1 != NULL) {
        if (param_2 < this->pINF1->numEntries) {
            return (EntryINF1 *) ((u32) & this->pINF1->entries + this->pINF1->entrySize * param_2);
        }

        return NULL;
    }

    return NULL;
}

// non-matching
ARM u16 BMGFileInfo::func_0203728c(unk32 param_2) {
    SectionFLI1 *pFLI1;
    EntryFLI1 *entry;
    u32 i;
    u16 j;

    pFLI1 = this->pFLI1;

    if (pFLI1 == NULL) {
        return -1;
    }

    i = 0;
    do {
        entry = &pFLI1->entries[i];

        if (param_2 > entry->msgFlowID) {
            return entry->msgFlowNodeIndex;
        }

        // i++;
        j = i + 1;
        i = j & 0xFFFF;
    } while (j < pFLI1->numEntries);

    // for (i = 0; (u16)i < pFLI1->numEntries; i++) {
    //     if (param_2 == pFLI1->entries[i].msgFlowID) {
    //         return pFLI1->entries[i].msgFlowNodeIndex;
    //     }
    // }

    return -1;
}

THUMB void BMGGroups::func_020372f0(BMGFileIndex eIndex, s16 unk_18) {
    char bmgPath[64];
    BMGFileInfo bmgFile;
    u32 *pFile;
    u16 groupId;

    // path to the bmg file for the current language (i.e.: "English/Message/battle.bmg")
    strcpy(bmgPath, func_0202ab38(&data_027e05f4));
    strcat(bmgPath, "/Message/");
    strcat(bmgPath, sBMGFileNames[eIndex]);
    strcat(bmgPath, ".bmg");

    pFile = data_027e0ce0[1];

    if (unk_18 != 1) {
        if (unk_18 != 4) {
            pFile = data_027e0ce0[0];
        } else {
            pFile = data_ov002_0210016c;
        }
    } else {
            // pFile = data_027e0ce0[0];
    }

    // get file data
    pFile = func_0202d550(0xC4, pFile, bmgPath, 0, 0x10, 0);

    // initialize file info
    bmgFile.groupId = 0;
    bmgFile.func_020371b4();

    // assign sections and set the file info in the groups entries
    groupId                        = bmgFile.func_020371c8(pFile, unk_18);
    this->entries[groupId]         = bmgFile;
    this->entries[groupId].groupId = groupId;
}

THUMB void BMGGroups::func_020373b4(s16 unk_18) {
    s32 i;

    for (i = 0; i < this->numEntries; i++) {
        if (this->entries[i].mUnk_18 == unk_18) {
            func_0202d590(this->entries[i].mUnk_14);
            this->entries[i].func_020371b4();
        }
    }
}

ARM u32 BMGGroups::func_020373ec(unk32 param_2) {
    u16 dVar1;
    u16 uVar2;
    s32 i;

    dVar1 = -1;

    for (i = 0; i < this->numEntries; i++) {
        uVar2 = this->entries[i].func_0203728c(param_2);

        if (uVar2 != dVar1) {
            return uVar2 | i << 0x10;
        }
    }

    return -1;
}
