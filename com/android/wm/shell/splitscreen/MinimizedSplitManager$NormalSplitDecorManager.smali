.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;
.super Landroid/view/WindowlessWindowManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalSplitDecorManager"
.end annotation


# static fields
.field private static final BACKGROUND_FADE_OUT_DURATION:J = 0xfaL

.field private static final BG_LAYER_NAME:Ljava/lang/String; = "NormalSplitDecorManager#BG"

.field private static final ICON_FADE_OUT_DURATION:J = 0xaaL

.field private static final LAYER_NAME:Ljava/lang/String; = "NormalSplitDecorManager"


# instance fields
.field private sBackgroundLeash:Landroid/view/SurfaceControl;

.field private final sContext:Landroid/content/Context;

.field private sIconLeash:Landroid/view/SurfaceControl;

.field private sIconSize:I

.field private sIconView:Landroid/widget/ImageView;

.field private final sMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final sRootLeash:Landroid/view/SurfaceControl;

.field private final sSurfaceSession:Landroid/view/SurfaceSession;

.field private final sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private sViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sRootLeash:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sSurfaceSession:Landroid/view/SurfaceSession;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->lambda$release$2()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->lambda$onNormalSplitFinish$1(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->lambda$onNormalSplitFinish$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getApplicationIcon(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p2, :cond_14

    iget-object p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_7

    goto :goto_14

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onNormalSplitFinish$0(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_20

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr v0, p2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_20
    return-void
.end method

.method private synthetic lambda$onNormalSplitFinish$1(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr v0, p2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1c
    return-void
.end method

.method private synthetic lambda$release$2()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconView:Landroid/widget/ImageView;

    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_1a
    return-void
.end method


# virtual methods
.method public createMaskLeash(Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 10

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const-string v3, "NormalSplitDecorManager#createMask"

    invoke-direct {v0, p1, v1, p0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->oplus_split_decor:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/android/wm/shell/R$id;->split_resizing_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->getApplicationIcon(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/wm/shell/R$dimen;->split_icon_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconSize:I

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x7f6

    const/16 v5, 0x18

    const/4 v6, -0x3

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconSize:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v1, "NormalSplitDecorManager"

    invoke-virtual {p2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000040

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1, v0, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sRootLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sSurfaceSession:Landroid/view/SurfaceSession;

    const-string v1, "NormalSplitDecorManager#BG"

    invoke-static {p2, v1, v0}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    sget v1, Lcom/android/wm/shell/R$color;->split_enter_normal_dim_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    const v1, 0x7ffffffe

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .registers 3

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "NormalSplitDecorManager"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "NormalSplitDecorManager#attachToParentSurface"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public onAnimationUpdate(Landroid/graphics/Rect;)V
    .registers 7
    .param p1  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconSize:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconSize:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr p1, v4

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_38
    return-void
.end method

.method public onNormalSplitFinish()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_60

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v3}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/wm/shell/splitscreen/h;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/splitscreen/h;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v1, [F

    fill-array-data v3, :array_68

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xaa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/wm/shell/splitscreen/i;

    invoke-direct {v4, p0, v0}, Lcom/android/wm/shell/splitscreen/i;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_60
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/j;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/j;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sIconLeash:Landroid/view/SurfaceControl;

    :cond_22
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_33
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->sTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
