#pragma once

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorManager.hpp"
#include "Debug/DebugHierarchy.hpp"
#include "Item/Item.hpp"
#include "Player/TouchControl.hpp"
#include "Player/TouchGesture.hpp"

typedef s16 TouchEdge;
enum TouchEdge_ {
    TouchEdge_Right  = 0,
    TouchEdge_Left   = 1,
    TouchEdge_Bottom = 2,
    TouchEdge_Top    = 3,
    TouchEdge_Middle = 4
};

class PlayerControl : public TouchControl {
public:
    /* 00 (base) */
    /* 38 */ Vec3p mTouchWorld; // tile position
    /* 44 */ Vec3p mUnk_44;
    /* 50 */ q20 mTouchSpeedX; // how fast the stylus moves
    /* 54 */ q20 mTouchSpeedY;
    /* 58 */ q20 mTouchDist; // pixel distance from touch to link, deadzone is 20 pixels
    /* 5c */ q20 mTouchSpeed;
    /* 60 */ s16 mTouchDuration;
    /* 62 */ s16 mTouchSlowDuration; // resets to 0 if stylus is fast enough
    /* 64 */ s16 mTouchFastTime; // gets set to mTouchDuration if stylus is fast enough
    /* 66 */ s16 mTouchFastX; // gets set to mTouchX if stylus is fast enough
    /* 68 */ s16 mTouchFastY; // gets set to mTouchY if stylus is fast enough
    /* 6a */ s16 mTouchAngle; // angle from touch to link, 0 = down, 0x4000 = right, 0x8000 = up, 0xc000 = left
    /* 6c */ s16 mTouchFastAngle; // gets set to mTouchAngle if stylus is fast enough
    /* 6e */ TouchEdge mTouchEdge; // changes value when touching close to the edge of the screen
    /* 70 */ TouchEdge mTouchLastEdge;
    /* 72 */ s16 mTouchDiffX;
    /* 74 */ s16 mTouchDiffY;
    /* 76 */ bool mTouchFast;
    /* 77 */ unk8 mUnk_77;
    /* 78 */ bool mUnk_78;
    /* 79 */ bool mUsingEquipItem;
    /* 7a */ bool mUnk_7a;
    /* 7b */ bool mUnk_7b;
    /* 7c */ u8 mUnk_7c;
    /* 7d */ bool mUnk_7d;
    /* 7e */ u8 mUnk_7e;
    /* 7f */ bool mUnk_7f;
    /* 80 */ bool mUnk_80;
    /* 81 */ bool mFollowing;
    /* 82 */ bool mUnk_82;
    /* 83 */ bool mUnk_83;
    /* 84 */ ActorRef mFollowRef;
    /* 8c */ ActorRef mNextFollowRef;
    /* 94 */ ActorRef mLastFollowRef;
    /* 9c */ Vec2b mUnk_9c;
    /* 9e */ unk8 mUnk_9e[2];
    /* a0 */ void *mFollowObject;
    /* a4 */ q20 mFollowDist;
    /* a8 */ s16 mFollowStuckTimer;
    /* aa */ s16 mCutsceneEndTimer;
    /* ac */ s16 mUnk_ac;
    /* ae */ unk16 mUnk_ae;
    /* b0 */ Vec3p mAim; // used by boomerang, bow and rope
    /* bc */ Vec3p mAimWorld; // used by hammer
    /* c8 */ s32 mUnk_c8;
    /* cc */ s32 mUnk_cc;
    /* d0 */ TouchGesture **mTouchGesture;
    /* d4 */ DebugHierarchy *mDebug;
    /* d8 */

    static bool func_ov00_020aeeac();
    static bool func_ov00_020aeef8();
    void func_ov00_020aef30();
    void UpdateAim();
    Actor *GetFollowActor();
    bool func_ov00_020af01c(Vec2b *param1);
    void SetUnk_80();
    void StopFollowing();
    void func_ov00_020af06c();
    void UpdateUsingEquipItem();
    bool func_ov00_020af2d4(u32 param1, bool param2);
    bool CheckTouchedNow(u32 param1);
    bool CheckUntouchedNow(u32 param1);
    bool CheckTouching(u32 param1);
    bool CheckTouchFast(u32 param1);
    bool func_ov00_020af4a4();
    void func_ov00_020af538(bool param1, u8 param2);
    void func_ov00_020af6e4(Vec3p *param1, s32 param3, s32 param4);
    bool func_ov00_020af778();
    bool func_ov00_020afad8(Vec3p *param1);
    void func_ov00_020afb6c();
    bool func_ov00_020afe88(s32 param1, bool param2);
    bool func_ov00_020afeec(unk32 param1, bool param2);
    void func_ov00_020aff90(Vec3p *param1, unk32 param2);
    void func_ov00_020affec(Vec3p *param1, s32 y, s32 param3, Vec3p *param4);
    void func_ov00_020b014c(Vec3p *param1);
    void ResetAim();
    bool UpdateAimWorld(Vec3p *param1);
    s16 GetTouchAngle();
    u32 func_ov00_020b034c();
    s32 func_ov00_020b0418();
    bool func_ov00_020b049c(Vec3p *param1, bool param2);
    bool func_ov00_020b05e8(Vec3p *param1);
    bool func_ov00_020b0778(Vec3p *param1, u32 param2, unk32 *param3);
    bool CheckNotTouching();
    bool func_ov00_020b0ad0(Actor *actor);
    bool func_ov00_020b0b0c(s16 *pAngle, ItemFlag *pEquipId, unk32 *pCardinal, bool *pFast);
    bool func_ov00_020b0de8(Vec3p *param1);
    bool func_ov00_020b0e54(Vec3p *param1, Vec3p *param2);
    bool func_ov00_020b0f88(Vec3p *param1, unk32 scale, Vec3p *param3);
    bool func_ov00_020b1058(Vec3p *param1, unk32 param2, Vec3p *param3, Vec3p *param4);
    bool IsUntouchedNow();
    bool IsNotUntouchedNow();
    bool func_ov00_020b1248(unk32 *param1);
    bool func_ov00_020b129c();
    bool func_ov00_020b12d0(s16 *pAngle);
    bool IsNotTouching();
    bool IsTouchingFast();
    bool IsTappedNow();
    bool func_ov00_020b13c4();

    void ResetTouchWorld();
    void InitTouchMovement();
    void func_ov000_020b7924(s32 param1);
    void ApplyTouchWorld(Vec3p *result, unk32 scale);
    bool func_ov000_020b7d6c();

    PlayerControl();
    ~PlayerControl();
    static void Create();
    static void Destroy();
    void Init();
    void func_ov004_0210b1d0();
    static void func_ov004_0210b1f0();

    bool func_ov024_02178348(Vec3p *param1);
};

extern PlayerControl *gPlayerControl;
