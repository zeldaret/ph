#include "Actor/Character/ActorCharacter.hpp"

//    Renombrar cuando se pueda:
//        mUnk_010 → mMapPosX
//        mUnk_011 → mMapPosY
//        mUnk_012 → mTargetAngle

extern "C" void func_ov005_02100ae0(void* param1, void* param2, u32 param3);
extern "C" void func_ov014_021460b8(void* thisPtr);
extern "C" bool func_ov014_0214610c(void* thisPtr);
extern "C" void func_ov014_0214c5c8(unk32 p0, unk32 p1, unk32 p2, unk32 p3, unk32 p4);
extern "C" unk32 func_ov014_0214c948(unk32 p0, Vec3p* p1, u16* p2, unk32 p3, unk32 p4);

extern "C" unk32 data_ov014_02153ed4;
extern "C" unk32 data_ov014_02159994;

#define static

//have to finish
ActorGenericCharacter::ActorGenericCharacter() {
    const unk32* ptrA = &data_ov014_02153ed4;
    unk32 valA = *ptrA;

    mUnk_474 = this;
    mUnk_478 = &data_ov014_02159994;
    mUnk_47c = valA;

    mUnk_484 = 0;
    mUnk_488 = 0;
    mUnk_48c = 0;
    mUnk_490 = 0;

    mUnk_492 = 0x3c;
    mUnk_494 = 0x78;
    mUnk_496 = 0x5;
    mUnk_498 = 0xa;
}


bool ActorGenericCharacter::Init() {
    ActorCharacter::Init();

    mUnk_120 = u8(-1);

    switch (mUnk_020.mUnk_00[0]) {
        case 0: mUnk_46c[1] = 0; break;
        case 1: mUnk_46c[1] = 1; break;
        case 2: mUnk_46c[1] = 2; break;
        case 3: mUnk_46c[1] = 3; break;
        case 4: mUnk_46c[1] = 4; break;
        case 5: mUnk_46c[1] = 5; break;
    }

    if (!vfunc_f4()) {
        return false;
    }

    ActorGenericCharacter::func_ov014_02147ce8(&mUnk_474, 0);

    if (ActorCharacter::func_ov014_02144e58() || !ActorCharacter::func_ov014_02144e28()) {
        func_ov014_02147950();
    }

    return true;
}

void ActorGenericCharacter::vfunc_68(unk32, UnkStruct_020397f8*) {
    ActorGenericCharacter::func_ov014_02147d44(&mUnk_474, 2);
}

bool ActorGenericCharacter::vfunc_c0() {
    return ActorCharacterBase::vfunc_c0() || mUnk_484 == 5;
}

void ActorGenericCharacter::vfunc_c4() {
    if (ActorCharacter::func_ov014_02144e28() && !ActorCharacter::func_ov014_02144e58()) {
        ActorGenericCharacter::func_ov014_02147d44(&mUnk_474, 0);
    }

    if ((s32)mInactive >= 1) {
        if (mUnk_46c[1] == 2 && mUnk_020.mUnk_00[2] == 0 && ActorCharacter::func_ov014_02144e3c()) {
            mAlive = false;
            return;
        }

        if (mUnk_484 != 0) {
            mAngle = mUnk_012;
            mUnk_1d8.mUnk_020.mUnk_8d = 0; 
            return;
        }
    }

    mPrevPos = mPos;

    ((ActorGenericCharacter*)&mUnk_474)->func_ov014_02147c98();
    
    mUnk_1d8.func_ov014_02145cac();
    
    if (mUnk_484 != 0) {
        func_ov014_02145178();
    }
}

void ActorGenericCharacter::func_ov014_02147940() {
    mVisible = false;
    mUnk_12c = 0;
}

void ActorGenericCharacter::func_ov014_02147950() {
    mVisible = true;
    mUnk_12c = 5;

    switch (mUnk_46c[1]) {
        case 0:
            func_ov014_02147ce8(&mUnk_474, mUnk_46c[1]);
            break;

        case 1:
            if (ActorCharacter::func_ov014_02144e3c()) { mAlive = false; return; }
            func_ov014_02147ce8(&mUnk_474, 3);
            break;

        case 2:
            if (ActorCharacter::func_ov014_02144e3c()) { mAlive = false; return; }
            func_ov014_02147ce8(&mUnk_474, 1);
            break;

        case 3:
            if (ActorCharacter::func_ov014_02144e3c()) {
                func_ov014_02147c00();
                func_ov014_02147ce8(&mUnk_474, 6);
            } else {
                func_ov014_02147ce8(&mUnk_474, 1);
            }
            break;

        case 4:
            if (ActorCharacter::func_ov014_02144e3c()) { mAlive = false; return; }
            func_ov014_02147ce8(&mUnk_474, 1);
            break;

        default:
            func_ov014_02147ce8(&mUnk_474, 1);
            break;
    }
}

