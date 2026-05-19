.class Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;
.super Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundsChangeAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V
    .registers 4
    .param p1  # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/window/TransitionInfo$Root;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mContentRelOffset:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mMatrix:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mVecs:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v4, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mVecs:[F

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mVecs:[F

    aget v4, v0, v3

    div-float v4, v2, v4

    aput v4, v0, v3

    aget v4, v0, v1

    div-float/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mVecs:[F

    aget v6, v5, v3

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f000000  # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    aget v3, v5, v3

    mul-float/2addr v4, v3

    add-float/2addr v4, v6

    float-to-int v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aget v4, v5, v1

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    aget v1, v5, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
