.class public Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source ""


# static fields
.field public static final KEY_TYPE:I = 0x4

.field public static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyCycle"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

.field public static final WAVE_PHASE:Ljava/lang/String; = "wavePhase"

.field public static final WAVE_SHAPE:Ljava/lang/String; = "waveShape"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mCustomWaveShape:Ljava/lang/String;

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWavePhase:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CUSTOM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroidx/constraintlayout/core/motion/CustomVariable;->getType()I

    move-result v4

    const/16 v5, 0x385

    if-eq v4, v5, :cond_39

    goto :goto_c

    :cond_39
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    if-nez v5, :cond_43

    goto :goto_c

    :cond_43
    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    const/4 v9, -0x1

    iget v10, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    iget v11, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iget v12, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v14}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v13

    invoke-virtual/range {v5 .. v14}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    goto :goto_c

    :cond_58
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_63

    goto :goto_c

    :cond_63
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    if-nez v15, :cond_6d

    goto :goto_c

    :cond_6d
    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v4, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    const/16 v19, -0x1

    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    iget v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual/range {v15 .. v23}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    goto :goto_c

    :cond_8b
    return-void
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MotionKeyCycle{mWaveShape="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWavePeriod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mWaveOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mWavePhase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_36
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_44
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    const-string/jumbo v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_52
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_60

    const-string/jumbo v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_60
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_98

    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_98
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_cb

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_aa
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CUSTOM,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_cb
    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_16e

    :goto_b
    move p0, v0

    goto/16 :goto_12b

    :sswitch_e
    const-string/jumbo p0, "visibility"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_b

    :cond_18
    const/16 p0, 0x14

    goto/16 :goto_12b

    :sswitch_1c
    const-string/jumbo p0, "waveShape"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_b

    :cond_26
    const/16 p0, 0x13

    goto/16 :goto_12b

    :sswitch_2a
    const-string/jumbo p0, "pathRotate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_b

    :cond_34
    const/16 p0, 0x12

    goto/16 :goto_12b

    :sswitch_38
    const-string p0, "curveFit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_b

    :cond_41
    const/16 p0, 0x11

    goto/16 :goto_12b

    :sswitch_45
    const-string/jumbo p0, "phase"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto :goto_b

    :cond_4f
    const/16 p0, 0x10

    goto/16 :goto_12b

    :sswitch_53
    const-string p0, "alpha"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto :goto_b

    :cond_5c
    const/16 p0, 0xf

    goto/16 :goto_12b

    :sswitch_60
    const-string/jumbo p0, "scaleY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_b

    :cond_6a
    const/16 p0, 0xe

    goto/16 :goto_12b

    :sswitch_6e
    const-string/jumbo p0, "scaleX"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_b

    :cond_78
    const/16 p0, 0xd

    goto/16 :goto_12b

    :sswitch_7c
    const-string/jumbo p0, "pivotY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto :goto_b

    :cond_86
    const/16 p0, 0xc

    goto/16 :goto_12b

    :sswitch_8a
    const-string/jumbo p0, "pivotX"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_95

    goto/16 :goto_b

    :cond_95
    const/16 p0, 0xb

    goto/16 :goto_12b

    :sswitch_99
    const-string/jumbo p0, "period"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto/16 :goto_b

    :cond_a4
    const/16 p0, 0xa

    goto/16 :goto_12b

    :sswitch_a8
    const-string/jumbo p0, "progress"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_b

    :cond_b3
    const/16 p0, 0x9

    goto/16 :goto_12b

    :sswitch_b7
    const-string/jumbo p0, "offset"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_b

    :cond_c2
    const/16 p0, 0x8

    goto/16 :goto_12b

    :sswitch_c6
    const-string/jumbo p0, "translationZ"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d1

    goto/16 :goto_b

    :cond_d1
    const/4 p0, 0x7

    goto :goto_12b

    :sswitch_d3
    const-string/jumbo p0, "translationY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_de

    goto/16 :goto_b

    :cond_de
    const/4 p0, 0x6

    goto :goto_12b

    :sswitch_e0
    const-string/jumbo p0, "translationX"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto/16 :goto_b

    :cond_eb
    const/4 p0, 0x5

    goto :goto_12b

    :sswitch_ed
    const-string/jumbo p0, "rotationZ"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f8

    goto/16 :goto_b

    :cond_f8
    const/4 p0, 0x4

    goto :goto_12b

    :sswitch_fa
    const-string/jumbo p0, "rotationY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_105

    goto/16 :goto_b

    :cond_105
    const/4 p0, 0x3

    goto :goto_12b

    :sswitch_107
    const-string/jumbo p0, "rotationX"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_112

    goto/16 :goto_b

    :cond_112
    const/4 p0, 0x2

    goto :goto_12b

    :sswitch_114
    const-string p0, "easing"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11e

    goto/16 :goto_b

    :cond_11e
    const/4 p0, 0x1

    goto :goto_12b

    :sswitch_120
    const-string p0, "customWave"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12a

    goto/16 :goto_b

    :cond_12a
    const/4 p0, 0x0

    :goto_12b
    packed-switch p0, :pswitch_data_1c4

    return v0

    :pswitch_12f  #0x14
    const/16 p0, 0x192

    return p0

    :pswitch_132  #0x13
    const/16 p0, 0x1a5

    return p0

    :pswitch_135  #0x12
    const/16 p0, 0x1a0

    return p0

    :pswitch_138  #0x11
    const/16 p0, 0x191

    return p0

    :pswitch_13b  #0x10
    const/16 p0, 0x1a9

    return p0

    :pswitch_13e  #0xf
    const/16 p0, 0x193

    return p0

    :pswitch_141  #0xe
    const/16 p0, 0x138

    return p0

    :pswitch_144  #0xd
    const/16 p0, 0x137

    return p0

    :pswitch_147  #0xc
    const/16 p0, 0x13a

    return p0

    :pswitch_14a  #0xb
    const/16 p0, 0x139

    return p0

    :pswitch_14d  #0xa
    const/16 p0, 0x1a7

    return p0

    :pswitch_150  #0x9
    const/16 p0, 0x13b

    return p0

    :pswitch_153  #0x8
    const/16 p0, 0x1a8

    return p0

    :pswitch_156  #0x7
    const/16 p0, 0x132

    return p0

    :pswitch_159  #0x6
    const/16 p0, 0x131

    return p0

    :pswitch_15c  #0x5
    const/16 p0, 0x130

    return p0

    :pswitch_15f  #0x4
    const/16 p0, 0x136

    return p0

    :pswitch_162  #0x3
    const/16 p0, 0x135

    return p0

    :pswitch_165  #0x2
    const/16 p0, 0x134

    return p0

    :pswitch_168  #0x1
    const/16 p0, 0x1a4

    return p0

    :pswitch_16b  #0x0
    const/16 p0, 0x1a6

    return p0

    :sswitch_data_16e
    .sparse-switch
        -0x5e458df6 -> :sswitch_120
        -0x4e19c2d5 -> :sswitch_114
        -0x4a771f66 -> :sswitch_107
        -0x4a771f65 -> :sswitch_fa
        -0x4a771f64 -> :sswitch_ed
        -0x490b9c39 -> :sswitch_e0
        -0x490b9c38 -> :sswitch_d3
        -0x490b9c37 -> :sswitch_c6
        -0x3cc89b6d -> :sswitch_b7
        -0x3bab3dd3 -> :sswitch_a8
        -0x3b1c8a3f -> :sswitch_99
        -0x3ae243aa -> :sswitch_8a
        -0x3ae243a9 -> :sswitch_7c
        -0x3621dfb2 -> :sswitch_6e
        -0x3621dfb1 -> :sswitch_60
        0x589b15e -> :sswitch_53
        0x65b097b -> :sswitch_45
        0x2283b8a2 -> :sswitch_38
        0x2fdfbde0 -> :sswitch_2a
        0x5b5cc028 -> :sswitch_1c
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_16b  #00000000
        :pswitch_168  #00000001
        :pswitch_165  #00000002
        :pswitch_162  #00000003
        :pswitch_15f  #00000004
        :pswitch_15c  #00000005
        :pswitch_159  #00000006
        :pswitch_156  #00000007
        :pswitch_153  #00000008
        :pswitch_150  #00000009
        :pswitch_14d  #0000000a
        :pswitch_14a  #0000000b
        :pswitch_147  #0000000c
        :pswitch_144  #0000000d
        :pswitch_141  #0000000e
        :pswitch_13e  #0000000f
        :pswitch_13b  #00000010
        :pswitch_138  #00000011
        :pswitch_135  #00000012
        :pswitch_132  #00000013
        :pswitch_12f  #00000014
    .end packed-switch
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_f4

    goto/16 :goto_c4

    :sswitch_d
    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_c4

    :cond_18
    const/16 v1, 0xd

    goto/16 :goto_c4

    :sswitch_1c
    const-string/jumbo v0, "phase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_c4

    :cond_27
    const/16 v1, 0xc

    goto/16 :goto_c4

    :sswitch_2b
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_c4

    :cond_35
    const/16 v1, 0xb

    goto/16 :goto_c4

    :sswitch_39
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_c4

    :cond_43
    const/16 v1, 0xa

    goto/16 :goto_c4

    :sswitch_47
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto/16 :goto_c4

    :cond_52
    const/16 v1, 0x9

    goto/16 :goto_c4

    :sswitch_56
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_c4

    :cond_61
    const/16 v1, 0x8

    goto/16 :goto_c4

    :sswitch_65
    const-string/jumbo v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_c4

    :cond_6f
    const/4 v1, 0x7

    goto :goto_c4

    :sswitch_71
    const-string/jumbo v0, "offset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_c4

    :cond_7b
    const/4 v1, 0x6

    goto :goto_c4

    :sswitch_7d
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    goto :goto_c4

    :cond_87
    const/4 v1, 0x5

    goto :goto_c4

    :sswitch_89
    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto :goto_c4

    :cond_93
    const/4 v1, 0x4

    goto :goto_c4

    :sswitch_95
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    goto :goto_c4

    :cond_9f
    const/4 v1, 0x3

    goto :goto_c4

    :sswitch_a1
    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    goto :goto_c4

    :cond_ab
    const/4 v1, 0x2

    goto :goto_c4

    :sswitch_ad
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    goto :goto_c4

    :cond_b7
    const/4 v1, 0x1

    goto :goto_c4

    :sswitch_b9
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c3

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x0

    :goto_c4
    packed-switch v1, :pswitch_data_12e

    const/high16 p0, 0x7fc00000  # Float.NaN

    return p0

    :pswitch_ca  #0xd
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    return p0

    :pswitch_cd  #0xc
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    return p0

    :pswitch_d0  #0xb
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    return p0

    :pswitch_d3  #0xa
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    return p0

    :pswitch_d6  #0x9
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    return p0

    :pswitch_d9  #0x8
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    return p0

    :pswitch_dc  #0x7
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    return p0

    :pswitch_df  #0x6
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    return p0

    :pswitch_e2  #0x5
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    return p0

    :pswitch_e5  #0x4
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    return p0

    :pswitch_e8  #0x3
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    return p0

    :pswitch_eb  #0x2
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    return p0

    :pswitch_ee  #0x1
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    return p0

    :pswitch_f1  #0x0
    iget p0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    return p0

    :sswitch_data_f4
    .sparse-switch
        -0x4a771f66 -> :sswitch_b9
        -0x4a771f65 -> :sswitch_ad
        -0x4a771f64 -> :sswitch_a1
        -0x490b9c39 -> :sswitch_95
        -0x490b9c38 -> :sswitch_89
        -0x490b9c37 -> :sswitch_7d
        -0x3cc89b6d -> :sswitch_71
        -0x3bab3dd3 -> :sswitch_65
        -0x3621dfb2 -> :sswitch_56
        -0x3621dfb1 -> :sswitch_47
        -0x42d1a3 -> :sswitch_39
        0x589b15e -> :sswitch_2b
        0x65b097b -> :sswitch_1c
        0x2fdfbde0 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_f1  #00000000
        :pswitch_ee  #00000001
        :pswitch_eb  #00000002
        :pswitch_e8  #00000003
        :pswitch_e5  #00000004
        :pswitch_e2  #00000005
        :pswitch_df  #00000006
        :pswitch_dc  #00000007
        :pswitch_d9  #00000008
        :pswitch_d6  #00000009
        :pswitch_d3  #0000000a
        :pswitch_d0  #0000000b
        :pswitch_cd  #0000000c
        :pswitch_ca  #0000000d
    .end packed-switch
.end method

.method public printAttributes()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getAttributeNames(Ljava/util/HashSet;)V

    const-string v1, " ------------- "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionKeyCycle{Shape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Period="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Phase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_61
    array-length v2, v0

    if-ge v1, v2, :cond_8b

    aget-object v2, v0, v1

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_8b
    return-void
.end method

.method public setValue(IF)Z
    .registers 4

    const/16 v0, 0x13b

    if-eq p1, v0, :cond_41

    const/16 v0, 0x193

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_3b

    packed-switch p1, :pswitch_data_46

    packed-switch p1, :pswitch_data_5c

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result p0

    return p0

    :pswitch_17  #0x1a9
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    goto :goto_43

    :pswitch_1a  #0x1a8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    goto :goto_43

    :pswitch_1d  #0x1a7
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    goto :goto_43

    :pswitch_20  #0x138
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    goto :goto_43

    :pswitch_23  #0x137
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    goto :goto_43

    :pswitch_26  #0x136
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    goto :goto_43

    :pswitch_29  #0x135
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    goto :goto_43

    :pswitch_2c  #0x134
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    goto :goto_43

    :pswitch_2f  #0x133
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    goto :goto_43

    :pswitch_32  #0x132
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    goto :goto_43

    :pswitch_35  #0x131
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    goto :goto_43

    :pswitch_38  #0x130
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    goto :goto_43

    :cond_3b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    goto :goto_43

    :cond_3e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    goto :goto_43

    :cond_41
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    :goto_43
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_46
    .packed-switch 0x130
        :pswitch_38  #00000130
        :pswitch_35  #00000131
        :pswitch_32  #00000132
        :pswitch_2f  #00000133
        :pswitch_2c  #00000134
        :pswitch_29  #00000135
        :pswitch_26  #00000136
        :pswitch_23  #00000137
        :pswitch_20  #00000138
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1a7
        :pswitch_1d  #000001a7
        :pswitch_1a  #000001a8
        :pswitch_17  #000001a9
    .end packed-switch
.end method

.method public setValue(II)Z
    .registers 5

    const/16 v0, 0x191

    const/4 v1, 0x1

    if-eq p1, v0, :cond_19

    const/16 v0, 0x1a5

    if-eq p1, v0, :cond_16

    int-to-float v0, p2

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->setValue(IF)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result p0

    return p0

    :cond_16
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    return v1

    :cond_19
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    return v1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 5

    const/16 v0, 0x1a4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_11

    const/16 v0, 0x1a6

    if-eq p1, v0, :cond_e

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    return v1

    :cond_11
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    return v1
.end method
