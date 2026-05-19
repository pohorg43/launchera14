.class public Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;


# static fields
.field private static final BORDERLINE:I = 0x5

.field private static final CANVAS_STATE:I = 0x0

.field private static final FULL_STATE:I = 0x1

.field private static final INVALID_STATE:I = -0x1

.field private static final MSG_NO_SUPPORT_FLEXIBLE_SPLIT_TOAST:I = 0x2

.field private static final MSG_THREE_FLEXIBLE_SPLIT_TOAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusZoomToFlexibleController"

.field private static final WAIT_TO_ANIMATION:I = 0xc8


# instance fields
.field private mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

.field private mAnimationStateOnCanvas:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

.field private mAnimationStateOnFull:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

.field private mContext:Landroid/content/Context;

.field private mDownX:I

.field private mDownY:I

.field private mMainHandler:Landroid/os/Handler;

.field private mScheduleTask:Ljava/lang/Runnable;

.field private mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mState:I

.field private mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mState:I

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$1;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$2;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$2;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {p1, p2, v0, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationStateOnCanvas:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {p1, p2, v0, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationStateOnFull:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setZoomToFlexibleController(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->lambda$showThreeFlexibleCanvasNotify$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownX:I

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownY:I

    return p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->showThreeFlexibleCanvasNotify()V

    return-void
.end method

.method private allowDragToFlexible()Z
    .registers 6

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v0

    const-string v1, "OplusZoomToFlexibleController"

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string p0, "not innerScreen, not allow drag animation"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getBracketModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_2f

    const-string p0, "BracketMode is visible, not allow drag animation"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2f
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isMinimizedPocketStudio(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string p0, "in minimzied not allow to flexible"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drag full window:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getTopAppSplitScreenState()I

    move-result v3

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_85

    const-string v3, "allowDragToFlexible NotSupport realActivity:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->showNotSupportWarn(Ljava/lang/String;)V

    :cond_84
    return v2

    :cond_85
    const/4 p0, 0x1

    return p0

    :cond_87
    return v2
.end method

.method private isForbidFlexibleCanvasEnter(II)Z
    .registers 7

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownX:I

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownY:I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isOnThreeFlexibleCanvas()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "OplusZoomToFlexibleController"

    if-eqz p1, :cond_15

    const-string p0, "in threeFlexibleCanvas, not allow drag animation"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_15
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getTopVisibleTaskId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getChildTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getInstance()Lcom/oplus/splitscreen/SplitScreenAppConfig;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->isInPocketStudioBlackList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string p0, "realActivity of zoomTask not support Flexible, not allow drag animation and toast, realActivity: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_4d
    if-eqz p1, :cond_7d

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_7d

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_7d

    const-string v1, "zoomTask not support Flexible, not allow drag animation zoomTaskInfo:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->showNotSupportWarn(Ljava/lang/String;)V

    return p2

    :cond_7d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showThreeFlexibleCanvasNotify$0(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private removeAllToast()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1c
    return-void
.end method

.method private showNotSupportWarn(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->removeAllToast()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showThreeFlexibleCanvasNotify()V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/ShellBackgroundThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wm/shell/R$string;->no_support_three_flexible_zoom_to_split_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_16

    new-instance v2, Lcom/oplus/statistics/f;

    invoke-direct {v2, p0, v1}, Lcom/oplus/statistics/f;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public getLastDrag()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getLastDrag()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public handleDown(II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->isForbidFlexibleCanvasEnter(II)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const-string p1, "handleDown animationState:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusZoomToFlexibleController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isOnCanvas()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mState:I

    goto :goto_3f

    :cond_28
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getVisibleFlexibleTaskInfo()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_3f

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->allowDragToFlexible()Z

    move-result p1

    if-eqz p1, :cond_3c

    move p1, v0

    goto :goto_3d

    :cond_3c
    const/4 p1, -0x1

    :goto_3d
    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mState:I

    :cond_3f
    :goto_3f
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mState:I

    if-nez p1, :cond_4c

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-nez v1, :cond_4c

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationStateOnCanvas:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    goto :goto_56

    :cond_4c
    if-ne p1, v0, :cond_56

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationStateOnFull:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-eqz p1, :cond_89

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    if-nez p1, :cond_89

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_76

    const-string p1, "handleDown remove scheduleTask"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_76
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleState(I)V

    const-string p1, "handleDown postDelayed scheduleTask"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_89
    return-void
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1e

    goto :goto_25

    :cond_1a
    invoke-virtual {p0, v1, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->handleMove(II)V

    goto :goto_25

    :cond_1e
    invoke-virtual {p0, v1, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->handleUp(II)V

    goto :goto_25

    :cond_22
    invoke-virtual {p0, v1, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->handleDown(II)V

    :goto_25
    return-void
.end method

.method public handleMove(II)V
    .registers 9

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_15

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_18

    :cond_15
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->removeAllToast()V

    :cond_18
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    const/4 v2, 0x1

    const-string v3, "OplusZoomToFlexibleController"

    if-nez v0, :cond_3d

    const-string v0, "handleMove, not get animationState, state:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mState:I

    invoke-static {v0, v4, v3}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mState:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_30

    return-void

    :cond_30
    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationStateOnCanvas:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    goto :goto_3d

    :cond_37
    if-ne v0, v2, :cond_3d

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationStateOnFull:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-nez v0, :cond_42

    return-void

    :cond_42
    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-wide/16 v4, 0xc8

    if-nez v0, :cond_72

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_60

    const-string p1, "handleMove remove scheduleTask NO_ANIMATION"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_60
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleState(I)V

    const-string p1, "handleMove postDelayed scheduleTask"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_bb

    :cond_72
    if-ne v0, v2, :cond_af

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_88

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_bb

    :cond_88
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "handleMove remove scheduleTask"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9e
    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownX:I

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mDownY:I

    const-string p1, "postDelayed scheduleTask"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_bb

    :cond_af
    const/4 v1, 0x4

    if-lt v0, v1, :cond_bb

    const/16 v1, 0xd

    if-ge v0, v1, :cond_bb

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleMove(II)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_7
    return-void
.end method

.method public handleUp(II)V
    .registers 6

    const-string v0, "handleUp animationState:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusZoomToFlexibleController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->removeAllToast()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mState:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v2, "handleUp state:"

    invoke-static {v2, v0, v1}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    goto :goto_48

    :cond_2c
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "handleMove remove scheduleTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mScheduleTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_42
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    :goto_48
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    if-eqz v0, :cond_56

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleUp(II)V

    goto :goto_59

    :cond_56
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    :goto_59
    return-void
.end method

.method public needStopPhysicsAnimation()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->needStopPhysicsAnimation()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public resetAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->mAnimationState:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    return-void
.end method
