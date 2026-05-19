.class public Lcom/android/quickstep/TaskAnimationManager;
.super Lcom/android/quickstep/OplusBaseTaskAnimationManager;
.source ""

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z

.field public static final SHELL_TRANSITIONS_ROTATION:Z

.field private static final TAG:Ljava/lang/String; = "TaskAnimationManager"


# instance fields
.field private mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field private mController:Lcom/android/quickstep/RecentsAnimationController;

.field private mCtx:Landroid/content/Context;

.field private mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private mLastGestureState:Lcom/android/quickstep/GestureState;

.field private mLiveTileCleanUpHandler:Ljava/lang/Runnable;

.field private final mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

.field private final mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.wm.debug.shell_transit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "persist.wm.debug.shell_transit_rotate"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    sput-boolean v1, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;-><init>()V

    new-instance v0, Lcom/android/quickstep/TaskAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TaskAnimationManager$1;-><init>(Lcom/android/quickstep/TaskAnimationManager;)V

    iput-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    new-instance p1, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    invoke-direct {p1, p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;-><init>(Lcom/android/quickstep/TaskAnimationManager;)V

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/TaskStackChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationController;)Lcom/android/quickstep/RecentsAnimationController;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationTargets;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationTargets;)Lcom/android/quickstep/RecentsAnimationTargets;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object p1
.end method

