.class public Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_SCREENSHOT_ALPHA_DURATION:I = 0x64

.field private static final DEFAULT_SCREENSHOT_RECT_DELAY:I = 0x46

.field private static final DEFAULT_SPLIT_MINI_DURATION:I = 0x1a1

.field private static final TAG:Ljava/lang/String; = "SplitScreenControllerExt"


# instance fields
.field public START_SPLIT_PAIR_IN_MINIMIZED:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCOUIEaseInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mCOUIOtherInterpolator:Landroid/view/animation/PathInterpolator;

.field private mCornerRadius:I

.field private mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private final mEnable:Z

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMaintainLayerStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToRestoreSideStageAlpha:Z

.field private mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field private final mSurfaceAnimationHelper:Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

.field private final mSurfaceHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field private mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTmpTransformation:Landroid/view/animation/Transformation;

.field private mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCOUIEaseInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const v3, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e3851ec  # 0.18f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCOUIOtherInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTmpTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSurfaceAnimationHelper:Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const-string/jumbo v0, "startSplitPairInMinimized"

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->START_SPLIT_PAIR_IN_MINIMIZED:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMaintainLayerStateList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mNeedToRestoreSideStageAlpha:Z

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mEnable:Z

    new-instance v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSurfaceHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;ZLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$animateTopTaskScreenshot$6(Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;ZLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mNeedToRestoreSideStageAlpha:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitScreenController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/animation/PathInterpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCOUIEaseInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/SurfaceControl;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->peekHomeSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/animation/PathInterpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSurfaceAnimationHelper:Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Landroid/view/animation/PathInterpolator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCOUIOtherInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private animateTopTaskScreenshot(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V
    .registers 18

    move-object v5, p3

    move-object/from16 v9, p5

    if-eqz v5, :cond_43

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_43

    :cond_c
    move-object v1, p0

    move-object v8, p2

    move/from16 v7, p4

    invoke-direct {p0, p2, p3, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->createScreenshotAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_44

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    invoke-virtual {v2}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v11, Lcom/android/wm/shell/splitscreen/l0;

    move-object v0, v11

    move-object v3, v10

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/l0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;ZLandroid/graphics/Rect;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v9, :cond_40

    invoke-virtual {v10, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_40
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    :cond_43
    :goto_43
    return-void

    :array_44
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$moveTasksToSplitStages$7(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreenInLargeScreen$2(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V

    return-void
.end method

.method private createScreenshotAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 4

    new-instance p0, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz p3, :cond_a

    const-wide/16 p1, 0x1a1

    goto :goto_c

    :cond_a
    const-wide/16 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 p1, 0x46

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000  # 1.0f

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 p2, 0x1e7

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance p2, Landroid/view/animation/AnimationSet;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object p2
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreenInLargeScreen$1(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreenInLargeScreen$3(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method private enterSplitScreenInner(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/r2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/r2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreen$0(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$moveTasksToSplitStages$8(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreenInner$4(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreenInner$5(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method private isGestureNavMode()Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_navigationbar_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-ne p0, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method private synthetic lambda$animateTopTaskScreenshot$6(Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;ZLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 13

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTmpTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1, v0, v1, p2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    if-eqz p3, :cond_77

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_77

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTmpTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTmpTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget p8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p8

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    const/4 p8, 0x3

    if-gt p4, p8, :cond_3e

    iget-boolean p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mNeedToRestoreSideStageAlpha:Z

    if-nez p4, :cond_3e

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mNeedToRestoreSideStageAlpha:Z

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p4, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->restoreSideStageAlphaIfNeed(Landroid/view/SurfaceControl$Transaction;)V

    :cond_3e
    sget-object p4, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "animateTopTaskScreenshot, clipRect="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alpha="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {p4, p8}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_67

    invoke-virtual {p5, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSurfaceHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p0, p5, p3, p7, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    goto :goto_74

    :cond_67
    const/4 p0, 0x0

    invoke-virtual {p5, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p5, p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_74
    invoke-virtual {p5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_77
    :goto_77
    return-void
.end method

.method private synthetic lambda$enterSplitScreen$0(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->enterSplitScreenInner(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$enterSplitScreenInLargeScreen$1(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->release(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$enterSplitScreenInLargeScreen$2(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/android/wm/shell/splitscreen/p0;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/p0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;I)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$enterSplitScreenInLargeScreen$3(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-eqz p2, :cond_12f

    invoke-virtual/range {p2 .. p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_12f

    :cond_e
    new-instance v4, Landroid/view/SurfaceSession;

    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "SplitPanelAnimContainerLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "SplitScreenController.enterSplitScreenInLargeScreen"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    const v0, 0x7fffffff

    invoke-virtual {v9, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, v8, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string/jumbo v1, "screenshot#Task"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "SplitScreenControllerExt.enterSplitScreenInLargeScreen"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p2 .. p2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, -0x1

    invoke-virtual {v9, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v10, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    new-instance v12, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v12

    move-object v2, v11

    move-object v3, v9

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceSession;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getPanelWidth()I

    move-result v13

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getLeftPanel()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getRightPanel()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getLeftIconSurface()Landroid/view/SurfaceControl;

    move-result-object v16

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getRightIconSurface()Landroid/view/SurfaceControl;

    move-result-object v17

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;->getRightBackgroundSurface()Landroid/view/SurfaceControl;

    move-result-object v18

    invoke-virtual {v9, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    invoke-virtual {v9, v14, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v9, v14, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v14, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v14, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v15}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v15, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v15, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v13

    int-to-float v0, v0

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v15, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance v19, Lcom/android/wm/shell/splitscreen/p0;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v8

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/p0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;I)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    new-instance v9, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v10

    move v7, v13

    move-object v8, v11

    move-object v11, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->addOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    :cond_12f
    :goto_12f
    return-void
.end method

.method private synthetic lambda$enterSplitScreenInner$4(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 12

    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;

    invoke-direct {v5, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->animateTopTaskScreenshot(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private synthetic lambda$enterSplitScreenInner$5(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V
    .registers 12

    if-eqz p3, :cond_10a

    invoke-virtual {p3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_10a

    :cond_a
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string/jumbo v1, "screenshot#Task"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "SplitScreenControllerExt.takeScreenshot"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    iget p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCornerRadius:I

    int-to-float p3, p3

    invoke-virtual {p2, v3, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p3, :cond_62

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_62
    const p3, 0x7fffffff

    invoke-virtual {p2, v3, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3, v3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a6

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    if-eqz v2, :cond_a4

    goto :goto_a6

    :cond_a4
    move v6, v1

    goto :goto_a8

    :cond_a6
    :goto_a6
    const/4 v2, 0x1

    move v6, v2

    :goto_a8
    if-eqz v0, :cond_b5

    sget v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_bf

    :cond_b5
    sget v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :goto_bf
    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateTopTaskScreenshot outTopOrLeftBounds="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", outBottomOrRightBounds="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", displayBounds="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", minimizedBounds="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mNeedToRestoreSideStageAlpha:Z

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p1, v1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/n0;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/n0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_10a
    :goto_10a
    return-void
.end method

.method private synthetic lambda$moveTasksToSplitStages$7(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$moveTasksToSplitStages$8(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->runWithTransactionDelayed(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;J)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetEnterNormalType()V

    return-void
.end method

.method private needBlockRecentsTransition()Z
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isZoomTransferToSplitAnimating()Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    const-string v0, "It\'s zoomTransferToSplitAnimating, need block recentsTransition."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private needCancelRecentsTransition()Z
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isSnappingToDismiss()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    sget-object p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    const-string v1, "It\'s snappingToDismiss, need cancel recentsTransition."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_13
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isActivityTransitionInSplit()Z

    move-result p0

    if-eqz p0, :cond_25

    sget-object p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    const-string v1, "It\'s activityTransitionInSplit, need cancel recentsTransition."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private peekHomeSurface()Landroid/view/SurfaceControl;
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {p0}, Lcom/oplus/splitscreen/DividerUtils;->getHomeAndRecentsTasks(Lcom/android/wm/shell/ShellTaskOrganizer;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerScreenOffandUserSwitchBroadcastReceiver(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "launcher_docker_expend_item_click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x4

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addSplitStatusListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)Z
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->addListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public breakPairedTaskInRecent(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->breakPairedTaskInRecent(II)V

    return-void
.end method

.method public canDropAtPosition(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->canDropAtPosition(I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public createExtraBundleForEnterMinizied(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_b

    return-object p2

    :cond_b
    new-instance p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-direct {p1}, Lcom/oplus/splitscreen/applock/PendingStartInfo;-><init>()V

    const/4 v0, 0x3

    iput v0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    iput v0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput v0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/applock/AppLockManager;->createExtraBundle(Lcom/oplus/splitscreen/applock/PendingStartInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public createExtraBundleForEnterNormalSplit(II)Landroid/os/Bundle;
    .registers 8
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v0, :cond_a

    goto :goto_78

    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_78

    if-nez v0, :cond_20

    goto :goto_78

    :cond_20
    sget-object v2, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createExtraBundleForEnterNormalSplit position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mainTaskInfo="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", sideTaskInfo="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-direct {p1}, Lcom/oplus/splitscreen/applock/PendingStartInfo;-><init>()V

    const/16 v2, 0xb

    iput v2, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getSplitRatio()F

    move-result p0

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    const/4 p0, 0x1

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sidePosition:I

    iget p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    iget-object p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iget p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    iget p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    iget-object p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    iget p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput p0, p1, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    invoke-static {p1, v1}, Lcom/oplus/splitscreen/applock/AppLockManager;->createExtraBundle(Lcom/oplus/splitscreen/applock/PendingStartInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_78
    :goto_78
    return-object v1
.end method

.method public disableForceSyncIfNeed(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;)Z
    .registers 11

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableForceSyncIfNeed, tolerance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reasonTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", playingTransition="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", reasonHandler="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", playingHandler="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nreasonInfo="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nplayingInfo="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-ne p5, p0, :cond_5d

    const/16 p0, 0x78

    if-ne p1, p0, :cond_5d

    if-eqz p7, :cond_5d

    invoke-static {p7}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->containsRotationActionInTransition(Landroid/window/TransitionInfo;)Z

    move-result p0

    if-eqz p0, :cond_5d

    const-string p0, "disableForceSync"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_5d
    const/4 p0, 0x0

    return p0
.end method

.method public enterSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .registers 6

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getPendingEnterSplitTaskId()I

    move-result v0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v0, v1, :cond_79

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskId(I)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_4a

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v1}, Lcom/oplus/splitscreen/DividerUtils;->getHomeAndRecentsTasks(Lcom/android/wm/shell/ShellTaskOrganizer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_2e

    :cond_40
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p2}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_4a
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->getStartType()I

    move-result v1

    if-ne v1, v0, :cond_6e

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result p2

    if-eqz p2, :cond_6e

    :cond_6a
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->enterSplitScreenInLargeScreen(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :cond_6e
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/m0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/m0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void

    :cond_79
    sget-object p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "runningTaskInfo:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already pending enter minimized"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enterSplitScreenInLargeScreen(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/splitscreen/z;

    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/splitscreen/z;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public exitFlexibleEmbeddedTask(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getInstance()Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/util/OplusActivityManagerWrapper;->getSmartBackendTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_2c

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_exitFlexibleEmbeddedTask(I)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sidebar exit smartBackend taskid = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",splitPkg="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZZ)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(ZZ)V

    return-void
.end method

.method public exitSplitScreenAndGoHome(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 p0, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    return-void
.end method

.method public exitSplitScreenByType(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenByType(II)V

    return-void
.end method

.method public getSplitAppName()Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitAppName()Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitRatio()F
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitRatio()F

    move-result p0

    return p0
.end method

.method public getTargetPosTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getTargetPosTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public getZoomTaskSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getZoomTaskSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleLauncherRecommendAppClick(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string p1, "click_pkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getStagePackageName(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_15

    :cond_14
    move-object p2, v0

    :goto_15
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getStagePackageName(Z)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    if-nez p2, :cond_21

    goto :goto_2a

    :cond_21
    if-nez v0, :cond_24

    goto :goto_2c

    :cond_24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :goto_2a
    move-object v1, v0

    goto :goto_2d

    :cond_2c
    :goto_2c
    move-object v1, p2

    :goto_2d
    sget-object v2, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    const-string v3, "handleLauncherRecommendAppClick pkg="

    const-string v4, ",miniPkg="

    const-string v5, ",mainStagePkg="

    invoke-static {v3, p1, v4, v1, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",sideStagePkg="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenRecommend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hasChildTask(Z)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hasChildTask(Z)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hideImeDimLayerWhenRemoveImeSurface()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hideImeDimLayerWhenRemoveImeSurface()V

    :cond_7
    return-void
.end method

.method public hookStartRecentsTransition()I
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->needBlockRecentsTransition()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->needCancelRecentsTransition()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public hookStartTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IF)Z
    .registers 23
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitTransitionExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitTransitionExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->hasPendingEnter()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startTasks while pendingEnter != null, return"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_26
    if-nez p5, :cond_31

    move/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v1, p3

    move-object/from16 v4, p4

    goto :goto_39

    :cond_31
    move/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    :goto_39
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenLaunched(Landroid/content/Context;I)V

    :cond_45
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v7, 0x0

    if-eqz v6, :cond_52

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v6

    if-eqz v6, :cond_52

    move v6, v2

    goto :goto_53

    :cond_52
    move v6, v7

    :goto_53
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v8, :cond_5f

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v8

    if-eqz v8, :cond_5f

    move v8, v2

    goto :goto_60

    :cond_5f
    move v8, v7

    :goto_60
    if-eqz v6, :cond_161

    if-nez v8, :cond_161

    :try_start_64
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v6

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v8

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hasChildTask(Z)Z

    move-result v9

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hasChildTask(Z)Z

    move-result v10

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const/4 v12, -0x1

    if-nez v9, :cond_b5

    if-eqz v10, :cond_b5

    if-nez v8, :cond_92

    move v5, v2

    goto :goto_93

    :cond_92
    move v5, v7

    :goto_93
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v13

    invoke-virtual {v13, v7, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isIncludeTask(ZI)Z

    move-result v13

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v14

    invoke-virtual {v14, v7, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isIncludeTask(ZI)Z

    move-result v14

    if-nez v13, :cond_ae

    if-eqz v4, :cond_ac

    goto :goto_e7

    :cond_ac
    :goto_ac
    move-object v4, v11

    goto :goto_e7

    :cond_ae
    if-nez v14, :cond_b2

    move v1, v3

    goto :goto_ac

    :cond_b2
    move-object v4, v11

    :cond_b3
    move v1, v12

    goto :goto_e7

    :cond_b5
    if-eqz v9, :cond_e2

    if-nez v10, :cond_e2

    if-nez v6, :cond_bd

    move v4, v2

    goto :goto_be

    :cond_bd
    move v4, v7

    :goto_be
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v13

    invoke-virtual {v13, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isIncludeTask(ZI)Z

    move-result v13

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isIncludeTask(ZI)Z

    move-result v14

    if-nez v14, :cond_dd

    move v1, v3

    if-eqz v5, :cond_db

    move-object v15, v5

    move v5, v4

    move-object v4, v15

    goto :goto_e7

    :cond_db
    move v5, v4

    goto :goto_ac

    :cond_dd
    move v5, v4

    move-object v4, v11

    if-nez v13, :cond_b3

    goto :goto_e7

    :cond_e2
    move v13, v7

    move v14, v13

    move-object v4, v11

    move v1, v12

    move v5, v1

    :goto_e7
    if-eq v1, v12, :cond_102

    if-eq v5, v12, :cond_102

    invoke-virtual {v0, v5, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->createExtraBundleForEnterNormalSplit(II)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_f6

    const-string v11, "androidx.activity.extra"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f6
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->START_SPLIT_PAIR_IN_MINIMIZED:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    move v0, v2

    goto :goto_103

    :cond_102
    move v0, v7

    :goto_103
    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hookStartTasks handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isMainHasChild="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isSideHasChild="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mainPos="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",sidePos"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isMainInclude="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isSideInclude="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_149} :catch_14a

    return v2

    :catch_14a
    move-exception v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hookStartTasks failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_161
    return v7
.end method

.method public init(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    return-void
.end method

.method public isKeyguardShowing()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isKeyguardShowing()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isLandscape()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isLandscape()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isMaintainLayerTask(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMaintainLayerStateList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNeedToRestoreSideStageAlpha()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mNeedToRestoreSideStageAlpha:Z

    return p0
.end method

.method public isSplitDecorManagerIdle(Z)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isSplitDecorManagerIdle(Z)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public matainSplitState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setAnimationState(Z)V

    return-void
.end method

.method public moveTaskToSplitStage(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;IZLcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 9

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dragTaskInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_23

    const-string/jumbo p0, "not find dragTaskInfo"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_2b

    if-nez p4, :cond_2f

    :cond_2b
    if-eqz v0, :cond_40

    if-nez p4, :cond_40

    :cond_2f
    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    shl-int/lit8 p3, p3, 0x4

    or-int/lit8 p3, p3, 0xd

    invoke-virtual {v0, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    goto :goto_50

    :cond_40
    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    shl-int/lit8 p3, p3, 0x4

    or-int/lit8 p3, p3, 0xc

    invoke-virtual {v0, p3}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    :goto_50
    if-eqz p4, :cond_7d

    new-instance p3, Landroid/window/WindowContainerTransaction;

    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p4, p2, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p4, p3, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    if-eqz p5, :cond_6e

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getShellTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p5, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->runWithTransactionDelayed(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;J)V

    goto :goto_75

    :cond_6e
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getShellTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_75
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    goto :goto_84

    :cond_7d
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    :goto_84
    return-void
.end method

.method public moveTasksToSplitStages(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;IIIILcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    invoke-virtual/range {p2 .. p3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    sget-object v7, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mainTask:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " sideTask:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10e

    if-nez v6, :cond_39

    goto/16 :goto_10e

    :cond_39
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_3f

    move v9, v7

    goto :goto_40

    :cond_3f
    move v9, v8

    :goto_40
    new-instance v12, Landroid/window/WindowContainerTransaction;

    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1, v9, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v10

    const-class v11, Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_60

    move-object v11, v10

    check-cast v11, Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v13

    if-nez v13, :cond_60

    invoke-virtual {v11, v12, v8}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_60
    invoke-virtual {v10, v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v10, v5, v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v5, v6, v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    move/from16 v11, p6

    invoke-virtual {v6, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(I)V

    if-nez v9, :cond_83

    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v11

    goto :goto_87

    :cond_83
    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v11

    :goto_87
    if-nez v9, :cond_8e

    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_92

    :cond_8e
    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v9

    :goto_92
    iget-object v13, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v13, v11}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v5, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v5, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v5, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v5, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v5, v8}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move/from16 v7, p3

    invoke-virtual {v5, v7, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitRequest(III)V

    if-nez v4, :cond_d4

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/splitscreen/p2;

    invoke-direct {v3, v0, v6}, Lcom/android/wm/shell/splitscreen/p2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/split/SplitLayout;)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getShellTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_10d

    :cond_d4
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateEnterNormalType(I)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSplitTransitions()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/16 v15, 0x451

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_101

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    new-instance v3, Lcom/android/wm/shell/splitscreen/o0;

    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/splitscreen/o0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->createTransitionFinishCallback(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_10d

    :cond_101
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetEnterNormalType()V

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetEnterNormalType()V

    :goto_10d
    return-void

    :cond_10e
    :goto_10e
    const-string/jumbo v0, "not find mainTaskInfo or sideTaskInfo"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public moveToSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 21

    move/from16 v0, p9

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    move v10, v0

    if-eqz p6, :cond_15

    if-nez p7, :cond_15

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v8, v0

    move-object v0, p0

    goto :goto_18

    :cond_15
    move-object v0, p0

    move-object/from16 v8, p7

    :goto_18
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method public moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)Z
    .registers 12

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public onDividerStartDrag()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onDividerStartDrag()V

    :cond_7
    return-void
.end method

.method public onOrganizerRegistered(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 9

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->init(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0, p1, p7}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->registerDisplayFoldListener(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    invoke-static {}, Lcom/oplus/splitscreen/StackDividerService;->getInstance()Lcom/oplus/splitscreen/StackDividerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/splitscreen/StackDividerService;->registerStackDivider(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mDivider:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$dimen;->split_rounded_corner_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mCornerRadius:I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->registerScreenOffandUserSwitchBroadcastReceiver(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->initRecommendAppList(Landroid/content/Context;)V

    :cond_3d
    return-void
.end method

.method public onStartTaskToSplit()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onStartTaskToSplit()V

    :cond_7
    return-void
.end method

.method public prepareEnterMinimize(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setNeedEnterMinimizedSplit()V

    :cond_9
    return-void
.end method

.method public prepareEnterNormal(Z)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterNormal(Z)Z

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public removeSplitStatusListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)Z
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->removeListener(Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDividerShow(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitLayoutSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDividerShow splitLayoutSurfaceControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " show:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerShow(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setDividerShow(Z)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setDividerShow(Z)V

    return-void
.end method

.method public setDropAnimalStatus(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setDropAnimalStatus(Z)V

    :cond_7
    return-void
.end method

.method public setMaintainLayerTask(IZ)V
    .registers 4

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMaintainLayerStateList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMaintainLayerStateList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_18
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMaintainLayerStateList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mMaintainLayerStateList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    return-void
.end method

.method public startIntentInMinimize(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentInMinimize(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public startIntentToFullScreen(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentToFullScreen(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 14

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public updateMinimizedVisibleSize()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateMinimizedVisibleSize()V

    :cond_7
    return-void
.end method
