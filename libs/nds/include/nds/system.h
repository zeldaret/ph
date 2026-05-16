#ifndef _NDS_SYSTEM_H
#define _NDS_SYSTEM_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

// Reset Parameter Buffer (BIOS reset information)
// Not documented on gbatek, located at 0x027ffc20
// Contains reset state information - value 2 indicates specific reset condition
#define HW_RESET_PARAMETER_BUF (*(s32 *) 0x027ffc20)

#ifdef __cplusplus
}
#endif

#endif
