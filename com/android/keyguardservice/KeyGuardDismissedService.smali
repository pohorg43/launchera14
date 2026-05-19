.class public Lcom/android/keyguardservice/KeyGuardDismissedService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;
    }
.end annotation


# static fields
.field private static final DELAY_FRAME_NUM:J = 0x3L

.field private static final DELAY_HANDLE_PENDING_LOCK_MSG_TIME:I = 0x50

.field private static final MESSAGE_TIMEOUT:I = 0x12c

.field public static final MSG_ARG_UNLOCK_FROM_WINDOW_FOCUS:I = 0x2

.field private static final MSG_CHANGE_PAGE_VISIBILITY:I = 0x1

.field private static final MSG_DO_ANIMATION:I = 0x2

.field private static final MSG_HIDE_FOLDER:I = 0x3

.field private static final MSG_HIDE_PAGE:I = 0x1

.field public static final MSG_LAUNCHER_ON_STOP:I = 0x66

.field private static final MSG_LOCK_SCREEN:I = 0x5

.field private static final MSG_PENDING_LOCK_MSG:I = 0x68

.field private static final MSG_REMOVE_PENDING_LOCK_MSG:I = 0x67

.field public static final MSG_UNLOCK_SCREEN:I = 0x4

.field private static final PENDING_LOCK_MSG_ALIVE_TIME:J = 0x1f4L

.field public static final STATE_INITIALIZED:I = 0x0

.field public static final STATE_INITIALIZING:I = -0x1

.field public static final STATE_LOCK:I = 0x2

.field public static final STATE_UNLOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyGuardDismissedService"

.field private static sShowUnlockAnimationOnNextResume:Z


# instance fields
.field private final mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

.field private mPendingLockScreenMsg:Z

