.class Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;,
        Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;
    }
.end annotation


# static fields
.field private static final LAYER_NO_OVERRIDE:I = -0x1


# instance fields
.field public final mAnimation:Landroid/view/animation/Animation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mChange:Landroid/window/TransitionInfo$Change;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContentBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mContentRelOffset:Landroid/graphics/Point;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mLeash:Landroid/view/SurfaceControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mMatrix:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mOverrideLayer:I

.field public final mRect:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mTransformation:Landroid/view/animation/Transformation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mVecs:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mWholeAnimationBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V
    .registers 10
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
    .param p4  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/window/TransitionInfo$Root;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mWholeAnimationBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mContentBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mContentRelOffset:Landroid/graphics/Point;

    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mMatrix:[F

    const/4 v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mVecs:[F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mRect:Landroid/graphics/Rect;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p3

    if-eqz p3, :cond_53

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    goto :goto_64

    :cond_53
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object p3

    iget p4, p1, Landroid/graphics/Rect;->left:I

    iget p5, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p4, p5

    iget p5, p1, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p5, p3

    invoke-virtual {v2, p4, p5}, Landroid/graphics/Point;->set(II)V

    :goto_64
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p3

    invoke-static {p3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p3

    if-eqz p3, :cond_7f

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-virtual {v2, p2, p0}, Landroid/graphics/Point;->offset(II)V

    goto :goto_86

    :cond_7f
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_86
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V
    .registers 10
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

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V

    return-void
.end method


# virtual methods
.method public final getDurationHint()J
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAnimationEnd(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method public final onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 7
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
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

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mMatrix:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mMatrix:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mContentBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mContentRelOffset:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mWholeAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6d

    :cond_60
    iget-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_6d
    :goto_6d
    neg-int v0, v0

    neg-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->shouldResetCropAnimLeashInEmbedding(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_86

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_86
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final overrideLayer(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    return-void
.end method

.method public final prepareForFirstFrame(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
