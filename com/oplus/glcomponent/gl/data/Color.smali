.class public final Lcom/oplus/glcomponent/gl/data/Color;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u001b\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u001a\u0010\u001bB)\b\u0016\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001cJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0000J)\u0010\u000e\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0086\u0002R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u000f\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000f\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013¨\u0006\u001d"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/data/Color;",
        "",
        "",
        "value",
        "mul",
        "h",
        "s",
        "v",
        "fromHsv",
        "clamp",
        "r",
        "g",
        "b",
        "a",
        "set",
        "F",
        "getR",
        "()F",
        "setR",
        "(F)V",
        "getG",
        "setG",
        "getB",
        "setB",
        "getA",
        "setA",
        "<init>",
        "()V",
        "(FFFF)V",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private g:F

.field private r:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput p2, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    iput p4, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    return-void
.end method


# virtual methods
.method public final clamp()Lcom/oplus/glcomponent/gl/data/Color;
    .registers 5

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000  # 1.0f

    if-gez v2, :cond_c

    iput v1, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    goto :goto_12

    :cond_c
    cmpl-float v0, v0, v3

    if-lez v0, :cond_12

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    :cond_12
    :goto_12
    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1b

    iput v1, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    goto :goto_21

    :cond_1b
    cmpl-float v0, v0, v3

    if-lez v0, :cond_21

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    :cond_21
    :goto_21
    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2a

    iput v1, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    goto :goto_30

    :cond_2a
    cmpl-float v0, v0, v3

    if-lez v0, :cond_30

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    :cond_30
    :goto_30
    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_39

    iput v1, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    goto :goto_3f

    :cond_39
    cmpl-float v0, v0, v3

    if-lez v0, :cond_3f

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public final fromHsv(FFF)Lcom/oplus/glcomponent/gl/data/Color;
    .registers 9

    const/high16 v0, 0x42700000  # 60.0f

    div-float/2addr p1, v0

    const/4 v0, 0x6

    int-to-float v0, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    float-to-int v0, p1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    const/4 v1, 0x1

    int-to-float v2, v1

    sub-float v3, v2, p2

    mul-float/2addr v3, p3

    invoke-static {p2, p1, v2, p3}, Landroidx/core/content/res/e;->a(FFFF)F

    move-result v4

    sub-float p1, v2, p1

    mul-float/2addr p1, p2

    sub-float/2addr v2, p1

    mul-float/2addr v2, p3

    if-eqz v0, :cond_48

    if-eq v0, v1, :cond_41

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3a

    const/4 p1, 0x3

    if-eq v0, p1, :cond_33

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2c

    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput v4, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    goto :goto_4e

    :cond_2c
    iput v2, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    goto :goto_4e

    :cond_33
    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput v4, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    goto :goto_4e

    :cond_3a
    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput v2, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    goto :goto_4e

    :cond_41
    iput v4, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    goto :goto_4e

    :cond_48
    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput v2, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput v3, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    :goto_4e
    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/data/Color;->clamp()Lcom/oplus/glcomponent/gl/data/Color;

    move-result-object p0

    return-object p0
.end method

.method public final getA()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    return p0
.end method

.method public final getB()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    return p0
.end method

.method public final getG()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    return p0
.end method

.method public final getR()F
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    return p0
.end method

.method public final mul(F)Lcom/oplus/glcomponent/gl/data/Color;
    .registers 3

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/data/Color;->clamp()Lcom/oplus/glcomponent/gl/data/Color;

    move-result-object p0

    return-object p0
.end method

.method public final set(FFFF)Lcom/oplus/glcomponent/gl/data/Color;
    .registers 5

    iput p1, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    iput p2, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    iput p3, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    iput p4, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/data/Color;->clamp()Lcom/oplus/glcomponent/gl/data/Color;

    move-result-object p0

    return-object p0
.end method

.method public final setA(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/data/Color;->a:F

    return-void
.end method

.method public final setB(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/data/Color;->b:F

    return-void
.end method

.method public final setG(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/data/Color;->g:F

    return-void
.end method

.method public final setR(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/glcomponent/gl/data/Color;->r:F

    return-void
.end method
