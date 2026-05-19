.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttributesType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyAttributes"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_FRAME:Ljava/lang/String; = "frame"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_TARGET:Ljava/lang/String; = "pivotTarget"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TARGET:Ljava/lang/String; = "target"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TYPE_ALPHA:I = 0x12f

.field public static final TYPE_CURVE_FIT:I = 0x12d

.field public static final TYPE_EASING:I = 0x13d

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x13c

.field public static final TYPE_PIVOT_TARGET:I = 0x13e

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x12e


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    const-string v0, "curveFit"

    const-string/jumbo v1, "visibility"

    const-string v2, "alpha"

    const-string/jumbo v3, "translationX"

    const-string/jumbo v4, "translationY"

    const-string/jumbo v5, "translationZ"

    const-string v6, "elevation"

    const-string/jumbo v7, "rotationX"

    const-string/jumbo v8, "rotationY"

    const-string/jumbo v9, "rotationZ"

    const-string/jumbo v10, "scaleX"

    const-string/jumbo v11, "scaleY"

    const-string/jumbo v12, "pivotX"

    const-string/jumbo v13, "pivotY"

    const-string/jumbo v14, "progress"

    const-string/jumbo v15, "pathRotate"

    const-string v16, "easing"

    const-string v17, "CUSTOM"

    const-string v18, "frame"

    const-string/jumbo v19, "target"

    const-string/jumbo v20, "pivotTarget"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_15c

    :goto_b
    move p0, v1

    goto/16 :goto_11b

    :sswitch_e
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_b

    :cond_18
    const/16 p0, 0x13

    goto/16 :goto_11b

    :sswitch_1c
    const-string/jumbo v0, "pivotTarget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_b

    :cond_26
    const/16 p0, 0x12

    goto/16 :goto_11b

    :sswitch_2a
    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_b

    :cond_34
    const/16 p0, 0x11

    goto/16 :goto_11b

    :sswitch_38
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_b

    :cond_41
    const/16 p0, 0x10

    goto/16 :goto_11b

    :sswitch_45
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_b

    :cond_4e
    const/16 p0, 0xf

    goto/16 :goto_11b

    :sswitch_52
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_b

    :cond_5b
    const/16 p0, 0xe

    goto/16 :goto_11b

    :sswitch_5f
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto :goto_b

    :cond_68
    const/16 p0, 0xd

    goto/16 :goto_11b

    :sswitch_6c
    const-string/jumbo v0, "target"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto :goto_b

    :cond_76
    const/16 p0, 0xc

    goto/16 :goto_11b

    :sswitch_7a
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto :goto_b

    :cond_84
    const/16 p0, 0xb

    goto/16 :goto_11b

    :sswitch_88
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto/16 :goto_b

    :cond_93
    const/16 p0, 0xa

    goto/16 :goto_11b

    :sswitch_97
    const-string/jumbo v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a2

    goto/16 :goto_b

    :cond_a2
    const/16 p0, 0x9

    goto/16 :goto_11b

    :sswitch_a6
    const-string/jumbo v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b1

    goto/16 :goto_b

    :cond_b1
    const/16 p0, 0x8

    goto/16 :goto_11b

    :sswitch_b5
    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c0

    goto/16 :goto_b

    :cond_c0
    const/4 p0, 0x7

    goto :goto_11b

    :sswitch_c2
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cd

    goto/16 :goto_b

    :cond_cd
    const/4 p0, 0x6

    goto :goto_11b

    :sswitch_cf
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_da

    goto/16 :goto_b

    :cond_da
    const/4 p0, 0x5

    goto :goto_11b

    :sswitch_dc
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto/16 :goto_b

    :cond_e7
    const/4 p0, 0x4

    goto :goto_11b

    :sswitch_e9
    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f4

    goto/16 :goto_b

    :cond_f4
    const/4 p0, 0x3

    goto :goto_11b

    :sswitch_f6
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_101

    goto/16 :goto_b

    :cond_101
    const/4 p0, 0x2

    goto :goto_11b

    :sswitch_103
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10e

    goto/16 :goto_b

    :cond_10e
    const/4 p0, 0x1

    goto :goto_11b

    :sswitch_110
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    goto/16 :goto_b

    :cond_11a
    const/4 p0, 0x0

    :goto_11b
    packed-switch p0, :pswitch_data_1ae

    return v1

    :pswitch_11f  #0x13
    const/16 p0, 0x12e

    return p0

    :pswitch_122  #0x12
    const/16 p0, 0x13e

    return p0

    :pswitch_125  #0x11
    const/16 p0, 0x13c

    return p0

    :pswitch_128  #0x10
    const/16 p0, 0x12d

    return p0

    :pswitch_12b  #0xf
    const/16 p0, 0x64

    return p0

    :pswitch_12e  #0xe
    const/16 p0, 0x12f

    return p0

    :pswitch_131  #0xd
    const/16 p0, 0x133

    return p0

    :pswitch_134  #0xc
    const/16 p0, 0x65

    return p0

    :pswitch_137  #0xb
    const/16 p0, 0x138

    return p0

    :pswitch_13a  #0xa
    const/16 p0, 0x137

    return p0

    :pswitch_13d  #0x9
    const/16 p0, 0x13a

    return p0

    :pswitch_140  #0x8
    const/16 p0, 0x139

    return p0

    :pswitch_143  #0x7
    const/16 p0, 0x13b

    return p0

    :pswitch_146  #0x6
    const/16 p0, 0x132

    return p0

    :pswitch_149  #0x5
    const/16 p0, 0x131

    return p0

    :pswitch_14c  #0x4
    const/16 p0, 0x130

    return p0

    :pswitch_14f  #0x3
    const/16 p0, 0x136

    return p0

    :pswitch_152  #0x2
    const/16 p0, 0x135

    return p0

    :pswitch_155  #0x1
    const/16 p0, 0x134

    return p0

    :pswitch_158  #0x0
    const/16 p0, 0x13d

    return p0

    nop

    :sswitch_data_15c
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_110
        -0x4a771f66 -> :sswitch_103
        -0x4a771f65 -> :sswitch_f6
        -0x4a771f64 -> :sswitch_e9
        -0x490b9c39 -> :sswitch_dc
        -0x490b9c38 -> :sswitch_cf
        -0x490b9c37 -> :sswitch_c2
        -0x3bab3dd3 -> :sswitch_b5
        -0x3ae243aa -> :sswitch_a6
        -0x3ae243a9 -> :sswitch_97
        -0x3621dfb2 -> :sswitch_88
        -0x3621dfb1 -> :sswitch_7a
        -0x34818e6f -> :sswitch_6c
        -0x42d1a3 -> :sswitch_5f
        0x589b15e -> :sswitch_52
        0x5d2a96d -> :sswitch_45
        0x2283b8a2 -> :sswitch_38
        0x2fdfbde0 -> :sswitch_2a
        0x45917073 -> :sswitch_1c
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_158  #00000000
        :pswitch_155  #00000001
        :pswitch_152  #00000002
        :pswitch_14f  #00000003
        :pswitch_14c  #00000004
        :pswitch_149  #00000005
        :pswitch_146  #00000006
        :pswitch_143  #00000007
        :pswitch_140  #00000008
        :pswitch_13d  #00000009
        :pswitch_13a  #0000000a
        :pswitch_137  #0000000b
        :pswitch_134  #0000000c
        :pswitch_131  #0000000d
        :pswitch_12e  #0000000e
        :pswitch_12b  #0000000f
        :pswitch_128  #00000010
        :pswitch_125  #00000011
        :pswitch_122  #00000012
        :pswitch_11f  #00000013
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

    :pswitch_d  #0x12f, 0x130, 0x131, 0x132, 0x133, 0x134, 0x135, 0x136, 0x137, 0x138, 0x139, 0x13a, 0x13b, 0x13c
    const/4 p0, 0x4

    return p0

    :cond_f
    :pswitch_f  #0x13d, 0x13e
    const/16 p0, 0x8

    return p0

    :cond_12
    :pswitch_12  #0x12d, 0x12e
    const/4 p0, 0x2

    return p0

    :pswitch_data_14
    .packed-switch 0x12d
        :pswitch_12  #0000012d
        :pswitch_12  #0000012e
        :pswitch_d  #0000012f
        :pswitch_d  #00000130
        :pswitch_d  #00000131
        :pswitch_d  #00000132
        :pswitch_d  #00000133
        :pswitch_d  #00000134
        :pswitch_d  #00000135
        :pswitch_d  #00000136
        :pswitch_d  #00000137
        :pswitch_d  #00000138
        :pswitch_d  #00000139
        :pswitch_d  #0000013a
        :pswitch_d  #0000013b
        :pswitch_d  #0000013c
        :pswitch_f  #0000013d
        :pswitch_f  #0000013e
    .end packed-switch
.end method
