.class public Lcom/android/quickstep/SystemUiProxy;
.super Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field private static final ACTION_SYSUI_PROXY:Ljava/lang/String; = "com.oplus.intent.sysui_proxy_died"

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/SystemUiProxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final MULTI_TASKS_STARTING_TIMEOUT:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

.field private mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

.field private mBackToLauncherRunner:Landroid/view/IRemoteAnimationRunner;

.field private mContext:Landroid/content/Context;

.field private mGestureDisableTime:J

.field private mHasNavButtonAlphaBeenSet:Z

.field private mIsStartingMultipleTasks:Z

.field private mLastNavButtonAlpha:F

.field private mLastNavButtonAnimate:Z

.field private mLastShelfHeight:I

.field private mLastShelfVisible:Z

.field private mLastSystemUiStateFlags:I

.field private mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

.field private mOriginalTransactionToken:Landroid/os/IBinder;

.field private mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

.field private mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

.field private mPip:Lcom/android/wm/shell/pip/IPip;

.field private mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

.field private mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

.field private mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

.field private final mRecentsPendingIntent:Landroid/app/PendingIntent;

.field private mRecoverGestureState:Landroid/os/Handler;

.field private mRecoverGestureStateRunnable:Ljava/lang/Runnable;

.field private final mRemoteTransitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/window/RemoteTransition;",
            "Landroid/window/TransitionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

.field private mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

.field private mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

