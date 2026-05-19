.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source ""


# static fields
.field public static final KEY_TYPE:I = 0x3

.field public static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"


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

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    const/4 v0, 0x3

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_218

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    if-nez v3, :cond_1e

    goto :goto_8

    :cond_1e
    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x7

    if-eqz v2, :cond_45

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v6, :cond_8

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v9, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;FIF)V

    goto :goto_8

    :cond_45
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_21a

    :goto_4d
    move v4, v2

    goto/16 :goto_e4

    :sswitch_50
    const-string/jumbo v4, "pathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto :goto_4d

    :cond_5a
    const/16 v4, 0xb

    goto/16 :goto_e4

    :sswitch_5e
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    goto :goto_4d

    :cond_67
    const/16 v4, 0xa

    goto/16 :goto_e4

    :sswitch_6b
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    goto :goto_4d

    :cond_74
    const/16 v4, 0x9

    goto/16 :goto_e4

    :sswitch_78
    const-string/jumbo v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    goto :goto_4d

    :cond_82
    const/16 v4, 0x8

    goto :goto_e4

    :sswitch_85
    const-string/jumbo v5, "scaleX"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e4

    goto :goto_4d

    :sswitch_8f
    const-string/jumbo v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    goto :goto_4d

    :cond_99
    const/4 v4, 0x6

    goto :goto_e4

    :sswitch_9b
    const-string/jumbo v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    goto :goto_4d

    :cond_a5
    const/4 v4, 0x5

    goto :goto_e4

    :sswitch_a7
    const-string/jumbo v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    goto :goto_4d

    :cond_b1
    const/4 v4, 0x4

    goto :goto_e4

    :sswitch_b3
    const-string/jumbo v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    goto :goto_4d

    :cond_bd
    const/4 v4, 0x3

    goto :goto_e4

    :sswitch_bf
    const-string/jumbo v4, "rotationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c9

    goto :goto_4d

    :cond_c9
    const/4 v4, 0x2

    goto :goto_e4

    :sswitch_cb
    const-string/jumbo v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d6

    goto/16 :goto_4d

    :cond_d6
    const/4 v4, 0x1

    goto :goto_e4

    :sswitch_d8
    const-string/jumbo v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e3

    goto/16 :goto_4d

    :cond_e3
    const/4 v4, 0x0

    :cond_e4
    :goto_e4
    packed-switch v4, :pswitch_data_24c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN addValues \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTimeCycles"

    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_104  #0xb
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_11b  #0xa
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_132  #0x9
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_149  #0x8
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_160  #0x7
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_177  #0x6
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_18e  #0x5
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_1a5  #0x4
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_1bc  #0x3
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_1d3  #0x2
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_1ea  #0x1
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :pswitch_201  #0x0
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :cond_218
    return-void

    nop

    :sswitch_data_21a
    .sparse-switch
        -0x4a771f66 -> :sswitch_d8
        -0x4a771f65 -> :sswitch_cb
        -0x4a771f64 -> :sswitch_bf
        -0x490b9c39 -> :sswitch_b3
        -0x490b9c38 -> :sswitch_a7
        -0x490b9c37 -> :sswitch_9b
        -0x3bab3dd3 -> :sswitch_8f
        -0x3621dfb2 -> :sswitch_85
        -0x3621dfb1 -> :sswitch_78
        -0x42d1a3 -> :sswitch_6b
        0x589b15e -> :sswitch_5e
        0x2fdfbde0 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_201  #00000000
        :pswitch_1ea  #00000001
        :pswitch_1d3  #00000002
        :pswitch_1bc  #00000003
        :pswitch_1a5  #00000004
        :pswitch_18e  #00000005
        :pswitch_177  #00000006
        :pswitch_160  #00000007
        :pswitch_149  #00000008
        :pswitch_132  #00000009
        :pswitch_11b  #0000000a
        :pswitch_104  #0000000b
    .end packed-switch
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
    .registers 2

    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    move-result-object p0

    return-object p0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
    .registers 3

    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    return-object p0
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

    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_36
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_44
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    const-string/jumbo v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_52
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_60

    const-string/jumbo v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_60
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

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
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setValue(IF)Z
    .registers 4

    const/16 v0, 0x13b

    if-eq p1, v0, :cond_b6

    const/16 v0, 0x191

    if-eq p1, v0, :cond_ab

    const/16 v0, 0x193

    if-eq p1, v0, :cond_a8

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_9d

    const/16 v0, 0x1a7

    if-eq p1, v0, :cond_92

    const/16 v0, 0x1a8

    if-eq p1, v0, :cond_87

    packed-switch p1, :pswitch_data_c2

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    move-result p0

    return p0

    :pswitch_20  #0x138
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    goto/16 :goto_c0

    :pswitch_2c  #0x137
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    goto/16 :goto_c0

    :pswitch_38  #0x136
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    goto/16 :goto_c0

    :pswitch_44  #0x135
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    goto/16 :goto_c0

    :pswitch_50  #0x134
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    goto :goto_c0

    :pswitch_5b  #0x133
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    goto :goto_c0

    :pswitch_66  #0x132
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    goto :goto_c0

    :pswitch_71  #0x131
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    goto :goto_c0

    :pswitch_7c  #0x130
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    goto :goto_c0

    :cond_87
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    goto :goto_c0

    :cond_92
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    goto :goto_c0

    :cond_9d
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    goto :goto_c0

    :cond_a8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    goto :goto_c0

    :cond_ab
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    goto :goto_c0

    :cond_b6
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    :goto_c0
    const/4 p0, 0x1

    return p0

    :pswitch_data_c2
    .packed-switch 0x130
        :pswitch_7c  #00000130
        :pswitch_71  #00000131
        :pswitch_66  #00000132
        :pswitch_5b  #00000133
        :pswitch_50  #00000134
        :pswitch_44  #00000135
        :pswitch_38  #00000136
        :pswitch_2c  #00000137
        :pswitch_20  #00000138
    .end packed-switch
.end method

.method public setValue(II)Z
    .registers 4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_10

    const/16 v0, 0x1a5

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    move-result p0

    return p0

    :cond_d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    goto :goto_12

    :cond_10
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x1a4

    if-eq p1, v0, :cond_13

    const/16 v0, 0x1a5

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p1, 0x7

    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    goto :goto_15

    :cond_13
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public setValue(IZ)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    move-result p0

    return p0
.end method
