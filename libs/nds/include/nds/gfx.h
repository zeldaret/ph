#ifndef _NDS_GFX_H
#define _NDS_GFX_H

#include "global.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define REG_GFX_FIFO (*(volatile u32 *) 0x04000400)
#define GFX_FIFO_MTX_MODE (*(volatile u32 *) 0x04000440)
#define GFX_FIFO_MTX_PUSH (*(volatile u32 *) 0x04000444)
#define GFX_FIFO_MTX_POP (*(volatile u32 *) 0x04000448)
#define GFX_FIFO_MTX_STORE (*(volatile u32 *) 0x0400044c)
#define GFX_FIFO_MTX_RESTORE (*(volatile u32 *) 0x04000450)
#define GFX_FIFO_MTX_IDENTITY (*(volatile u32 *) 0x04000454)
#define GFX_FIFO_SWAP_BUFFERS (*(volatile u32 *) 0x04000540)
#define GFX_FIFO_VIEWPORT (*(volatile u32 *) 0x04000580)
#define REG_GFX_RAM_COUNT (*(volatile u16 *) 0x04000604)
#define REG_GFX_RAM_COUNT_2 (*(volatile u16 *) 0x04000606)
#define REG_VCOUNT (*(volatile u16 *) 0x04000006)

#ifdef __cplusplus
}
#endif

#endif
