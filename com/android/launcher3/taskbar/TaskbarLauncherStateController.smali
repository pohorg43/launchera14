.class public Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final FLAGS_ALL:I = -0x1

.field private static final FLAGS_LAUNCHER:I = 0x3

.field public static final FLAG_APP_MENU_TO_RECENTS_ANIMATION_RUNNING:I = 0x10000000

.field public static final FLAG_APP_TO_RECENTS_ANIMATION_RUNNING:I = 0x10000002

.field public static final FLAG_INIT:I = 0x20000000

.field public static final FLAG_NOT_OCCLUDES:I = 0x40000000

.field public static final FLAG_RECENTS_ANIMATION_RUNNING:I = 0x2

.field public static final FLAG_RESUMED:I = 0x1

.field public static final FLAG_START_ZOOMING_TASK:I = -0x80000000

.field public static final FLAG_TRANSITION_STATE_RUNNING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TaskbarLauncherStateController"


# instance fields
.field private mCanSyncViews:Z

.field public mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private volatile mCurrentIconAlignmentAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

.field private final mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

.field private final mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

.field private final mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

.field public mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mIsAnimatingToLauncher:Z

.field private mLastState:Lcom/android/launcher3/LauncherState;

.field public mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field public mLauncherState:Lcom/android/launcher3/LauncherState;

.field private mPreSkipResumeAnimation:Z

.field private mPrevState:Ljava/lang/Integer;

.field private mShouldDelayLauncherStateAnim:Z

.field private mSkipApplyState:Z

.field private mSkipResumeAnimation:Z

.field private volatile mState:I

.field private final mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

.field private mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarResentsAnimationInitialized:Z