void ActorGenericCharacter::vfunc_80() {
    if (mUnk_484 == 0 && 
        (ActorCharacter::func_ov014_02144e58() || !ActorCharacter::func_ov014_02144e28())) {
        func_ov014_02147950();
    }
    ActorCharacter::vfunc_80();
}

void ActorGenericCharacter::vfunc_84() {
    ActorCharacter::vfunc_84();

    if (!ActorCharacter::func_ov014_02144e28() || ActorCharacter::func_ov014_02144e58()) {
        return;
    }

    ActorGenericCharacter::func_ov014_02147d44(&mUnk_474, 0);
}

void ActorGenericCharacter::func_ov014_02147ae8() {
    func_ov014_0214c5c8(
        (unk32)(this + 1),
        (unk32)this,
        (u8)mUnk_020.mUnk_00[2],
        mUnk_496,
        mUnk_498
    );
}

bool ActorGenericCharacter::func_ov014_02147b18() {
    Vec3p tempVector;

    typedef void (*AnimFunc)(void*, Vec3p*);
    void* animPtr = *(void**)((u8*)this + 0x1f4);
    unk32* vtable = *(unk32**)animPtr;
    ((AnimFunc)vtable[13])(animPtr, &tempVector);

    void* animPtr2 = *(void**)((u8*)this + 0x1f4);

    mUnk_1d8.mUnk_020.func_ov014_0214a92c(
        &tempVector,
        (Vec3p*)((u8*)animPtr2 + 0x48),
        *(s16*)((u8*)animPtr2 + 0x78)
    );

    unk32 result = func_ov014_0214c948(
        (unk32)(this + 1),
        &mPos,
        (u16*)&mAngle,
        mUnk_464,
        0xaab
    );

    func_01fffd04(0);

    return result || mUnk_112; 
}

void ActorGenericCharacter::func_ov014_02147ba0() {
    ActorCharacter::func_ov014_021453f4(mUnk_020.mUnk_0c);
}

bool ActorGenericCharacter::func_ov014_02147bb0() {
    ActorCharacter::func_ov014_02145414(mUnk_460, 0xaab);
    return func_01fffd04(0);
}

unk32 ActorGenericCharacter::func_ov014_02147bd8() {
    ActorCharacter::func_ov014_02145414(mUnk_460, 0xaab);
    func_ov00_020c3094();
    return 0;
}

void ActorGenericCharacter::func_ov014_02147c00() {
    if (!mUnk_430.func_ov000_020c66e4(&mPos, mAngle, mUnk_020.mUnk_0c)) {
        return;
    }

    Vec3p stackTemp;
    
    if (mUnk_430.func_ov000_020c6e30(&stackTemp)) {
        mPos = stackTemp;
    }
}

ActorGenericCharacter::~ActorGenericCharacter() {}
void ActorGenericCharacter::vfunc_f8() {}

void ActorGenericCharacter::func_ov014_02147c98() {
    struct TargetStruct {
        u8 pad0[8];
        void (ActorGenericCharacter::*memberFunc)();
        u8 pad1[8];
    };

    unk32 idx = *(unk32*)&mUnk_010;

    TargetStruct* base = (TargetStruct*)mType;
    TargetStruct& element = base[idx];

    ActorGenericCharacter* self = *reinterpret_cast<ActorGenericCharacter**>(this);
    (self->*element.memberFunc)();

    mRef.index++;
}

typedef void (ActorGenericCharacter::*ActorMemberFunc)();

struct ActorGenericCharacterEntry {
    ActorMemberFunc memberFunc;
    u8 pad[0x10];
};

struct ActorContext {
    ActorGenericCharacter* self;              // 0x00
    ActorGenericCharacterEntry* entries;      // 0x04
    unk32 unk_08;                             // 0x08  <-- Variable desconocida o pad
    unk32 scratch;                            // 0x0C  <-- Colocado exactamente en 0x0C
    unk32 index;                              // 0x10  <-- Exactamente en 0x10
    unk32 mUnk_488;                           // 0x14  <-- Exactamente en 0x14
};

void ActorGenericCharacter::func_ov014_02147ce8(void* param1, unk32 param2) {
    ActorContext* ctx = (ActorContext*)param1;

    ctx->index = param2;
    ctx->mUnk_488 = param2;

    if (ctx->entries[ctx->index].memberFunc) {
        (ctx->self->*ctx->entries[ctx->index].memberFunc)();
    }

    ctx->scratch = 0;
}

