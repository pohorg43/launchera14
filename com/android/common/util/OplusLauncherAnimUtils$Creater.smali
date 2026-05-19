.class public final Lcom/android/common/util/OplusLauncherAnimUtils$Creater;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/OplusLauncherAnimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creater"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/OplusLauncherAnimUtils$Creater;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/OplusLauncherAnimUtils$Creater;

    invoke-direct {v0}, Lcom/android/common/util/OplusLauncherAnimUtils$Creater;-><init>()V

    sput-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Creater;->INSTANCE:Lcom/android/common/util/OplusLauncherAnimUtils$Creater;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/OplusLauncherAnimUtils$Creater;->pressedScale$lambda$6$lambda$5$lambda$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final alpha(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "interpolator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_28

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    aput v4, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_19

    move v2, v3

    :cond_19
    aput v2, v0, v1

    const-string p1, "alpha"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return-object p0
.end method

.method public static final pressedScale(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_46

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_1b
    new-array v0, v1, [F

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_2b

    const p1, 0x3f666666  # 0.9f

    goto :goto_2d

    :cond_2b
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_2d
    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_5:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/common/util/r0;

    invoke-direct {v0, p0, v2}, Lcom/android/common/util/r0;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    return-object p1
.end method

.method private static final pressedScale$lambda$6$lambda$5$lambda$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static final translation(Landroid/view/View;ZFFJLandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "interpolator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_24

    if-eqz p1, :cond_d

    const-string/jumbo p1, "translationY"

    goto :goto_10

    :cond_d
    const-string/jumbo p1, "translationX"

    :goto_10
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method
