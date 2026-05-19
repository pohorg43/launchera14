.class public Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/animation/ZoomAnimationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public duration:J

.field public finishAlpha:F

.field public finishRect:Landroid/graphics/Rect;

.field public finishScale:F

.field public interpolator:Landroid/view/animation/Interpolator;

.field public mIsLandScape:Z

.field public startAlpha:F

.field public startRect:Landroid/graphics/Rect;

.field public startScale:F

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->startAlpha:F

    iput v0, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->finishAlpha:F

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/zoom/animation/ZoomAnimationInfo;
    .registers 13

    new-instance v11, Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iget v1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->type:I

    iget v2, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->startScale:F

    iget v3, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->finishScale:F

    iget-object v4, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->startRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->finishRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->startAlpha:F

    iget v7, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->finishAlpha:F

    iget-wide v8, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->duration:J

    iget-object v10, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->interpolator:Landroid/view/animation/Interpolator;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;-><init>(IFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFJLandroid/view/animation/Interpolator;)V

    return-object v11
.end method

.method public setDuration(J)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->duration:J

    return-object p0
.end method

.method public setFinishAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->finishAlpha:F

    return-object p0
.end method

.method public setFinishRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->finishRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setFinishScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->finishScale:F

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setIsLandScape(Z)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->mIsLandScape:Z

    return-object p0
.end method

.method public setStartAlpha(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->startAlpha:F

    return-object p0
.end method

.method public setStartRect(Landroid/graphics/Rect;)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->startRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setStartScale(F)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->startScale:F

    return-object p0
.end method

.method public setType(I)Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/animation/ZoomAnimationInfo$Builder;->type:I

    return-object p0
.end method
