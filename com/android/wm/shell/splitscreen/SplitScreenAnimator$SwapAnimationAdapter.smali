.class Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;
.super Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwapAnimationAdapter"
.end annotation


# instance fields
.field private mNeedScale:Z

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;-><init>(Landroid/view/SurfaceControl;Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->mNeedScale:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->mNeedScale:Z

    return-void
.end method

.method private getCurrentScale(F)F
    .registers 6

    const/high16 p0, 0x3f000000  # 0.5f

    cmpg-float p0, p1, p0

    const/high16 v0, 0x40000000  # 2.0f

    const v1, 0x3dccccd0  # 0.100000024f

    const v2, 0x3f666666  # 0.9f

    const/high16 v3, 0x3f800000  # 1.0f

    if-gtz p0, :cond_15

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    sub-float p0, v3, p1

    goto :goto_1a

    :cond_15
    mul-float/2addr p1, v0

    sub-float/2addr p1, v3

    mul-float/2addr p1, v1

    add-float p0, p1, v2

    :goto_1a
    cmpg-float p1, p0, v2

    if-gez p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, p0

    :goto_20
    cmpl-float p0, v2, v3

    if-lez p0, :cond_25

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    return v3
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;JF)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p2

    if-nez p2, :cond_18

    return-void

    :cond_18
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_6c

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-nez p2, :cond_23

    goto :goto_6c

    :cond_23
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->x:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->y:I

    iget-boolean p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->mNeedScale:Z

    if-eqz p3, :cond_61

    invoke-direct {p0, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->getCurrentScale(F)F

    move-result p3

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p4, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->x:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p3

    const/high16 p3, 0x40000000  # 2.0f

    invoke-static {v0, v1, p3, p4}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->x:I

    iget p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->y:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, v1, p3, p4}, Landroidx/constraintlayout/core/motion/utils/b;->a(FFFF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->y:I

    :cond_61
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->x:I

    int-to-float p3, p3

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_6c
    :goto_6c
    return-void
.end method
