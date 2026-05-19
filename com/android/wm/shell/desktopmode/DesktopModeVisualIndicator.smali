.class public Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mIsFullscreen:Z

.field private mLeash:Landroid/view/SurfaceControl;

.field private final mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTaskSurface:Landroid/view/SurfaceControl;

.field private mView:Landroid/view/View;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p7, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->createView()V

    return-void
.end method

.method public static synthetic a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->lambda$createView$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private createView()V
    .registers 9

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mRootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v2, v5, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    const-string v2, "Fullscreen Indicator"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, -0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v2, "Fullscreen indicator for Task="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance v2, Landroid/view/WindowlessWindowManager;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    new-instance v3, Landroid/view/SurfaceControlViewHost;

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    const-string v6, "FullscreenVisualIndicator"

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    invoke-virtual {v3, v2, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/desktopmode/e;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/desktopmode/e;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private static synthetic lambda$createView$0(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method


# virtual methods
.method public createFullscreenIndicator()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    sget v1, Lcom/android/wm/shell/R$drawable;->desktop_windowing_transition_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->toFullscreenAnimator(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public createFullscreenIndicatorWithAnimatedBounds()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    sget v1, Lcom/android/wm/shell/R$drawable;->desktop_windowing_transition_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->toFullscreenAnimatorWithAnimatedBounds(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isFullscreen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    return p0
.end method

.method public releaseVisualIndicator(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_16

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    :cond_16
    return-void
.end method

.method public transitionFreeformIndicatorToFullscreen()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->toFullscreenAnimatorWithAnimatedBounds(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public transitionFullscreenIndicatorToFreeform()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mIsFullscreen:Z

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->toFreeformAnimator(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