struct ActorGenericCharacterStateEntry {
    void (ActorGenericCharacter::*onEnter)();   // 0x00-0x07
    u8 pad[8];                                   // 0x08-0x0f
    void (ActorGenericCharacter::*onExit)();    // 0x10-0x17
};
void ActorGenericCharacter::func_ov014_02147d44(void* param1, unk32 param2) {
    u8* sub = static_cast<u8*>(param1);

    const unk32 oldState = *reinterpret_cast<unk32*>(sub + 0x10);
    const unk32 newState = param2;

    if (oldState == newState) {
        return;
    }

    ActorGenericCharacterStateEntry* table =
        *reinterpret_cast<ActorGenericCharacterStateEntry**>(sub + 0x04);

    if (table[oldState].onExit) {
        ActorGenericCharacter* self =
            *reinterpret_cast<ActorGenericCharacter**>(sub + 0x00);
        (self->*table[oldState].onExit)();
    }

    *reinterpret_cast<unk32*>(sub + 0x14) = *reinterpret_cast<unk32*>(sub + 0x10);
    *reinterpret_cast<unk32*>(sub + 0x10) = newState;

    ActorGenericCharacterStateEntry* table2 =
        *reinterpret_cast<ActorGenericCharacterStateEntry**>(sub + 0x04);

    if (table2[newState].onEnter) {
        ActorGenericCharacter* self =
            *reinterpret_cast<ActorGenericCharacter**>(sub + 0x00);
        (self->*table2[newState].onEnter)();

        *reinterpret_cast<unk32*>(sub + 0x0c) = 0;
    }
}

static void func_ov014_02147df0(ActorGenericCharacter *actor) {
    actor->func_ov014_02147940();
}

void ActorGenericCharacter::func_ov014_02147dfc() {
    if (ActorCharacter::func_ov014_02144e74()) {
        func_ov014_02147950();
    }
}

void ActorGenericCharacter::func_ov014_02147e1c() {
    if (mUnk_488 == 2) {
        mUnk_1d8.func_ov014_02145f0c(0);
    } else {
        mUnk_1d8.func_ov014_02145e48(0);
        
        u8* classBase = (u8*)this;
        ActorCharacter_1d8_230* subStruct = *(ActorCharacter_1d8_230**)(classBase + 0x1e8);
        
        subStruct->mUnk_10 = 0x1000;
    }

    vfunc_b4();
}

void ActorGenericCharacter::func_ov014_02147e64() {
    ActorCharacter::func_ov014_021452b0();
    if (!ActorCharacter::func_ov014_02144e3c()) {
        return;
    }

    if (mUnk_46c[1] == 4) {
        func_ov014_02147d44(&mUnk_474, 5);
    } else if (mUnk_46c[1] == 3) {
        func_ov014_02147d44(&mUnk_474, 4);
    }
}

void ActorGenericCharacter::func_ov014_02147ebc() {
    if (mUnk_488 == 2) func_ov014_021460b8(&mUnk_1d8);
}

static void func_ov014_02147ed8(ActorGenericCharacter* actor) {
    actor->func_ov014_0214591c();
}

struct ExitStruct {
    u32 field00;
    u32 field04;
    u32 field08;
    s32 exitId;
    u16 field10;
    u8  val12;
    u8  val13;
    u8  val14;
    u8  val15;
    u16 pad16;
};

extern void* gMapManager;
extern void* data_027e0d38;

typedef void (*FindExitFunc)(void* self, u32 mapId, ExitStruct* exit);
extern "C" void MapManager_FindExit();   // solo para resolver el simbolo

void ActorGenericCharacter::func_ov014_02147ee4() {
    ActorCharacter::func_ov014_02145318();

    if (!vfunc_bc()) {
        return;
    }

    if (!func_ov014_0214610c(&mUnk_1d8)) {
        return;
    }

    if (ActorCharacter::func_ov014_02144e3c()) {
        if (mUnk_46c[1] == 5) {
            ExitStruct exit;

            exit.field00 = 0x47;
            exit.field04 = 0;
            exit.field08 = 0;
            exit.exitId  = -2;
            exit.field10 = 0;
            exit.val12   = 0xff;
            exit.val13   = 0;
            exit.val14   = 0;
            exit.val15   = 0;

            void* manager   = gMapManager;
            const u32 mapId = mUnk_020.mUnk_00[2];

            ((FindExitFunc)MapManager_FindExit)(manager, mapId, &exit);

            func_ov005_02100ae0(data_027e0d38, &exit, 1);
        }
    }

    func_ov014_02147d44(&mUnk_474, mUnk_488);
}

void ActorGenericCharacter::func_ov014_02147fbc() {
    s32* fields = (s32*)((u8*)&mUnk_1d8.mUnk_020 + 0x248 - 0x1d8);
    
    fields[0] = -1;
    fields[1] = -1;
}

// 1. Definimos el objeto generador con sus campos nativos de 64 bits
struct RandomContext {
    u64 seed;
    u64 multiplier;
    u64 increment;
};

extern u32 gRandom[6];

