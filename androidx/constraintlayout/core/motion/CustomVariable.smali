.class public Landroidx/constraintlayout/core/motion/CustomVariable;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field public mBooleanValue:Z

.field private mFloatValue:F

.field private mIntegerValue:I

.field public mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iget-boolean p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/16 p1, 0x385

    if-ne p2, p1, :cond_1a

    int-to-float p1, p3

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_1c

    :cond_1a
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    :goto_1c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput-object p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput-boolean p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return-void
.end method

.method private static clamp(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, -0xff

    shr-int/lit8 v0, p0, 0x1f

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static colorString(I)Ljava/lang/String;
    .registers 3

    const-string v0, "00000000"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hsvToRgb(FFF)I
    .registers 8

    const/high16 v0, 0x40c00000  # 6.0f

    mul-float/2addr p0, v0

    float-to-int v0, p0

    int-to-float v1, v0

    sub-float/2addr p0, v1

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-static {v1, p1, p2, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v3

    float-to-int v3, v3

    mul-float v4, p0, p1

    sub-float v4, v1, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v2

    float-to-int v4, v4

    sub-float p0, v1, p0

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int p0, v1

    add-float/2addr p2, v2

    float-to-int p1, p2

    const/high16 p2, -0x1000000

    if-eqz v0, :cond_60

    const/4 v1, 0x1

    if-eq v0, v1, :cond_58

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3f

    const/4 p0, 0x5

    if-eq v0, p0, :cond_37

    const/4 p0, 0x0

    return p0

    :cond_37
    shl-int/lit8 p0, p1, 0x10

    shl-int/lit8 p1, v3, 0x8

    add-int/2addr p0, p1

    add-int/2addr p0, v4

    or-int/2addr p0, p2

    return p0

    :cond_3f
    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 v0, v3, 0x8

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0

    :cond_47
    shl-int/lit8 p0, v3, 0x10

    shl-int/lit8 v0, v4, 0x8

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0

    :cond_4f
    shl-int/lit8 v0, v3, 0x10

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    or-int p0, v0, p2

    return p0

    :cond_58
    shl-int/lit8 p0, v4, 0x10

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p0, p1

    add-int/2addr p0, v3

    or-int/2addr p0, p2

    return p0

    :cond_60
    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p1, p0

    add-int/2addr p1, v3

    or-int p0, p1, p2

    return p0
.end method

.method public static rgbaTocColor(FFFF)I
    .registers 5

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result p0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-static {p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p3

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 4

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_26

    goto :goto_25

    :pswitch_6  #0x388
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    invoke-virtual {p1, v1, v0, p0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    goto :goto_25

    :pswitch_e  #0x387
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_25

    :pswitch_16  #0x385, 0x389
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {p1, v1, v0, p0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    goto :goto_25

    :pswitch_1e  #0x384, 0x386, 0x38a
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-virtual {p1, v1, v0, p0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x384
        :pswitch_1e  #00000384
        :pswitch_16  #00000385
        :pswitch_1e  #00000386
        :pswitch_e  #00000387
        :pswitch_6  #00000388
        :pswitch_16  #00000389
        :pswitch_1e  #0000038a
    .end packed-switch
.end method

.method public copy()Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V

    return-object v0
.end method

.method public diff(Landroidx/constraintlayout/core/motion/CustomVariable;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    if-eq v1, v2, :cond_a

    goto :goto_42

    :cond_a
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_44

    return v0

    :pswitch_f  #0x389
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_18

    move v0, v2

    :cond_18
    return v0

    :pswitch_19  #0x388
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    iget-boolean p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-ne p0, p1, :cond_20

    move v0, v2

    :cond_20
    return v0

    :pswitch_21  #0x387
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne p0, p1, :cond_28

    move v0, v2

    :cond_28
    return v0

    :pswitch_29  #0x386
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne p0, p1, :cond_30

    move v0, v2

    :cond_30
    return v0

    :pswitch_31  #0x385
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3a

    move v0, v2

    :cond_3a
    return v0

    :pswitch_3b  #0x384, 0x38a
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne p0, p1, :cond_42

    move v0, v2

    :cond_42
    :goto_42
    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x384
        :pswitch_3b  #00000384
        :pswitch_31  #00000385
        :pswitch_29  #00000386
        :pswitch_21  #00000387
        :pswitch_19  #00000388
        :pswitch_f  #00000389
        :pswitch_3b  #0000038a
    .end packed-switch
.end method

.method public getBooleanValue()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return p0
.end method

.method public getColorValue()I
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return p0
.end method

.method public getFloatValue()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return p0
.end method

.method public getIntegerValue()I
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return p0
.end method

.method public getInterpolatedColor([F)I
    .registers 8

    const/4 p0, 0x0

    aget p0, p1, p0

    float-to-double v0, p0

    const-wide v2, 0x3fdd1745d1745d17L  # 0.45454545454545453

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result p0

    const/4 v1, 0x1

    aget v1, p1, v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    const/4 v4, 0x2

    aget v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v2

    const/4 v3, 0x3

    aget p1, p1, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v2

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    return p0
.end method

.method public getValueToInterpolate()F
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_2c

    const/high16 p0, 0x7fc00000  # Float.NaN

    return p0

    :pswitch_8  #0x389
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return p0

    :pswitch_b  #0x388
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-eqz p0, :cond_12

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0

    :pswitch_14  #0x387
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot interpolate String"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c  #0x386
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Color does not have a single color to interpolate"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_24  #0x385
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return p0

    :pswitch_27  #0x384
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    int-to-float p0, p0

    return p0

    nop

    :pswitch_data_2c
    .packed-switch 0x384
        :pswitch_27  #00000384
        :pswitch_24  #00000385
        :pswitch_1c  #00000386
        :pswitch_14  #00000387
        :pswitch_b  #00000388
        :pswitch_8  #00000389
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 11

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_68

    goto :goto_66

    :pswitch_7  #0x389
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    aput p0, p1, v1

    goto :goto_66

    :pswitch_c  #0x388
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-eqz p0, :cond_13

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    aput p0, p1, v1

    goto :goto_66

    :pswitch_17  #0x387
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot interpolate String"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1f  #0x386
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float v2, v2

    const/high16 v4, 0x437f0000  # 255.0f

    div-float/2addr v2, v4

    float-to-double v5, v2

    const-wide v7, 0x400199999999999aL  # 2.2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    int-to-float p0, p0

    div-float/2addr p0, v4

    float-to-double v5, p0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float p0, v5

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v3, p1, v1

    const/4 v1, 0x2

    aput p0, p1, v1

    const/4 p0, 0x3

    int-to-float v0, v0

    div-float/2addr v0, v4

    aput v0, p1, p0

    goto :goto_66

    :pswitch_5c  #0x385
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    aput p0, p1, v1

    goto :goto_66

    :pswitch_61  #0x384
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    int-to-float p0, p0

    aput p0, p1, v1

    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x384
        :pswitch_61  #00000384
        :pswitch_5c  #00000385
        :pswitch_1f  #00000386
        :pswitch_17  #00000387
        :pswitch_c  #00000388
        :pswitch_7  #00000389
    .end packed-switch
.end method

.method public isContinuous()Z
    .registers 2

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/16 v0, 0x387

    if-eq p0, v0, :cond_10

    const/16 v0, 0x388

    if-eq p0, v0, :cond_10

    const/16 v0, 0x38a

    if-eq p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public numberOfInterpolatedValues()I
    .registers 2

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/16 v0, 0x386

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x4

    return p0
.end method

.method public setBooleanValue(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return-void
.end method

.method public setFloatValue(F)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return-void
.end method

.method public setIntValue(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V
    .registers 11

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_8c

    goto/16 :goto_8b

    :pswitch_9  #0x388
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    aget p2, p2, v2

    const/high16 v3, 0x3f000000  # 0.5f

    cmpl-float p2, p2, v3

    if-lez p2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    invoke-virtual {p1, p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    goto :goto_8b

    :pswitch_19  #0x387, 0x38a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unable to interpolate "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2f  #0x386
    aget v0, p2, v2

    float-to-double v2, v0

    const-wide v4, 0x3fdd1745d1745d17L  # 0.45454545454545453

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v0

    aget v1, p2, v1

    float-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    const/4 v3, 0x2

    aget v3, p2, v3

    float-to-double v6, v3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v3

    const/4 v4, 0x3

    aget p2, p2, v4

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-static {p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p2, v0

    or-int/2addr p2, v3

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    invoke-virtual {p1, v0, p0, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    goto :goto_8b

    :pswitch_7b  #0x385, 0x389
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    aget p2, p2, v2

    invoke-virtual {p1, p0, v0, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    goto :goto_8b

    :pswitch_83  #0x384
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    aget p2, p2, v2

    float-to-int p2, p2

    invoke-virtual {p1, p0, v0, p2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    :goto_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x384
        :pswitch_83  #00000384
        :pswitch_7b  #00000385
        :pswitch_2f  #00000386
        :pswitch_19  #00000387
        :pswitch_9  #00000388
        :pswitch_7b  #00000389
        :pswitch_19  #0000038a
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_38

    goto :goto_37

    :pswitch_6  #0x389
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_37

    :pswitch_f  #0x388
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    goto :goto_37

    :pswitch_18  #0x387
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    goto :goto_37

    :pswitch_1d  #0x386
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    goto :goto_37

    :pswitch_26  #0x385
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_37

    :pswitch_2f  #0x384, 0x38a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x384
        :pswitch_2f  #00000384
        :pswitch_26  #00000385
        :pswitch_1d  #00000386
        :pswitch_18  #00000387
        :pswitch_f  #00000388
        :pswitch_6  #00000389
        :pswitch_2f  #0000038a
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 10

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    :pswitch_a  #0x388
    aget p1, p1, v4

    float-to-double v5, p1

    cmpl-double p1, v5, v2

    if-lez p1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v4

    :goto_13
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    goto :goto_6e

    :pswitch_16  #0x387
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot interpolate String"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1e  #0x386
    aget v0, p1, v4

    aget v1, p1, v1

    const/4 v4, 0x2

    aget v4, p1, v4

    float-to-double v5, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    const/high16 v5, 0x437f0000  # 255.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    float-to-double v6, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    float-to-double v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    aget p1, p1, v3

    mul-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p1, v0

    or-int/2addr p1, v2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    goto :goto_6e

    :pswitch_64  #0x385, 0x389
    aget p1, p1, v4

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_6e

    :pswitch_69  #0x384, 0x38a
    aget p1, p1, v4

    float-to-int p1, p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x384
        :pswitch_69  #00000384
        :pswitch_64  #00000385
        :pswitch_1e  #00000386
        :pswitch_16  #00000387
        :pswitch_a  #00000388
        :pswitch_64  #00000389
        :pswitch_69  #0000038a
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v1, :pswitch_data_76

    const-string p0, "????"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19  #0x389
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_27  #0x388
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_39  #0x387
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_47  #0x386
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-static {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->colorString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_59  #0x385
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_67  #0x384
    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_76
    .packed-switch 0x384
        :pswitch_67  #00000384
        :pswitch_59  #00000385
        :pswitch_47  #00000386
        :pswitch_39  #00000387
        :pswitch_27  #00000388
        :pswitch_19  #00000389
    .end packed-switch
.end method
