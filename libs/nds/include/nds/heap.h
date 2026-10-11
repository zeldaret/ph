#include "global.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Heap_Region_ {
    /* 00 */ void *start;
    /* 04 */ void *end;
    /* 08 */
} Heap_Region;

typedef struct Heap_LinkedObject_ {
    /* 00 */ void *prev;
    /* 04 */ void *next;
    /* 08 */
} Heap_LinkedObject;

typedef struct Heap_LinkedList_ {
    /* 00 */ void *head;
    /* 04 */ void *tail;
    /* 08 */ u16 numElements;
    /* 0a */ u16 offset;
    /* 0c */
} Heap_LinkedList;

typedef struct Heap_Header_ {
    /* 00 */ u32 stamp;
    /* 04 */ Heap_LinkedObject link;
    /* 0c */ Heap_LinkedList children;
    /* 18 */ void *startAddr;
    /* 1c */ void *endAddr;
    /* 20 */ u32 flags;
    /* 24 */
} Heap_Header;

typedef struct Heap_EXPHBlockHeader_ {
    /* 00 */ u16 stamp;
    /* 02 */ u16 flags;
    /* 04 */ u32 size;
    /* 08 */ struct Heap_EXPHBlockHeader_ *prev;
    /* 0c */ struct Heap_EXPHBlockHeader_ *next;
    /* 20 */
} Heap_EXPHBlockHeader;

typedef struct Heap_EXPHBlockList_ {
    /* 00 */ Heap_EXPHBlockHeader *head;
    /* 04 */ Heap_EXPHBlockHeader *tail;
    /* 08 */
} Heap_EXPHBlockList;

typedef struct Heap_EXPHHeader_ {
    /* 00 */ Heap_EXPHBlockList freeBlocks;
    /* 08 */ Heap_EXPHBlockList usedBlocks;
    /* 10 */ u16 id;
    /* 12 */ u16 flags;
    /* 14 */
} Heap_EXPHHeader;

typedef struct Heap_FRMHState_ {
    /* 00 */ u32 id;
    /* 04 */ void *head;
    /* 08 */ void *tail;
    /* 0c */ struct Heap_FRMHState_ *prev;
    /* 10 */
} Heap_FRMHState;

typedef struct Heap_FRMHHeader_ {
    /* 00 */ void *head;
    /* 04 */ void *tail;
    /* 08 */ Heap_FRMHState *state;
    /* 0c */
} Heap_FRMHHeader;

typedef struct Heap_UNTHBlockHeader_ {
    /* 00 */ struct Heap_UNTHBlockHeader_ *next;
    /* 04 */
} Heap_UNTHBlockHeader;

typedef struct Heap_UNTHBlockList_ {
    /* 00 */ Heap_UNTHBlockHeader *head;
    /* 04 */
} Heap_UNTHBlockList;

typedef struct Heap_UNTHHeader_ {
    /* 00 */ Heap_UNTHBlockList freeBlocks;
    /* 04 */ u32 blockSize;
    /* 08 */
} Heap_UNTHHeader;

// function declarations
void *Heap_EXPHNew(Heap_Header *heap, u32 size, int alignment);
void Heap_EXPHFreeBlock(Heap_Header *heap, void *memBlock);
void Heap_InitHeader(Heap_Header *pHeapHd, u32 signature, void *heapStart, void *heapEnd, u16 optFlag);
void Heap_DestroyInternal(Heap_Header *pHeapHd);
void Heap_InitList(Heap_LinkedList *list, u16 offset);
void Heap_ListAppend(Heap_LinkedList *list, void *object);
void Heap_ListRemove(Heap_LinkedList *list, void *object);
void *Heap_ListNext(Heap_LinkedList *list, void *object);

#ifdef __cplusplus
}
#endif