.class public Lcom/android/wm/shell/windowdecor/ResizeVeil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final RESIZE_ALPHA_DURATION:I = 0x64


# instance fields
.field private final mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private final mDisplay:Landroid/view/Display;

.field private mParentSurface:Landroid/view/SurfaceControl;

.field private final mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mVeilSurface:Landroid/view/SurfaceControl;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/function/Supplier;Landroid/view/Display;Ljava/util/function/Supplier;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Landroid/view/Display;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mDisplay:Landroid/view/Display;

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->setupResizeVeil()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->lambda$hideVeil$2(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/windowdecor/ResizeVeil;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/windowdecor/ResizeVeil;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->lambda$showVeil$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Landroid/animation/ValueAnimator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->lambda$showVeil$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getBackgroundColorId()I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_15

    sget p0, Lcom/android/wm/shell/R$color;->desktop_mode_resize_veil_dark:I

    return p0

    :cond_15
    sget p0, Lcom/android/wm/shell/R$color;->desktop_mode_resize_veil_light:I

    return p0
.end method

.method private synthetic lambda$hideVeil$2(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$showVeil$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$showVeil$1(Landroid/animation/ValueAnimator;)V
    .registers 1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mParentSurface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mParentSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private setupResizeVeil()V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Builder;

    const-string v2, "Resize veil of Task= "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$layout;->desktop_mode_resize_veil:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    const v4, 0xea60

    invoke-virtual {v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v0, "Resize veil of Task="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance v0, Landroid/view/WindowlessWindowManager;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-direct {v0, v4, v5, v3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    new-instance v3, Landroid/view/SurfaceControlViewHost;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mDisplay:Landroid/view/Display;

    const-string v6, "ResizeVeil"

    invoke-direct {v3, v4, v5, v0, v6}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v3, v1, v2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$id;->veil_application_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_20
    return-void
.end method

.method public hideVeil()V
    .registers 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_28

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/core/view/h;

    invoke-direct {v1, p0, v0}, Landroidx/core/view/h;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil$1;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_28
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public showVeil(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mParentSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mParentSurface:Landroid/view/SurfaceControl;

    :cond_17
    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->getBackgroundColorId()I

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_72

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/anim/q;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/anim/q;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0, p2, v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/windowdecor/q;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/windowdecor/q;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mVeilSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    return-void

    nop

    :array_72
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public updateResizeVeil(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->relayout(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    return-void
.end method
