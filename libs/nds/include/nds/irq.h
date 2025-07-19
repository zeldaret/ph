#ifndef _NDS_IRQ_H
#define _NDS_IRQ_H

#include "global.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

u32 OS_DisableInterrupts_Irq();
void OS_RestoreInterrupts(u32);

#ifdef __cplusplus
}
#endif

#endif
