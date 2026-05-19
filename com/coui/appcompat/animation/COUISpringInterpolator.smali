.class public Lcom/coui/appcompat/animation/COUISpringInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x16
.end annotation


# instance fields
.field public a:F


# virtual methods
.method public final a(F)F
    .registers 8

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_6

    move p1, p0

    :cond_6
    mul-float/2addr p1, p0

    const-wide/high16 v0, -0x8000000000000000L

    float-to-double p0, p1

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    add-double/2addr p0, v4

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public getInterpolation(F)F
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->a:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/COUISpringInterpolator;->a(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->a:F

    :cond_17
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/COUISpringInterpolator;->a(F)F

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->a:F

    div-float/2addr p1, p0

    return p1
.end method
