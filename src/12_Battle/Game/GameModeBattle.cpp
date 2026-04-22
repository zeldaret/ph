#include "Game/GameModeBattle.hpp"

extern "C" void func_ov012_0211fe08(void *);
extern "C" void func_ov012_0211fe30(void *);
extern "C" void func_ov012_0211feac(void *);
extern "C" void func_ov012_0211ce44(void *);
extern "C" void func_ov012_021132d4(void *);

extern "C" int data_ov012_02137c60;

GameModeBattle *GameModeBattle::Create(unk32 param1) {}
GameModeBattle::GameModeBattle(unk32 param1) :
    GameModePlay(param1) {}
GameModeBattle::~GameModeBattle() {}
void GameModeBattle::vfunc_24() {
    void *ptr = (void *) (*(int *) ((int) &data_ov012_02137c60 + 4));
    func_ov012_021132d4(ptr);
}
unk32 GameModeBattle::vfunc_08(unk32 param1) {}
void GameModeBattle::vfunc_0c(u16 *param1) {
    func_ov012_0211fe08(reinterpret_cast<void *>(reinterpret_cast<u8 *>(this) + 0x7f0));
}

void GameModeBattle::vfunc_10(u16 *param1) {
    func_ov012_0211fe30(reinterpret_cast<void *>(reinterpret_cast<u8 *>(this) + 0x7f0));
    func_ov012_0211ce44(reinterpret_cast<void *>(reinterpret_cast<u8 *>(this) + 0xd4));
}
void GameModeBattle::vfunc_14(u16 *param1) {
    func_ov012_0211feac(reinterpret_cast<void *>(reinterpret_cast<u8 *>(this) + 0x7f0));
}
void GameModeBattle::vfunc_18() {
    (*(GameModePlay **) &mUnk_008[0xd0])->vfunc_1c();
}
