.class public final Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nToggleBarAppTransitionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleBarAppTransitionManager.kt\ncom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,273:1\n94#2,14:274\n94#2,14:288\n*S KotlinDebug\n*F\n+ 1 ToggleBarAppTransitionManager.kt\ncom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion\n*L\n98#1:274,14\n138#1:288,14\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Matrix;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->getClosingWindowAnimators$lambda$0([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Matrix;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private final getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;)Landroid/graphics/RectF;
    .registers 7

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    array-length p0, p1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p0, :cond_37

    aget-object v1, p1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    iget-object p0, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_28

    invoke-virtual {p2, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_33

    :cond_28
    iget-object p0, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_33
    return-object p2

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_37
    return-object p2
.end method

.method private static final getClosingWindowAnimators$lambda$0([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Matrix;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 14

    const-string p5, "$targets"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$matrix"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$surfaceApplier"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p5}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_4b

    aget-object v2, p0, v1

    iget-object v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p5, v3}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    iget v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v6, v4, :cond_2f

    iget v2, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v2, 0x3f800000  # 1.0f

    move v5, p1

    goto :goto_3d

    :cond_2f
    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v2, :cond_3c

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v4, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_3c
    move v2, p6

    :goto_3d
    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_4b
    invoke-virtual {p3, p5}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method public static synthetic resetContentView$default(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;Lcom/android/launcher/Launcher;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->resetContentView(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method


# virtual methods
.method public final createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "launcher"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createLauncherContentAnim, opening = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ToggleBarAppTransitionManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_22

    move v4, v0

    goto :goto_23

    :cond_22
    move v4, p0

    :goto_23
    if-eqz p1, :cond_27

    move v5, p0

    goto :goto_28

    :cond_27
    move v5, v0

    :goto_28
    const p0, 0x3f733333  # 0.95f

    if-eqz p1, :cond_2f

    move v2, v0

    goto :goto_30

    :cond_2f
    move v2, p0

    :goto_30
    if-eqz p1, :cond_34

    move v3, p0

    goto :goto_35

    :cond_34
    move v3, v0

    :goto_35
    new-instance p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;-><init>(FFFFLcom/android/launcher/Launcher;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->setUseLaunch(Z)V

    sget-object p2, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;->getSCALE_ALPHA_TARGET()Landroid/util/FloatProperty;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_6e

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_59

    sget-object p1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_TRANSLATION:Landroid/view/animation/PathInterpolator;

    goto :goto_5b

    :cond_59
    sget-object p1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_CLOSE_TRANSLATION:Landroid/view/animation/PathInterpolator;

    :goto_5b
    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo p1, "objectAnimator"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion$createLauncherContentAnim$$inlined$addListener$default$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion$createLauncherContentAnim$$inlined$addListener$default$1;-><init>(Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2

    nop

    :array_6e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final getClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;F)Landroid/animation/ValueAnimator;
    .registers 11

    const-string/jumbo v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;)Landroid/graphics/RectF;

    move-result-object p0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Landroid/graphics/RectF;

    iget p0, v2, Landroid/graphics/RectF;->left:F

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v2, Landroid/graphics/RectF;->right:F

    invoke-direct {v3, p0, v0, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getClosingWindowAnimators, startRect = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endRect = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ToggleBarAppTransitionManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v4

    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isSystemDisableAnimation()Z

    move-result v0

    if-eqz v0, :cond_52

    const-wide/16 v0, 0x0

    goto :goto_54

    :cond_52
    const-wide/16 v0, 0x140

    :goto_54
    move-wide v5, v0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;J)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_CLOSE_TRANSLATION:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Lcom/android/launcher/togglebar/b;

    invoke-direct {v2, p1, p3, v1, v0}, Lcom/android/launcher/togglebar/b;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Matrix;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string p3, "anim.animator"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion$getClosingWindowAnimators$$inlined$addListener$default$1;

    invoke-direct {v0, p2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion$getClosingWindowAnimators$$inlined$addListener$default$1;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final resetContentView(Lcom/android/launcher/Launcher;Z)V
    .registers 4

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "resetContentView:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ToggleBarAppTransitionManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/animation/AppTransitionContentTarget$Companion;->resetContentView(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method
