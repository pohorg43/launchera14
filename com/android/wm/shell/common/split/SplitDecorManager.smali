.class public Lcom/android/wm/shell/common/split/SplitDecorManager;
.super Landroid/view/WindowlessWindowManager;
.source ""


# static fields
.field private static final GAP_BACKGROUND_SURFACE_NAME:Ljava/lang/String; = "GapBackground"

.field private static final RESIZING_BACKGROUND_SURFACE_NAME:Ljava/lang/String; = "ResizingBackground"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundLeash:Landroid/view/SurfaceControl;

.field private mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mGapBackgroundLeash:Landroid/view/SurfaceControl;

.field private mHostLeash:Landroid/view/SurfaceControl;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLeash:Landroid/view/SurfaceControl;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private mIconSize:I

.field private mIsResizing:Z

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mResizingBounds:Landroid/graphics/Rect;

.field private mResizingIconView:Landroid/widget/ImageView;

.field private mRunningAnimationCount:I

.field private mScreenshot:Landroid/view/SurfaceControl;

.field private mScreenshotAnimator:Landroid/animation/ValueAnimator;

.field private mShown:Z

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/wm/shell/common/split/SplitDecorManager;

    const-string v0, "SplitDecorManager"

    sput-object v0, Lcom/android/wm/shell/common/split/SplitDecorManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Lcom/android/launcher3/icons/IconProvider;Landroid/view/SurfaceSession;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    new-instance p1, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    invoke-direct {p1}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->lambda$onResized$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/common/split/SplitDecorManager;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    return p0
.end method

.method public static synthetic access$008(Lcom/android/wm/shell/common/split/SplitDecorManager;)I
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    return v0
.end method

