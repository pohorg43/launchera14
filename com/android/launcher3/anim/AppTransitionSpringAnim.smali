.class public final Lcom/android/launcher3/anim/AppTransitionSpringAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AppTransitionSpringAnim$OnUpdateListener;,
        Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppTransitionSpringAnim.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppTransitionSpringAnim.kt\ncom/android/launcher3/anim/AppTransitionSpringAnim\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,284:1\n1855#2,2:285\n1855#2,2:301\n1855#2,2:303\n94#3,14:287\n*S KotlinDebug\n*F\n+ 1 AppTransitionSpringAnim.kt\ncom/android/launcher3/anim/AppTransitionSpringAnim\n*L\n166#1:285,2\n231#1:301,2\n159#1:303,2\n177#1:287,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;

.field private static final RECT_PROGRESS:Lcom/oplus/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/animation/FloatPropertyCompat<",
            "Lcom/android/launcher3/anim/AppTransitionSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECT_PROGRESS_NO_SPRING:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/anim/AppTransitionSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPRING_PARAMS:[[F

.field private static final TAG:Ljava/lang/String; = "AppTransitionSpringAnim"


# instance fields
.field private mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

.field private mCropHeight:Z

.field private mCurrentRect:Landroid/graphics/RectF;

.field private mEndY:F

.field private mIsOpening:Z

.field private final mListeners$delegate:Lh4/f;

.field private mProgress:F

.field private mRectSpringAnim:Lcom/oplus/animation/SpringAnimation;

.field private mStartRect:Landroid/graphics/RectF;

.field private mStartY:F

.field private mTargetRect:Landroid/graphics/RectF;

.field private mTracking:I

.field private mUpdateListener:Lcom/android/launcher3/anim/AppTransitionSpringAnim$OnUpdateListener;

