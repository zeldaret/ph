#ifndef _C_STDARG_H
#define _C_STDARG_H

extern "C" {
typedef char *va_list;

#define __std(ref) ::std::ref
#define __fourbytealign(n) ((((unsigned long) (n)) + 3U) & ~3U)
#define __va_start(parm) ((__std(va_list))((char *) ((unsigned long) (&parm) & ~3U) + __fourbytealign(sizeof(parm))))

#define va_start(ap, parm) ((ap) = __va_start(parm))
#define va_arg(ap, type) (*(type *) ((ap += __fourbytealign(sizeof(type))) - __fourbytealign(sizeof(type))))
#define va_end(ap) ((void) 0)
}

#if defined(__cplusplus)
namespace std {
    using ::va_list;
};

using std::va_list;
#endif

#endif
