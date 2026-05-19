.class public final Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DOCK_VIEW_INIT_TRANS_X_FACTOR:F = 0.08f

.field private static final DURATION_400:J = 0x190L

.field public static final INSTANCE:Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;

.field public static final INTERPOLATOR_MOVE_EASE:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final TRANSLATION_Y_CLEAR_ALL_PANEL:F = 100.0f

.field private static final TRANSLATION_Y_CLEAR_ALL_PANEL_LIGHT:F = 30.0f

.field public static final TRANSX_FACTOR_FOR_LIGHT_RECENTS_ANIM:F = 5.0f

.field public static final WORKSPACE_SCALE_FOR_LIGHT_RECENT_ANIM:F = 0.92f


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;

    invoke-direct {v0}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->INSTANCE:Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->INTERPOLATOR_MOVE_EASE:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alphaForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PropertySetter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/launcher3/anim/PropertySetter;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "setter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->INTERPOLATOR_MOVE_EASE:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-interface {p2, p1, v0, p0, v1}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public static final alphaTransYForClearAllPanelView(Lcom/android/launcher3/states/StateAnimationConfig;IZLandroid/view/View;)Landroid/animation/ValueAnimator;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getTranslationPropForClearAllPanel(IZLcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_3e

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_25

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, p2, v0

    aput-object p1, p2, v1

    invoke-static {p3, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_2d

    :cond_25
    new-array p0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, p0, v0

    invoke-static {p3, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_2d
    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->INTERPOLATOR_MOVE_EASE:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string p1, "animator"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static final getDockIconEnterAnimDelay(II)J
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_a

    return-wide v1

    :cond_a
    if-lt p0, p1, :cond_10

    sub-int/2addr p0, p1

    int-to-long p0, p0

    mul-long/2addr p0, v1

    return-wide p0

    :cond_10
    return-wide v1
.end method

.method public static final getNormalOverviewOffset()F
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightEnterRecentsAnimation()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x3e4ccccd  # 0.2f

    goto :goto_e

    :cond_c
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_e
    return v0
.end method

.method public static final getOffsetForClearAllPanelView(Z)F
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_5

    const/high16 p0, 0x41f00000  # 30.0f

    goto :goto_7

    :cond_5
    const/high16 p0, 0x42c80000  # 100.0f

    :goto_7
    return p0
.end method

.method public static final isDockIconAndClearAllPanelLightAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    invoke-static {p0}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public static final isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result p0

    if-ne p0, v0, :cond_e

    move p0, v0

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    if-nez p0, :cond_1b

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightEnterRecentsAnimation()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :cond_1b
    :goto_1b
    return v0
.end method

.method public static final transXForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/launcher3/LauncherState;",
            "Lcom/android/launcher3/anim/PropertySetter;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "setter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p2, Lcom/android/launcher3/LauncherState;->ordinal:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_30

    sget-object p2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    invoke-virtual {p2, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->getNormalOverviewOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_30
    sget-object p2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->INTERPOLATOR_MOVE_EASE:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-interface {p3, p1, p2, p0, v0}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method
