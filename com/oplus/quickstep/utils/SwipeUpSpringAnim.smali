.class public Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
    }
.end annotation


# static fields
.field public static final ANIM_TYPE_BLUR:I = 0x3

.field public static final ANIM_TYPE_DRAG_SCALE:I = 0x4

.field public static final ANIM_TYPE_SCALE:I = 0x2

.field public static final ANIM_TYPE_TRANS_X:I = 0x0

.field public static final ANIM_TYPE_TRANS_Y:I = 0x1

.field public static final EVALUATION_DURATION_SCALE:F = 0.6f

.field private static final MIN_VISIBLE_CHANGE:F = 0.1f

.field private static final SPRING_BLUR_PARAMS:[[F

.field private static final SPRING_CAPSULE_PARAMS:[[F

.field private static final SPRING_DRAG_SCALE_PARAMS:[[F

.field private static final SPRING_SCALE_PARAMS_0:[[F

.field private static final SPRING_SCALE_PARAMS_1:[[F

.field private static final SPRING_SCALE_PARAMS_DOCK:[[F

.field private static final SPRING_TRANS_PARAMS_X:[[F

.field private static final SPRING_TRANS_PARAMS_Y_0:[[F

.field private static final SPRING_TRANS_PARAMS_Y_1:[[F

.field private static final SPRING_TRANS_PARAMS_Y_2:[[F

.field private static final SPRING_TRANS_PARAMS_Y_DOCK:[[F

.field private static final TAG:Ljava/lang/String; = "SwipeUpSpringAnim"


# instance fields
.field private final mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

.field private mTargetPosition:F


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_10a

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_112

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_11a

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_X:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_122

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_12a

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_132

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_0:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_13a

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_142

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_14a

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_1:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_152

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_15a

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_162

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_2:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_16a

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_172

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_17a

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_DOCK:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_182

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_18a

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_192

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_0:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_19a

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1a2

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_1aa

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_1:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1b2

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1ba

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_1c2

    aput-object v3, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_DOCK:[[F

    new-array v0, v0, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_1ca

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_1d2

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_1da

    aput-object v1, v0, v2

    sput-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_CAPSULE_PARAMS:[[F

    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_1e2

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_1ea

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_BLUR_PARAMS:[[F

    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_1f2

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_1fa

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_DRAG_SCALE_PARAMS:[[F

    return-void

    :array_10a
    .array-data 4
        0x43c80000  # 400.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_112
    .array-data 4
        0x435c0000  # 220.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_11a
    .array-data 4
        0x43fa0000  # 500.0f
        0x3fa66666  # 1.3f
    .end array-data

    :array_122
    .array-data 4
        0x43c80000  # 400.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_12a
    .array-data 4
        0x435c0000  # 220.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_132
    .array-data 4
        0x43fa0000  # 500.0f
        0x3fa66666  # 1.3f
    .end array-data

    :array_13a
    .array-data 4
        0x43c80000  # 400.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_142
    .array-data 4
        0x435c0000  # 220.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_14a
    .array-data 4
        0x43fa0000  # 500.0f
        0x3fa66666  # 1.3f
    .end array-data

    :array_152
    .array-data 4
        0x43c80000  # 400.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_15a
    .array-data 4
        0x435c0000  # 220.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_162
    .array-data 4
        0x43fa0000  # 500.0f
        0x3fa66666  # 1.3f
    .end array-data

    :array_16a
    .array-data 4
        0x43c80000  # 400.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_172
    .array-data 4
        0x435c0000  # 220.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_17a
    .array-data 4
        0x43fa0000  # 500.0f
        0x3fa66666  # 1.3f
    .end array-data

    :array_182
    .array-data 4
        0x43c80000  # 400.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_18a
    .array-data 4
        0x433e0000  # 190.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_192
    .array-data 4
        0x43fa1c29  # 500.22f
        0x3f9e147b  # 1.235f
    .end array-data

    :array_19a
    .array-data 4
        0x43c80000  # 400.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1a2
    .array-data 4
        0x433e0000  # 190.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1aa
    .array-data 4
        0x43fa1c29  # 500.22f
        0x3f9e147b  # 1.235f
    .end array-data

    :array_1b2
    .array-data 4
        0x43b40000  # 360.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1ba
    .array-data 4
        0x43340000  # 180.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1c2
    .array-data 4
        0x43fa1c29  # 500.22f
        0x3f9e147b  # 1.235f
    .end array-data

    :array_1ca
    .array-data 4
        0x44098000  # 550.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1d2
    .array-data 4
        0x43e10000  # 450.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1da
    .array-data 4
        0x43e10000  # 450.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1e2
    .array-data 4
        0x43fe7d71
        0x3f781062  # 0.969f
    .end array-data

    :array_1ea
    .array-data 4
        0x42dc0000  # 110.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_1f2
    .array-data 4
        0x43fe7d71
        0x3f781062  # 0.969f
    .end array-data

    :array_1fa
    .array-data 4
        0x42a00000  # 80.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFFFLcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;IZ)V
    .registers 10
    .param p8  # I
        .annotation build Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;FFFF",
            "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    new-instance p4, Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-direct {p4, p1, p2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    invoke-virtual {p4, p3}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartValue(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/animation/SpringAnimation;

    mul-float/2addr p5, p6

    invoke-virtual {p1, p5}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/animation/SpringAnimation;

    iget p2, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    const/4 p3, 0x0

    invoke-static {p2, p8, p3, p3}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FIZZ)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p1, p7}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    iget p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFFFLcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;IZZ)V
    .registers 11
    .param p8  # I
        .annotation build Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;FFFF",
            "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;",
            "IZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p10, :cond_6

    const/4 p5, 0x0

    :cond_6
    iput p4, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    new-instance p4, Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-direct {p4, p1, p2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    invoke-virtual {p4, p3}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartValue(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/animation/SpringAnimation;

    mul-float/2addr p5, p6

    invoke-virtual {p1, p5}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/animation/SpringAnimation;

    iget p2, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    const/4 p3, 0x0

    invoke-static {p2, p8, p10, p3}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FIZZ)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p1, p7}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    iget p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFFFLcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;IZZZ)V
    .registers 13
    .param p8  # I
        .annotation build Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;FFFF",
            "Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;",
            "IZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd  # 0.1f

    if-eqz p10, :cond_11

    if-eqz p9, :cond_d

    const v0, 0x3e99999a  # 0.3f

    :cond_d
    if-eqz p9, :cond_10

    goto :goto_11

    :cond_10
    const/4 p5, 0x0

    :cond_11
    :goto_11
    iput p4, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    new-instance p4, Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-direct {p4, p1, p2}, Lcom/android/quickstep/util/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    invoke-virtual {p4, p3}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartValue(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/animation/SpringAnimation;

    mul-float/2addr p5, p6

    invoke-virtual {p1, p5}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->setMinimumVisibleChange(F)Lcom/android/quickstep/util/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/animation/SpringAnimation;

    iget p2, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    const/4 p3, 0x0

    invoke-static {p2, p8, p10, p3}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FIZZ)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/animation/SpringAnimation;->setSpring(Lcom/android/quickstep/util/animation/SpringForce;)Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p1, p7}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    if-nez p11, :cond_42

    iget p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_42
    return-void
.end method

.method public static initSpringForce(FIZZ)Lcom/android/quickstep/util/animation/SpringForce;
    .registers 20
    .param p1  # I
        .annotation build Lcom/oplus/quickstep/utils/SwipeUpSpringAnim$SwipeUpSpringAnimType;
        .end annotation
    .end param

    move/from16 v0, p0

    move/from16 v1, p1

    sget v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v2

    sget v5, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_19

    sget v5, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    mul-float/2addr v5, v5

    goto :goto_1b

    :cond_19
    const/high16 v5, 0x3f800000  # 1.0f

    :goto_1b
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isEvaluationDurationValid()Z

    move-result v7

    const-string v8, "SwipeUpSpringAnim"

    if-eqz v7, :cond_2d

    const-string v7, "Evaluation scene scale the duration"

    invoke-static {v8, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v7, 0x3f19999a  # 0.6f

    mul-float/2addr v5, v7

    mul-float/2addr v5, v7

    :cond_2d
    sget-object v7, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_X:[[F

    aget-object v9, v7, v2

    aget v9, v9, v3

    aget-object v7, v7, v2

    aget v7, v7, v4

    sget-object v10, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_0:[[F

    aget-object v11, v10, v2

    aget v11, v11, v3

    aget-object v10, v10, v2

    aget v10, v10, v4

    sget-object v12, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_0:[[F

    aget-object v13, v12, v2

    aget v13, v13, v3

    aget-object v12, v12, v2

    aget v12, v12, v4

    const/4 v14, 0x2

    if-eqz p2, :cond_6b

    sget-object v7, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_CAPSULE_PARAMS:[[F

    aget-object v9, v7, v3

    aget v9, v9, v3

    aget-object v10, v7, v3

    aget v10, v10, v4

    aget-object v11, v7, v4

    aget v11, v11, v3

    aget-object v12, v7, v4

    aget v12, v12, v4

    aget-object v13, v7, v14

    aget v13, v13, v3

    aget-object v3, v7, v14

    aget v3, v3, v4

    move v7, v10

    move v10, v12

    move v12, v3

    :cond_6b
    if-eqz p3, :cond_72

    const v3, 0x3f59999a  # 0.85f

    mul-float/2addr v5, v3

    mul-float/2addr v5, v3

    :cond_72
    const-string v3, "initSpringForce: speed = "

    const-string v15, ", animType = "

    const-string v6, ", springDurationScale:"

    invoke-static {v3, v2, v15, v1, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ",YNumber = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getYAxisParamsNumber()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", scaleNumber = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getScaleParamsNumber()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1bc

    const/16 v3, 0xa

    if-eq v1, v4, :cond_14a

    if-eq v1, v14, :cond_f5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_da

    const/4 v3, 0x4

    if-eq v1, v3, :cond_bf

    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    const/high16 v0, 0x43480000  # 200.0f

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto/16 :goto_1ca

    :cond_bf
    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_DRAG_SCALE_PARAMS:[[F

    aget-object v3, v0, v2

    const/4 v6, 0x0

    aget v3, v3, v6

    div-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v1

    aget-object v0, v0, v2

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto/16 :goto_1ca

    :cond_da
    const/4 v1, 0x0

    new-instance v3, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v3, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_BLUR_PARAMS:[[F

    aget-object v6, v0, v2

    aget v1, v6, v1

    div-float/2addr v1, v5

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v1

    aget-object v0, v0, v2

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto/16 :goto_1ca

    :cond_f5
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getScaleParamsNumber()I

    move-result v1

    if-eqz v1, :cond_13a

    if-eqz p2, :cond_fe

    goto :goto_13a

    :cond_fe
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getScaleParamsNumber()I

    move-result v1

    if-ne v1, v3, :cond_11f

    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_DOCK:[[F

    aget-object v3, v0, v2

    const/4 v6, 0x0

    aget v3, v3, v6

    div-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v1

    aget-object v0, v0, v2

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto/16 :goto_1ca

    :cond_11f
    const/4 v1, 0x0

    new-instance v3, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v3, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_SCALE_PARAMS_1:[[F

    aget-object v6, v0, v2

    aget v1, v6, v1

    div-float/2addr v1, v5

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v1

    aget-object v0, v0, v2

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto/16 :goto_1ca

    :cond_13a
    :goto_13a
    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    div-float/2addr v13, v5

    invoke-virtual {v1, v13}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto/16 :goto_1ca

    :cond_14a
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getYAxisParamsNumber()I

    move-result v1

    if-eqz v1, :cond_1ad

    if-eqz p2, :cond_153

    goto :goto_1ad

    :cond_153
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getYAxisParamsNumber()I

    move-result v1

    if-ne v1, v4, :cond_173

    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_1:[[F

    aget-object v3, v0, v2

    const/4 v6, 0x0

    aget v3, v3, v6

    div-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v1

    aget-object v0, v0, v2

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto :goto_1ca

    :cond_173
    invoke-static {}, Lcom/oplus/quickstep/utils/SwipeUpAnimHelper;->getScaleParamsNumber()I

    move-result v1

    if-ne v1, v3, :cond_193

    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_DOCK:[[F

    aget-object v3, v0, v2

    const/4 v6, 0x0

    aget v3, v3, v6

    div-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v1

    aget-object v0, v0, v2

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto :goto_1ca

    :cond_193
    const/4 v1, 0x0

    new-instance v3, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v3, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->SPRING_TRANS_PARAMS_Y_2:[[F

    aget-object v6, v0, v2

    aget v1, v6, v1

    div-float/2addr v1, v5

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v1

    aget-object v0, v0, v2

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto :goto_1ca

    :cond_1ad
    :goto_1ad
    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    div-float/2addr v11, v5

    invoke-virtual {v1, v11}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    goto :goto_1ca

    :cond_1bc
    new-instance v1, Lcom/android/quickstep/util/animation/SpringForce;

    invoke-direct {v1, v0}, Lcom/android/quickstep/util/animation/SpringForce;-><init>(F)V

    div-float/2addr v9, v5

    invoke-virtual {v1, v9}, Lcom/android/quickstep/util/animation/SpringForce;->setStiffness(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/quickstep/util/animation/SpringForce;->setDampingRatio(F)Lcom/android/quickstep/util/animation/SpringForce;

    move-result-object v0

    :goto_1ca
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public end()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/quickstep/util/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->skipToEnd()V

    :cond_d
    return-void
.end method

.method public getTargetPosition()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    return p0
.end method

.method public start()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/SpringAnimation;->start()V

    return-void
.end method

.method public updatePosition(FF)V
    .registers 3

    iput p2, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mTargetPosition:F

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->mSpringAnim:Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_9
    return-void
.end method