void ActorGenericCharacter::func_ov014_02147fcc(){
    if ((u8)mUnk_490 != 0) {
        mUnk_1d8.func_ov014_02145e48(1);

        ActorCharacter_1d8_230* subStruct = *(ActorCharacter_1d8_230**)((u8*)this + 0x1e8);
        subStruct->mUnk_10 = 0x1000;

        func_ov014_02147ae8();
    } else {
        ActorCharacter_1d8* d8 = &mUnk_1d8;

        s32 idx = (s32)d8->mUnk_248.mUnk_08;
        s32 v   = (s32)d8->mUnk_248.mUnk_00[idx];

        if (v != -1) {
            d8->func_ov014_02145f0c(0);
        } else {
            d8->func_ov014_02145e48(0);

            ActorCharacter_1d8_230* subAnim = *(ActorCharacter_1d8_230**)((u8*)d8 + 0x10);
            subAnim->mUnk_10 = 0x1000;
        }

        *(u32*)((u8*)this + 0x480) = 0;

        s32 start = (s16)mUnk_492;
        s32 end   = (s16)mUnk_494;
        s32 count = (end - start) + 1;

        u32 result = (u32)start;

        if (count > 0) {
            u32* rnd = gRandom;

            u32 stateLow  = rnd[0];
            u32 stateHigh = rnd[1];
            u32 multLow   = rnd[2];
            u32 multHigh  = rnd[3];
            u32 incLow    = rnd[4];
            u32 incHigh   = rnd[5];

            u64 prod = static_cast<u64>(multLow) * stateLow;
            u32 prodLow  = static_cast<u32>(prod);
            u32 prodHigh = static_cast<u32>(prod >> 32);

            prodHigh += multLow * stateHigh;
            prodHigh += multHigh * stateLow;

            u32 newLow  = prodLow + incLow;
            u32 carry   = (newLow < prodLow) ? 1 : 0;
            u32 newHigh = prodHigh + incHigh + carry;

            rnd[0] = newLow;
            rnd[1] = newHigh;

            u32 randOffset = static_cast<u32>(
                (static_cast<u64>(newHigh) * static_cast<u32>(count)) >> 32
            );

            result = static_cast<u32>(static_cast<s32>(start) + static_cast<s32>(randOffset));
        }

        mUnk_48c = result;
    }

    vfunc_b4();
}


void ActorGenericCharacter::func_ov014_021480dc() {
    if (*(u8*)&mUnk_490 != 0) {
        if (func_ov014_02147b18()) {
            mUnk_490 = 0;
            func_ov014_02147fcc();
        }
        return;
    }

    ActorCharacter::func_ov014_021452b0();

    if (*(unk32*)((u8*)this + 0x480) <= mUnk_48c) {
        return;
    }

    mUnk_490 = 1;
    func_ov014_02147fcc();
}

void ActorGenericCharacter::func_ov014_02148130() {
    mUnk_490 = 0;
}

void ActorGenericCharacter::func_ov014_0214813c() {
    mUnk_1d8.func_ov014_02145e48(1);

    ActorCharacter_1d8_230* subStruct = *(ActorCharacter_1d8_230**)((u8*)this + 0x1e8);
    subStruct->mUnk_10 = 0x1000;

    func_ov014_02147ba0();
}

void ActorGenericCharacter::func_ov014_02148168() {
    func_ov014_02147bb0();
    if (!func_ov014_02145508()) return;
    func_ov014_02147d44(&mUnk_474, 6);
}

void ActorGenericCharacter::func_ov014_02148198() {
    mUnk_1d8.func_ov014_02145e48(1);

    // Forzamos el calculo estricto del byte 0x1e8 basándonos en la direccion de mUnk_1d8
    ActorCharacter_1d8_230* subStruct = *(ActorCharacter_1d8_230**)((u8*)&mUnk_1d8 + 0x10);
    subStruct->mUnk_10 = 0x1000;

    func_ov014_02147ba0();
    ActorCharacter::func_ov014_02144d94();
}

void ActorGenericCharacter::func_ov014_021481cc() {
    func_ov014_02147bd8();

    if (!func_ov014_02145508()) {
        return;
    }

    ActorCharacter::func_ov014_02144dec();

    // Escritura de byte limpia en el offset 0x118 para imitar la instruccion strb
    *(u8*)((u8*)this + 0x118) = 0;
}

void ActorGenericCharacter::func_ov014_021481fc() {
    mUnk_1d8.func_ov014_02145e48(0);

    ActorCharacter_1d8_230* subStruct = *(ActorCharacter_1d8_230**)((u8*)&mUnk_1d8 + 0x10);
    subStruct->mUnk_10 = 0x1000;

    func_ov014_02147c00();
}

static void func_ov014_02148228(ActorGenericCharacter* actor) { actor->func_ov014_021452b0(); }
