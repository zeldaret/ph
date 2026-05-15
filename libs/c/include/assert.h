#ifndef _C_ASSERT_H
#define _C_ASSERT_H

#define assert(condition) (void) ((condition) || __assert_failed(#condition, __FILE__, __FUNCTION__, __LINE__));

void __assert_failed(char *condition, char *fileName, char *functionName, int lineNumber);

#endif
