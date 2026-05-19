.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final S_DRAWPATH:Ljava/lang/String; = "drawPath"

.field public static final S_PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final S_PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final S_PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final S_PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final S_SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field public static final S_TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CURVE_FIT:I = 0x1fc

.field public static final TYPE_DRAWPATH:I = 0x1f6

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_PERCENT_HEIGHT:I = 0x1f8

.field public static final TYPE_PERCENT_WIDTH:I = 0x1f7

.field public static final TYPE_PERCENT_X:I = 0x1fa

.field public static final TYPE_PERCENT_Y:I = 0x1fb

.field public static final TYPE_POSITION_TYPE:I = 0x1fe

.field public static final TYPE_SIZE_PERCENT:I = 0x1f9

.field public static final TYPE_TRANSITION_EASING:I = 0x1f5


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string/jumbo v0, "transitionEasing"

    const-string v1, "drawPath"

    const-string/jumbo v2, "percentWidth"

    const-string/jumbo v3, "percentHeight"

    const-string/jumbo v4, "sizePercent"

    const-string/jumbo v5, "percentX"

    const-string/jumbo v6, "percentY"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_78

    :goto_b
    move p0, v1

    goto :goto_5f

    :sswitch_d
    const-string/jumbo v0, "percentY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_b

    :cond_17
    const/4 p0, 0x6

    goto :goto_5f

    :sswitch_19
    const-string/jumbo v0, "percentX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_b

    :cond_23
    const/4 p0, 0x5

    goto :goto_5f

    :sswitch_25
    const-string/jumbo v0, "sizePercent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_b

    :cond_2f
    const/4 p0, 0x4

    goto :goto_5f

    :sswitch_31
    const-string v0, "drawPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_b

    :cond_3a
    const/4 p0, 0x3

    goto :goto_5f

    :sswitch_3c
    const-string/jumbo v0, "percentHeight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_b

    :cond_46
    const/4 p0, 0x2

    goto :goto_5f

    :sswitch_48
    const-string/jumbo v0, "percentWidth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto :goto_b

    :cond_52
    const/4 p0, 0x1

    goto :goto_5f

    :sswitch_54
    const-string/jumbo v0, "transitionEasing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_b

    :cond_5e
    const/4 p0, 0x0

    :goto_5f
    packed-switch p0, :pswitch_data_96

    return v1

    :pswitch_63  #0x6
    const/16 p0, 0x1fb

    return p0

    :pswitch_66  #0x5
    const/16 p0, 0x1fa

    return p0

    :pswitch_69  #0x4
    const/16 p0, 0x1f9

    return p0

    :pswitch_6c  #0x3
    const/16 p0, 0x1f6

    return p0

    :pswitch_6f  #0x2
    const/16 p0, 0x1f8

    return p0

    :pswitch_72  #0x1
    const/16 p0, 0x1f7

    return p0

    :pswitch_75  #0x0
    const/16 p0, 0x1f5

    return p0

    :sswitch_data_78
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_54
        -0x4330437f -> :sswitch_48
        -0x3ca72634 -> :sswitch_3c
        -0x314b3c77 -> :sswitch_31
        -0xbefb6fc -> :sswitch_25
        0x198424b3 -> :sswitch_19
        0x198424b4 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_75  #00000000
        :pswitch_72  #00000001
        :pswitch_6f  #00000002
        :pswitch_6c  #00000003
        :pswitch_69  #00000004
        :pswitch_66  #00000005
        :pswitch_63  #00000006
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_12

    const/16 v0, 0x65

    if-eq p0, v0, :cond_f

    packed-switch p0, :pswitch_data_14

    const/4 p0, -0x1

    return p0

    :pswitch_d  #0x1f7, 0x1f8, 0x1f9, 0x1fa, 0x1fb
    const/4 p0, 0x4

    return p0

    :cond_f
    :pswitch_f  #0x1f5, 0x1f6
    const/16 p0, 0x8

    return p0

    :cond_12
    :pswitch_12  #0x1fc
    const/4 p0, 0x2

    return p0

    :pswitch_data_14
    .packed-switch 0x1f5
        :pswitch_f  #000001f5
        :pswitch_f  #000001f6
        :pswitch_d  #000001f7
        :pswitch_d  #000001f8
        :pswitch_d  #000001f9
        :pswitch_d  #000001fa
        :pswitch_d  #000001fb
        :pswitch_12  #000001fc
    .end packed-switch
.end method
