.class public final Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$Companion;

.field private static final DEFAULT_FACTORS_ANIMATION_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field public static final FACTORS_ANIMATION_DURATION_DEFAULT:J = 0x1388L

.field public static final FACTORS_ANIMATION_DURATION_IMMEDIATELY:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "AnimatedFactorsSpringAnimation"


# instance fields
.field private dampingAnimator:Landroid/animation/ValueAnimator;

.field private final endListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private factorsAnimatorSet:Landroid/animation/AnimatorSet;

.field private final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private stiffnessAnimator:Landroid/animation/ValueAnimator;

.field private final updateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->Companion:Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$Companion;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->DEFAULT_FACTORS_ANIMATION_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo$lambda$4$lambda$3(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_FACTORS_ANIMATION_INTERPOLATOR$cp()Landroid/view/animation/LinearInterpolator;
    .registers 1

    sget-object v0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->DEFAULT_FACTORS_ANIMATION_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-object v0
.end method

.method private static final animateSpringFactorsTo$lambda$2$lambda$1(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method private static final animateSpringFactorsTo$lambda$4$lambda$3(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo$lambda$2$lambda$1(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateSpringFactorsTo(FF)Landroid/animation/Animator;
    .registers 10

    sget-object v3, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->DEFAULT_FACTORS_ANIMATION_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo(FFLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final animateSpringFactorsTo(FFJ)Landroid/animation/Animator;
    .registers 12

    sget-object v3, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->DEFAULT_FACTORS_ANIMATION_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo(FFLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final animateSpringFactorsTo(FFLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)Landroid/animation/Animator;
    .registers 12

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->cancelSpringFactorsAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput p1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/keyguardservice/b;

    invoke-direct {v3, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object p1, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->dampingAnimator:Landroid/animation/ValueAnimator;

    new-array p1, v2, [F

    aput v1, p1, v4

    aput p2, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/download/s;

    invoke-direct {p2, p0}, Lcom/android/launcher/download/s;-><init>(Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object p1, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->stiffnessAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v2, [Landroid/animation/Animator;

    iget-object p3, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->dampingAnimator:Landroid/animation/ValueAnimator;

    aput-object p3, p2, v4

    iget-object p3, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->stiffnessAnimator:Landroid/animation/ValueAnimator;

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$animateSpringFactorsTo$3$1;

    invoke-direct {p2, p6}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation$animateSpringFactorsTo$3$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-object p1, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->factorsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final animateSpringFactorsTo(FFLjava/lang/Runnable;)Landroid/animation/Animator;
    .registers 11

    sget-object v3, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->DEFAULT_FACTORS_ANIMATION_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->animateSpringFactorsTo(FFLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final animateToFinalPosition(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public final canSkipToEnd()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    return p0
.end method

.method public final cancel()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->cancelSpringFactorsAnimation()V

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    return-void
.end method

.method public final cancelSpringFactorsAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->factorsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method public final getSpring()Landroidx/dynamicanimation/animation/SpringForce;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const-string/jumbo v0, "springAnimation.spring"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final isSpringAnimationRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final removeAllEndListeners()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    goto :goto_6

    :cond_16
    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final removeAllUpdateListeners()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    goto :goto_6

    :cond_16
    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method

.method public final removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    return-void
.end method

.method public final setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 2
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    const-string/jumbo p1, "springAnimation.setMinim…nge(minimumVisibleChange)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    const-string/jumbo p1, "springAnimation.setSpring(force)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setStartValue(F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    const-string/jumbo p1, "springAnimation.setStartValue(startValue)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final setStartVelocity(F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    const-string/jumbo p1, "springAnimation.setStartVelocity(startVelocity)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final skipSpringFactorsAnimationToEnd()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->factorsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_7
    return-void
.end method

.method public final skipToEnd()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->skipSpringFactorsAnimationToEnd()V

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    return-void
.end method

.method public final springFactorsAnimationRunning()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->factorsAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final start()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public final updateSpringFactors(FF)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/util/AnimatedFactorsSpringAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method
