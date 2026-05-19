.class Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;
.super Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V
    .registers 11
    .param p1  # Landroid/view/animation/Animation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/window/TransitionInfo$Root;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationEnd(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_10
    return-void
.end method

.method public onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mMatrix:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
