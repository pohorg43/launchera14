.class public final Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskbarAllAppsAnimationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskbarAllAppsAnimationManager.kt\ncom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,131:1\n42#2:132\n94#2,14:133\n31#2:147\n94#2,14:148\n*S KotlinDebug\n*F\n+ 1 TaskbarAllAppsAnimationManager.kt\ncom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager\n*L\n55#1:132\n55#1:133,14\n64#1:147\n64#1:148,14\n*E\n"
    }
.end annotation


# static fields
.field private static final ALPHA_MAX:F = 1.0f

.field private static final ALPHA_MIN:F = 0.0f

.field public static final DURATION:J = 0x190L

.field public static final INSTANCE:Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;

.field private static final MAX_BLUR_RADIUS:F = 180.0f

.field private static final SCALE_MAX:F = 1.0f

.field private static final SCALE_MIN:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "TaskbarAllAppsAnimationManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->INSTANCE:Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->getBlurRadiusAnimator$lambda$2(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getBlurRadiusAnimator(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Z)Landroid/animation/ValueAnimator;
    .registers 5

    const/4 p0, 0x2

    if-eqz p2, :cond_13

    new-array p0, p0, [F

    fill-array-data p0, :array_30

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-string/jumbo p2, "ofFloat(0.0f, 1f)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_22

    :cond_13
    new-array p0, p0, [F

    fill-array-data p0, :array_38

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-string/jumbo p2, "ofFloat(1.0f, 0.0f)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_22
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/batchdrag/a;

    invoke-direct {p2, p1}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    :array_30
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_38
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final getBlurRadiusAnimator$lambda$2(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x43340000  # 180.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;->getBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    :cond_27
    return-void
.end method

.method private final initAnimSet(ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V
    .registers 13

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x3f666666  # 0.9f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p1, :cond_41

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    new-array p2, v0, [Landroid/animation/Animator;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v5, [F

    fill-array-data v1, :array_ba

    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v5, [F

    fill-array-data v1, :array_c2

    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v4

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    fill-array-data v1, :array_ca

    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_9d

    :cond_41
    const/4 v6, 0x0

    if-eqz p2, :cond_62

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    new-array p2, v4, [Landroid/animation/Animator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v6, v1, v4

    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_9d

    :cond_62
    new-array p2, v0, [Landroid/animation/Animator;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v5, [F

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v7

    aput v7, v1, v3

    aput v2, v1, v4

    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v5, [F

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v7

    aput v7, v1, v3

    aput v2, v1, v4

    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v4

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    aput v2, v1, v3

    aput v6, v1, v4

    invoke-static {p4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_9d
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "targetView.context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result p2

    if-eq p2, v4, :cond_b8

    invoke-direct {p0, p4, p1}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->getBlurRadiusAnimator(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array p1, v4, [Landroid/animation/Animator;

    aput-object p0, p1, v3

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_b8
    return-void

    nop

    :array_ba
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_c2
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_ca
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public final getAnimator(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;ZZ)Landroid/animation/AnimatorSet;
    .registers 7

    const-string/jumbo v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getmWindowController()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsController<@[FlexibleNullability] android.content.Context?>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarHotseatAllAppsIconCenter()[I

    move-result-object p2

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    const/4 v0, 0x1

    aget p2, p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p3, p4, p2, p1}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager;->initAnimSet(ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;)V

    new-instance p0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnStart$1;

    invoke-direct {p0, p3}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnStart$1;-><init>(Z)V

    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnEnd$1;

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/taskbar/allapps/animation/TaskbarAllAppsAnimationManager$getAnimator$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsSlideInView;Z)V

    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method
