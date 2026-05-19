.class public Lcom/oplus/zoom/ui/floathandle/FloatHandleView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/oplus/zoom/ui/baseview/IView;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/ui/floathandle/FloatHandleView$UiHandler;
    }
.end annotation


# static fields
.field private static final ADJUST_POSITION:F = 0.5f

.field private static final DEFAULT_SCALE:F = 0.5f

.field private static final FLOAT_HANDLE_INACTIVE_TIME:I = 0x32

.field private static final GAME_BAR_WINDOW_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAP_BETWEEN_GAME_BAR_AND_FLOAT_HANDLE:I = 0x3

.field private static final PATH_INTERPOLATOR_X1:F = 0.3f

.field private static final PATH_INTERPOLATOR_X2:F = 0.1f

.field private static final PATH_INTERPOLATOR_Y1:F = 0.0f

.field private static final PATH_INTERPOLATOR_Y2:F = 1.0f

.field private static final ROTATION_ARROW:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "FloatHandle"


# instance fields
.field private mArrowStyle:Z

.field private mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mCurrentSide:I

.field private mFloatHandleView:Landroid/view/View;

.field private mFloatHandleViewContainer:Landroid/widget/FrameLayout;

.field private mGameFloatBarFrame:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

.field private mIconSwapView:Landroid/widget/ImageView;

.field private mIconTransactionAnimator:Landroid/animation/Animator;

.field private mIconView:Landroid/widget/ImageView;

.field private mOplusWindowManager:Landroid/view/OplusWindowManager;

.field private mOplusWindowStateObserver:Landroid/view/IOplusWindowStateObserver;

.field private mPanAndReboundAnimator:Landroid/animation/Animator;

.field private mPanAnimator:Landroid/animation/ValueAnimator;

.field private mPendingLockPkg:Ljava/lang/String;

.field private mPendingMode:I

.field private mPendingUserId:I

.field private mReboundAnimator:Landroid/animation/ValueAnimator;

.field private mRemoving:Z

.field private mRemovingLockPkg:Ljava/lang/String;

.field private mRemovingUserId:I

.field private mRotation:I

.field private mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

.field private mTouchHandler:Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;

