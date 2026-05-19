.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CycleType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM_WAVE_SHAPE:Ljava/lang/String; = "customWave"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final S_WAVE_OFFSET:Ljava/lang/String; = "offset"

.field public static final S_WAVE_PERIOD:Ljava/lang/String; = "period"

.field public static final S_WAVE_PHASE:Ljava/lang/String; = "phase"

.field public static final S_WAVE_SHAPE:Ljava/lang/String; = "waveShape"

.field public static final TYPE_ALPHA:I = 0x193

.field public static final TYPE_CURVE_FIT:I = 0x191

.field public static final TYPE_CUSTOM_WAVE_SHAPE:I = 0x1a6

.field public static final TYPE_EASING:I = 0x1a4

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x1a0

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

.field public static final TYPE_VISIBILITY:I = 0x192

.field public static final TYPE_WAVE_OFFSET:I = 0x1a8

.field public static final TYPE_WAVE_PERIOD:I = 0x1a7

.field public static final TYPE_WAVE_PHASE:I = 0x1a9

.field public static final TYPE_WAVE_SHAPE:I = 0x1a5


# direct methods
.method public static constructor <clinit>()V
    .registers 22

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

    const-string/jumbo v17, "waveShape"

    const-string v18, "customWave"

    const-string/jumbo v19, "period"

    const-string/jumbo v20, "offset"

    const-string/jumbo v21, "phase"

    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_116

    :goto_b
    move p0, v1

    goto/16 :goto_e1

    :sswitch_e
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_b

    :cond_18
    const/16 p0, 0xf

    goto/16 :goto_e1

    :sswitch_1c
    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_b

    :cond_26
    const/16 p0, 0xe

    goto/16 :goto_e1

    :sswitch_2a
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_b

    :cond_33
    const/16 p0, 0xd

    goto/16 :goto_e1

    :sswitch_37
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_b

    :cond_40
    const/16 p0, 0xc

    goto/16 :goto_e1

    :sswitch_44
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_b

    :cond_4e
    const/16 p0, 0xb

    goto/16 :goto_e1

    :sswitch_52
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto :goto_b

    :cond_5c
    const/16 p0, 0xa

    goto/16 :goto_e1

    :sswitch_60
    const-string/jumbo v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_b

    :cond_6a
    const/16 p0, 0x9

    goto/16 :goto_e1

    :sswitch_6e
    const-string/jumbo v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_b

    :cond_78
    const/16 p0, 0x8

    goto/16 :goto_e1

    :sswitch_7c
    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto :goto_b

    :cond_86
    const/4 p0, 0x7

    goto :goto_e1

    :sswitch_88
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto/16 :goto_b

    :cond_93
    const/4 p0, 0x6

    goto :goto_e1

    :sswitch_95
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a0

    goto/16 :goto_b

    :cond_a0
    const/4 p0, 0x5

    goto :goto_e1

    :sswitch_a2
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ad

    goto/16 :goto_b

    :cond_ad
    const/4 p0, 0x4

    goto :goto_e1

    :sswitch_af
    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba

    goto/16 :goto_b

    :cond_ba
    const/4 p0, 0x3

    goto :goto_e1

    :sswitch_bc
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7

    goto/16 :goto_b

    :cond_c7
    const/4 p0, 0x2

    goto :goto_e1

    :sswitch_c9
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_b

    :cond_d4
    const/4 p0, 0x1

    goto :goto_e1

    :sswitch_d6
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto/16 :goto_b

    :cond_e0
    const/4 p0, 0x0

    :goto_e1
    packed-switch p0, :pswitch_data_158

    return v1

    :pswitch_e5  #0xf
    const/16 p0, 0x192

    return p0

    :pswitch_e8  #0xe
    const/16 p0, 0x1a0

    return p0

    :pswitch_eb  #0xd
    const/16 p0, 0x191

    return p0

    :pswitch_ee  #0xc
    const/16 p0, 0x193

    return p0

    :pswitch_f1  #0xb
    const/16 p0, 0x138

    return p0

    :pswitch_f4  #0xa
    const/16 p0, 0x137

    return p0

    :pswitch_f7  #0x9
    const/16 p0, 0x13a

    return p0

    :pswitch_fa  #0x8
    const/16 p0, 0x139

    return p0

    :pswitch_fd  #0x7
    const/16 p0, 0x13b

    return p0

    :pswitch_100  #0x6
    const/16 p0, 0x132

    return p0

    :pswitch_103  #0x5
    const/16 p0, 0x131

    return p0

    :pswitch_106  #0x4
    const/16 p0, 0x130

    return p0

    :pswitch_109  #0x3
    const/16 p0, 0x136

    return p0

    :pswitch_10c  #0x2
    const/16 p0, 0x135

    return p0

    :pswitch_10f  #0x1
    const/16 p0, 0x134

    return p0

    :pswitch_112  #0x0
    const/16 p0, 0x1a4

    return p0

    nop

    :sswitch_data_116
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_d6
        -0x4a771f66 -> :sswitch_c9
        -0x4a771f65 -> :sswitch_bc
        -0x4a771f64 -> :sswitch_af
        -0x490b9c39 -> :sswitch_a2
        -0x490b9c38 -> :sswitch_95
        -0x490b9c37 -> :sswitch_88
        -0x3bab3dd3 -> :sswitch_7c
        -0x3ae243aa -> :sswitch_6e
        -0x3ae243a9 -> :sswitch_60
        -0x3621dfb2 -> :sswitch_52
        -0x3621dfb1 -> :sswitch_44
        0x589b15e -> :sswitch_37
        0x2283b8a2 -> :sswitch_2a
        0x2fdfbde0 -> :sswitch_1c
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_112  #00000000
        :pswitch_10f  #00000001
        :pswitch_10c  #00000002
        :pswitch_109  #00000003
        :pswitch_106  #00000004
        :pswitch_103  #00000005
        :pswitch_100  #00000006
        :pswitch_fd  #00000007
        :pswitch_fa  #00000008
        :pswitch_f7  #00000009
        :pswitch_f4  #0000000a
        :pswitch_f1  #0000000b
        :pswitch_ee  #0000000c
        :pswitch_eb  #0000000d
        :pswitch_e8  #0000000e
        :pswitch_e5  #0000000f
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_24

    const/16 v0, 0x65

    if-eq p0, v0, :cond_21

    const/16 v0, 0x1a0

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x1a4

    if-eq p0, v0, :cond_21

    const/16 v0, 0x1a5

    if-eq p0, v0, :cond_21

    packed-switch p0, :pswitch_data_26

    packed-switch p0, :pswitch_data_42

    packed-switch p0, :pswitch_data_4c

    const/4 p0, -0x1

    return p0

    :cond_1f
    :pswitch_1f  #0x130, 0x131, 0x132, 0x133, 0x134, 0x135, 0x136, 0x137, 0x138, 0x139, 0x13a, 0x13b, 0x193, 0x1a7, 0x1a8, 0x1a9
    const/4 p0, 0x4

    return p0

    :cond_21
    const/16 p0, 0x8

    return p0

    :cond_24
    :pswitch_24  #0x191, 0x192
    const/4 p0, 0x2

    return p0

    :pswitch_data_26
    .packed-switch 0x130
        :pswitch_1f  #00000130
        :pswitch_1f  #00000131
        :pswitch_1f  #00000132
        :pswitch_1f  #00000133
        :pswitch_1f  #00000134
        :pswitch_1f  #00000135
        :pswitch_1f  #00000136
        :pswitch_1f  #00000137
        :pswitch_1f  #00000138
        :pswitch_1f  #00000139
        :pswitch_1f  #0000013a
        :pswitch_1f  #0000013b
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x191
        :pswitch_24  #00000191
        :pswitch_24  #00000192
        :pswitch_1f  #00000193
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1a7
        :pswitch_1f  #000001a7
        :pswitch_1f  #000001a8
        :pswitch_1f  #000001a9
    .end packed-switch
.end method
