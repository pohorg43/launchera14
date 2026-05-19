.class public Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final DEBUG_EXIT_ANIMATION:Z = false

.field private static final TAG:Ljava/lang/String; = "ShellStartingWindow"


# instance fields
.field private final mAnimationDuration:I

.field private final mAppRevealDelay:I

.field private final mAppRevealDuration:I

.field private final mBrandingStartAlpha:F

.field private mFinishCallback:Ljava/lang/Runnable;

.field private final mFirstWindowFrame:Landroid/graphics/Rect;

.field private final mFirstWindowSurface:Landroid/view/SurfaceControl;

.field private final mIconFadeOutDuration:I

.field private final mIconStartAlpha:F

.field private final mMainWindowShiftLength:I

.field private final mRoundedCornerRadius:F

.field private final mSplashScreenView:Landroid/window/SplashScreenView;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;F)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    iput p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRoundedCornerRadius:F

    if-eqz p4, :cond_15

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_15
    invoke-virtual {p2}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_60

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p8

    iget p8, p8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p8, :cond_60

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p8

    iget p8, p8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p8, :cond_2d

    goto :goto_60

    :cond_2d
    const/4 p8, 0x2

    const/4 v0, 0x0

    invoke-virtual {p3, p8, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    goto :goto_41

    :cond_3f
    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    :goto_41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/wm/shell/R$integer;->starting_window_app_reveal_icon_fade_out_duration:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/wm/shell/R$integer;->starting_window_app_reveal_anim_delay:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    goto :goto_69

    :cond_60
    :goto_60
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    :goto_69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->starting_window_app_reveal_anim_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    iget p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    iput p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-void
.end method

.method private reset()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/window/SplashScreenView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    :cond_19
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->reset()V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->reset()V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    const/16 v0, 0x27

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method

.method public startAnimations()V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    iget v6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    iget v7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    iget v8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    iget v9, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    iget v10, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    iget v12, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRoundedCornerRadius:F

    move-object v11, p0

    invoke-static/range {v0 .. v12}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->startAnimations(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILcom/android/wm/shell/common/TransactionPool;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;F)V

    return-void
.end method
