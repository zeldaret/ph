extern "C" {
#include <string.h>
}

#include "global.h"
#include "types.h"

THUMB void func_0202d3bc(int param_1, unsigned int *param_2, char *path, int param_4, int param_5, bool param_6, int param_7,
                         int param_8) {
  /*
    bool bVar1;
    dword dVar2;
    int iVar3;
    dword *pdVar4;
    uint uVar5;
    dword local_64;
    astruct_3 aStack_60;
    dword *pdStack_18;

    pdVar4 = (dword *)(uint)param_4;
    *(char **)PTR_DWORD_0202d46c = path;
    local_64 = DWORD_0202d470;
    if (pdVar4 != (dword *)0x0) {
      *pdVar4 = DWORD_0202d470;
    }
    pdStack_18 = pdVar4;
    astruct_3(&aStack_60);
    bVar1 = FUN_02041e7c(&aStack_60,path);
    if (bVar1) {
      uVar5 = aStack_60._40_4_ - aStack_60._36_4_;
      if (uVar5 != 0) {
        if (param_6) {
          local_64 = FUN_0202d23c(&aStack_60,param_1,param_2,param_5,0,uVar5,pdVar4,param_7,param_8);
        }
        else {
          if (param_7 == 0) {
            dVar2 = FUN_0202d1c4(param_1,param_2,uVar5,param_5);
          }
          else {
            dVar2 = 0;
            if (uVar5 <= param_8) {
              dVar2 = param_7;
            }
          }
          if (dVar2 != 0) {
            iVar3 = astruct_3::FUN_02041fa4(&aStack_60,dVar2,uVar5);
            if (iVar3 == -1) {
              if (param_7 == 0) {
                FUN_0202d21c(dVar2);
              }
            }
            else {
              local_64 = dVar2;
              if (pdVar4 != (dword *)0x0) {
                *pdVar4 = uVar5;
              }
            }
          }
        }
      }
      astruct_3::FUN_02041ea8(&aStack_60);
    }

    return local_64;*/
}

THUMB void func_0202d550(int param_1, unsigned int *param_2, char *path, int param_4, int param_5, bool param_6) {
    func_0202d3bc(param_1, param_2, path, param_4, param_5, param_6, 0, 0);
}
