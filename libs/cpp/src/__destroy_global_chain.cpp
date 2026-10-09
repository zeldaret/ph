#include <stddef.h>

typedef void (*DestructorFunc)(void *);

typedef struct RuntimeDestructorChain {
    RuntimeDestructorChain *next;
    DestructorFunc dtor;
    void *object;
} RuntimeDestructorChain;

extern RuntimeDestructorChain *__global_destructor_chain;

extern "C" void __destroy_global_chain(void) {
    RuntimeDestructorChain *gdc;

    while ((gdc = __global_destructor_chain) != NULL) {
        __global_destructor_chain = gdc->next;
        ((void (*)(void *, short))gdc->dtor)(gdc->object, -1);
    }
}