.field private preNeedOnlyTranslationYAlignmentResult:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/b1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/b1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;I)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/OplusAnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/a1;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/a1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;I)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusAnimatedFloat;-><init>(Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/OplusAnimatedFloat;

    new-instance v1, Landroidx/core/view/inputmethod/a;

    invoke-direct {v1, p0}, Landroidx/core/view/inputmethod/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusAnimatedFloat;-><init>(Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, Lcom/android/quickstep/OplusAnimatedFloat;

    new-instance v1, Landroidx/core/view/a;

    invoke-direct {v1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusAnimatedFloat;-><init>(Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLastState:Lcom/android/launcher3/LauncherState;

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipApplyState:Z

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPreSkipResumeAnimation:Z

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipResumeAnimation:Z

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarResentsAnimationInitialized:Z

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChangedForStateTransition(FLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLastState:Lcom/android/launcher3/LauncherState;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipApplyState:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipApplyState:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCurrentIconAlignmentAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCurrentIconAlignmentAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncher:Z

    return p1
.end method

.method public static synthetic access$702(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarResentsAnimationInitialized:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getCurrentIconAlignmentRatioBetweenAppAndHome()F

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getCurrentIconAlignmentRatioForLauncherState()F

    move-result p0

    return p0
.end method

.method public static createLauncherLifecycleObserver()Lcom/android/launcher/ILauncherLifecycleObserver;
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$6;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$6;-><init>()V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->lambda$createAnimToLauncher$0()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChangedForAppAndHomeTransition(FLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->lambda$createAnimToLauncher$1()V

    return-void
.end method

.method private getCurrentIconAlignmentRatioBetweenAppAndHome()F
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->getStartValue()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->getStartValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1f

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    :goto_1f
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v1}, Lcom/android/quickstep/AnimatedFloat;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v1}, Lcom/android/quickstep/AnimatedFloat;->getStartValue()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->getStartValue()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_3e

    :cond_3a
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    :goto_3e
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getCurrentIconAlignmentRatioForLauncherState()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    return p0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    const-string v1, "FLAG_RESUMED"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1a

    const-string v1, "FLAG_RECENTS_ANIMATION_RUNNING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1a
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_23

    const-string v1, "FLAG_TRANSITION_STATE_RUNNING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_23
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2d

    const-string v1, "FLAG_START_ZOOMING_TASK"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2d
    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr p0, v1

    if-eqz p0, :cond_37

    const-string p0, "FLAG_NOT_OCCLUDES"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_37
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private goingToUnstashedLauncherState()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInStashedLauncherState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$createAnimToLauncher$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->access$900(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;Z)V

    return-void
.end method

.method private synthetic lambda$createAnimToLauncher$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setEndGestureCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->access$900(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;Z)V

    return-void
.end method

.method private onIconAlignmentRatioChanged(Ljava/util/function/Supplier;Ljava/lang/Float;Ljava/lang/Float;)V
    .registers 7
    .param p2  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_26

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2c

    :cond_26
    if-nez v2, :cond_2c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateIconAlignment(FLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method private onIconAlignmentRatioChangedForAppAndHomeTransition(FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 4
    .param p2  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lcom/android/launcher3/q1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/q1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChanged(Ljava/util/function/Supplier;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method private onIconAlignmentRatioChangedForStateTransition(FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 4
    .param p2  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isResumed()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarResentsAnimationInitialized:Z

    if-nez p1, :cond_f

    :cond_e
    return-void

    :cond_f
    new-instance p1, Lcom/android/launcher/layout/e;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/e;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChanged(Ljava/util/function/Supplier;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method private onStateChangeApplied(IJZ)Landroid/animation/Animator;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    sget-object v4, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onStateChangeApplied, changedFlags = "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", CurrentState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-static {v6}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_55

    invoke-virtual {v0, v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v7

    xor-int/2addr v7, v10

    invoke-direct {v0, v5, v2, v3, v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->playStateTransitionAnim(Landroid/animation/AnimatorSet;JZ)V

    if-eqz v7, :cond_55

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    sget-object v8, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-ne v7, v8, :cond_55

    invoke-virtual {v0, v10, v9}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(J)V

    :cond_55
    const/high16 v7, 0x20000000

    invoke-virtual {v0, v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v8

    if-nez v8, :cond_66

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v8

    if-nez v8, :cond_64

    goto :goto_66

    :cond_64
    move v8, v9

    goto :goto_67

    :cond_66
    :goto_66
    move v8, v10

    :goto_67
    invoke-virtual {v0, v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v11

    if-eqz v11, :cond_70

    invoke-virtual {v0, v7, v9}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    :cond_70
    iput-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCurrentIconAlignmentAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCurrentIconAlignmentAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v11, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;

    invoke-direct {v11, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v7

    if-eq v6, v7, :cond_84

    move v6, v10

    goto :goto_85

    :cond_84
    move v6, v9

    :goto_85
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v7}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_90

    if-eqz v6, :cond_90

    move v9, v10

    :cond_90
    invoke-virtual {v0, v1, v10}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v7

    const-string v11, ", duration = "

    const-string v12, ", notAnimate = "

    const/4 v14, 0x0

    if-nez v7, :cond_9d

    if-eqz v9, :cond_15b

    :cond_9d
    invoke-virtual {v0, v10}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v9

    if-nez v9, :cond_ab

    if-nez v6, :cond_ae

    :cond_ab
    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_af

    :cond_ae
    move v9, v14

    :goto_af
    iget-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v15, v9}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v15

    if-nez v15, :cond_15b

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getCurrentIconAlignmentRatioBetweenAppAndHome()F

    move-result v15

    cmpl-float v15, v9, v15

    if-eqz v15, :cond_c9

    iget-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v15, v15, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v15}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v15

    if-eqz v15, :cond_ca

    :cond_c9
    move v8, v10

    :cond_ca
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resume state alignment, toValue = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " , mSkipResumeAnimation = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipResumeAnimation:Z

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mPreSkipResumeAnimation = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPreSkipResumeAnimation:Z

    invoke-static {v15, v13, v4}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v8, :cond_126

    iget-boolean v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipResumeAnimation:Z

    if-nez v13, :cond_126

    iget-boolean v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPreSkipResumeAnimation:Z

    if-eqz v13, :cond_102

    goto :goto_126

    :cond_102
    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v13, v9}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    cmpl-float v9, v9, v14

    if-nez v9, :cond_112

    move v9, v10

    goto :goto_113

    :cond_112
    const/4 v9, 0x0

    :goto_113
    invoke-static {v9}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;

    invoke-direct {v9, v0, v7, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;ZJ)V

    invoke-virtual {v13, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_15b

    :cond_126
    :goto_126
    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v13}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object v13, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v13, v9, v10}, Lcom/android/quickstep/AnimatedFloat;->updateValue(FZ)V

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v9, v9, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    xor-int/lit8 v13, v7, 0x1

    invoke-virtual {v9, v10, v13}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV()Z

    move-result v13

    if-eqz v13, :cond_14f

    if-eqz v7, :cond_14f

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v7, v7, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v7

    if-eqz v7, :cond_14f

    const/4 v7, 0x2

    invoke-virtual {v9, v7, v10}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    :cond_14f
    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object v7

    if-eqz v7, :cond_15b

    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    invoke-virtual {v7}, Landroid/animation/Animator;->end()V

    :cond_15b
    :goto_15b
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v7}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_167

    if-eqz v6, :cond_167

    move v6, v10

    goto :goto_168

    :cond_167
    const/4 v6, 0x0

    :goto_168
    const/4 v7, 0x2

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v9

    if-nez v9, :cond_171

    if-eqz v6, :cond_1ec

    :cond_171
    invoke-virtual {v0, v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v6

    if-eqz v6, :cond_180

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->goingToUnstashedLauncherState()Z

    move-result v7

    if-eqz v7, :cond_180

    const/high16 v7, 0x3f800000  # 1.0f

    goto :goto_181

    :cond_180
    move v7, v14

    :goto_181
    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v9, v7}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v9

    if-nez v9, :cond_1ec

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getCurrentIconAlignmentRatioBetweenAppAndHome()F

    move-result v9

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_19b

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v9, v9, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v9

    if-eqz v9, :cond_19c

    :cond_19b
    move v8, v10

    :cond_19c
    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v9}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Gesture state alignment, toValue = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_1ce

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4, v7, v10}, Lcom/android/quickstep/AnimatedFloat;->updateValue(FZ)V

    goto :goto_1ec

    :cond_1ce
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v4, v7}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v6, :cond_1e1

    invoke-virtual {v4, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1e1
    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;

    invoke-direct {v6, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1ec
    :goto_1ec
    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result v1

    if-eqz v1, :cond_235

    invoke-virtual {v0, v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v1

    if-eqz v1, :cond_20a

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/high16 v6, 0x20000

    invoke-static {v4, v10, v6}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_20a
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v1, :cond_20f

    goto :goto_211

    :cond_20f
    const/high16 v14, 0x3f800000  # 1.0f

    :goto_211
    invoke-virtual {v4, v14}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV()Z

    move-result v6

    if-eqz v6, :cond_22f

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_22f

    if-eqz v1, :cond_22a

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_22c

    :cond_22a
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_22c
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_22f
    invoke-virtual {v4, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_235
    if-eqz p4, :cond_23a

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_23a
    return-object v5
.end method

.method private playStateTransitionAnim(Landroid/animation/AnimatorSet;JZ)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result v4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->noNeedAnimation()Z

    move-result v6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLastState:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    move v7, v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playStateTransitionAnim mLauncherState: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isInStashedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", noNeedAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skipUpdateTaskbarIconAlpha: "

    const-string v3, ", lastState: "

    invoke-static {v1, v6, v2, v7, v3}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLastState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_73

    new-instance p3, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;

    move-object v2, p3

    move-object v3, p0

    move v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;ZZZZ)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_73
    return-void
.end method

.method private setHotseatVisible(Z)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setVisibleForTaskbarIconAlign(Z)V

    return-void
.end method

.method private setTaskbarViewVisible(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    if-eqz p1, :cond_7

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    return-void
.end method

.method private updateIconAlignment(FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 11
    .param p2  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->needOnlyTranslationYAlignment()Z

    move-result v4

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setLauncherIconAlignment(FLcom/android/launcher3/DeviceProfile;ZLjava/lang/Float;Ljava/lang/Float;)V

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p2, p2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_74

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v2, :cond_74

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getItemAnimParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_74

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->getCurrentRunnerEndValue()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_38

    if-nez p3, :cond_3c

    :cond_38
    if-eqz v2, :cond_3e

    if-nez p3, :cond_3e

    :cond_3c
    move v3, v0

    goto :goto_3f

    :cond_3e
    move v3, v1

    :goto_3f
    if-nez v3, :cond_4c

    if-eqz v2, :cond_4c

    invoke-virtual {v2, p3}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v3

    if-eqz v3, :cond_4b

    move v3, v0

    goto :goto_4c

    :cond_4b
    move v3, v1

    :cond_4c
    :goto_4c
    if-eqz v3, :cond_74

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "updateIconRunner endValue alignment:"

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    const-string v6, ",oldEndValue:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const/4 v2, 0x4

    const-string v5, ",newEndValue:"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    aput-object p3, v4, v2

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->dEx(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->updateEndValue(Ljava/lang/Float;)V

    :cond_74
    const/high16 p2, 0x3f800000  # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_7b

    goto :goto_7c

    :cond_7b
    move v0, v1

    :goto_7c
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->setTaskbarViewVisible(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateTaskbarAlignment(F)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addIconAlignmentEndCallback(Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCurrentIconAlignmentAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "try add IconAlignmentEndCallback but animatorSet is null!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCurrentIconAlignmentAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyState(JZ)Landroid/animation/Animator;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    if-eq v0, v2, :cond_4d

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    if-nez v0, :cond_13

    const/4 v0, -0x1

    goto :goto_1a

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    xor-int/2addr v0, v2

    :goto_1a
    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getInPreStageOfGestureRecentsAnimation()Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->TAG:Ljava/lang/String;

    const-string p2, "InPreStageOfGestureRecentsAnimation skip onStateChangeApplied, changedFlags = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", CurrentState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_49
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onStateChangeApplied(IJZ)Landroid/animation/Animator;

    move-result-object v1

    :cond_4d
    return-object v1
.end method

.method public applyState(Z)Landroid/animation/Animator;
    .registers 4

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public applyState()V
    .registers 3

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(J)V

    return-void
.end method

.method public applyState(J)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    return-void
.end method

.method public cancelIconAlignmentAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    return-void
.end method

.method public createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;
    .registers 9
    .param p1  # Lcom/android/launcher3/LauncherState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/quickstep/RecentsAnimationCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result p1

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    :cond_2d
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isManuallyStashedInSP()Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_41
    invoke-virtual {p0, p3, p4, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    if-nez p3, :cond_54

    new-instance p3, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    :cond_54
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarResentsAnimationInitialized:Z

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    new-instance p4, Lcom/android/launcher3/taskbar/b1;

    invoke-direct {p4, p0, p1}, Lcom/android/launcher3/taskbar/b1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;I)V

    invoke-virtual {p3, p4}, Lcom/android/launcher3/Launcher;->setEndGestureCallback(Ljava/lang/Runnable;)V

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/views/RecentsView;

    new-instance p4, Lcom/android/launcher3/taskbar/a1;

    invoke-direct {p4, p0, p1}, Lcom/android/launcher3/taskbar/a1;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;I)V

    invoke-virtual {p3, p4}, Lcom/android/quickstep/views/RecentsView;->setTaskLaunchListener(Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;)V

    return-object p2
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "TaskbarLauncherStateController:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmIconAlignment=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmTaskbarBackgroundAlpha=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {v3}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIconAlphaForHome=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPrevState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmPrevState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    aput-object v3, v1, v4

    const-string v3, "%s\tmLauncherState=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncher:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIsAnimatingToLauncher=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s\tmShouldDelayLauncherStateAnim=%b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finishIconAlignmentAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    return-void
.end method

.method public getTaskBarRecentsAnimationListener()Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    return-object p0
.end method

.method public goingToAlignedLauncherState()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    return p0
.end method

.method public hasAnyFlag(I)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(II)Z

    move-result p0

    return p0
.end method

.method public hasAnyFlag(II)Z
    .registers 3

    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getTaskbarBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->initIconAlignmentRunner(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;)V

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;-><init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarRecentsAnimationListener:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskbarResentsAnimationInitialized:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onIconAlignmentRatioChangedForAppAndHomeTransition(FLjava/lang/Float;Ljava/lang/Float;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    const/high16 p1, 0x20000000

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLastState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(J)V

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    return-void
.end method

.method public isAnimatingToLauncher()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIsAnimatingToLauncher:Z

    return p0
.end method

.method public isDifferentOrientation()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result p0

    if-eq v0, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isIconAlignedWithHotseat()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isInLauncher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/LauncherState;->isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_2c

    if-nez v0, :cond_2c

    move v1, v2

    :cond_2c
    return v1
.end method

.method public isIconAlignmentAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/quickstep/AnimatedFloat;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isInHotseatOnTopStates()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p0, v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public isInLauncher()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isResumed()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result p0

    return p0
.end method

.method public isSkipUpdateTaskbarIconAlign()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public needOnlyTranslationYAlignment()Z
    .registers 7

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    const v1, 0x7ffeff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isDifferentOrientation()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-static {v0, v4}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->childCountMisMatch(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/taskbar/TaskbarView;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_44

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getExpandUpdatingFlag()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_44

    :cond_42
    move v0, v2

    goto :goto_45

    :cond_44
    :goto_44
    move v0, v3

    :goto_45
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-nez v4, :cond_62

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_60

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v4

    if-nez v4, :cond_62

    :cond_60
    move v4, v3

    goto :goto_63

    :cond_62
    move v4, v2

    :goto_63
    or-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v4

    if-nez v4, :cond_8b

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v4

    if-nez v4, :cond_8b

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->isStoped()Z

    move-result v4

    if-nez v4, :cond_8b

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v4

    if-eqz v4, :cond_89

    goto :goto_8b

    :cond_89
    move v4, v2

    goto :goto_8c

    :cond_8b
    :goto_8b
    move v4, v3

    :goto_8c
    or-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v4, v4, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-eqz v4, :cond_9c

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v4

    if-nez v4, :cond_a4

    :cond_9c
    const/high16 v4, -0x80000000

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result v4

    if-eqz v4, :cond_a6

    :cond_a4
    move v4, v3

    goto :goto_a7

    :cond_a6
    move v4, v2

    :goto_a7
    or-int/2addr v0, v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_1a8

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->preNeedOnlyTranslationYAlignmentResult:Z

    if-eq v0, v4, :cond_1a8

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->preNeedOnlyTranslationYAlignmentResult:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "needOnlyTranslationYAlignment"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "【result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "】"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",TaskbarLauncherState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    invoke-static {v5}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->getStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",LauncherState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",lastState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",overlayShown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",getTopOpenViewWithType(ALL & ~LISTENER)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v5, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",IsImeShowing="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v1, v1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isInMinimize="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDifferentOrientation="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isDifferentOrientation()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isWorkspaceLoading="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isTaskbarPresent="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",childCountMisMatch="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mTaskBarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v5, v5, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-static {v1, v5}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->childCountMisMatch(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/taskbar/TaskbarView;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",Launcher.isStoped="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->isStoped()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",taskbarStashController.mAnimator="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",ExpandUpdatingFlag="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getExpandUpdatingFlag()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a8
    return v0
.end method

.method public noNeedAnimation()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignment:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForResumedState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForGestureState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlignmentForLauncherState:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/quickstep/AnimatedFloat;->finishAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mCanSyncViews:Z

    return-void
.end method

.method public onIconAlignmentRatioChanged()V
    .registers 1

    return-void
.end method

.method public setShouldDelayLauncherStateAnim(Z)V
    .registers 3

    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    :cond_9
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mShouldDelayLauncherStateAnim:Z

    return-void
.end method

.method public setSkipApplyState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipApplyState:Z

    return-void
.end method

.method public setSkipResumeAnimation(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipResumeAnimation:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mPreSkipResumeAnimation:Z

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mSkipResumeAnimation:Z

    return-void
.end method

.method public declared-synchronized updateStateForFlag(IZ)V
    .registers 3

    monitor-enter p0

    if-eqz p2, :cond_9

    :try_start_3
    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    goto :goto_f

    :cond_9
    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mState:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
