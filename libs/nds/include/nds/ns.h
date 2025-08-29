#ifndef _NDS_NS_H
#define _NDS_NS_H

#include "global.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NsFile {
    /* 00 */ u32 magic;
    /* 04 */ u16 bom;
    /* 06 */ u16 version;
    /* 08 */ u32 size;
    /* 0c */ u16 headerSize;
    /* 0e */ u16 numSections;
    /* 10 */ u32 sectionOffsets[];
    /* 10 + 4 * numSections */
} NsFile;

typedef struct NsName {
    char name[16];
} NsName;

typedef struct NsInfoBlock {
    /* 00 */ u8 dummy;
    /* 01 */ u8 count;
    /* 02 */ u16 size;
    /* 04 */ u16 unknownOffset;
    /* 06 */ u16 listOffset;
    /* 08 */ u32 unknownNum;
    /* 0c */ u32 unknown[]; // u32[count]
    // u16 elementSize;
    // u16 dataSectionSize;
    // T data[count];
    // NsName data[count];
} NsInfoBlock;
#define NS_INFO_BLOCK_ELEMENT_SIZE(section) *(u16 *) ((u32) (section) + (section)->listOffset)
#define NS_INFO_BLOCK_DATA_SECTION_SIZE(section) *(u16 *) ((u32) (section) + (section)->listOffset + 2)
#define NS_INFO_BLOCK_DATA(section, i)                                                               \
    *(u16 *) ((u32) (section) + (section)->listOffset + 4 + i * NS_INFO_BLOCK_ELEMENT_SIZE(section))
#define NS_INFO_BLOCK_NAME(section, info, i)                                                                      \
    *(u16 *) ((u32) (section) + (section)->listOffset + 4 + (info)->count * NS_INFO_BLOCK_ELEMENT_SIZE(section) + \
              i * sizeof(NsName))

typedef struct NsJntSection {
    /* 00 */ u32 magic;
    /* 04 */ u32 size;
    /* 08 */ NsInfoBlock animations;
} NsJntSection;

typedef struct NsAnimation {
    /* 00 */ u32 magic;
    /* 04 */ u16 numFrames;
    /* 06 */ u16 numTracks;
    /* 08 */ u32 unknown;
    /* 0c */ u32 pivotDataOffset;
    /* 10 */ u32 basisMatricesOffset;
    /* 14 */ u16 trackOffsets[]; // u16[numTracks]
} NsAnimation;

NsJntSection *FindJntSection(NsFile *file);
NsAnimation *GetJntAnimation(NsJntSection *section, u32 index);

#ifdef __cplusplus
}
#endif

#endif