.field private mValueAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->Companion:Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;

    new-instance v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion$RECT_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion$RECT_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->RECT_PROGRESS:Lcom/oplus/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion$RECT_PROGRESS_NO_SPRING$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion$RECT_PROGRESS_NO_SPRING$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->RECT_PROGRESS_NO_SPRING:Landroid/util/FloatProperty;

    const/4 v0, 0x2

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_2c

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->SPRING_PARAMS:[[F

    return-void

    :array_2c
    .array-data 4
        0x441ab0a4  # 618.76f
        0x3f9020c5  # 1.126f
    .end array-data

    :array_34
    .array-data 4
        0x44020000  # 520.0f
        0x3fa147ae  # 1.26f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;ZF)V
    .registers 8

    const-string/jumbo v0, "startRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProfile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTracking:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim$mListeners$2;->INSTANCE:Lcom/android/launcher3/anim/AppTransitionSpringAnim$mListeners$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mListeners$delegate:Lh4/f;

    iput-boolean p4, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mIsOpening:Z

    iput p5, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->Companion:Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-eqz p4, :cond_36

    move-object v1, p1

    goto :goto_37

    :cond_36
    move-object v1, p2

    :goto_37
    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;->getTracking(ILandroid/graphics/RectF;)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTracking:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartY:F

    invoke-direct {p0, p2}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mEndY:F

    if-eqz p4, :cond_50

    invoke-static {p2, p1}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_54

    :cond_50
    invoke-static {p1, p2}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object p1

    :goto_54
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object p2, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mCropHeight:Z

    const-string/jumbo p1, "startRect = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", targetRect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTracking = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTracking:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mCropHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mCropHeight:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", startProgress = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mIsOpening = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mIsOpening:Z

    const-string p2, "AppTransitionSpringAnim"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->start$lambda$1(Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static final synthetic access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Lcom/android/systemui/shared/system/AppTransitionParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    return-object p0
.end method

.method public static final synthetic access$getMListeners(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)Ljava/util/ArrayList;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMProgress$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    return p0
.end method

.method public static final synthetic access$getSPRING_PARAMS$cp()[[F
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->SPRING_PARAMS:[[F

    return-object v0
.end method

.method public static final synthetic access$setMProgress$p(Lcom/android/launcher3/anim/AppTransitionSpringAnim;F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->update()V

    return-void
.end method

.method private final calculateCurrentRect(Landroid/graphics/RectF;)V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    iget-object v1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    iget-object v2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    iget-object v3, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    iget v4, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartY:F

    iget v5, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mEndY:F

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v0, v4

    sub-float v4, v2, v0

    add-float/2addr v2, v0

    iget p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTracking:I

    if-eqz p0, :cond_60

    const/4 v0, 0x1

    const/4 v5, 0x2

    if-eq p0, v0, :cond_57

    if-eq p0, v5, :cond_51

    goto :goto_64

    :cond_51
    sub-float p0, v3, v1

    invoke-virtual {p1, v4, p0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_64

    :cond_57
    int-to-float p0, v5

    div-float/2addr v1, p0

    sub-float p0, v3, v1

    add-float/2addr v3, v1

    invoke-virtual {p1, v4, p0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_64

    :cond_60
    add-float/2addr v1, v3

    invoke-virtual {p1, v4, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_64
    return-void
.end method

.method private final getMListeners()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mListeners$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getMinimumVisibleChange()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private final getTrackedYFromRect(Landroid/graphics/RectF;)F
    .registers 3

    iget p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mTracking:I

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    goto :goto_19

    :cond_f
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_19

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    goto :goto_19

    :cond_17
    iget p0, p1, Landroid/graphics/RectF;->top:F

    :goto_19
    return p0
.end method

.method public static final getTracking(ILandroid/graphics/RectF;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->Companion:Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$Companion;->getTracking(ILandroid/graphics/RectF;)I

    move-result p0

    return p0
.end method

.method private final initSpringForce()Lcom/oplus/animation/SpringForce;
    .registers 7

    sget p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p0

    sget v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_34

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "getAppContext()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/common/util/PlatformLevelUtils;->isHighLevelAnimation(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_30

    sget v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const v4, 0x3f19999a  # 0.6f

    mul-float v5, v2, v4

    mul-float/2addr v2, v4

    mul-float/2addr v2, v5

    goto :goto_35

    :cond_30
    sget v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    mul-float/2addr v2, v2

    goto :goto_35

    :cond_34
    move v2, v3

    :goto_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSpringForce, speed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", springDurationScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppTransitionSpringAnim"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->SPRING_PARAMS:[[F

    aget-object p0, v4, p0

    new-instance v4, Lcom/oplus/animation/SpringForce;

    invoke-direct {v4, v3}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    aget v0, p0, v0

    div-float/2addr v0, v2

    invoke-virtual {v4, v0}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object p0

    const-string v0, "SpringForce(1f).setStiff…springParams[1]\n        )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final start$lambda$1(Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    const/4 p2, 0x0

    if-nez p1, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    :goto_f
    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    if-nez p1, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/AppTransitionParam;->setNeedInterceptIconSurface(Z)V

    :goto_17
    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1f

    :cond_30
    return-void
.end method

.method private final update()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->calculateCurrentRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    if-nez v0, :cond_19

    const-string v0, "AppTransitionSpringAnim"

    const-string v1, "We haven\'t set the transition param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/shared/system/AppTransitionParam;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mIsOpening:Z

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/AppTransitionParam;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/AppTransitionParam;->setAnimProgress(F)V

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mUpdateListener:Lcom/android/launcher3/anim/AppTransitionSpringAnim$OnUpdateListener;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mProgress:F

    iget-boolean v3, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mCropHeight:Z

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V

    :cond_35
    return-void
.end method


# virtual methods
.method public final addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mRectSpringAnim:Lcom/oplus/animation/SpringAnimation;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/oplus/animation/SpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Lcom/oplus/animation/SpringAnimation;

    :cond_f
    return-void
.end method

.method public final cancel()V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSpringAnimationAppStart()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mRectSpringAnim:Lcom/oplus/animation/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/oplus/animation/SpringAnimation;->cancel()V

    :cond_f
    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getMListeners()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_17

    :cond_28
    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2f
    return-void
.end method

.method public final isRunning()Z
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSpringAnimationAppStart()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mRectSpringAnim:Lcom/oplus/animation/SpringAnimation;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_20

    goto :goto_21

    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1
.end method

.method public final setAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;)V
    .registers 3

    const-string/jumbo v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    return-void
.end method

.method public final setUpdateListener(Lcom/android/launcher3/anim/AppTransitionSpringAnim$OnUpdateListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mUpdateListener:Lcom/android/launcher3/anim/AppTransitionSpringAnim$OnUpdateListener;

    return-void
.end method

.method public final skipToEnd()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSpringAnimationAppStart()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mRectSpringAnim:Lcom/oplus/animation/SpringAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/oplus/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-eqz v1, :cond_27

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mRectSpringAnim:Lcom/oplus/animation/SpringAnimation;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->skipToEnd()V

    goto :goto_27

    :cond_20
    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_27
    :goto_27
    return-void
.end method

.method public final start()V
    .registers 6

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSpringAnimationAppStart()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_75

    new-instance v0, Lcom/oplus/animation/SpringAnimation;

    sget-object v4, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->RECT_PROGRESS:Lcom/oplus/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v4}, Lcom/oplus/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->initSpringForce()Lcom/oplus/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/animation/SpringAnimation;->setSpring(Lcom/oplus/animation/SpringForce;)Lcom/oplus/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->setMaxValue(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/SpringAnimation;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getMinimumVisibleChange()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/SpringAnimation;

    new-instance v1, Lcom/android/launcher3/anim/h;

    invoke-direct {v1, p0}, Lcom/android/launcher3/anim/h;-><init>(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/SpringAnimation;

    iput-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mRectSpringAnim:Lcom/oplus/animation/SpringAnimation;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/oplus/animation/SpringAnimation;->start()V

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    if-nez v0, :cond_42

    goto :goto_45

    :cond_42
    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHasInterrupted(Z)V

    :goto_45
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    if-nez v0, :cond_4a

    goto :goto_4d

    :cond_4a
    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/AppTransitionParam;->setNeedInterceptIconSurface(Z)V

    :goto_4d
    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->getMListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_55

    :cond_66
    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v2, v3

    :goto_6f
    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->skipToEnd()V

    goto :goto_a4

    :cond_75
    sget-object v0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->RECT_PROGRESS_NO_SPRING:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    aput v1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mIsOpening:Z

    invoke-static {v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;

    invoke-direct {v1, p0, p0, p0}, Lcom/android/launcher3/anim/AppTransitionSpringAnim$start$$inlined$addListener$default$1;-><init>(Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/android/launcher3/anim/AppTransitionSpringAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_a4
    :goto_a4
    return-void
.end method
