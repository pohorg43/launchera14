.class public final Lcom/android/launcher3/anim/AppTransitionAnimator;
.super Lcom/android/launcher3/anim/AbsAppTransitionAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;,
        Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppTransitionAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppTransitionAnimator.kt\ncom/android/launcher3/anim/AppTransitionAnimator\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,429:1\n100#2,8:430\n*S KotlinDebug\n*F\n+ 1 AppTransitionAnimator.kt\ncom/android/launcher3/anim/AppTransitionAnimator\n*L\n250#1:430,8\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

.field private static final MULTI_OPEN_VELOCITY:D = 7200.0

.field private static final RECT_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/anim/AppTransitionAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final RLM_SPRING_DURATION:[J

.field private static final SPRING_DURATION:[J

.field private static final SPRING_PARAMS:[[F

.field private static final SPRING_PARAMS_DOCK_ICON_CLOSE:[[F

.field private static final TAG:Ljava/lang/String; = "AppTransitionAnimator"


# instance fields
.field private currentProgressTime:F

.field private final dockerIconHightAcceInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private final dockerIconHightDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final dockerIconYAcceInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private final dockerIconYDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final isAsync:Z

.field private isFirstUpdate:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

.field private mCropHeight:Z

.field private mCurrentIconRect:Landroid/graphics/RectF;

.field private mCurrentWindowRect:Landroid/graphics/RectF;

.field private mEndY:F

.field private mIconEndY:F

.field private mIconStartY:F

.field private mIconTracking:I

.field private final mIsDockIcon:Z

.field private mIsOpening:Z

.field private final mListeners$delegate:Lh4/f;

.field private mProgress:F

.field private mStartIconRect:Landroid/graphics/RectF;

.field private mStartRect:Landroid/graphics/RectF;

.field private mStartY:F

.field private mTargetIconRect:Landroid/graphics/RectF;

.field private mTargetRect:Landroid/graphics/RectF;

.field private mTracking:I

.field private mUpdateListener:Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;

.field private startProgress:F

.field private final tempRectForCustomRadius:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->Companion:Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

    new-instance v0, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion$RECT_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion$RECT_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->RECT_PROGRESS:Landroid/util/FloatProperty;

    const/4 v0, 0x2

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_46

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_4e

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_PARAMS:[[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_56

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_5e

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_PARAMS_DOCK_ICON_CLOSE:[[F

    new-array v1, v0, [J

    fill-array-data v1, :array_66

    sput-object v1, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_DURATION:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_72

    sput-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->RLM_SPRING_DURATION:[J

    return-void

    nop

    :array_46
    .array-data 4
        0x42f00000  # 120.0f
        0x3f8147ae  # 1.01f
    .end array-data

    :array_4e
    .array-data 4
        0x42c80000  # 100.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_56
    .array-data 4
        0x42f00000  # 120.0f
        0x3f8147ae  # 1.01f
    .end array-data

    :array_5e
    .array-data 4
        0x42b40000  # 90.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_66
    .array-data 8
        0x1f4
        0x28a
    .end array-data

    :array_72
    .array-data 8
        0x1e5
        0x23a
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;ZFLcom/android/launcher3/Launcher;ZZ)V
    .registers 14

    const-string/jumbo v0, "startRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startIconRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetIconRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIconTracking:I

    iput v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTracking:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentWindowRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentIconRect:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/launcher3/anim/AppTransitionAnimator$mListeners$2;->INSTANCE:Lcom/android/launcher3/anim/AppTransitionAnimator$mListeners$2;

    invoke-static {v1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mListeners$delegate:Lh4/f;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconYDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconYAcceInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f0ccccd  # 0.55f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconHightAcceInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconHightDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->tempRectForCustomRadius:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->isFirstUpdate:Z

    iput-boolean p5, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    iput p6, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetRect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartIconRect:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetIconRect:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/launcher3/anim/AppTransitionAnimator;->Companion:Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

    invoke-virtual {p7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-eqz p5, :cond_7d

    move-object v3, p1

    goto :goto_7e

    :cond_7d
    move-object v3, p2

    :goto_7e
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getTracking(ILandroid/graphics/RectF;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTracking:I

    invoke-virtual {p7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p7

    iget p7, p7, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-eqz p5, :cond_8e

    move-object v2, p3

    goto :goto_8f

    :cond_8e
    move-object v2, p4

    :goto_8f
    invoke-virtual {v1, p7, v2}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getTracking(ILandroid/graphics/RectF;)I

    move-result p7

    iput p7, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIconTracking:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p7

    iput p7, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartY:F

    invoke-direct {p0, p2}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p7

    iput p7, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mEndY:F

    invoke-direct {p0, p3}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIconStartY:F

    invoke-direct {p0, p4}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result p3

    iput p3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIconEndY:F

    iput-boolean p8, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->isAsync:Z

    iput-boolean p9, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsDockIcon:Z

    if-eqz p5, :cond_b8

    invoke-static {p2, p1}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_bc

    :cond_b8
    invoke-static {p1, p2}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object p1

    :goto_bc
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object p2, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCropHeight:Z

    const-string/jumbo p1, "startRect = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", targetRect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTracking = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTracking:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mCropHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCropHeight:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", startProgress = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mIsOpening = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsDockIcon= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppTransitionAnimator"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/anim/AppTransitionAnimator;->RECT_PROGRESS:Landroid/util/FloatProperty;

    new-array p2, v0, [F

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000  # 1.0f

    aput p4, p2, p3

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p2, :cond_13c

    iget-boolean p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    if-eqz p2, :cond_13c

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getAppContext()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/common/util/PlatformLevelUtils;->isHighLevelAnimation(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_13c

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getRlmOpenAnimDuration()J

    move-result-wide p2

    goto :goto_140

    :cond_13c
    invoke-virtual {v1}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getAnimDuration()J

    move-result-wide p2

    :goto_140
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-direct {p0, p5, p9}, Lcom/android/launcher3/anim/AppTransitionAnimator;->initInterpolator(ZZ)Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo p2, "ofFloat(this, RECT_PROGR…g, mIsDockIcon)\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getMListeners()Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/anim/AppTransitionAnimator$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/anim/AppTransitionAnimator$2;-><init>(Lcom/android/launcher3/anim/AppTransitionAnimator;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getMListeners()Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    invoke-virtual {p1, p2}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->setIsOpening(Z)V

    iget-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;

    invoke-direct {p2, p0, p0, p0, p0}, Lcom/android/launcher3/anim/AppTransitionAnimator$special$$inlined$addListener$1;-><init>(Lcom/android/launcher3/anim/AppTransitionAnimator;Lcom/android/launcher3/anim/AppTransitionAnimator;Lcom/android/launcher3/anim/AppTransitionAnimator;Lcom/android/launcher3/anim/AppTransitionAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static final synthetic access$getMAppTransitionParam$p(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/systemui/shared/system/AppTransitionParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    return-object p0
.end method

.method public static final synthetic access$getMListeners(Lcom/android/launcher3/anim/AppTransitionAnimator;)Lcom/android/launcher3/anim/TransitionAnimatorListener;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getMListeners()Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMProgress$p(Lcom/android/launcher3/anim/AppTransitionAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    return p0
.end method

.method public static final synthetic access$getRLM_SPRING_DURATION$cp()[J
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->RLM_SPRING_DURATION:[J

    return-object v0
.end method

.method public static final synthetic access$getSPRING_DURATION$cp()[J
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_DURATION:[J

    return-object v0
.end method

.method public static final synthetic access$getSPRING_PARAMS$cp()[[F
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_PARAMS:[[F

    return-object v0
.end method

.method public static final synthetic access$getSPRING_PARAMS_DOCK_ICON_CLOSE$cp()[[F
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_PARAMS_DOCK_ICON_CLOSE:[[F

    return-object v0
.end method

.method public static final synthetic access$setFirstUpdate$p(Lcom/android/launcher3/anim/AppTransitionAnimator;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->isFirstUpdate:Z

    return-void
.end method

.method public static final synthetic access$setMProgress$p(Lcom/android/launcher3/anim/AppTransitionAnimator;F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/launcher3/anim/AppTransitionAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->update()V

    return-void
.end method

.method private final calculateCurrentRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFIF)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move/from16 v9, p7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v9, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-static {v9, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v11

    iget-boolean v3, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsDockIcon:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    if-eqz v3, :cond_29

    iget-object v3, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconYDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_31

    :cond_29
    iget-object v3, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconYAcceInterpolator:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_31

    :cond_2c
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_31
    move-object v8, v3

    iget-boolean v3, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsDockIcon:Z

    if-eqz v3, :cond_40

    iget-boolean v3, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    if-eqz v3, :cond_3d

    iget-object v0, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconHightAcceInterpolator:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_45

    :cond_3d
    iget-object v0, v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->dockerIconHightDecInterpolator:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_45

    :cond_40
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_45
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move/from16 v3, p7

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v12

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v10, v3

    sub-float v3, v11, v10

    add-float/2addr v11, v10

    if-eqz v2, :cond_7d

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v4, :cond_74

    if-eq v2, v5, :cond_6e

    goto :goto_81

    :cond_6e
    sub-float v0, v12, v0

    invoke-virtual {p1, v3, v0, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_81

    :cond_74
    int-to-float v2, v5

    div-float/2addr v0, v2

    sub-float v2, v12, v0

    add-float/2addr v12, v0

    invoke-virtual {p1, v3, v2, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_81

    :cond_7d
    add-float/2addr v0, v12

    invoke-virtual {p1, v3, v12, v11, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_81
    return-void
.end method

.method public static final getAnimDuration()J
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->Companion:Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getAnimDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getMListeners()Lcom/android/launcher3/anim/TransitionAnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mListeners$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/anim/TransitionAnimatorListener;

    return-object p0
.end method

.method public static final getRlmOpenAnimDuration()J
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->Companion:Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getRlmOpenAnimDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getTrackedYFromRect(Landroid/graphics/RectF;)F
    .registers 3

    iget p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTracking:I

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

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->Companion:Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getTracking(ILandroid/graphics/RectF;)I

    move-result p0

    return p0
.end method

.method private final initInterpolator(ZZ)Landroid/animation/TimeInterpolator;
    .registers 13

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSpringAnimationAppStart()Z

    move-result v0

    if-eqz v0, :cond_49

    sget p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p0

    if-nez p1, :cond_19

    if-eqz p2, :cond_19

    sget-object p2, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_PARAMS_DOCK_ICON_CLOSE:[[F

    aget-object p0, p2, p0

    goto :goto_1d

    :cond_19
    sget-object p2, Lcom/android/launcher3/anim/AppTransitionAnimator;->SPRING_PARAMS:[[F

    aget-object p0, p2, p0

    :goto_1d
    sget-object p2, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object p2

    if-eqz p1, :cond_37

    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p2, p1, :cond_31

    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne p2, p1, :cond_37

    :cond_31
    const-wide p1, 0x40bc200000000000L  # 7200.0

    goto :goto_39

    :cond_37
    const-wide/16 p1, 0x0

    :goto_39
    move-wide v7, p1

    new-instance p1, Lcom/android/launcher3/anim/OSpringInterpolator;

    aget p2, p0, v0

    float-to-double v3, p2

    aget p0, p0, v1

    float-to-double v5, p0

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/anim/OSpringInterpolator;-><init>(DDDF)V

    goto :goto_55

    :cond_49
    iget-boolean p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object p1

    const-string/jumbo p0, "{\n            OplusLaunc…tor(mIsOpening)\n        }"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_55
    return-object p1
.end method

.method private final optimizeProgress()F
    .registers 8

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4
    :try_end_e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-wide v2, v0

    :goto_10
    iget v4, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    iget-object v5, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_7e

    cmp-long v5, v2, v0

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    cmp-long v0, v5, v0

    if-eqz v0, :cond_7e

    iget-boolean v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->isFirstUpdate:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_36

    iput v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->currentProgressTime:F

    iget v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    iput v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->startProgress:F

    iput-boolean v4, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->isFirstUpdate:Z

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_43

    move v0, v1

    goto :goto_44

    :cond_43
    move v0, v4

    :goto_44
    if-nez v0, :cond_4c

    iget v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->currentProgressTime:F

    long-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->currentProgressTime:F

    :cond_4c
    iget v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->currentProgressTime:F

    iget-object v2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v3, v2

    div-float/2addr v0, v3

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_6a

    iget v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    cmpg-float v3, v3, v2

    if-nez v3, :cond_68

    move v4, v1

    :cond_68
    if-eqz v4, :cond_6b

    :cond_6a
    move v0, v2

    :cond_6b
    iget v2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->startProgress:F

    iget-object v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->startProgress:F

    invoke-static {v1, p0, v0, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v4

    :cond_7e
    return v4
.end method

.method private final update()V
    .registers 16

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->optimizeProgress()F

    move-result v7

    iput v7, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    iget-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentWindowRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartY:F

    iget v5, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mEndY:F

    iget v6, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTracking:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/anim/AppTransitionAnimator;->calculateCurrentRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFIF)V

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentIconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentWindowRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetIconRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_42

    move v0, v1

    goto :goto_43

    :cond_42
    move v0, v2

    :goto_43
    if-eqz v0, :cond_5a

    :cond_45
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetIconRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_57

    move v0, v1

    goto :goto_58

    :cond_57
    move v0, v2

    :goto_58
    if-nez v0, :cond_6c

    :cond_5a
    iget-object v4, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentIconRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartIconRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetIconRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIconStartY:F

    iget v8, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIconEndY:F

    iget v9, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIconTracking:I

    iget v10, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/anim/AppTransitionAnimator;->calculateCurrentRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFIF)V

    :cond_6c
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    if-nez v0, :cond_80

    const-string v0, "AppTransitionAnimator"

    const-string v3, "We haven\'t set the transition param"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/shared/system/AppTransitionParam;

    iget-boolean v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    invoke-direct {v0, v3}, Lcom/android/systemui/shared/system/AppTransitionParam;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    :cond_80
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/AppTransitionParam;->setAnimProgress(F)V

    sget-object v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->isDefaultTheme()Z

    move-result v0

    if-nez v0, :cond_db

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->tempRectForCustomRadius:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-boolean v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsOpening:Z

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner$Companion;->getICON_TO_WINDOW_THRESHOLD()[Ljava/lang/Float;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_b7

    :cond_ab
    sget-object v0, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->Companion:Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner$Companion;->getWINDOW_TO_ICON_THRESHOLD()[Ljava/lang/Float;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_b7
    move v8, v0

    iget-object v2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->tempRectForCustomRadius:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTargetRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mStartY:F

    iget v6, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mEndY:F

    iget v7, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mTracking:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/anim/AppTransitionAnimator;->calculateCurrentRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FFIF)V

    :cond_c8
    iget-object v9, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mUpdateListener:Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;

    if-eqz v9, :cond_db

    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->tempRectForCustomRadius:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->left:F

    iget v11, v0, Landroid/graphics/RectF;->top:F

    iget v12, v0, Landroid/graphics/RectF;->right:F

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    iget-boolean v14, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mIsDockIcon:Z

    invoke-interface/range {v9 .. v14}, Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;->setTempRectForCustomIconRadius(FFFFZ)V

    :cond_db
    iget-object v0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mUpdateListener:Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;

    if-eqz v0, :cond_ef

    iget-object v1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentWindowRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCurrentIconRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mProgress:F

    iget-boolean v4, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mCropHeight:Z

    iget-object v5, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V

    :cond_ef
    return-void
.end method


# virtual methods
.method public final addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getMListeners()Lcom/android/launcher3/anim/TransitionAnimatorListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/TransitionAnimatorListener;->addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final isAsync()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->isAsync:Z

    return p0
.end method

.method public setAnimator(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimatorUpdateLister(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AppTransitionAnimator;->addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public final setAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;)V
    .registers 3

    const-string/jumbo v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mAppTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    return-void
.end method

.method public final setUpdateListener(Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/AppTransitionAnimator;->mUpdateListener:Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;

    return-void
.end method