.method public static synthetic e(Lcom/android/quickstep/views/RecentsView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->lambda$endLiveTile$1(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->lambda$preloadRecentsAnimation$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/TaskAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/TaskAnimationManager;->lambda$cancelRecentsAnimationByWmShell$2()V

    return-void
.end method

.method private synthetic lambda$cancelRecentsAnimationByWmShell$2()V
    .registers 2

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->forceCancelRecentsTransition()V

    return-void
.end method

.method private static synthetic lambda$endLiveTile$1(Lcom/android/quickstep/views/RecentsView;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$preloadRecentsAnimation$0(Landroid/content/Intent;)V
    .registers 8

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public cancelRecentsAnimationByWmShell()V
    .registers 3

    const-string v0, "TaskAnimationManager"

    const-string v1, "cancelRecentsAnimationByWmShell()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/x0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/x0;-><init>(Lcom/android/quickstep/TaskAnimationManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanUpRecentsAnimation()V
    .registers 4

    const-string v0, "cleanUpRecentsAnimation(), controller="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileCleanUpHandler:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileCleanUpHandler:Ljava/lang/Runnable;

    :cond_28
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    :cond_38
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeAllListeners()V

    :cond_3f
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRecentsAnimationRunning(Z)V

    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    iput-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->cleanUpRecentsAnimation()V

    return-void
.end method

.method public continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;
    .registers 4

    invoke-super {p0, p1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_c
    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_15
    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/GestureState;->setState(I)V

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/GestureState;->updateLastAppearedTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object p0
.end method

.method public dump()V
    .registers 1

    return-void
.end method

.method public enableLiveTileRestartListener()V
    .registers 2

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public endLiveTile()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_32

    const/4 v0, 0x0

    new-instance v1, Lcom/android/quickstep/c1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method

.method public finishRecentForLauncherRelaunch()V
    .registers 3

    const-string v0, "TaskAnimationManager"

    const-string v1, "finishRecentForLauncherRelaunch"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    if-nez v1, :cond_11

    const-string p0, "finishRecentForLauncherRelaunch return as null gesture state"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    if-nez v1, :cond_21

    const-string p0, "finishRecentForLauncherRelaunch return as null activity"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-virtual {v1}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :cond_2b
    return-void
.end method

.method public finishRunningRecentsAnimation(Z)V
    .registers 7

    const-string v0, "finishRunningRecentsAnimation: "

    const-string v1, ", mController != null ? "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const-string v3, "QuickStep"

    const-string v4, "TaskAnimationManager"

    invoke-static {v0, v1, v3, v4}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v1, v0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->notifyAnimationCanceled(Lcom/android/quickstep/RecentsAnimationController;Z)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/g1;

    invoke-direct {v1, p1, v2}, Lcom/android/quickstep/g1;-><init>(Lcom/android/quickstep/RecentsAnimationController;I)V

    goto :goto_3d

    :cond_33
    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/t;

    invoke-direct {v1, p1}, Lcom/android/quickstep/t;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    :goto_3d
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/quickstep/TaskAnimationManager;->cleanUpRecentsAnimation()V

    :cond_43
    return-void
.end method

.method public getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object p0
.end method

.method public getController()Lcom/android/quickstep/RecentsAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method public getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object p0
.end method

.method public getLastGestureState()Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method public getTaskWindowSpringScrollerController()Lcom/android/quickstep/touch/TaskWindowSpringScrollController;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mTaskWindowSpringScrollController:Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    return-object p0
.end method

.method public isRecentsAnimationRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->updateRecentTargetsIfNeed(Lcom/android/quickstep/RecentsAnimationTargets;)Lcom/android/quickstep/RecentsAnimationTargets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-interface {p1, p0, v0}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    :cond_19
    return-void
.end method

.method public preloadRecentsAnimation(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->interceptPreloadRecentsAnimation(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/h0;

    invoke-direct {v0, p1}, Lcom/android/quickstep/h0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetDividerShownState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskViewUtils;->setDividerShown([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    :cond_9
    return-void
.end method

.method public resetSplitScreenMinimized()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/quickstep/RecentsAnimationController;->setSplitScreenMinimized(Landroid/content/Context;Z)V

    :cond_a
    return-void
.end method

.method public setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLiveTileCleanUpHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;
    .registers 15
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager;->mController:Lcom/android/quickstep/RecentsAnimationController;

    const-string v1, "TaskAnimationManager"

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "New recents animation started before old animation completed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    iget-object v2, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->isRecentsAnimPendingRunning()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0}, Lcom/android/quickstep/TaskAnimationManager;->cleanUpRecentsAnimation()V

    :cond_21
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager;->mLastGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->removeFinishListener()V

    iget-object v3, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    const/4 v4, 0x1

    if-eqz v3, :cond_41

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->isRecentsAnimPendingRunning()Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_41

    :cond_36
    iget-object v3, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/RecentsAnimationCallbacks;->setReuseLastAnimation(Z)V

    iget-object v3, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeAllListeners()V

    goto :goto_56

    :cond_41
    :goto_41
    new-instance v3, Lcom/android/quickstep/RecentsAnimationCallbacks;

    sget-object v5, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/android/quickstep/TaskAnimationManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->allowMinimizeSplitScreen()Z

    move-result v6

    invoke-direct {v3, v5, v6}, Lcom/android/quickstep/RecentsAnimationCallbacks;-><init>(Lcom/android/quickstep/SystemUiProxy;Z)V

    iput-object v3, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    :goto_56
    sget-object v3, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->setOnTaskAppearedTarget(Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object v3

    iget-object v5, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v3, v5}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->gestureTriggerRecentsAnim(Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    iget-object v3, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v3, p3}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    iget-object p3, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    new-instance v3, Lcom/android/quickstep/TaskAnimationManager$2;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/quickstep/TaskAnimationManager$2;-><init>(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-virtual {p3, v3}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getSwipeUpStartTimeMs()J

    move-result-wide v7

    iget-object p3, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {p3, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    sget-boolean p3, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p3, :cond_cf

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p3

    if-eqz p3, :cond_97

    invoke-virtual {p3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isHomeTask()Z

    move-result v3

    if-eqz v3, :cond_97

    move v3, v4

    goto :goto_98

    :cond_97
    move v3, v0

    :goto_98
    sget-boolean v5, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v5, :cond_a5

    if-eqz p3, :cond_a5

    invoke-virtual {p3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isFreeformTask()Z

    move-result p3

    if-eqz p3, :cond_a5

    move v3, v4

    :cond_a5
    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->allowAllAppsFromOverview()Z

    move-result p3

    if-eqz p3, :cond_ac

    goto :goto_ad

    :cond_ac
    move v4, v3

    :goto_ad
    if-nez v4, :cond_b2

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->setTransientLaunch()Landroid/app/ActivityOptions;

    :cond_b2
    const/4 p3, 0x4

    invoke-virtual {v9, p3, v7, v8}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    iget-object v10, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->startRecentsActivityWithCallback(Landroid/content/Intent;JLandroid/app/ActivityOptions;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    const-string/jumbo p2, "startRecentsAnimation preRecentsAnimRealFinish: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    invoke-static {p2, p3, v1}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimRealFinishForSafe()V

    goto :goto_d7

    :cond_cf
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->startRecentsActivityWithCallback(Landroid/content/Intent;JLandroid/app/ActivityOptions;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    :goto_d7
    sget p2, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    invoke-virtual {p1, p2}, Lcom/android/quickstep/GestureState;->setState(I)V

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-object p0
.end method