.field private mStartingWindowListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/quickstep/SystemUiProxy;

    const-string v0, "SystemUiProxy"

    sput-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/a;->c:Lcom/android/launcher3/util/a;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;-><init>()V

    new-instance v0, Lcom/android/quickstep/t1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/t1;-><init>(Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOriginalTransactionToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/SystemUiProxy;->mHasNavButtonAlphaBeenSet:Z

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureState:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/quickstep/SystemUiProxy;->mIsStartingMultipleTasks:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/quickstep/SystemUiProxy;->mGestureDisableTime:J

    new-instance v0, Lcom/android/quickstep/t;

    invoke-direct {v0, p0}, Lcom/android/quickstep/t;-><init>(Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureStateRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    const v2, 0x3000008

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentsPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/android/quickstep/SystemUiProxy;FZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->lambda$setNavBarButtonAlpha$2(FZ)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/SystemUiProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->lambda$new$1()V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/SystemUiProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->clearProxy()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 3

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "systemUiProxy maybe died, so we should clear proxy now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->setState(I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/h0;-><init>(Lcom/android/quickstep/SystemUiProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->sendBroadcastToReconnect()V

    return-void
.end method

.method private synthetic lambda$setNavBarButtonAlpha$2(FZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->setNavBarButtonAlpha(FZ)V

    return-void
.end method

.method private linkToDeath()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_16

    :try_start_4
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_16

    :catch_f
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to link sysui proxy death recipient"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    return-void
.end method

.method private releasePip(Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/pip/IPip;)V
    .registers 9

    const-string v0, ", mPipAnimationListener="

    const-string v1, ", newPip="

    const-string/jumbo v2, "setProxy oldPip="

    if-eqz p1, :cond_65

    if-eq p1, p2, :cond_65

    iget-object v3, p0, Lcom/android/quickstep/SystemUiProxy;->mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

    if-eqz v3, :cond_65

    const/4 v3, 0x0

    :try_start_10
    invoke-interface {p1, v3}, Lcom/android/wm/shell/pip/IPip;->setPipAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/quickstep/SystemUiProxy;->mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_35} :catch_36

    goto :goto_65

    :catch_36
    move-exception v3

    sget-object v4, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", e:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    return-void
.end method

.method private resetStartingMultipleTasksIfNeed()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mIsStartingMultipleTasks:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/quickstep/SystemUiProxy;->mGestureDisableTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->resetStartingMultipleTasks()V

    :cond_19
    return-void
.end method

.method private setupTransactionQueue()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOriginalTransactionToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-nez p0, :cond_d

    invoke-static {v0}, Landroid/view/SurfaceControl$Transaction;->setDefaultApplyToken(Landroid/os/IBinder;)V

    return-void

    :cond_d
    :try_start_d
    invoke-interface {p0}, Lcom/android/wm/shell/transition/IShellTransitions;->getShellApplyToken()Landroid/os/IBinder;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_1f

    if-nez p0, :cond_1b

    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Didn\'t receive apply token from Shell"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    invoke-static {p0}, Landroid/view/SurfaceControl$Transaction;->setDefaultApplyToken(Landroid/os/IBinder;)V

    return-void

    :catch_1f
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Error getting Shell\'s apply token"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private unlinkToDeath()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_e
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public clearBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherRunner:Landroid/view/IRemoteAnimationRunner;

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-nez p0, :cond_f

    return-void

    :cond_f
    :try_start_f
    invoke-interface {p0}, Lcom/android/wm/shell/back/IBackAnimation;->clearBackToLauncherCallback()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call clearBackToLauncherCallback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public clearProxy()V
    .registers 12

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "clearProxy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->release(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V

    return-void
.end method

.method public expandNotificationPanel()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->expandNotificationPanel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call expandNotificationPanel"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public getIsStartingMultipleTasks()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->resetStartingMultipleTasksIfNeed()V

    iget-boolean p0, p0, Lcom/android/quickstep/SystemUiProxy;->mIsStartingMultipleTasks:Z

    return p0
.end method

.method public getLastNavButtonAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAlpha:F

    return p0
.end method

.method public getLastSystemUiStateFlags()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastSystemUiStateFlags:I

    return p0
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_11

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call getNonMinimizedSplitScreenSecondaryBounds"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecentTasks(II)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz p0, :cond_2b

    const/4 v0, 0x2

    :try_start_5
    invoke-interface {p0, p1, v0, p2}, Lcom/android/wm/shell/recents/IRecentTasks;->getRecentTasks(III)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p0

    if-nez p0, :cond_18

    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "getRecentTasks(), rawTasks null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_18
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_21} :catch_22
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p2, "Failed call getRecentTasks"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :cond_2b
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "getRecentTasks(), mRecentTasks null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getRunningTasks(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.pc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :try_start_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->getRunningTasks(I)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call getRunningTasks"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p2, "Failed call handleImageAsScreenshot"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_f

    :try_start_4
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call handleImageBundleAsScreenshot"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void
.end method

.method public isActive()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call notifyAccessibilityButtonClicked"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call notifyAccessibilityButtonLongClicked"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public notifyPrioritizedRotation(I)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_1f

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyPrioritizedRotation(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed call notifyPrioritizedRotation with arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public notifySwipeToHomeFinished()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToHomeFinished()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call notifySwipeToHomeFinished"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public notifySwipeUpGestureStarted()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeUpGestureStarted()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call notifySwipeUpGestureStarted"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public notifySysuiSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    if-eqz p0, :cond_13

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;->onLauncherSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_13

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call notifySysuiSmartspaceStateUpdated"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method

.method public notifyTaskbarAutohideSuspend(Z)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_1f

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyTaskbarAutohideSuspend(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed call notifyTaskbarAutohideSuspend with arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public notifyTaskbarStatus(ZZ)V
    .registers 6

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_27

    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyTaskbarStatus(ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_27

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed call notifyTaskbarStatus with arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return-void
.end method

.method public onAssistantGestureCompletion(F)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call onAssistantGestureCompletion"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public onAssistantProgress(F)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_1f

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed call onAssistantProgress with progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onBackPressed()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call onBackPressed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 4

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_a

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->setNavBarButtonAlpha(FZ)V

    :cond_a
    return-void
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call onGoingToRecentsLegacy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public onImeSwitcherPressed()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onImeSwitcherPressed()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call onImeSwitcherPressed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public onOverviewShown(Z)V
    .registers 3

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    return-void
.end method

.method public onOverviewShown(ZLjava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_20

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onOverviewShown(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_20

    :catch_8
    move-exception p0

    const-string v0, "Failed call onOverviewShown from: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_14

    const-string p1, "home"

    goto :goto_16

    :cond_14
    const-string p1, "app"

    :goto_16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 4

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz p0, :cond_16

    :try_start_a
    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call onStartingSplitLegacy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-object v1
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call onStatusBarMotionEvent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_10

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call registerRecentTasksListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    return-void
.end method

.method public registerRemoteTransition(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p2, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call registerRemoteTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call registerSplitScreenListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    return-void
.end method

.method public removeFromSideStage(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz p0, :cond_f

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->removeFromSideStage(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call removeFromSideStage"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void
.end method

.method public resetStartingMultipleTasks()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mIsStartingMultipleTasks:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureState:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/quickstep/SystemUiProxy;->mGestureDisableTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mIsStartingMultipleTasks:Z

    return-void
.end method

.method public sendBroadcastToReconnect()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.intent.sysui_proxy_died"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendBroadcastToReconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherRunner:Landroid/view/IRemoteAnimationRunner;

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-nez p0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/back/IBackAnimation;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p2, "Failed call setBackToLauncherCallback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public setHomeRotationEnabled(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setHomeRotationEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call onBackPressed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public setIsStartingMultipleTasks()V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/SystemUiProxy;->mGestureDisableTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mIsStartingMultipleTasks:Z

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureState:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureState:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecoverGestureStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLastSystemUiStateFlags(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/SystemUiProxy;->mLastSystemUiStateFlags:I

    return-void
.end method

.method public setLauncherUnlockAnimationController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    if-eqz v0, :cond_16

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;->setLauncherUnlockController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;->dispatchSmartspaceStateToSysui()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call setStartingWindowListener"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    :cond_16
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    :cond_18
    :goto_18
    return-void
.end method

.method public setNavBarButtonAlpha(FZ)V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAnimate:Z

    if-ne p2, v0, :cond_14

    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mHasNavButtonAlphaBeenSet:Z

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    move v0, v1

    :goto_15
    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_23

    new-instance v0, Lcom/android/quickstep/u1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/u1;-><init>(Lcom/android/quickstep/SystemUiProxy;FZ)V

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    goto :goto_35

    :cond_23
    iput p1, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAlpha:F

    iput-boolean p2, p0, Lcom/android/quickstep/SystemUiProxy;->mLastNavButtonAnimate:Z

    iput-boolean v1, p0, Lcom/android/quickstep/SystemUiProxy;->mHasNavButtonAlphaBeenSet:Z

    :try_start_29
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setNavBarButtonAlpha(FZ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p2, "Failed call setNavBarButtonAlpha"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    :goto_35
    return-void
.end method

.method public setPipAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v0, :cond_10

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/wm/shell/pip/IPip;->setPipAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call setPinnedStackAnimationListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

    return-void
.end method

.method public setPipAnimationTypeToAlpha()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPip;->setPipAnimationTypeToAlpha()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call setPipAnimationTypeToAlpha"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->unlinkToDeath()V

    iput-object p1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->releasePip(Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/pip/IPip;)V

    iput-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    iput-object p3, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iput-object p4, p0, Lcom/android/quickstep/SystemUiProxy;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    iput-object p5, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    iput-object p6, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    iput-object p8, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iput-object p7, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-eqz p1, :cond_39

    if-eqz p9, :cond_24

    if-eq p1, p9, :cond_39

    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz p1, :cond_39

    :cond_24
    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p2, "Try clearBackToLauncherCallback while clear proxy"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2b
    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    invoke-interface {p1}, Lcom/android/wm/shell/back/IBackAnimation;->clearBackToLauncherCallback()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception p1

    sget-object p2, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p3, "Failed call clearBackToLauncherCallback while clear proxy"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    iput-object p9, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->linkToDeath()V

    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPipAnimationListener:Lcom/android/wm/shell/pip/IPipAnimationListener;

    if-eqz p1, :cond_49

    iget-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz p2, :cond_49

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->setPipAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    :cond_49
    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    if-eqz p1, :cond_54

    iget-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz p2, :cond_54

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    :cond_54
    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindowListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    if-eqz p1, :cond_5f

    iget-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    if-eqz p2, :cond_5f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    :cond_5f
    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    const/4 p2, 0x0

    if-eqz p1, :cond_6d

    iget-object p3, p0, Lcom/android/quickstep/SystemUiProxy;->mSysuiUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    if-eqz p3, :cond_6d

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->setLauncherUnlockAnimationController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V

    iput-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingLauncherUnlockAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    :cond_6d
    new-instance p1, Ljava/util/LinkedHashMap;

    iget-object p3, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/LinkedHashMap;

    invoke-direct {p1, p3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance p3, Lcom/android/quickstep/v1;

    invoke-direct {p3, p0}, Lcom/android/quickstep/v1;-><init>(Lcom/android/quickstep/SystemUiProxy;)V

    invoke-virtual {p1, p3}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->setupTransactionQueue()V

    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz p1, :cond_8a

    iget-object p3, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz p3, :cond_8a

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    :cond_8a
    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackAnimation:Lcom/android/wm/shell/back/IBackAnimation;

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz p1, :cond_97

    iget-object p3, p0, Lcom/android/quickstep/SystemUiProxy;->mBackToLauncherRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p0, p1, p3}, Lcom/android/quickstep/SystemUiProxy;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;Landroid/view/IRemoteAnimationRunner;)V

    :cond_97
    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    if-eqz p1, :cond_a0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-object p2, p0, Lcom/android/quickstep/SystemUiProxy;->mPendingSetNavButtonAlpha:Ljava/lang/Runnable;

    :cond_a0
    iget-object p1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->init(Landroid/content/Context;)V

    :cond_a9
    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_bf

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result p0

    if-eqz p0, :cond_bf

    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "SystemUiProxy onInitialize to update expand data"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x1c2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateRecentTaskDelay(J)V

    :cond_bf
    return-void
.end method

.method public setShelfHeight(ZI)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfVisible:Z

    if-ne p1, v0, :cond_b

    iget v0, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfHeight:I

    if-eq p2, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v1, :cond_39

    if-eqz v0, :cond_39

    iput-boolean p1, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfVisible:Z

    iput p2, p0, Lcom/android/quickstep/SystemUiProxy;->mLastShelfHeight:I

    :try_start_16
    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/pip/IPip;->setShelfHeight(ZI)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_39

    :catch_1a
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed call setShelfHeight visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setSplitScreenMinimized(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call setSplitScreenMinimized"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindow:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    if-eqz v0, :cond_10

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/wm/shell/startingsurface/IStartingWindow;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v2, "Failed call setStartingWindowListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mStartingWindowListener:Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    return-void
.end method

.method public shareTransactionQueue()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOriginalTransactionToken:Landroid/os/IBinder;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/SurfaceControl$Transaction;->getDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOriginalTransactionToken:Landroid/os/IBinder;

    :cond_a
    invoke-direct {p0}, Lcom/android/quickstep/SystemUiProxy;->setupTransactionQueue()V

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call startAssistant"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 14

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_1f

    :try_start_4
    invoke-static {}, Lcom/android/quickstep/util/LogUtils;->getShellShareableInstanceId()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/InstanceId;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call startIntent"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v1, :cond_28

    :try_start_5
    invoke-static {}, Lcom/android/quickstep/util/LogUtils;->getShellShareableInstanceId()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    const/4 v4, -0x1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/logging/InstanceId;

    move-object v3, p1

    move-object/from16 v5, p4

    move v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_28

    :catch_21
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call startTasksWithLegacyTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void
.end method

.method public startOneHandedMode()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->startOneHanded()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call startOneHandedMode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/quickstep/RecentsAnimationCallbacks;)Z
    .registers 15

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecentsActivity, "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v4

    :goto_12
    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    return v4

    :cond_1d
    new-instance v10, Lcom/android/quickstep/SystemUiProxy$1;

    invoke-direct {v10, p0, p3}, Lcom/android/quickstep/SystemUiProxy$1;-><init>(Lcom/android/quickstep/SystemUiProxy;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    invoke-virtual {p3, v10}, Lcom/android/quickstep/RecentsAnimationCallbacks;->setRecentsRunner(Landroid/view/IRecentsAnimationRunner;)V

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    :try_start_29
    sget-object p2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setAsyncUx(I)V

    iget-object v5, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    iget-object v6, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentsPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v9

    move-object v7, p1

    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/recents/IRecentTasks;->startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V

    invoke-virtual {p2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setAsyncUx(I)V

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->refreshLastStartTime()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_4a} :catch_4b

    return v3

    :catch_4b
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p2, "Error starting recents via shell"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimStartTime()V

    return v4
.end method

.method public startScreenPinning(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call startScreenPinning"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_15

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_a
    invoke-interface/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call startShortcut"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v0, :cond_16

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    :try_start_9
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/pip/IPip;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p2, "Failed call startSwipePipToHome"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v1, :cond_66

    :try_start_5
    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->setIsStartingMultipleTasks()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTasks(), mainTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sideTaskId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sidePosition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", splitRatio="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_45
    move v3, p1

    move/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    :goto_4c
    iget-object v4, v0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    const/4 v12, 0x0

    move v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v4 .. v12}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call startTask"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v1, :cond_20

    :try_start_5
    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->setIsStartingMultipleTasks()V

    iget-object v2, v0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    const/4 v10, 0x0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call startTasksWithLegacyTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public stopOneHandedMode()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->stopOneHanded()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call stopOneHandedMode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public stopScreenPinning()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call stopScreenPinning"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz p0, :cond_f

    :try_start_4
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/IPip;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call stopSwipePipToHome"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void
.end method

.method public takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_f

    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string p1, "Failed call takeScreenshot"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void
.end method

.method public toggleNotificationPanel()V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_10

    :try_start_4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->toggleNotificationPanel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call toggleNotificationPanel"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public unregisterRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->unregisterRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call unregisterRecentTasksListener"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    return-void
.end method

.method public unregisterRemoteTransition(Landroid/window/RemoteTransition;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->unregisterRemote(Landroid/window/RemoteTransition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v1, "Failed call registerRemoteTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy;->mRemoteTransitions:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->TAG:Ljava/lang/String;

    const-string v0, "Failed call unregisterSplitScreenListener"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    return-void
.end method

.method public unshareTransactionQueue()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOriginalTransactionToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Landroid/view/SurfaceControl$Transaction;->setDefaultApplyToken(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/SystemUiProxy;->mOriginalTransactionToken:Landroid/os/IBinder;

    return-void
.end method
