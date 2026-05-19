.class public Lcom/oplus/zoom/ui/tips/TipsController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Tips"

.field private static final WHAT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

.field private mHandleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

.field private mHandler:Landroid/os/Handler;

.field private mHideAllTips:Z

.field private mIsMini:Z

.field private mIsNeedShowGestureTips:Z

.field private mIsTipsViewShowing:I

.field private mMainExecutor:Ljava/util/concurrent/Executor;

.field private mMiniGestureCloseTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

.field private mMiniTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

.field private mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

.field private mSimpleModeTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

.field private mSnackBarManager:Lcom/oplus/zoom/ui/tips/SnackBarManager;

.field private mToastManager:Lcom/oplus/zoom/ui/tips/ToastManager;

.field private mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oplus/zoom/ui/ZoomUiManager;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsTipsViewShowing:I

    iput-boolean p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsNeedShowGestureTips:Z

    iput-boolean p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->initManager(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$initFlexibleTips$4(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTip(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/ui/tips/TipsController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$updateUiStyle$6()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/ui/tips/TipsController;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$showCompatibilityToast$5(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$initManager$3(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$initManager$1(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$initManager$0(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/zoom/ui/tips/TipsController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$dismissSnackBar$7()V

    return-void
.end method

.method public static synthetic h(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->lambda$initManager$2(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method private initFlexibleTips(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/oplus/flexible/ScreenUtils;->getInstance()Lcom/oplus/flexible/ScreenUtils;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/flexible/ScreenUtils;->initAndRegisterFoldingModeChangeObserver(Landroid/content/Context;)V

    new-instance v0, Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance p1, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {p1, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;)V

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;->setTipsChangeListener(Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;)V

    return-void
.end method

.method private synthetic lambda$dismissSnackBar$7()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSnackBarManager:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->dismissSnackBar()V

    return-void
.end method

.method private synthetic lambda$initFlexibleTips$4(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 3

    const-string p1, "Tips"

    const-string v0, "mFlexibleLongClickManager gone"

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSnackBarManager:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->showSnackBar()V

    return-void
.end method

.method private synthetic lambda$initManager$0(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 4

    const-string v0, "Tips"

    const-string v1, "mHandleTipsManager gone"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->showScaleTips(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V

    return-void
.end method

.method private synthetic lambda$initManager$1(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 6

    const-string v0, "Tips"

    const-string v1, "mScaleTipsManager gone"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isSupportPocketStudio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {}, Lcom/oplus/flexible/ScreenUtils;->getInstance()Lcom/oplus/flexible/ScreenUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/flexible/ScreenUtils;->isFolded()Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-eqz v1, :cond_55

    invoke-static {}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getRunningTaskWithoutZoom()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScaleTipsManager runningTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTip(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V

    goto :goto_5a

    :cond_4f
    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSnackBarManager:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->showSnackBar()V

    goto :goto_5a

    :cond_55
    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSnackBarManager:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/SnackBarManager;->showSnackBar()V

    :goto_5a
    return-void
.end method

.method private synthetic lambda$initManager$2(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsNeedShowGestureTips:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showMiniGestureCloseTips(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$initManager$3(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 4

    const-string v0, "Tips"

    const-string v1, "mSimpleModeTipsManager gone"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTip(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method private synthetic lambda$showCompatibilityToast$5(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mToastManager:Lcom/oplus/zoom/ui/tips/ToastManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/zoom/ui/tips/ToastManager;->showCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$updateUiStyle$6()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->initManager(Landroid/content/Context;)V

    return-void
.end method

.method private showFlexibleLongClickTip(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTip(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V

    return-void
.end method

.method private showFlexibleLongClickTip(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    const-string v1, "Tips"

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsMini:Z

    if-eqz v0, :cond_c

    goto/16 :goto_8c

    :cond_c
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isSupportPocketStudio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-static {}, Lcom/oplus/flexible/ScreenUtils;->getInstance()Lcom/oplus/flexible/ScreenUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/flexible/ScreenUtils;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_86

    :cond_1f
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string v2, "flexible_long_tip_"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x68

    if-eqz p2, :cond_46

    if-nez v0, :cond_85

    const-string p2, "showFlexibleLongClickTip isShowForce"

    invoke-static {v1, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0, p1, v2, p2}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V

    goto :goto_85

    :cond_46
    if-eqz v0, :cond_4e

    const-string p0, "showFlexibleLongClickTip has shown"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    invoke-static {}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getRunningTaskWithoutZoom()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFlexibleLongClickTip runningTask:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_85

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_85

    const-string p2, "showFlexibleLongClickTip"

    invoke-static {v1, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0, p1, v2, p2}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V

    :cond_85
    :goto_85
    return-void

    :cond_86
    :goto_86
    const-string p0, "showFlexibleLongClickTip ignore"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8c
    :goto_8c
    const-string p1, "showFlexibleLongClickTip mHideAllTips:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",mIsMini:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsMini:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showFlexibleLongClickTipDelay(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showMiniGestureCloseTips(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    const-string v1, "Tips"

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsMini:Z

    if-nez v0, :cond_b

    goto :goto_30

    :cond_b
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string v2, "mini_gesture_close_tip_"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "showMiniGestureCloseTips"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x69

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniGestureCloseTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V

    :cond_2f
    return-void

    :cond_30
    :goto_30
    const-string p0, "call last tip hide, dont show gesture close tips"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showMiniTip(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string v1, "mini_tip_"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "Tips"

    const-string v1, "showMiniTips"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x67

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V

    return-void

    :cond_27
    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsNeedShowGestureTips:Z

    if-eqz v0, :cond_2f

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showMiniGestureCloseTips(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void

    :cond_2f
    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    :cond_3e
    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    :cond_45
    return-void
.end method

.method private showScaleTips(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsMini:Z

    if-eqz v0, :cond_9

    goto :goto_38

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string v1, "scale_tip_"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_29

    const/16 p2, 0x66

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V

    goto :goto_37

    :cond_29
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;->updateZoom(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    if-eqz p2, :cond_34

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTip(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    goto :goto_37

    :cond_34
    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTipDelay(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :goto_37
    return-void

    :cond_38
    :goto_38
    const-string p0, "Tips"

    const-string p1, "call last tip hide, dont show"

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V
    .registers 7

    if-nez p3, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsTipsViewShowing:I

    const-string v1, "Tips"

    if-ne v0, p2, :cond_f

    const-string p0, "is tip view showing on zoom show"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/TipsController;->hideAllTipsView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTipsView:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flag :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/ui/tips/TipsController;->setIsTipsViewShowing(I)V

    invoke-virtual {p3, p1, p2}, Lcom/oplus/zoom/ui/tips/TipsManager;->showTips(Lcom/oplus/zoom/common/ZoomPositionInfo;I)V

    const/16 p1, 0x65

    const/4 p3, 0x1

    if-ne p2, p1, :cond_52

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string p2, "simple_mode_tip_"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_ce

    :cond_52
    const/16 p1, 0x64

    if-ne p2, p1, :cond_6b

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string p2, "handle_tip_"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_ce

    :cond_6b
    const/16 p1, 0x66

    if-ne p2, p1, :cond_84

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string p2, "scale_tip_"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_ce

    :cond_84
    const/16 p1, 0x67

    if-ne p2, p1, :cond_9d

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string p2, "mini_tip_"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_ce

    :cond_9d
    const/16 p1, 0x68

    if-ne p2, p1, :cond_b6

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string p2, "flexible_long_tip_"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_ce

    :cond_b6
    const/16 p1, 0x69

    if-ne p2, p1, :cond_ce

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string p2, "mini_gesture_close_tip_"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_ce
    :goto_ce
    return-void
.end method


# virtual methods
.method public dismissSnackBar()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSnackBarManager:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public getUiManager()Lcom/oplus/zoom/ui/ZoomUiManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    return-object p0
.end method

.method public hideAllTipsView()V
    .registers 3

    iget v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsTipsViewShowing:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    const-string v1, "Tips"

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSimpleModeTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniGestureCloseTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-nez v0, :cond_1c

    goto :goto_50

    :cond_1c
    const-string v0, "hideAllTipsView"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSimpleModeTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mFlexibleLongClickManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    :cond_46
    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniGestureCloseTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/tips/TipsManager;->hideTips()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->setIsTipsViewShowing(I)V

    return-void

    :cond_50
    :goto_50
    const-string p0, "hideAllTipsView error, manager null"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initManager(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/oplus/zoom/ui/tips/TipsController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/zoom/ui/tips/TipsController$1;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSimpleModeTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Lcom/oplus/zoom/ui/tips/SnackBarManager;

    invoke-direct {v0, p0, p1}, Lcom/oplus/zoom/ui/tips/SnackBarManager;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSnackBarManager:Lcom/oplus/zoom/ui/tips/SnackBarManager;

    new-instance v0, Lcom/oplus/zoom/ui/tips/ToastManager;

    invoke-direct {v0, p1}, Lcom/oplus/zoom/ui/tips/ToastManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mToastManager:Lcom/oplus/zoom/ui/tips/ToastManager;

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->initFlexibleTips(Landroid/content/Context;)V

    new-instance v0, Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniGestureCloseTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Landroidx/core/view/inputmethod/a;

    invoke-direct {v0, p0}, Landroidx/core/view/inputmethod/a;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;)V

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/tips/TipsManager;->setTipsChangeListener(Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mScaleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Landroidx/core/view/a;

    invoke-direct {v0, p0}, Landroidx/core/view/a;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;)V

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/tips/TipsManager;->setTipsChangeListener(Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMiniTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Lf/h;

    invoke-direct {v0, p0}, Lf/h;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;)V

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/tips/TipsManager;->setTipsChangeListener(Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSimpleModeTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    new-instance v0, Lcom/android/launcher/settings/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/g;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;)V

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/tips/TipsManager;->setTipsChangeListener(Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;)V

    return-void
.end method

.method public onUserSwitch(I)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->initManager(Landroid/content/Context;)V

    return-void
.end method

.method public setIsTipsViewShowing(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsTipsViewShowing:I

    return-void
.end method

.method public showCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/launcher3/dragndrop/u;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/dragndrop/u;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMiniTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;ZZ)V
    .registers 4

    iput-boolean p3, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsNeedShowGestureTips:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;Ljava/lang/Boolean;)V
    .registers 7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mIsMini:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHideAllTips:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7d

    invoke-static {}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getInstance()Lcom/oplus/zoom/common/ZoomSettingsObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/common/ZoomSettingsObserver;->getSimpleModeEnable()Z

    move-result p2

    const-string v1, "Tips"

    if-eqz p2, :cond_49

    iget-object p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string v2, "simple_mode_tip_"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_45

    const-string p2, "showSimpleModeTip"

    invoke-static {v1, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x65

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mSimpleModeTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V

    goto :goto_80

    :cond_45
    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTipDelay(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    goto :goto_80

    :cond_49
    iget-object p2, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mContext:Landroid/content/Context;

    const-string v2, "handle_tip_"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0}, Lcom/oplus/zoom/ui/common/ZoomSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_6d

    const-string p2, "showTipsOnZoomWindowShow TIP_HANDLE_LONG_PRESS"

    invoke-static {v1, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x64

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mHandleTipsManager:Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->showTipsView(Lcom/oplus/zoom/common/ZoomPositionInfo;ILcom/oplus/zoom/ui/tips/TipsManager;)V

    goto :goto_80

    :cond_6d
    const/4 v2, 0x1

    if-ne p2, v2, :cond_79

    const-string p2, "showTipsOnZoomWindowShow showScaleTips"

    invoke-static {v1, p2}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/zoom/ui/tips/TipsController;->showScaleTips(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V

    goto :goto_80

    :cond_79
    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showFlexibleLongClickTipDelay(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    goto :goto_80

    :cond_7d
    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->showMiniTip(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :goto_80
    return-void
.end method

.method public updateUiStyle(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oplus/zoom/ui/floathandle/a;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/ui/floathandle/a;-><init>(Lcom/oplus/zoom/ui/tips/TipsController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