.method public static synthetic access$010(Lcom/android/wm/shell/common/split/SplitDecorManager;)I
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    return v0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/common/split/SplitDecorManager;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->releaseDecor(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/common/split/SplitDecorManager;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/common/split/SplitDecorManager;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->lambda$startFadeAnimation$2(Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/function/Consumer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitDecorManager;->lambda$onResized$1(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static getResizingBackgroundColor(Landroid/app/ActivityManager$RunningTaskInfo;)[F
    .registers 2

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_a

    move p0, v0

    :cond_a
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onResized$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$onResized$1(Ljava/util/function/Consumer;)V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startFadeAnimation$2(Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_19

    if-eqz p2, :cond_14

    move v2, p3

    goto :goto_16

    :cond_14
    sub-float v2, v1, p3

    :goto_16
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_19
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_25

    if-eqz p2, :cond_20

    goto :goto_22

    :cond_20
    sub-float p3, v1, p3

    :goto_22
    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_25
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private releaseDecor(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->releaseDecor(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_18
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_2f
    return-void
.end method

.method private startFadeAnimation(ZZLjava/lang/Runnable;)V
    .registers 12

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_40

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x85

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/iconrender/impl/e;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/launcher3/iconrender/impl/e;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->getCustomFadeAnimation(Landroid/animation/ValueAnimator;ZLandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/wm/shell/common/split/SplitDecorManager$3;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/split/SplitDecorManager$3;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;ZLandroid/view/SurfaceControl$Transaction;ZLjava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public fadeOutDecor(Ljava/lang/Runnable;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->startFadeAnimation(ZZLjava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    goto :goto_20

    :cond_1b
    if-eqz p1, :cond_20

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_20
    :goto_20
    return-void
.end method

.method public getExtImpl()Lcom/android/wm/shell/common/split/SplitDecorManagerExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    return-object p0
.end method

.method public getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .registers 3

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/common/split/SplitDecorManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "SplitDecorManager#attachToParentSurface"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    new-instance p2, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "SplitDecorManager"

    invoke-direct {p2, p1, v0, p0, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/wm/shell/R$dimen;->split_icon_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->onCreateSplitDecorLayout(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$id;->split_resizing_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7f6

    const/16 v4, 0x18

    const/4 v5, -0x3

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    iput-object p3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget-object p3, Lcom/android/wm/shell/common/split/SplitDecorManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, 0x20000040

    or-int/2addr p3, v0

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4b

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_b0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x85

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/core/view/h;

    invoke-direct {v2, p0, v0}, Landroidx/core/view/h;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/common/split/SplitDecorManager$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager$1;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4b
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_5b

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    if-nez p0, :cond_5a

    if-eqz p2, :cond_5a

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5a
    return-void

    :cond_5b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetX:I

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetY:I

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    if-nez v1, :cond_8a

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/common/split/SplitDecorManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager$2;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_8a
    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    if-eqz v1, :cond_9e

    if-nez p2, :cond_95

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->fadeOutDecor(Ljava/lang/Runnable;)V

    goto :goto_ac

    :cond_95
    new-instance p1, Lcom/android/wm/shell/common/split/a;

    invoke-direct {p1, p2, v0}, Lcom/android/wm/shell/common/split/a;-><init>(Ljava/util/function/Consumer;I)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->fadeOutDecor(Ljava/lang/Runnable;)V

    goto :goto_ac

    :cond_9e
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->releaseDecor(Landroid/view/SurfaceControl$Transaction;)V

    iget p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    if-nez p1, :cond_ac

    if-eqz p2, :cond_ac

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_ac
    :goto_ac
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    return-void

    nop

    :array_b0
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public onResizing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p5, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetX:I

    iput p6, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetY:I

    iget-boolean p5, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    const/4 p6, 0x0

    if-eq v1, p5, :cond_21

    move p5, v1

    goto :goto_22

    :cond_21
    move p5, p6

    :goto_22
    if-eqz p5, :cond_33

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_33
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_47

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    const v5, 0x7ffffffe

    move-object v3, p4

    move-object v6, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->getBackgroundLeash(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_47
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v3, "ResizingBackground"

    invoke-static {v0, v3, v2}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    sget v3, Lcom/android/wm/shell/R$color;->split_enter_normal_dim_color:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    const v3, 0x7ffffffe

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_7f
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d8

    if-nez p7, :cond_d8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_91

    move v0, v1

    goto :goto_92

    :cond_91
    move v0, p6

    :goto_92
    if-eqz v0, :cond_9b

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_9c

    :cond_9b
    move v2, p6

    :goto_9c
    if-eqz v0, :cond_a0

    move v0, p6

    goto :goto_a6

    :cond_a0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_a6
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v5, "GapBackground"

    invoke-static {v3, v5, v4}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->getResizingBackgroundColor(Landroid/app/ActivityManager$RunningTaskInfo;)[F

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    const v5, 0x7ffffffd

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v3, v4, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {v0, v2, v3, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_d8
    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_11f

    iget-object p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_11f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->getApplicationIcon(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    const p3, 0x7fffffff

    invoke-virtual {p4, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_11f
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_165

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_165

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p4, p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz p5, :cond_165

    if-eqz p7, :cond_15f

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_159

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_159

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_159
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_163

    :cond_15f
    const/4 p1, 0x0

    invoke-direct {p0, v1, p6, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->startFadeAnimation(ZZLjava/lang/Runnable;)V

    :goto_163
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    :cond_165
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    invoke-virtual {p0, p2, p4}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->onResizing(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_21
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    :cond_23
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_2c
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_35

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    :cond_35
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3e

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_3e
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_47

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_47
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_50

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    :cond_50
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mExtImpl:Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_29

    :cond_22
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_29

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    const v2, 0x7ffffffe

    invoke-static {p1, v0, v1, v2}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    :cond_43
    return-void
.end method

.method public setScreenshotIfNeeded(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3f

    :cond_9
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_32

    :cond_2b
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_32

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_32
    :goto_32
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const p0, 0x7ffffffe

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_3f
    :goto_3f
    return-void
.end method