.field private mVisible:Z

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->GAME_BAR_WINDOW_LIST:Ljava/util/List;

    const-string v1, "GameFloatBarView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GamesFloatBar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oplus/zoom/ui/floathandle/FloatHandleStatus;Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;)V
    .registers 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemoving:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowStyle:Z

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mVisible:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRotation:I

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p0

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;-><init>(Landroid/content/Context;Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;I)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mTouchHandler:Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;

    new-instance p3, Landroid/view/OplusWindowManager;

    invoke-direct {p3}, Landroid/view/OplusWindowManager;-><init>()V

    iput-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->initView(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->initWindowParams()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->setSystemGestureExclusion()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->GAME_BAR_WINDOW_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemovingLockPkg:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemovingUserId:I

    return p1
.end method

.method public static synthetic access$1200(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemoving:Z

    return p0
.end method

.method public static synthetic access$1202(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemoving:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconTransactionAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/baseview/ViewHook;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    return p0
.end method

.method public static synthetic access$402(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    return p1
.end method

.method public static synthetic access$500(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingMode:I

    return p1
.end method

.method public static synthetic access$700(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingLockPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingLockPkg:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingUserId:I

    return p0
.end method

.method public static synthetic access$902(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingUserId:I

    return p1
.end method

.method public static synthetic b(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->lambda$createAnimatorForRebound$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private checkCurrentPositionMatchOrNot(I)Z
    .registers 8

    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    neg-int v0, v0

    goto :goto_23

    :cond_d
    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result v0

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    goto :goto_23

    :cond_22
    move v0, v3

    :goto_23
    const/4 v4, 0x4

    if-ne p1, v4, :cond_30

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInHalfHidden()I

    move-result v4

    if-eq v0, v4, :cond_30

    move v4, v3

    goto :goto_31

    :cond_30
    move v4, v2

    :goto_31
    if-ne p1, v1, :cond_3c

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceToRebound()I

    move-result v1

    if-eq v0, v1, :cond_3c

    move v4, v3

    :cond_3c
    if-ne p1, v2, :cond_47

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result p0

    if-eq v0, p0, :cond_47

    goto :goto_48

    :cond_47
    move v3, v4

    :goto_48
    return v3
.end method

.method private checkForReboundAnimationNeedOrNot(II)Z
    .registers 5

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_a

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowStyle:Z

    if-eqz v0, :cond_a

    move v0, p1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x4

    if-ne p2, v1, :cond_13

    iget-boolean p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowStyle:Z

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    move p1, v0

    :goto_14
    return p1
.end method

.method private checkStateBeforeNextAction(I)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAndReboundAnimator:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingMode:I

    if-ne p1, v0, :cond_23

    goto :goto_24

    :cond_10
    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    if-ne v0, p1, :cond_23

    invoke-direct {p0, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->checkCurrentPositionMatchOrNot(I)Z

    move-result p1

    if-eqz p1, :cond_23

    iget p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->postDelayMsgToHalfHiddenState()V

    goto :goto_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    :goto_24
    if-eqz v1, :cond_2c

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->stopAllAnimator()V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    :cond_2c
    return v1
.end method

.method private computeCurrentPosition(I)[I
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_d

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInHalfHidden()I

    move-result p1

    goto :goto_1c

    :cond_d
    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getDistanceToRebound()I

    move-result p1

    goto :goto_1c

    :cond_16
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result p1

    :goto_1c
    iget v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    neg-int p1, p1

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2, v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScale(I)F

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v4, v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScale(I)F

    move-result v4

    mul-float/2addr v4, v2

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getContainerHeight()I

    move-result v2

    div-int/2addr v2, v0

    goto :goto_66

    :cond_3d
    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenWidth()I

    move-result v2

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int p1, v2, v4

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScale(I)F

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v4, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScale(I)F

    move-result v4

    mul-float/2addr v4, v2

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getContainerHeight()I

    move-result v2

    div-int/2addr v2, v0

    :goto_66
    int-to-float v0, v2

    sub-float/2addr v4, v0

    float-to-int v0, v4

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMovingEdgeLimit()I

    move-result v2

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenHeight()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v5}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMovingEdgeLimit()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v5}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getContainerHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    aput p1, v1, v2

    aput v0, v1, v3

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getGameFloatBarFrame()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_bd

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    aget v4, v1, v3

    if-le v0, v4, :cond_bd

    aget v0, v1, v2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->isSameSide(II)Z

    move-result p1

    if-eqz p1, :cond_bd

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40400000  # 3.0f

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr p0, p1

    aput p0, v1, v3

    :cond_bd
    return-object v1
.end method

.method private getGameFloatBarFrame()Landroid/graphics/Rect;
    .registers 6

    const-string v0, "FloatHandle"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance p0, Landroid/view/OplusWindowManager;

    invoke-direct {p0}, Landroid/view/OplusWindowManager;-><init>()V

    invoke-virtual {p0}, Landroid/view/OplusWindowManager;->getAllVisibleWindowInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_67

    const/4 v1, 0x0

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusWindowInfo;

    if-eqz v2, :cond_45

    sget-object v3, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->GAME_BAR_WINDOW_LIST:Ljava/util/List;

    iget-object v4, v2, Lcom/oplus/app/OplusWindowInfo;->windowName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object p0, v2, Lcom/oplus/app/OplusWindowInfo;->mFrame:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the game float bar window frame is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existing game float bar window frame is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_60} :catch_61

    return-object p0

    :catch_61
    move-exception p0

    const-string v1, "getGameFloatBarFrame RemoteException: "

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_67
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method private initView(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3e

    sget v1, Lcom/android/wm/shell/R$layout;->zoom_float_handle_view_left:I

    invoke-static {p1, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_float_handle_view_container_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mFloatHandleViewContainer:Landroid/widget/FrameLayout;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_float_handle_view_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mFloatHandleView:Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_app_icon_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconView:Landroid/widget/ImageView;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_app_icon_swap_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconSwapView:Landroid/widget/ImageView;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_float_handle_arrow_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    const/high16 v1, 0x43340000  # 180.0f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_73

    :cond_3e
    sget v1, Lcom/android/wm/shell/R$layout;->zoom_float_handle_view_right:I

    invoke-static {p1, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_float_handle_view_container_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mFloatHandleViewContainer:Landroid/widget/FrameLayout;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_float_handle_view_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mFloatHandleView:Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_app_icon_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconView:Landroid/widget/ImageView;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_app_icon_swap_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconSwapView:Landroid/widget/ImageView;

    sget p1, Lcom/android/wm/shell/R$id;->zoom_float_handle_arrow_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    :goto_73
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    sget v1, Lcom/android/wm/shell/R$raw;->float_handle_arrow:I

    invoke-virtual {p1, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateArrowStyle(Z)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconSwapView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iput p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$UiHandler;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$UiHandler;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$1;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$1;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mOplusWindowStateObserver:Landroid/view/IOplusWindowStateObserver;

    return-void
.end method

.method private initWindowParams()V
    .registers 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x90a

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x1000328

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "OplusOSZoomFloatHandleView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method private isSameSide(II)Z
    .registers 6

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-gtz p1, :cond_8

    if-gtz p2, :cond_8

    move v1, p0

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    if-lez p1, :cond_f

    if-lez p2, :cond_f

    move p1, p0

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSameSide isLeft : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRight : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "FloatHandle"

    invoke-static {v2, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_34

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move p0, v0

    :cond_34
    :goto_34
    return p0
.end method

.method private synthetic lambda$createAnimatorForRebound$0(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000  # 0.5f

    if-ne v1, v2, :cond_1f

    add-float/2addr p1, v3

    goto :goto_20

    :cond_1f
    sub-float/2addr p1, v3

    :goto_20
    float-to-int p1, p1

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateCurrentPosition(FF)V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->relayout()V

    :cond_29
    return-void
.end method

.method private registerWindowStateObserver()V
    .registers 3

    const-string v0, "FloatHandle"

    :try_start_2
    const-string v1, "registering window state observer"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mOplusWindowStateObserver:Landroid/view/IOplusWindowStateObserver;

    invoke-virtual {v1, p0}, Landroid/view/OplusWindowManager;->registerOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception p0

    const-string v1, "Error registering window state observer: "

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method

.method private setSystemGestureExclusion()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemGestureExclusion: rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FloatHandle"

    invoke-static {v3, v2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception p0

    const-string v0, "setSystemGestureExclusion"

    invoke-static {v3, v0, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private stopAllAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAndReboundAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAndReboundAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    const-string p0, "FloatHandle"

    const-string v0, "animator with pan is cancel"

    invoke-static {p0, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private unregisterWindowStateObserver()V
    .registers 3

    const-string v0, "FloatHandle"

    :try_start_2
    const-string v1, "unregistering window state observer"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mOplusWindowStateObserver:Landroid/view/IOplusWindowStateObserver;

    invoke-virtual {v1, p0}, Landroid/view/OplusWindowManager;->unregisterOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception p0

    const-string v1, "Error unregistering window state observer: "

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method


# virtual methods
.method public animAdd(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 4

    iget p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingMode:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingLockPkg:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingUserId:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->showFloatHandleViewWithAnim(ILjava/lang/String;I)V

    return-void
.end method

.method public avoidOverlappingBetweenGameBarAndFloatHandleAfterScroll()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->getGameFloatBarFrame()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    :cond_e
    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_71

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->isSameSide(II)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40400000  # 3.0f

    invoke-static {v2, v3}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mTouchHandler:Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->setCurrentPosition(FF)V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->relayout()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avoid overlapping, relayout ZoomFloatHandleView with params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FloatHandle"

    invoke-static {v0, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    return-void
.end method

.method public clearMessage()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public createAnimatorForIconTransaction(Ljava/lang/String;ILjava/lang/String;I)Landroid/animation/Animator;
    .registers 13

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/oplus/zoom/ui/common/UiUtil;->getAppDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/oplus/zoom/ui/common/UiUtil;->getAppDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v5, :cond_3a

    if-nez v6, :cond_11

    goto :goto_3a

    :cond_11
    iget-object v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconSwapView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconView:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->getNewIconEnterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p2

    invoke-static {v4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->getOriginIconDisappearAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p3

    const-wide/16 v0, 0xa7

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance p4, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$5;

    move-object v1, p4

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$5;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0

    :cond_3a
    :goto_3a
    const-string v0, "load icon failed, newPkg = "

    const-string v1, " userId = "

    const-string v2, " , oriPkg = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatHandle"

    invoke-static {p2, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    const/4 p2, 0x0

    if-eqz p1, :cond_6b

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->stopAllAnimator()V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentLockPkg(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->removeViewOnCallBack()V

    :cond_6b
    return-object p2
.end method

.method public createAnimatorForPan(IIZ)Landroid/animation/ValueAnimator;
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->getPanAnimation(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIIIZ)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$3;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$3;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;IZ)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "FloatHandle"

    const-string p2, "createAnimatorForPan successful"

    invoke-static {p0, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public createAnimatorForPanAndRebound(II)Landroid/animation/Animator;
    .registers 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->checkForReboundAnimationNeedOrNot(II)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->createAnimatorForPan(IIZ)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->createAnimatorForRebound(II)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mReboundAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_4e

    const/4 p1, 0x2

    if-ne p2, p1, :cond_4e

    new-array p1, p1, [F

    fill-array-data p1, :array_66

    const-string p2, "alpha"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x226

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {p2, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mReboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_64

    :cond_4e
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mReboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_64

    :cond_5a
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->createAnimatorForPan(IIZ)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_64
    return-object v0

    nop

    :array_66
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public createAnimatorForRebound(II)Landroid/animation/ValueAnimator;
    .registers 10

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowStyle:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    move v4, p1

    move v5, p2

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->getReboundAnimation(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIIIZ)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/keyguardservice/b;

    invoke-direct {p2, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;

    invoke-direct {p2, p0, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "FloatHandle"

    const-string p2, "createAnimatorForRebound successful"

    invoke-static {p0, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public initState(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;II)Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentLockPkg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentUserId()I

    move-result v1

    iget-object v2, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eq v1, p1, :cond_24

    :cond_1b
    iput-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingLockPkg:Ljava/lang/String;

    iput p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateIconStyle(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_37

    :cond_24
    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentLockPkg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentUserId(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingLockPkg:Ljava/lang/String;

    iput v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingUserId:I

    invoke-virtual {p0, v2, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateIconStyle(Ljava/lang/String;I)Z

    move-result p1

    :goto_37
    invoke-direct {p0, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->computeCurrentPosition(I)[I

    move-result-object v0

    aget v1, v0, v3

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateCurrentPosition(FF)V

    iput p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    iput p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingMode:I

    const-string p2, "initPositionAndMode: mWindowParams.x = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mWindowParams.y = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FloatHandle"

    invoke-static {p2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->onAttachedToWindow()V

    :cond_a
    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->registerWindowStateObserver()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    :cond_d
    new-instance v0, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->unregisterWindowStateObserver()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemoving:Z

    const/4 v0, 0x1

    if-nez p1, :cond_f

    iget p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingMode:I

    if-ne p1, v0, :cond_a

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mTouchHandler:Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_f
    :goto_f
    return v0
.end method

.method public postDelayMsgToHalfHiddenState()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mTouchHandler:Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->isTouching()Z

    move-result v0

    const-string v1, "FloatHandle"

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemoving:Z

    if-eqz v0, :cond_f

    goto :goto_28

    :cond_f
    const-string v0, "postDelayMsgToHalfHiddenState, float handle view will go inactive after 1 second"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_28
    :goto_28
    const-string p0, "float handle view is touching or removing"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepareIconStateBeforeTransaction(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/high16 p0, 0x3f000000  # 0.5f

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public refreshFloatHandleView(Ljava/lang/String;I)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemoving:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->removeViewOnCallBack()V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->stopAllAnimator()V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRotation:I

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mGameFloatBarFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->computeCurrentPosition(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p0, v3, v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateCurrentPosition(FF)V

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateArrowStyle(Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->showFloatHandleViewWithAnim(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->relayout()V

    return-void
.end method

.method public relayout()V
    .registers 5

    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMaxDistanceToScreenInNone()I

    move-result v3

    if-ge v0, v3, :cond_29

    :cond_16
    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_28

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenWidth()I

    move-result v3

    if-gt v0, v3, :cond_28

    goto :goto_29

    :cond_28
    move v2, v1

    :cond_29
    :goto_29
    iget-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mVisible:Z

    if-eq v0, v2, :cond_4c

    if-eqz v2, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x4

    :goto_31
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mVisible:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatHandle"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz p0, :cond_53

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->relayout()V

    :cond_53
    return-void
.end method

.method public removeFloatHandleImmediately()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->stopAllAnimator()V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->removeViewOnCallBack()V

    :cond_d
    return-void
.end method

.method public removeFloatHandleViewWithAnim(Z)V
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemoving:Z

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->stopAllAnimator()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentSide:I

    iget v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oplus/zoom/ui/floathandle/FloatHandleAnimationUtil;->getPanAnimation(Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;IIIIZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$6;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAndReboundAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public restoreIconStateAfterTransaction(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setHook(Lcom/oplus/zoom/ui/baseview/ViewHook;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    return-void
.end method

.method public showFloatHandleViewWithAnim(ILjava/lang/String;I)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentLockPkg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentUserId()I

    move-result v1

    if-nez v0, :cond_22

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemovingLockPkg:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentLockPkg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemovingUserId:I

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentUserId(I)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemovingLockPkg:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mRemovingUserId:I

    :cond_22
    const-string v2, "FloatHandle"

    if-nez v0, :cond_3b

    iget-object v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz v3, :cond_3b

    const-string p1, "something is wrong, just remove the view"

    invoke-static {v2, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->stopAllAnimator()V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->removeViewOnCallBack()V

    return-void

    :cond_3b
    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->checkStateBeforeNextAction(I)Z

    move-result v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    if-eq v1, p3, :cond_7a

    :cond_53
    const-string v4, "pkg is changed, need to startAnimationForIconTransaction"

    invoke-static {v2, v4}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingLockPkg:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingUserId:I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->computeCurrentPosition(I)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v5, v6

    int-to-float v6, v6

    aget v4, v5, v4

    int-to-float v4, v4

    invoke-virtual {p0, v6, v4}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateCurrentPosition(FF)V

    iget-object v4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_7a

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_7a

    if-nez v3, :cond_7a

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->startAnimationForIconTransaction()V

    :cond_7a
    const-string v4, "current pkg = "

    const-string v5, " current userId = "

    const-string v6, " , new pkg = "

    invoke-static {v4, v0, v5, v1, v6}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " new userId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_bc

    iget p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mCurrentMode:I

    invoke-virtual {p0, p2, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->createAnimatorForPanAndRebound(II)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPanAndReboundAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "animator with pan to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is ready, now start the animator"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    return-void
.end method

.method public startAnimationForIconTransaction()V
    .registers 5

    const-string v0, "FloatHandle"

    const-string v1, "startAnimationForIconTransaction begin"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconTransactionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconTransactionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_16
    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingLockPkg:Ljava/lang/String;

    iget v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mPendingUserId:I

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentLockPkg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentUserId()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->createAnimatorForIconTransaction(Ljava/lang/String;ILjava/lang/String;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconTransactionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_31
    return-void
.end method

.method public updateArrowStyle(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setMinAndMaxFrame(II)V

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setFrame(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowStyle:Z

    goto :goto_1c

    :cond_13
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowView:Lcom/oplus/anim/EffectiveAnimationView;

    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setFrame(I)V

    iput-boolean v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mArrowStyle:Z

    :goto_1c
    return-void
.end method

.method public updateCurrentPosition(FF)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMovingEdgeLimit()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getMovingEdgeLimit()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getContainerHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    float-to-int p1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mTouchHandler:Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p2, p2

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleTouchHandler;->setCurrentPosition(FF)V

    return-void
.end method

.method public updateIconStyle(Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/oplus/zoom/ui/common/UiUtil;->getAppDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "FloatHandle"

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load icon failed, pkg = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_20
    iget-object v2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->mIconView:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " pkg = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is show in float handle now"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
