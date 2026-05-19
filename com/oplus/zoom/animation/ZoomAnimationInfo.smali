.class public Lcom/oplus/zoom/animation/ZoomAnimationInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    }
.end annotation


# instance fields
.field public duration:J

.field public finishAlpha:F

.field public finishRect:Landroid/graphics/Rect;

.field public finishScale:F

.field public interpolator:Landroid/view/animation/Interpolator;

.field public mCallPkg:Ljava/lang/String;

.field public mIsLandScape:Z

.field public startAlpha:F

.field public startRect:Landroid/graphics/Rect;

.field public startScale:F

.field public type:I


# direct methods
.method public constructor <init>(IFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFJLandroid/view/animation/Interpolator;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->type:I

    iput p2, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startScale:F

    iput p3, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishScale:F

    iput-object p4, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    iput p6, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startAlpha:F

    iput p7, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishAlpha:F

    iput-object p10, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->interpolator:Landroid/view/animation/Interpolator;

    iput-wide p8, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->duration:J

    return-void
.end method


# virtual methods
.method public getCallPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->mCallPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->duration:J

    return-wide v0
.end method

.method public getFinishAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishAlpha:F

    return p0
.end method

.method public getFinishRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFinishScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishScale:F

    return p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getStartAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startAlpha:F

    return p0
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStartScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startScale:F

    return p0
.end method

.method public getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->type:I

    return p0
.end method

.method public isLandScape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->mIsLandScape:Z

    return p0
.end method

.method public setCallPkg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->mCallPkg:Ljava/lang/String;

    return-void
.end method

.method public setIsLandScape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->mIsLandScape:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ZoomAnimationInfo{type="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", finishScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finishRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", finishAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->finishAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
