.class public final Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnimDuration()J
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSpringAnimationAppStart()Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getSPRING_DURATION()[J

    move-result-object p0

    aget-wide v0, p0, v0

    goto :goto_1b

    :cond_17
    invoke-static {}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDuration()J

    move-result-wide v0

    :goto_1b
    return-wide v0
.end method

.method public final getRLM_SPRING_DURATION()[J
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getRLM_SPRING_DURATION$cp()[J

    move-result-object p0

    return-object p0
.end method

.method public final getRlmOpenAnimDuration()J
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportSpringAnimationAppStart()Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getRLM_SPRING_DURATION()[J

    move-result-object p0

    aget-wide v0, p0, v0

    goto :goto_1b

    :cond_17
    invoke-static {}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDuration()J

    move-result-wide v0

    :goto_1b
    return-wide v0
.end method

.method public final getSPRING_DURATION()[J
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getSPRING_DURATION$cp()[J

    move-result-object p0

    return-object p0
.end method

.method public final getSPRING_PARAMS()[[F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getSPRING_PARAMS$cp()[[F

    move-result-object p0

    return-object p0
.end method

.method public final getSPRING_PARAMS_DOCK_ICON_CLOSE()[[F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/AppTransitionAnimator;->access$getSPRING_PARAMS_DOCK_ICON_CLOSE$cp()[[F

    move-result-object p0

    return-object p0
.end method

.method public final getTracking(ILandroid/graphics/RectF;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "targetRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p1

    const/high16 p1, 0x40a00000  # 5.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x40000000  # 2.0f

    mul-float/2addr p0, p1

    mul-float/2addr p1, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_18

    const/4 p0, 0x2

    goto :goto_23

    :cond_18
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_22

    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    const/4 p0, 0x1

    :goto_23
    return p0
.end method
