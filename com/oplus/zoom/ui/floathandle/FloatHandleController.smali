.class public Lcom/oplus/zoom/ui/floathandle/FloatHandleController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field private static final MSG_REMOVE_FLOAT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "FloatHandleController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatHandler:Landroid/os/Handler;

.field private mInChildMode:Z

.field private mInZenMode:Z

.field private mLastTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

.field private mLeftFloatHandleViewManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

.field private mMainExecutor:Ljava/util/concurrent/Executor;

.field private mMainHandler:Landroid/os/Handler;

.field private mRightFloatHandleViewManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

.field private mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

.field private mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

.field private mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/os/Handler;Lcom/oplus/zoom/ui/ZoomUiManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->initHandler()V

    new-instance p2, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-direct {p2, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    new-instance p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iget-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mContext:Landroid/content/Context;

    const/4 p4, 0x1

    invoke-direct {p1, p3, p4, p2, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;-><init>(Landroid/content/Context;ILcom/oplus/zoom/ui/floathandle/FloatHandleStatus;Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mLeftFloatHandleViewManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    new-instance p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iget-object p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    const/4 p4, 0x2

    invoke-direct {p1, p2, p4, p3, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;-><init>(Landroid/content/Context;ILcom/oplus/zoom/ui/floathandle/FloatHandleStatus;Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mRightFloatHandleViewManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mLeftFloatHandleViewManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->lambda$updateChildModeState$4()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    return-object p0
.end method

.method private addFloatHandle()V
    .registers 3

    const-string v0, "addFloatHandle"

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iput-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mLastTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iget v0, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->side:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mLeftFloatHandleViewManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mRightFloatHandleViewManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    :goto_16
    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    if-eqz v1, :cond_20

    if-eq v0, v1, :cond_20

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->removeFloatHandleView(Z)V

    :cond_20
    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->addFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->lambda$onDisplayChanged$1()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->lambda$updateZenModeState$3()V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->lambda$refreshFloatHandle$2()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->lambda$addFloatHandle$0()V

    return-void
.end method

.method private initHandler()V
    .registers 3

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController$1;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mFloatHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$addFloatHandle$0()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->addFloatHandle()V

    return-void
.end method

.method private synthetic lambda$onDisplayChanged$1()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->clearRestoreInfo()V

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->refreshFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method private synthetic lambda$refreshFloatHandle$2()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->refreshFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method private synthetic lambda$updateChildModeState$4()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->updateFloatHandleInSpecMode()V

    return-void
.end method

.method private synthetic lambda$updateZenModeState$3()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->updateFloatHandleInSpecMode()V

    return-void
.end method

.method private updateFloatHandleInSpecMode()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mInChildMode:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mInZenMode:Z

    if-eqz v1, :cond_f

    goto :goto_27

    :cond_f
    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/ZoomUiManager;->getActivityManager()Landroid/app/OplusActivityManager;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-static {v1, v2, v0}, Lcom/oplus/zoom/ui/common/UiUtil;->isPackageShowOnFront(Landroid/app/OplusActivityManager;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->hideFloatHandle()V

    goto :goto_2a

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->showFloatHandle()V

    goto :goto_2a

    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->hideFloatHandle()V

    :goto_2a
    return-void
.end method


# virtual methods
.method public addFloatHandle(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->addFloatHandleInfo(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFloatHandleRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getFloatHandleRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public hideFloatHandle()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->hideFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->onConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDisplayChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->isFloatHandleShow()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/a;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/ui/floathandle/a;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageRemove(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget p1, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    if-ne p1, p2, :cond_15

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->removeFloatHandle()V

    :cond_15
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->isFloatHandleShow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget v0, v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v0, p1, :cond_30

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->removeFloatHandle()V

    :cond_30
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->isFloatHandleShow()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentUserId()I

    move-result v0

    if-eq v0, p1, :cond_27

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitched removeFloatHandle userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->removeFloatHandle()V

    :cond_27
    return-void
.end method

.method public refreshFloatHandle()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->isFloatHandleShow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/common/c;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public relaunchFloatHandle()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->relaunchFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method public removeFloatHandle()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mFloatHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mFloatHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showFloatHandle()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mTargetManager:Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->getFloatHandleInfo()Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->showFloatHandleView(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void
.end method

.method public startZoomWindow(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startZoomWindow info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android:activity.mZoomLaunchFlags"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.activity.windowingMode"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->taskId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_53

    :try_start_2c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget v3, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->taskId:I

    invoke-interface {v1, v3, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZoomWindow from recent taskId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4c} :catch_4d

    goto :goto_53

    :catch_4d
    move-exception v1

    const-string v3, "startZoomWindow from recent error "

    invoke-static {v3, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_53
    :goto_53
    if-nez v2, :cond_b1

    iget-object v1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/oplus/zoom/ui/common/UiUtil;->getResolveInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_71

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_72

    :cond_71
    move-object v1, v2

    :cond_72
    :goto_72
    :try_start_72
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x800

    invoke-static {v3, v1}, Lcom/oplus/compat/content/IntentNative;->setOplusFlags(Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v3, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startZoomWindow by intent = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_aa} :catch_ab

    goto :goto_b1

    :catch_ab
    move-exception p0

    const-string p1, "startZoomWindow by intent error "

    invoke-static {p1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public updateChildModeState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->isFloatHandleShow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iput-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mInChildMode:Z

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSupperPowerModeState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->isFloatHandleShow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->removeFloatHandle()V

    :cond_e
    return-void
.end method

.method public updateZenModeState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mStatus:Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->isFloatHandleShow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iput-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mInZenMode:Z

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
