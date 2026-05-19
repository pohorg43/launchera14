.class Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
.super Landroid/animation/ValueAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisualIndicatorAnimator"
.end annotation


# static fields
.field private static final FULLSCREEN_INDICATOR_DURATION:I = 0xc8

.field private static final FULLSCREEN_SCALE_ADJUSTMENT_PERCENT:F = 0.015f

.field private static final INDICATOR_FINAL_OPACITY:F = 0.7f


# instance fields
.field private final mEndBounds:Landroid/graphics/Rect;

.field private final mRectEvaluator:Landroid/animation/RectEvaluator;

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mView:Landroid/view/View;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mStartBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mEndBounds:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_24

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance p1, Landroid/animation/RectEvaluator;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p1, p2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mRectEvaluator:Landroid/animation/RectEvaluator;

    return-void

    :array_24
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mEndBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->lambda$setupIndicatorAnimation$0(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    sub-int/2addr v3, v2

    new-instance v2, Landroid/graphics/Rect;

    int-to-float v4, v0

    int-to-float v1, v1

    const v5, 0x3c75c28f  # 0.015f

    mul-float/2addr v1, v5

    sub-float v6, v4, v1

    float-to-int v6, v6

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    add-float/2addr p0, v3

    float-to-int p0, p0

    invoke-direct {v2, v6, v4, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private static synthetic lambda$setupIndicatorAnimation$0(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->updateBounds(FLandroid/view/View;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->updateIndicatorAlpha(FLandroid/view/View;)V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1a
    return-void
.end method

.method private static setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V
    .registers 3

    new-instance v0, Lcom/android/wm/shell/desktopmode/f;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/f;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static toFreeformAnimator(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    .registers 8

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    int-to-float v0, v0

    const v3, 0x3ecccccc  # 0.39999998f

    mul-float/2addr v0, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v0, v4

    float-to-int v5, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    float-to-int v3, v1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v1, v4

    invoke-direct {v2, v5, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p0, p1, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    return-object v0
.end method

.method public static toFullscreenAnimator(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    .registers 3

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    return-object v0
.end method

.method public static toFullscreenAnimatorWithAnimatedBounds(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    .registers 6

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    return-object v0
.end method

.method private updateBounds(FLandroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mRectEvaluator:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateIndicatorAlpha(FLandroid/view/View;)V
    .registers 3

    const p0, 0x3f333333  # 0.7f

    mul-float/2addr p1, p0

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
