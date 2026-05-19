.class public final Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationResult"
.end annotation


# instance fields
.field private final mASyncFinishRunnable:Ljava/lang/Runnable;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mAppWindowAnimator:Lcom/android/launcher3/anim/AbsAppTransitionAnimator;

.field private mAsyncFinishExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private mFinished:Z

.field private mInitialized:Z

.field private mIsFromRecents:Z

.field private mOnCompleteCallback:Ljava/lang/Runnable;

.field private final mSyncFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAsyncFinishExecutor:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mIsFromRecents:Z

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mSyncFinishRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mIsFromRecents:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLcom/android/launcher3/LauncherAnimationRunner$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->lambda$finish$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void
.end method

.method private finish()V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mSyncFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAsyncFinishExecutor:Lcom/android/launcher3/util/LooperExecutor;

    if-eqz v0, :cond_e

    goto :goto_19

    :cond_e
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isSystemDisableAnimation()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    goto :goto_19

    :cond_17
    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    :goto_19
    new-instance v1, Lcom/android/launcher3/r0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/r0;-><init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    iget-object v2, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_39

    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isSystemDisableAnimation()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mIsFromRecents:Z

    if-eqz v2, :cond_39

    const-string v2, "LauncherAnimationRunner"

    const-string v3, "asyncFinishExecutor executed delay"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;J)V

    goto :goto_3c

    :cond_39
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    :cond_3f
    return-void
.end method

.method private synthetic lambda$finish$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_e

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .registers 9
    .param p3  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    if-nez v0, :cond_6c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    const-string p3, "OLauncher"

    if-nez p1, :cond_18

    :try_start_f
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->finish()V

    const-string p0, "mAnimator is null."

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_46

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_46

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAppWindowAnimator:Lcom/android/launcher3/anim/AbsAppTransitionAnimator;

    if-eqz v0, :cond_39

    new-instance p1, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;->setAnimatorUpdateLister(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_41

    :cond_39
    new-instance v0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$2;-><init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_41
    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_46} :catch_65

    :cond_46
    :goto_46
    if-eqz p4, :cond_6b

    :try_start_48
    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-static {p2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p2

    int-to-long v0, p2

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V
    :try_end_5c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_48 .. :try_end_5c} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5c} :catch_65

    goto :goto_6b

    :catch_5d
    move-exception p0

    :try_start_5e
    const-string/jumbo p1, "setCurrentPlayTime error! Children must be initialized."

    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_64} :catch_65

    goto :goto_6b

    :catch_65
    move-exception p0

    const-string p1, "Crash error"

    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animation already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppWindowAnimator(Lcom/android/launcher3/anim/AbsAppTransitionAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAppWindowAnimator:Lcom/android/launcher3/anim/AbsAppTransitionAnimator;

    return-void
.end method

.method public setAsyncFinishExecutor(Lcom/android/launcher3/util/LooperExecutor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAsyncFinishExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-void
.end method
