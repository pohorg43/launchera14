.class public Lcom/android/launcher3/LauncherAnimationRunner;
.super Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAnimationRunner$Scenes;,
        Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;,
        Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private static final DELAY_MILLS:J = 0x18L

.field private static final TAG:Ljava/lang/String; = "OLauncher"


# instance fields
.field private mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

.field private final mFactory:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsFromRecents:Z

.field private mScenes:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

.field private final mStartAtFrontOfQueue:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/o0;->a:Lcom/android/launcher3/o0;

    sput-object v0, Lcom/android/launcher3/LauncherAnimationRunner;->DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mIsFromRecents:Z

    sget-object v0, Lcom/android/launcher3/LauncherAnimationRunner$Scenes;->COMMON:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mScenes:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/Reference;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;ZLcom/android/launcher3/LauncherAnimationRunner$Scenes;)V
    .registers 11

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Ljava/lang/ref/Reference;ZZLcom/android/launcher3/LauncherAnimationRunner$Scenes;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;ZZ)V
    .registers 11

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lcom/android/launcher3/LauncherAnimationRunner$Scenes;->COMMON:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Ljava/lang/ref/Reference;ZZLcom/android/launcher3/LauncherAnimationRunner$Scenes;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/ref/Reference;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;",
            ">;Z)V"
        }
    .end annotation

    sget-object v5, Lcom/android/launcher3/LauncherAnimationRunner$Scenes;->COMMON:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Ljava/lang/ref/Reference;ZZLcom/android/launcher3/LauncherAnimationRunner$Scenes;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/ref/Reference;ZZLcom/android/launcher3/LauncherAnimationRunner$Scenes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;",
            ">;ZZ",
            "Lcom/android/launcher3/LauncherAnimationRunner$Scenes;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mIsFromRecents:Z

    sget-object v0, Lcom/android/launcher3/LauncherAnimationRunner$Scenes;->COMMON:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mScenes:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/Reference;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    iput-boolean p4, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mIsFromRecents:Z

    iput-object p5, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mScenes:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/LauncherAnimationRunner;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationStart$2([Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/LauncherAnimationRunner;[Z[Landroid/view/RemoteAnimationTarget;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationStart$1([Z[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/LauncherAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationCancelled$3()V

    return-void
.end method

.method public static synthetic e(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$static$0(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method private finishExistingAnimation()V
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->access$000(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    :cond_a
    return-void
.end method

.method private getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    sget-object p0, Lcom/android/launcher3/LauncherAnimationRunner;->DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    :goto_d
    return-object p0
.end method

.method private synthetic lambda$onAnimationCancelled$3()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishExistingAnimation()V

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationCancelled()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$1([Z[Landroid/view/RemoteAnimationTarget;)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mIsFromRecents:Z

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0, v1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->appLaunchAnimStartOrEnd(Z[Landroid/view/RemoteAnimationTarget;)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$onAnimationStart$2([Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 16

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishExistingAnimation()V

    new-instance v3, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    new-instance v4, Lcom/android/launcher3/c1;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;[Z[Landroid/view/RemoteAnimationTarget;)V

    iget-boolean v5, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mIsFromRecents:Z

    const/4 v6, 0x0

    invoke-direct {v3, v4, p2, v5, v6}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLcom/android/launcher3/LauncherAnimationRunner$1;)V

    iput-object v3, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    iget-object p2, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mScenes:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    sget-object v4, Lcom/android/launcher3/LauncherAnimationRunner$Scenes;->APP_TO_OVERVIEW_BY_VIRTUAL_KEY:Lcom/android/launcher3/LauncherAnimationRunner$Scenes;

    if-ne p2, v4, :cond_23

    sget-object p2, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAsyncFinishExecutor(Lcom/android/launcher3/util/LooperExecutor;)V

    :cond_23
    const-string/jumbo p2, "onAnimationStart(), r, finalized="

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v3, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    const-string v3, "LauncherAnimationRunner"

    invoke-static {p2, v0, v3}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v6

    invoke-static {p4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v7

    invoke-static {p5}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    move v5, p3

    invoke-interface/range {v4 .. v9}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    iget-boolean p2, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mIsFromRecents:Z

    if-nez p2, :cond_5f

    aget-boolean p2, v1, v2

    if-nez p2, :cond_5f

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0, v2, p1}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->appLaunchAnimStartOrEnd(Z[Landroid/view/RemoteAnimationTarget;)V

    goto :goto_69

    :cond_5f
    aget-boolean p0, v1, v2

    if-eqz p0, :cond_69

    const-string/jumbo p0, "pre-animation has been ended!!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    :goto_69
    return-void
.end method

.method private static synthetic lambda$static$0(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 5

    const/4 p0, 0x0

    invoke-virtual {p4, p0, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAppTransitionParamForInterrupt()Lcom/android/systemui/shared/system/AppTransitionParam;
    .registers 2

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;

    move-result-object p0

    return-object p0
.end method

.method public handleAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mIsFromRecents:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->handleAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z

    move-result p0

    :goto_e
    const-string p1, "Continue recents result = "

    const-string p2, "MultiAppLaunchInterrupt"

    invoke-static {p1, p0, p2}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p0, :cond_20

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->cleanUpRecentsAnim()V

    :cond_20
    return p0
.end method

.method public onAnimationCancelled()V
    .registers 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/b3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/b3;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .registers 14
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v7, Lcom/android/launcher3/p0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/p0;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    iget-boolean p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_28

    const-string p0, "LauncherAnimationRunner"

    const-string/jumbo p1, "onAnimationStart executed immediately"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/launcher3/p0;->run()V

    goto :goto_37

    :cond_28
    iget-boolean p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    if-eqz p1, :cond_32

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v7}, Lcom/android/systemui/shared/recents/utilities/Utilities;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_37

    :cond_32
    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v7}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_37
    return-void
.end method

.method public supportInterruption()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->supportInterruption()Z

    move-result p0

    return p0
.end method

.method public tryFinishOpenRemote(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->tryFinishOpenRemote(Ljava/lang/Runnable;)V

    return-void
.end method