.field private mPreviousMsg:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;-><init>(Lcom/android/keyguardservice/KeyGuardDismissedService;)V

    iput-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPreviousMsg:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/keyguardservice/KeyGuardDismissedService;->lambda$handleMessage$0(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private doHideDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 6

    const-string p0, "KeyGuardDismissedService"

    const-string v0, "doHideDragLayer"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_21

    const-string v0, "doHideDragLayer Launcher  in state ALL_APPS"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_21
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_37

    const-string p2, "[doHideDragLayer] Launcher not in state NORMAL, ignore unlock anim"

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_37
    sput-boolean v2, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getDismissKeyguardAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "doHideDragLayer and stop unlockAnimaSet."

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->setIsUnlockAnimActiveEnd(Z)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_50
    instance-of p0, p1, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_6c

    move-object p0, p1

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p0

    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->getPullDownAnimator()Lcom/android/launcher/touch/PullDownAnimator;

    move-result-object p0

    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->getPullCancelAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6c
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/OplusWorkspace;->setDragLayerAlpha(F)V

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->resetFinalScroll()V

    return-void
.end method

.method private handlePendingLock(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/android/keyguardservice/KeyGuardDismissedService;->doHideDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    :cond_e
    return-void
.end method

.method private isPowerSaveMode()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "KeyGuardDismissedService"

    if-nez p0, :cond_f

    const-string p0, "isPowerSaveMode launcherAppState is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherModel;->getIsPowerSaveModeState()Z

    move-result p0

    const-string v0, "is powersavermode:"

    invoke-static {v0, p0, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0

    :cond_1f
    return v0
.end method

.method private static synthetic lambda$handleMessage$0(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x1

    const v1, 0x325d8b

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method

.method private notResumeOrStartState(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private resetDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    const-string p0, "KeyGuardDismissedService"

    if-eqz p1, :cond_6b

    if-nez p2, :cond_7

    goto :goto_6b

    :cond_7
    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getDismissKeyguardAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6a

    const-string/jumbo v1, "resetDragLayer all views"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_26
    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2f
    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_6a

    invoke-virtual {p2, p0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    const/4 p1, 0x0

    :goto_41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_6a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_41

    :cond_6a
    return-void

    :cond_6b
    :goto_6b
    const-string/jumbo p1, "resetDragLayer launcher or workspace is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPendingLockScreenMsg(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    const-string v3, "KeyGuardDismissedService"

    if-nez v2, :cond_12

    const-string v0, "handleMessage --- LauncherAppState is null, return"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_293

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    if-nez v4, :cond_28

    const-string v0, "handleMessage --- workspace is null, do nothing, return!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v7

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v9, :cond_88

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    const-string v16, "handleMessage --- msg.what = "

    aput-object v16, v9, v15

    iget v15, v1, Landroid/os/Message;->what:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const-string v15, ", msg.arg1 = "

    aput-object v15, v9, v13

    iget v15, v1, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v12

    const-string v15, ", deltaTime = "

    aput-object v15, v9, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v9, v10

    const/4 v15, 0x6

    const-string v16, "launcher.isStarted()="

    aput-object v16, v9, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v15

    const/16 v7, 0x8

    const-string v15, " hasBeenResumed="

    aput-object v15, v9, v7

    const/16 v7, 0x9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v3, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_88
    const-wide/16 v7, 0x12c

    cmp-long v7, v5, v7

    if-lez v7, :cond_90

    move v7, v14

    goto :goto_91

    :cond_90
    const/4 v7, 0x0

    :goto_91
    iget v8, v1, Landroid/os/Message;->what:I

    if-ne v14, v8, :cond_c5

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v14, :cond_9c

    sget-object v2, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    goto :goto_9e

    :cond_9c
    sget-object v2, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    :goto_9e
    sget-object v8, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    if-ne v2, v8, :cond_c0

    if-eqz v7, :cond_c0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_28e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyGuardDismissedService launcher is busy, so ignore the hide page message deltaTime = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28e

    :cond_c0
    invoke-virtual {v4, v2}, Lcom/android/launcher3/OplusWorkspace;->postSetCurrentPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;)V

    goto/16 :goto_28e

    :cond_c5
    if-ne v13, v8, :cond_f3

    iget v9, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPreviousMsg:I

    if-ne v9, v14, :cond_f3

    if-eqz v7, :cond_ee

    sget-object v2, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/OplusWorkspace;->postSetCurrentPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_28e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyGuardDismissedService launcher is busy, so ignore the animation message, but we ensure the launcher page\'s visibility deltaTime = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28e

    :cond_ee
    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->postDoKeyguardDismissedAnim()V

    goto/16 :goto_28e

    :cond_f3
    if-ne v12, v8, :cond_123

    const-string v5, "handleMessage: MSG_HIDE_FOLDER, execute delayed 30 ms approximately."

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_111

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_111

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :cond_111
    new-instance v3, Lcom/android/keyguardservice/a;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/android/keyguardservice/a;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v5

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/launcher3/OplusWorkspace;->postDelayCloseFolder(Ljava/lang/Runnable;J)V

    goto/16 :goto_28e

    :cond_123
    const-string v5, "Unlock animation is disabled"

    const/16 v6, 0x66

    const/16 v7, 0x68

    if-ne v11, v8, :cond_201

    sget-object v8, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v8}, Lcom/android/common/util/LauncherAnimConfig;->isUnLockAnimDisable()Z

    move-result v8

    if-eqz v8, :cond_137

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_137
    iget-boolean v5, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    if-eqz v5, :cond_145

    iget v5, v1, Landroid/os/Message;->arg1:I

    if-ne v5, v13, :cond_145

    const-string v0, "handleMessage --- pend lock msg and unlock from window focus, return!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_145
    const-string v5, "handleMessage --- unlock screen,pendingLock="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    invoke-static {v5, v8, v3}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    iget-object v5, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v5, :cond_195

    const-string v1, "handleMessage --- isOverlayShown, do nothing, return!"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v12, :cond_191

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_191

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_191

    invoke-virtual {v4, v6}, Lcom/android/launcher3/OplusWorkspace;->setDragLayerAlpha(F)V

    const-string v0, "handleMessage --- isOverlayShown, setDragLayerAlpha!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_191
    invoke-virtual {v2, v14}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_195
    iget v5, v1, Landroid/os/Message;->arg1:I

    if-eq v5, v13, :cond_1a7

    const-string v5, "Need to unLockToResetFinalScroll"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_19e
    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->unLockToResetFinalScroll()V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a1} :catch_1a2

    goto :goto_1a7

    :catch_1a2
    const-string v5, "handleMessage unlock, unLockToResetFinalScroll error"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a7
    :goto_1a7
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result v5

    if-eq v5, v13, :cond_1b6

    const-string v0, "handleMessage unlock, launcher dismissState!=STATE_LOCK, do nothing, return!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_1b6
    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v5, v7, :cond_1cb

    const-string v0, "Launcher not in state NORMAL, ignore unlock anim"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    return-void

    :cond_1cb
    sget-boolean v5, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    if-nez v5, :cond_1d5

    const-string v0, "mShowUnlockAnimationOnNextResume=false, ignored this unlock msg."

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d5
    invoke-direct {v0, v2}, Lcom/android/keyguardservice/KeyGuardDismissedService;->notResumeOrStartState(Lcom/android/launcher3/Launcher;)Z

    move-result v5

    if-nez v5, :cond_1f2

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguardservice/KeyGuardDismissedService;->isPowerSaveMode()Z

    move-result v5

    if-eqz v5, :cond_1e2

    goto :goto_1f2

    :cond_1e2
    const-string v5, "handle unlock msg, do unlock anim finally"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->doUnlockAnim()V

    invoke-virtual {v2, v14}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    goto/16 :goto_28e

    :cond_1f2
    :goto_1f2
    const/4 v0, 0x0

    const-string v1, "handleMessage --- launcher has not started, reset to init state, or isPowerSaveMode, return!"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher3/OplusWorkspace;->setDragLayerAlpha(F)V

    invoke-virtual {v2, v14}, Lcom/android/launcher3/Launcher;->setDismissState(I)V

    sput-boolean v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->sShowUnlockAnimationOnNextResume:Z

    return-void

    :cond_201
    const/4 v9, 0x0

    if-ne v10, v8, :cond_22d

    sget-object v6, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v6}, Lcom/android/common/util/LauncherAnimConfig;->isUnLockAnimDisable()Z

    move-result v6

    if-eqz v6, :cond_210

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_210
    invoke-direct {v0, v9}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_229

    const-string v1, "handle MSG_LOCK_SCREEN, launcher is started, pending lock and return!"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v14}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    iget-object v0, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_229
    invoke-direct {v0, v2, v4}, Lcom/android/keyguardservice/KeyGuardDismissedService;->doHideDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    goto :goto_28e

    :cond_22d
    if-ne v6, v8, :cond_270

    const-string v5, "handle MSG_LAUNCHER_ON_STOP,pendingLock="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", dismissState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    if-nez v5, :cond_262

    invoke-static {v2}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_25e

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result v5

    if-nez v5, :cond_25e

    goto :goto_262

    :cond_25e
    invoke-direct {v0, v2, v4}, Lcom/android/keyguardservice/KeyGuardDismissedService;->resetDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    goto :goto_28e

    :cond_262
    :goto_262
    const-string/jumbo v5, "process pending lock msg."

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/android/keyguardservice/KeyGuardDismissedService;->doHideDragLayer(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    goto :goto_28e

    :cond_270
    const/4 v5, 0x0

    const/16 v6, 0x67

    if-ne v6, v8, :cond_27e

    const-string v2, "handle MSG_REMOVE_PENDING_LOCK_MSG"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/android/keyguardservice/KeyGuardDismissedService;->setPendingLockScreenMsg(Z)V

    goto :goto_28e

    :cond_27e
    if-ne v7, v8, :cond_28e

    const-string v5, "handle MSG_PENDING_LOCK_MSG mPendingLockScreenMsg ="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPendingLockScreenMsg:Z

    invoke-static {v5, v6, v3}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/android/keyguardservice/KeyGuardDismissedService;->handlePendingLock(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    :cond_28e
    :goto_28e
    iget v1, v1, Landroid/os/Message;->what:I

    iput v1, v0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mPreviousMsg:I

    return-void

    :cond_293
    const-string v0, "handleMessage --- launcher is null, do nothing, return!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    new-instance p1, Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedService;->mKeyGuardDismissedHandler:Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
