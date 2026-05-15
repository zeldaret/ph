#ifndef _C_STDDEF_H
#define _C_STDDEF_H

#define NULL 0

#ifdef __MWERKS__
typedef unsigned long size_t;
#else
typedef unsigned int size_t;
#endif

#define offsetof(type, member) ((size_t) &((type *) NULL)->member)

#endif
