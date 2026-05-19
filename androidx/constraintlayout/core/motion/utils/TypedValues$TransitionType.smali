.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Transitions"

.field public static final S_AUTO_TRANSITION:Ljava/lang/String; = "autoTransition"

.field public static final S_DURATION:Ljava/lang/String; = "duration"

.field public static final S_FROM:Ljava/lang/String; = "from"

.field public static final S_INTERPOLATOR:Ljava/lang/String; = "motionInterpolator"

.field public static final S_PATH_MOTION_ARC:Ljava/lang/String; = "pathMotionArc"

.field public static final S_STAGGERED:Ljava/lang/String; = "staggered"

.field public static final S_TO:Ljava/lang/String; = "to"

.field public static final S_TRANSITION_FLAGS:Ljava/lang/String; = "transitionFlags"

.field public static final TYPE_AUTO_TRANSITION:I = 0x2c0

.field public static final TYPE_DURATION:I = 0x2bc

.field public static final TYPE_FROM:I = 0x2bd

.field public static final TYPE_INTERPOLATOR:I = 0x2c1

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_STAGGERED:I = 0x2c2

.field public static final TYPE_TO:I = 0x2be

.field public static final TYPE_TRANSITION_FLAGS:I = 0x2c3


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-string v0, "duration"

    const-string v1, "from"

    const-string/jumbo v2, "to"

    const-string/jumbo v3, "pathMotionArc"

    const-string v4, "autoTransition"

    const-string/jumbo v5, "motionInterpolator"

    const-string/jumbo v6, "staggered"

    const-string v7, "from"

    const-string/jumbo v8, "transitionFlags"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_86

    :goto_b
    move p0, v1

    goto/16 :goto_6a

    :sswitch_e
    const-string/jumbo v0, "staggered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_b

    :cond_18
    const/4 p0, 0x7

    goto :goto_6a

    :sswitch_1a
    const-string/jumbo v0, "pathMotionArc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_b

    :cond_24
    const/4 p0, 0x6

    goto :goto_6a

    :sswitch_26
    const-string v0, "from"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_b

    :cond_2f
    const/4 p0, 0x5

    goto :goto_6a

    :sswitch_31
    const-string/jumbo v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_b

    :cond_3b
    const/4 p0, 0x4

    goto :goto_6a

    :sswitch_3d
    const-string v0, "autoTransition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_b

    :cond_46
    const/4 p0, 0x3

    goto :goto_6a

    :sswitch_48
    const-string/jumbo v0, "motionInterpolator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto :goto_b

    :cond_52
    const/4 p0, 0x2

    goto :goto_6a

    :sswitch_54
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_b

    :cond_5d
    const/4 p0, 0x1

    goto :goto_6a

    :sswitch_5f
    const-string/jumbo v0, "transitionFlags"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    goto :goto_b

    :cond_69
    const/4 p0, 0x0

    :goto_6a
    packed-switch p0, :pswitch_data_a8

    return v1

    :pswitch_6e  #0x7
    const/16 p0, 0x2c2

    return p0

    :pswitch_71  #0x6
    const/16 p0, 0x1fd

    return p0

    :pswitch_74  #0x5
    const/16 p0, 0x2bd

    return p0

    :pswitch_77  #0x4
    const/16 p0, 0x2be

    return p0

    :pswitch_7a  #0x3
    const/16 p0, 0x2c0

    return p0

    :pswitch_7d  #0x2
    const/16 p0, 0x2c1

    return p0

    :pswitch_80  #0x1
    const/16 p0, 0x2bc

    return p0

    :pswitch_83  #0x0
    const/16 p0, 0x2c3

    return p0

    :sswitch_data_86
    .sparse-switch
        -0x770661ce -> :sswitch_5f
        -0x76bbb26c -> :sswitch_54
        -0x50ef8463 -> :sswitch_48
        -0x4d5ee79c -> :sswitch_3d
        0xe7b -> :sswitch_31
        0x3017aa -> :sswitch_26
        0x4e203417 -> :sswitch_1a
        0x6da0e50c -> :sswitch_e
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_83  #00000000
        :pswitch_80  #00000001
        :pswitch_7d  #00000002
        :pswitch_7a  #00000003
        :pswitch_77  #00000004
        :pswitch_74  #00000005
        :pswitch_71  #00000006
        :pswitch_6e  #00000007
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    const/16 v0, 0x1fd

    if-eq p0, v0, :cond_11

    packed-switch p0, :pswitch_data_14

    packed-switch p0, :pswitch_data_1e

    const/4 p0, -0x1

    return p0

    :pswitch_c  #0x2c2
    const/4 p0, 0x4

    return p0

    :pswitch_e  #0x2bd, 0x2be, 0x2c1, 0x2c3
    const/16 p0, 0x8

    return p0

    :cond_11
    :pswitch_11  #0x2bc
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x2bc
        :pswitch_11  #000002bc
        :pswitch_e  #000002bd
        :pswitch_e  #000002be
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x2c1
        :pswitch_e  #000002c1
        :pswitch_c  #000002c2
        :pswitch_e  #000002c3
    .end packed-switch
.end method
