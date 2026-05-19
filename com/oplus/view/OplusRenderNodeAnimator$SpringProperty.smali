.class public Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/view/OplusRenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpringProperty"
.end annotation


# instance fields
.field private mDampingRatio:F

.field private mFinalPosition:F

.field private mMaxValue:F

.field private mMinValue:F

.field private mMinimumVisibleChange:F

.field private mStartValue:F

.field private mStartVelocity:F

.field private mStiffness:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mFinalPosition:F

    iput v0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStiffness:F

    iput v0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mDampingRatio:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStartValue:F

    iput v1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStartVelocity:F

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMinimumVisibleChange:F

    iput v0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMaxValue:F

    const v0, -0x800001

    iput v0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMinValue:F

    return-void
.end method


# virtual methods
.method public getDampingRatio()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mDampingRatio:F

    return p0
.end method

.method public getFinalPosition()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mFinalPosition:F

    return p0
.end method

.method public getMaxValue()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMaxValue:F

    return p0
.end method

.method public getMinValue()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMinValue:F

    return p0
.end method

.method public getMinimumVisibleChange()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMinimumVisibleChange:F

    return p0
.end method

.method public getStartValue()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStartValue:F

    return p0
.end method

.method public getStartVelocity()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStartVelocity:F

    return p0
.end method

.method public getStiffness()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStiffness:F

    return p0
.end method

.method public setDampingRatio(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mDampingRatio:F

    return-object p0
.end method

.method public setFinalPosition(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mFinalPosition:F

    return-object p0
.end method

.method public setMaxValue(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mMinimumVisibleChange:F

    return-object p0
.end method

.method public setStartValue(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStartValue:F

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStartVelocity:F

    return-object p0
.end method

.method public setStiffness(F)Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;->mStiffness:F

    return-object p0
.end method
