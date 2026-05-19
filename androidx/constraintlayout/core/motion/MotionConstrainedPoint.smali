.class Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field public static final PERPENDICULAR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field public static names:[Ljava/lang/String;


# instance fields
.field private alpha:F

.field private applyElevation:Z

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

.field public mCustomVariable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawPath:I

.field private mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field public mMode:I

.field private mPathRotate:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field public mTempDelta:[D

.field public mTempValue:[D

.field public mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field public visibility:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-string/jumbo v0, "position"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "width"

    const-string v4, "height"

    const-string/jumbo v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mAnimateRelativeTo:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempValue:[D

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempDelta:[D

    return-void
.end method

.method private diff(FF)Z
    .registers 5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_1e

    :cond_f
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd  # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    :goto_1e
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;I)V"
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

    if-eqz v1, :cond_212

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_214

    goto/16 :goto_d1

    :sswitch_28
    const-string/jumbo v4, "pathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto/16 :goto_d1

    :cond_33
    const/16 v3, 0xc

    goto/16 :goto_d1

    :sswitch_37
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto/16 :goto_d1

    :cond_41
    const/16 v3, 0xb

    goto/16 :goto_d1

    :sswitch_45
    const-string/jumbo v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto/16 :goto_d1

    :cond_50
    const/16 v3, 0xa

    goto/16 :goto_d1

    :sswitch_54
    const-string/jumbo v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto/16 :goto_d1

    :cond_5f
    const/16 v3, 0x9

    goto/16 :goto_d1

    :sswitch_63
    const-string/jumbo v4, "pivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    goto/16 :goto_d1

    :cond_6e
    const/16 v3, 0x8

    goto/16 :goto_d1

    :sswitch_72
    const-string/jumbo v4, "pivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    goto :goto_d1

    :cond_7c
    const/4 v3, 0x7

    goto :goto_d1

    :sswitch_7e
    const-string/jumbo v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_88

    goto :goto_d1

    :cond_88
    const/4 v3, 0x6

    goto :goto_d1

    :sswitch_8a
    const-string/jumbo v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    goto :goto_d1

    :cond_94
    const/4 v3, 0x5

    goto :goto_d1

    :sswitch_96
    const-string/jumbo v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    goto :goto_d1

    :cond_a0
    const/4 v3, 0x4

    goto :goto_d1

    :sswitch_a2
    const-string/jumbo v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ac

    goto :goto_d1

    :cond_ac
    const/4 v3, 0x3

    goto :goto_d1

    :sswitch_ae
    const-string/jumbo v4, "rotationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    goto :goto_d1

    :cond_b8
    const/4 v3, 0x2

    goto :goto_d1

    :sswitch_ba
    const-string/jumbo v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    goto :goto_d1

    :cond_c4
    move v3, v5

    goto :goto_d1

    :sswitch_c6
    const-string/jumbo v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    goto :goto_d1

    :cond_d0
    const/4 v3, 0x0

    :goto_d1
    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_24a

    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MotionPaths"

    if-eqz v3, :cond_12c

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/CustomVariable;

    instance-of v5, v2, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    if-eqz v5, :cond_104

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto/16 :goto_8

    :cond_104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ViewSpline not a CustomSet frame = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN spline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_142  #0xc
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_14b

    goto :goto_14d

    :cond_14b
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    :goto_14d
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_152  #0xb
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15b

    goto :goto_15d

    :cond_15b
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    :goto_15d
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_162  #0xa
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16b

    goto :goto_16d

    :cond_16b
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    :goto_16d
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_172  #0x9
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17b

    goto :goto_17d

    :cond_17b
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    :goto_17d
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_182  #0x8
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18b

    goto :goto_18d

    :cond_18b
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    :goto_18d
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_192  #0x7
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19b

    goto :goto_19d

    :cond_19b
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    :goto_19d
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_1a2  #0x6
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1ab

    goto :goto_1ad

    :cond_1ab
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    :goto_1ad
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_1b2  #0x5
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1bb

    goto :goto_1bd

    :cond_1bb
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    :goto_1bd
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_1c2  #0x4
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1cb

    goto :goto_1cd

    :cond_1cb
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    :goto_1cd
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_1d2  #0x3
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1db

    goto :goto_1dd

    :cond_1db
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    :goto_1dd
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_1e2  #0x2
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1eb

    goto :goto_1ed

    :cond_1eb
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    :goto_1ed
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_1f2  #0x1
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1fb

    goto :goto_1fd

    :cond_1fb
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    :goto_1fd
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :pswitch_202  #0x0
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_20b

    goto :goto_20d

    :cond_20b
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    :goto_20d
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :cond_212
    return-void

    nop

    :sswitch_data_214
    .sparse-switch
        -0x4a771f66 -> :sswitch_c6
        -0x4a771f65 -> :sswitch_ba
        -0x4a771f64 -> :sswitch_ae
        -0x490b9c39 -> :sswitch_a2
        -0x490b9c38 -> :sswitch_96
        -0x490b9c37 -> :sswitch_8a
        -0x3bab3dd3 -> :sswitch_7e
        -0x3ae243aa -> :sswitch_72
        -0x3ae243a9 -> :sswitch_63
        -0x3621dfb2 -> :sswitch_54
        -0x3621dfb1 -> :sswitch_45
        0x589b15e -> :sswitch_37
        0x2fdfbde0 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_202  #00000000
        :pswitch_1f2  #00000001
        :pswitch_1e2  #00000002
        :pswitch_1d2  #00000003
        :pswitch_1c2  #00000004
        :pswitch_1b2  #00000005
        :pswitch_1a2  #00000006
        :pswitch_192  #00000007
        :pswitch_182  #00000008
        :pswitch_172  #00000009
        :pswitch_162  #0000000a
        :pswitch_152  #0000000b
        :pswitch_142  #0000000c
    .end packed-switch
.end method

.method public applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getAlpha()F

    move-result v0

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationZ()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationZ()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttributeNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->isContinuous()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    :cond_7a
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I
    .registers 2

    iget p0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I

    move-result p0

    return p0
.end method

.method public different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    const-string v1, "alpha"

    if-eqz v0, :cond_f

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    const-string/jumbo v2, "translationZ"

    if-eqz v0, :cond_1f

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    if-eq v0, v3, :cond_31

    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v4, :cond_31

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2e

    if-ne v3, v4, :cond_31

    :cond_2e
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_31
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "rotationZ"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_51

    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_57

    :cond_51
    const-string/jumbo v0, "pathRotate"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_57
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_67

    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_67
    const-string/jumbo v0, "progress"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6d
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string/jumbo v0, "rotationX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string/jumbo v0, "rotationY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8d
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string/jumbo v0, "pivotX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9d
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_ad

    const-string/jumbo v0, "pivotY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_ad
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string/jumbo v0, "scaleX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_bd
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_cd

    const-string/jumbo v0, "scaleY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_cd
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string/jumbo v0, "translationX"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_dd
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_ed

    const-string/jumbo v0, "translationY"

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_ed
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_fa
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result p0

    if-eqz p0, :cond_109

    const-string p0, "elevation"

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_109
    return-void
.end method

.method public different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .registers 7

    const/4 p3, 0x0

    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x1

    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x2

    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x3

    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x4

    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result p0

    or-int/2addr p0, v0

    aput-boolean p0, p2, p3

    return-void
.end method

.method public fillStandard([D[I)V
    .registers 9

    const/16 v0, 0x12

    new-array v1, v0, [F

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    const/4 v4, 0x2

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    const/4 v4, 0x3

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    const/4 v4, 0x5

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    const/4 v4, 0x6

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    const/4 v4, 0x7

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    const/16 v4, 0x8

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    const/16 v4, 0x9

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    const/16 v4, 0xa

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    const/16 v4, 0xb

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    const/16 v4, 0xc

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    const/16 v4, 0xd

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    const/16 v4, 0xe

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    const/16 v4, 0xf

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    const/16 v4, 0x10

    aput v2, v1, v4

    iget p0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    const/16 v2, 0x11

    aput p0, v1, v2

    move p0, v3

    :goto_69
    array-length v2, p2

    if-ge v3, v2, :cond_7d

    aget v2, p2, v3

    if-ge v2, v0, :cond_7a

    add-int/lit8 v2, p0, 0x1

    aget v4, p2, v3

    aget v4, v1, v4

    float-to-double v4, v4

    aput-wide v4, p1, p0

    move p0, v2

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_7d
    return-void
.end method

.method public getCustomData(Ljava/lang/String;[DI)I
    .registers 8

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result p0

    float-to-double p0, p0

    aput-wide p0, p2, p3

    return v0

    :cond_17
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result p1

    new-array v0, p1, [F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    const/4 p0, 0x0

    :goto_21
    if-ge p0, p1, :cond_2e

    add-int/lit8 v1, p3, 0x1

    aget v2, v0, p0

    float-to-double v2, v2

    aput-wide v2, p2, p3

    add-int/lit8 p0, p0, 0x1

    move p3, v1

    goto :goto_21

    :cond_2e
    return p1
.end method

.method public getCustomDataCount(Ljava/lang/String;)I
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result p0

    return p0
.end method

.method public hasCustomData(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setBounds(FFFF)V
    .registers 5

    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    return-void
.end method

.method public setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 6

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    return-void
.end method

.method public setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V
    .registers 8

    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    const/high16 p1, 0x7fc00000  # Float.NaN

    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    const/4 p1, 0x1

    const/high16 p2, 0x42b40000  # 90.0f

    if-eq p3, p1, :cond_29

    const/4 p1, 0x2

    if-eq p3, p1, :cond_25

    goto :goto_2c

    :cond_25
    add-float/2addr p4, p2

    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    goto :goto_2c

    :cond_29
    sub-float/2addr p4, p2

    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    :goto_2c
    return-void
.end method
