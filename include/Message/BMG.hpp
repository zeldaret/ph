#pragma once

#include "System/SysNew.hpp"
#include "global.h"
#include "types.h"

#define BMG_MAGIC "MESGbmg1"

enum BMGTag {
    /* "INF1" */ BMG_TAG_INF1 = '1FNI',
    /* "FLW1" */ BMG_TAG_FLW1 = '1WLF',
    /* "FLI1" */ BMG_TAG_FLI1 = '1ILF',
    /* "DAT1" */ BMG_TAG_DAT1 = '1TAD',
    /* "MID1" */ BMG_TAG_MID1 = '1DIM',
    /* "STR1" */ BMG_TAG_STR1 = '1RTS',
};

enum BMGEncoding {
    /* 1 */ BMG_ENCODING_CP1252 = 1,
    /* 2 */ BMG_ENCODING_UTF16_BE,
    /* 3 */ BMG_ENCODING_SHIFT_JIS,
    /* 4 */ BMG_ENCODING_UTF8,
    /* 5 */ BMG_ENCODING_MAX
};

typedef enum BMGFileIndex {
    /*  0 */ BMG_FILE_INDEX_SYSTEM,
    /*  1 */ BMG_FILE_INDEX_REGULAR,
    /*  2 */ BMG_FILE_INDEX_BATTLE,
    /*  3 */ BMG_FILE_INDEX_TEST,
    /*  4 */ BMG_FILE_INDEX_DEFAULT,
    /*  5 */ BMG_FILE_INDEX_SEA,
    /*  6 */ BMG_FILE_INDEX_KAITEI,
    /*  7 */ BMG_FILE_INDEX_MAIN_ISL,
    /*  8 */ BMG_FILE_INDEX_BRAVE,
    /*  9 */ BMG_FILE_INDEX_FLAME,
    /* 10 */ BMG_FILE_INDEX_WIND,
    /* 11 */ BMG_FILE_INDEX_FROST,
    /* 12 */ BMG_FILE_INDEX_POWER,
    /* 13 */ BMG_FILE_INDEX_WISDOM,
    /* 14 */ BMG_FILE_INDEX_GHOST,
    /* 15 */ BMG_FILE_INDEX_HIDARI,
    /* 16 */ BMG_FILE_INDEX_SENNIN,
    /* 17 */ BMG_FILE_INDEX_SHIP,
    /* 18 */ BMG_FILE_INDEX_COLLECT,
    /* 19 */ BMG_FILE_INDEX_MAINSELECT,
    /* 20 */ BMG_FILE_INDEX_FIELD,
    /* 21 */ BMG_FILE_INDEX_WISDOM_DNGN,
    /* 22 */ BMG_FILE_INDEX_DEMO,
    /* 23 */ BMG_FILE_INDEX_BATTLECOMMON,
    /* 24 */ BMG_FILE_INDEX_BOSSLAST1,
    /* 25 */ BMG_FILE_INDEX_BOSSLAST3,
    /* 26 */ BMG_FILE_INDEX_TORII,
    /* 27 */ BMG_FILE_INDEX_MYOU,
    /* 28 */ BMG_FILE_INDEX_KOJIMA1,
    /* 29 */ BMG_FILE_INDEX_KOJIMA2,
    /* 30 */ BMG_FILE_INDEX_KOJIMA5,
    /* 31 */ BMG_FILE_INDEX_KOJIMA3,
    /* 32 */ BMG_FILE_INDEX_STAFF,
    /* 33 */ BMG_FILE_INDEX_KAITEI_F,
    /* 34 */ BMG_FILE_INDEX_MAX
} BMGFileIndex;

struct SectionBase {
    /* 00 */ u32 tag; // "INF1", "DAT1", ...
    /* 04 */ u32 size; // the size of the section, aligned to 32
    /* 08 */
};

struct BMGHeader {
    /* 00 */ char magic[8]; // always "MESGbmg1"
    /* 08 */ u32 fileSize; // the size of the BMG file
    /* 0c */ u32 numSections; // the number of sections (INF1, DAT1, ...)
    /* 10 */ u8 encoding; // see `BMGEncoding`
    /* 11 */ u8 unk_11[0xF]; // alignment padding?
    /* 20 */
};

struct EntryINF1 {
    /* 00 */ u32 stringOffset; // relative to the end of the DAT1 header (where actual strings are in DAT1)
    /* 04 */ u8 mUnk_04; // flags/attributes? (+0x04 to +0x06)
    /* 05 */ u8 mUnk_05;
    /* 06 */ u8 mUnk_06;
    /* 07 */ u8 mUnk_07;
    /* 08 */
};

