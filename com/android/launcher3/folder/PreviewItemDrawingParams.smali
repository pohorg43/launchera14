.class public Lcom/android/launcher3/folder/PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

.field public dotInfo:Lcom/android/launcher3/dot/DotInfo;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public hidden:Z

.field public index:F

.field public item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public mAlphaAnimator:Landroid/animation/ValueAnimator;

.field public mDotAnimIsRunning:Z

.field public mForceHideDot:Z

.field public mNeedAlphaAnim:Z

.field public mSingeDotAlpha:F

.field public mSingeDotScale:F

.field public scale:F

.field public skipGetDrawable:Z

.field public transX:F

.field public transY:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mSingeDotScale:F

    const/high16 v0, 0x437f0000  # 255.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mSingeDotAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mNeedAlphaAnim:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mDotAnimIsRunning:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const-wide/16 p1, 0x230

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/keyguardservice/b;

    invoke-direct {p2, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_3a
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_11
    return-void
.end method


# virtual methods
.method public update(FFF)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_21

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    const/4 v2, 0x1

    aget v2, v1, v2

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_20

    const/4 v2, 0x2

    aget v2, v1, v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    goto :goto_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    :goto_21
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    return-void
.end method
