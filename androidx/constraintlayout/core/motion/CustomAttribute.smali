.class public Landroidx/constraintlayout/core/motion/CustomAttribute;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field public mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field public mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomAttribute;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iget-object p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iput-boolean p4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

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


# virtual methods
.method public diff(Landroidx/constraintlayout/core/motion/CustomAttribute;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iget-object v2, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    if-eq v1, v2, :cond_a

    goto :goto_4a

    :cond_a
    sget-object v2, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_4c

    return v0

    :pswitch_17  #0x8
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_20

    move v0, v2

    :cond_20
    return v0

    :pswitch_21  #0x7
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2a

    move v0, v2

    :cond_2a
    return v0

    :pswitch_2b  #0x4, 0x5
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    if-ne p0, p1, :cond_32

    move v0, v2

    :cond_32
    return v0

    :pswitch_33  #0x3
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    if-ne p0, p1, :cond_3a

    move v0, v2

    :cond_3a
    return v0

    :pswitch_3b  #0x2
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    iget-boolean p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-ne p0, p1, :cond_42

    move v0, v2

    :cond_42
    return v0

    :pswitch_43  #0x1, 0x6
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    if-ne p0, p1, :cond_4a

    move v0, v2

    :cond_4a
    :goto_4a
    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_43  #00000001
        :pswitch_3b  #00000002
        :pswitch_33  #00000003
        :pswitch_2b  #00000004
        :pswitch_2b  #00000005
        :pswitch_43  #00000006
        :pswitch_21  #00000007
        :pswitch_17  #00000008
    .end packed-switch
.end method

.method public getType()Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-object p0
.end method

.method public getValueToInterpolate()F
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    const/high16 p0, 0x7fc00000  # Float.NaN

    return p0

    :pswitch_10  #0x8
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    return p0

    :pswitch_13  #0x7
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    return p0

    :pswitch_16  #0x6
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    int-to-float p0, p0

    return p0

    :pswitch_1a  #0x4, 0x5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Color does not have a single color to interpolate"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_22  #0x3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot interpolate String"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2a  #0x2
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-eqz p0, :cond_31

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    return p0

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2a  #00000002
        :pswitch_22  #00000003
        :pswitch_1a  #00000004
        :pswitch_1a  #00000005
        :pswitch_16  #00000006
        :pswitch_13  #00000007
        :pswitch_10  #00000008
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 11

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    :pswitch_f  #0x8
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    aput p0, p1, v1

    goto :goto_6e

    :pswitch_14  #0x7
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    aput p0, p1, v1

    goto :goto_6e

    :pswitch_19  #0x6
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    int-to-float p0, p0

    aput p0, p1, v1

    goto :goto_6e

    :pswitch_1f  #0x4, 0x5
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

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

    goto :goto_6e

    :pswitch_5c  #0x3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Color does not have a single color to interpolate"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_64  #0x2
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-eqz p0, :cond_6b

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_6c

    :cond_6b
    const/4 p0, 0x0

    :goto_6c
    aput p0, p1, v1

    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_64  #00000002
        :pswitch_5c  #00000003
        :pswitch_1f  #00000004
        :pswitch_1f  #00000005
        :pswitch_19  #00000006
        :pswitch_14  #00000007
        :pswitch_f  #00000008
    .end packed-switch
.end method

.method public isContinuous()Z
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public numberOfInterpolatedValues()I
    .registers 3

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/4 v1, 0x5

    if-eq p0, v1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v0
.end method

.method public setColorValue(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    return-void
.end method

.method public setFloatValue(F)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    return-void
.end method

.method public setIntValue(I)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    goto :goto_3f

    :pswitch_e  #0x8
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_3f

    :pswitch_17  #0x7
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_3f

    :pswitch_20  #0x4, 0x5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    goto :goto_3f

    :pswitch_29  #0x3
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    goto :goto_3f

    :pswitch_2e  #0x2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    goto :goto_3f

    :pswitch_37  #0x1, 0x6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_2e  #00000002
        :pswitch_29  #00000003
        :pswitch_20  #00000004
        :pswitch_20  #00000005
        :pswitch_37  #00000006
        :pswitch_17  #00000007
        :pswitch_e  #00000008
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 9

    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_58

    goto :goto_57

    :pswitch_10  #0x8
    aget p1, p1, v2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_57

    :pswitch_15  #0x7
    aget p1, p1, v2

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    goto :goto_57

    :pswitch_1a  #0x4, 0x5
    aget v0, p1, v2

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->hsvToRgb(FFF)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f0000  # 255.0f

    const/4 v2, 0x3

    aget p1, p1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    goto :goto_57

    :pswitch_3c  #0x3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Color does not have a single color to interpolate"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_44  #0x2
    aget p1, p1, v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    cmpl-double p1, v3, v5

    if-lez p1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    :goto_4f
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    goto :goto_57

    :pswitch_52  #0x1, 0x6
    aget p1, p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_44  #00000002
        :pswitch_3c  #00000003
        :pswitch_1a  #00000004
        :pswitch_1a  #00000005
        :pswitch_52  #00000006
        :pswitch_15  #00000007
        :pswitch_10  #00000008
    .end packed-switch
.end method
