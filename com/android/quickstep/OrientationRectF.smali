.class public Lcom/android/quickstep/OrientationRectF;
.super Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OrientationRectF"


# instance fields
.field private final mHeight:F

.field public final mRotation:I

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpPoint:[F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FFFFI)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;-><init>(FFFF)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    iput p5, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    iput p4, p0, Lcom/android/quickstep/OrientationRectF;->mHeight:F

    iput p3, p0, Lcom/android/quickstep/OrientationRectF;->mWidth:F

    return-void
.end method


# virtual methods
.method public applyTransform(Landroid/view/MotionEvent;IZ)Z
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mHeight:F

    iget v1, p0, Lcom/android/quickstep/OrientationRectF;->mWidth:F

    iget-object v2, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    const-string v0, " this: "

    const-string v1, "OrientationRectF"

    const/4 v2, 0x1

    if-eqz p3, :cond_3c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_36

    const-string p3, "Transforming rotation due to forceTransform, deltaRotation: "

    const-string/jumbo v3, "mRotation: "

    invoke-static {p3, p2, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-object p0, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->applyTransform(Landroid/graphics/Matrix;)V

    return v2

    :cond_3c
    iget-object p2, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, p2, v4

    iget-object p2, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, p2, v2

    iget-object p2, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p2

    if-eqz p2, :cond_b9

    const-string/jumbo p2, "original: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " new: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    aget v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    aget v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " rect: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " forceTransform: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " contains: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    aget v3, p3, v4

    aget p3, p3, v2

    invoke-virtual {p0, v3, p3}, Lcom/android/quickstep/OrientationRectF;->contains(FF)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    iget-object p2, p0, Lcom/android/quickstep/OrientationRectF;->mTmpPoint:[F

    aget p3, p2, v4

    aget p2, p2, v2

    invoke-virtual {p0, p3, p2}, Lcom/android/quickstep/OrientationRectF;->contains(FF)Z

    move-result p2

    if-eqz p2, :cond_cb

    iget-object p0, p0, Lcom/android/quickstep/OrientationRectF;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->applyTransform(Landroid/graphics/Matrix;)V

    return v2

    :cond_cb
    return v4
.end method

.method public applyTransformFromRotation(Landroid/view/MotionEvent;IZ)Z
    .registers 5

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    invoke-static {p2, v0}, Lcom/android/launcher3/states/RotationHelper;->oplusDeltaRotation(II)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/OrientationRectF;->applyTransform(Landroid/view/MotionEvent;IZ)Z

    move-result p0

    return p0
.end method

.method public applyTransformToRotation(Landroid/view/MotionEvent;IZ)Z
    .registers 5

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    invoke-static {v0, p2}, Lcom/android/launcher3/states/RotationHelper;->oplusDeltaRotation(II)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/OrientationRectF;->applyTransform(Landroid/view/MotionEvent;IZ)Z

    move-result p0

    return p0
.end method

.method public contains(FF)Z
    .registers 9

    iget v0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_74

    if-eq v0, v1, :cond_53

    const/4 v3, 0x2

    if-eq v0, v3, :cond_32

    const/4 v3, 0x3

    if-eq v0, v3, :cond_10

    goto/16 :goto_97

    :cond_10
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_95

    iget v4, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v4, p0

    if-gez v5, :cond_95

    cmpl-float v0, p1, v0

    if-lez v0, :cond_95

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_95

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_95

    cmpg-float p0, p2, p0

    if-gez p0, :cond_95

    goto/16 :goto_96

    :cond_32
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_95

    iget v4, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v4, p0

    if-gez v5, :cond_95

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_95

    cmpg-float p1, p1, v3

    if-gez p1, :cond_95

    cmpl-float p1, p2, v4

    if-lez p1, :cond_95

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_95

    goto :goto_96

    :cond_53
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_95

    iget v4, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v4, p0

    if-gez v5, :cond_95

    cmpl-float v0, p1, v0

    if-lez v0, :cond_95

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_95

    cmpl-float p1, p2, v4

    if-lez p1, :cond_95

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_95

    goto :goto_96

    :cond_74
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_95

    iget v4, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v4, p0

    if-gez v5, :cond_95

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_95

    cmpg-float p1, p1, v3

    if-gez p1, :cond_95

    cmpl-float p1, p2, v4

    if-ltz p1, :cond_95

    cmpg-float p0, p2, p0

    if-gez p0, :cond_95

    goto :goto_96

    :cond_95
    move v1, v2

    :goto_96
    move v2, v1

    :goto_97
    return v2
.end method

.method public getRotation()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " rotation: "

    invoke-static {v0, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/quickstep/OrientationRectF;->mRotation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
