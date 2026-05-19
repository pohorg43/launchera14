.class public Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final ACCURACY:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "HigherBezierInterpolator"


# instance fields
.field private mControlPointXs:[F

.field private mControlPointYs:[F

.field private mLastI:I

.field private mMultiples:[I


# direct methods
.method public varargs constructor <init>([F)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mLastI:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointXs:[F

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointYs:[F

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mMultiples:[I

    if-eqz p1, :cond_81

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_15

    goto :goto_81

    :cond_15
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointXs:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    array-length v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/high16 v6, 0x3f800000  # 1.0f

    aput v6, v2, v4

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    invoke-static {p1, v0, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointYs:[F

    aput v3, v2, v0

    array-length v0, v2

    sub-int/2addr v0, v5

    aput v6, v2, v0

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    invoke-static {p1, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->generateMultiples(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mMultiples:[I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_81

    const-string p1, "mControlPointXs: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointXs:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; mControlPointYs: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointYs:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; mMultiples: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mMultiples:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HigherBezierInterpolator"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void
.end method

.method private varargs calculateCurveXY(D[F)D
    .registers 13

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mMultiples:[I

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_31

    if-eqz p3, :cond_31

    array-length v0, v0

    array-length v3, p3

    if-eq v0, v3, :cond_d

    goto :goto_31

    :cond_d
    const/4 v0, 0x0

    :goto_e
    array-length v3, p3

    if-ge v0, v3, :cond_31

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mMultiples:[I

    aget v3, v3, v0

    int-to-double v3, v3

    int-to-double v5, v0

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v3, p1

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v0

    int-to-double v7, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v5

    aget v5, p3, v0

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_31
    :goto_31
    return-wide v1
.end method

.method private generateMultiples(I)[I
    .registers 4

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->generateYHTriangle(I)[[I

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    array-length v1, p0

    if-ge v1, p1, :cond_c

    return-object v0

    :cond_c
    add-int/lit8 v1, p1, -0x1

    aget-object p0, p0, v1

    if-eqz p0, :cond_17

    array-length v1, p0

    if-eq v1, p1, :cond_16

    goto :goto_17

    :cond_16
    return-object p0

    :cond_17
    :goto_17
    return-object v0
.end method

.method private generateYHTriangle(I)[[I
    .registers 10

    if-gtz p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-array p0, p1, [[I

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p1, :cond_3b

    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [I

    aput-object v3, p0, v1

    move v3, v0

    :goto_11
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_39

    const/4 v4, 0x1

    if-eqz v3, :cond_32

    aget-object v5, p0, v1

    array-length v5, v5

    sub-int/2addr v5, v4

    if-ne v3, v5, :cond_20

    goto :goto_32

    :cond_20
    aget-object v4, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v6, p0, v5

    aget v6, v6, v3

    aget-object v5, p0, v5

    add-int/lit8 v7, v3, -0x1

    aget v5, v5, v7

    add-int/2addr v6, v5

    aput v6, v4, v3

    goto :goto_36

    :cond_32
    :goto_32
    aget-object v5, p0, v1

    aput v4, v5, v3

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_39
    move v1, v2

    goto :goto_8

    :cond_3b
    return-object p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 9

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_9

    iput v2, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mLastI:I

    return v0

    :cond_9
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_12

    iput v2, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mLastI:I

    return v0

    :cond_12
    iget v0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mLastI:I

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_17
    const/16 v5, 0x1000

    if-ge v0, v5, :cond_34

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide/high16 v1, 0x40b0000000000000L  # 4096.0

    div-double v1, v3, v1

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointXs:[F

    invoke-direct {p0, v1, v2, v3}, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->calculateCurveXY(D[F)D

    move-result-wide v3

    float-to-double v5, p1

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_31

    iput v0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mLastI:I

    goto :goto_34

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->mControlPointYs:[F

    invoke-direct {p0, v1, v2, v0}, Lcom/oplus/quickstep/gesture/HigherBezierInterpolator;->calculateCurveXY(D[F)D

    move-result-wide v5

    double-to-float p0, v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "; proportion: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "; x: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "; y: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HigherBezierInterpolator"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return p0
.end method
