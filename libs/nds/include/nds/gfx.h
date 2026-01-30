#ifndef _NDS_GFX_H
#define _NDS_GFX_H

#include "global.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define GFX_FIFO_SWAP_BUFFERS (*(volatile u32 *) 0x04000540)
#define GFX_FIFO_VIEWPORT (*(volatile u32 *) 0x04000580)
#define REG_GFX_RAM_COUNT (*(volatile u16 *) 0x04000604)
#define REG_GFX_RAM_COUNT_2 (*(volatile u16 *) 0x04000606)
#define REG_VCOUNT (*(volatile u16 *) 0x04000006)

#ifdef __cplusplus
}
#endif

#endif