struct SectionINF1 {
    /* 00 */ SectionBase base;
    /* 08 */ u16 numEntries;
    /* 0a */ u16 entrySize;
    /* 0c */ u16 groupId;
    /* 0e */ u8 colorId;
    /* 0f */ u8 mUnk_0F[0x1]; // alignment padding?
    /* 10 */ EntryINF1 *entries;
    /* 14 */
};

enum NodeType {
    /* 1 */ NODE_TYPE_MSG    = 1,
    /* 2 */ NODE_TYPE_BRANCH = 2,
    /* 3 */ NODE_TYPE_EVENT  = 3,
    /* 4 */
};

struct NodeMsg {
    /* 00 (type) */
    /* 01 */ u8 bmgFileIndex; // index into sBMGFiles
    /* 02 */ u16 infIndex; // index of INF1 entry
    /* 04 */ u16 nextFlwIndex; // index of FLW1 entry, 0xFFFF stops the conversation
    /* 06 */ u16 unused_0x6;
    /* 08 */
};

struct NodeBranch {
    /* 00 (type) */
    /* 01 */ u8 numQueryResults;
    /* 02 */ u16 queryIndex; // index of the query function to run
    /* 04 */ u16 queryParams; // the argument to use in the function
    /* 06 */ u16 nextNodeTableBaseIdx; // the index of the second section table to be used next in the conversation.
    /* 08 */
};

struct NodeEvent {
    /* 00 (type) */
    /* 01 */ u8 eventIndex; // index of the event function to run
    /* 02 */ u16 nextNodeTableIndex; // the index of the second section table to be used next in the conversation.
    /* 04 */ union { // the argument to use in the function
        u32 eventParams32;
        u16 eventParams16[2];
        u8 eventParams8[4];
    };
    /* 08 */
};

struct FLW1Node {
    /* 00 */ u8 type; // see NodeType
    /* 01 */ union {
        NodeMsg msg;
        NodeBranch branch;
        NodeEvent event;
    };
    /* 08 */
};

struct FLW1Header {
    /* 00 */ SectionBase base;
    /* 04 */ u16 numNodes;
    /* 08 */ u16 numFlwEntries;
    /* 0c */ u32 padding_0xC;
    /* 10 */
};

struct SectionFLW1 {
    /* 00 */ FLW1Header header;
    /* 10 */ FLW1Node *nodes; // real size is `FLW1Header.numNodes * sizeof(FLW1Node)`
    /* 14 */ u16 *flwEntries; // "indirection table", real size is `FLW1Header.numFlwEntries * sizeof(u16)`
    /* 18 */ s8 *bmgFileIndices;
    /* 1c */
};

struct EntryFLI1 {
    /* 00 */ u32 msgFlowID;
    /* 04 */ u16 msgFlowNodeIndex;
    /* 06 */ u16 padding_0x6;
    /* 08 */
};

struct SectionFLI1 {
    /* 00 */ SectionBase base;
    /* 08 */ u16 numEntries;
    /* 0a */ u16 entrySize;
    /* 0c */ u32 mUnk_0c; // always zero?
    /* 10 */ EntryFLI1 *entries;
    /* 14 */
};

struct BMGFileInfo {
    /* 00 */ BMGHeader *pHeader; // pointer to the file's header
    /* 04 */ SectionINF1 *pINF1; // pointer to the data informations (INF -> informations)
    /* 08 */ SectionFLW1 *pFLW1; // pointer to the message flow data (FLW -> flow)
    /* 0c */ SectionFLI1 *pFLI1; // pointer to the message flow index table (FLI -> flow index table)
    /* 10 */ char *pDAT1; // pointer to the data, unlike the others this one points directly to the strings
    /* 14 */ u32 *pFile;
    /* 18 */ s16 mUnk_18; // stores `func_020372f0`->param_3 value (currently undetermined purpose)
    /* 1a */ s16 groupId; // stores the group id
    /* 1c */

    void func_020371b4();
    u16 func_020371c8(u32 *pFile, s16 unk_18);
    EntryINF1 *func_02037258(u16 param_2);
    u16 func_0203728c(unk32 param_2);
};

class BMGGroups : public SysObject {
public:
    /* 00 */ BMGFileInfo *entries; // accessed with `groupId`
    /* 04 */ s32 numEntries;
    /* 08 */

    BMGGroups();
    ~BMGGroups();
    void func_020372f0(BMGFileIndex eIndex, s16 unk_18);
    void func_020373b4(s16 unk_18);
    u32 func_020373ec(unk32 param_2);
};
