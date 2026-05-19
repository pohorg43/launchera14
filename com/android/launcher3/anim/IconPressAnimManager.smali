.class public final Lcom/android/launcher3/anim/IconPressAnimManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;,
        Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;,
        Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;,
        Lcom/android/launcher3/anim/IconPressAnimManager$IPressAnimation;,
        Lcom/android/launcher3/anim/IconPressAnimManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIconPressAnimManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconPressAnimManager.kt\ncom/android/launcher3/anim/IconPressAnimManager\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,232:1\n94#2,14:233\n*S KotlinDebug\n*F\n+ 1 IconPressAnimManager.kt\ncom/android/launcher3/anim/IconPressAnimManager\n*L\n79#1:233,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/IconPressAnimManager$Companion;

.field private static final MAX_ALPHA:F = 255.0f

.field private static final SHIFT_LEFT_FOR_ALPHA:I = 0x18

.field private static final TAG:Ljava/lang/String; = "IconPressAnimManager"


# instance fields
.field private mCurrentAnimScale:F

.field private mIconView:Landroid/view/View;

.field private mListener:Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;

.field private mNeedSetCallBack:Z

.field private mPressAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/IconPressAnimManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/IconPressAnimManager;->Companion:Lcom/android/launcher3/anim/IconPressAnimManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;Landroid/view/View;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    iput-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mListener:Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;

    iput-object p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIconView:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim$lambda$0(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mNeedSetCallBack:Z

    return p0
.end method

.method public static final synthetic access$setMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mNeedSetCallBack:Z

    return-void
.end method

.method private final createPressAnimation(Z)Landroid/animation/ValueAnimator;
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->isLightIconPressAnimation()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;-><init>(ZF)V

    goto :goto_15

    :cond_e
    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;-><init>(ZF)V

    :goto_15
    return-object v0
.end method

.method private final createShadowColorFilter(ZF[F)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    aget p0, p3, p0

    aget p1, p3, v0

    invoke-static {p2, p0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    goto :goto_15

    :cond_d
    aget p1, p3, v0

    aget p0, p3, p0

    invoke-static {p2, p1, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    :goto_15
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 p2, 0x437f0000  # 255.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static final doPressFeedbackAnim$lambda$0(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.anim.IconPressAnimManager.IPressAnimation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/anim/IconPressAnimManager$IPressAnimation;

    invoke-interface {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$IPressAnimation;->getShadowAlphaScope()[F

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->createShadowColorFilter(ZF[F)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mListener:Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-interface {p2, p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;->onUpdate(FLandroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method

.method private final isLightIconPressAnimation()Z
    .registers 3

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_12

    const/4 p0, 0x4

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    move p0, v0

    :goto_13
    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_20

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result p0

    :cond_20
    return p0
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    :cond_c
    return-void
.end method

.method public final doPressFeedbackAnim(Z)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->createPressAnimation(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/android/keyguardservice/d;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguardservice/d;-><init>(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_26

    new-instance v8, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;

    move-object v1, v8

    move v2, p1

    move-object v3, p0

    move v4, p1

    move-object v5, p0

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;-><init>(ZLcom/android/launcher3/anim/IconPressAnimManager;ZLcom/android/launcher3/anim/IconPressAnimManager;Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2d
    return-void
.end method

.method public final getCurrentAnimScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    return p0
.end method

.method public final getResetPressDuration()J
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->isLightIconPressAnimation()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->Companion:Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v5

    aget v5, v5, v4

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    sub-float/2addr v5, p0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object p0

    aget p0, p0, v4

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v0

    aget v0, v0, v3

    sub-float/2addr p0, v0

    div-float/2addr v5, p0

    invoke-static {v5, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    const-wide/16 v0, 0x32

    goto :goto_4a

    :cond_2b
    sget-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;->Companion:Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v5

    aget v5, v5, v4

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    sub-float/2addr v5, p0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object p0

    aget p0, p0, v4

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v0

    aget v0, v0, v3

    sub-float/2addr p0, v0

    div-float/2addr v5, p0

    invoke-static {v5, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    const-wide/16 v0, 0xc8

    :goto_4a
    long-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0
.end method
