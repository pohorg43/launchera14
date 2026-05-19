.class public final Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIsNeedToDelayCancelScaleAnim:Z

.field private mIsPressing:Z

.field private mNormalAnimation:Landroid/view/animation/ScaleAnimation;

.field private mPressAnimation:Landroid/view/animation/ScaleAnimation;

.field private mPressAnimationValue:F

.field private mPressRecordAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 3

    const-string v0, "mIndicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimationValue:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->initPressAnimation$lambda$0(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMIndicator$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method public static final synthetic access$getMPressAnimation$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)Landroid/view/animation/ScaleAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimation:Landroid/view/animation/ScaleAnimation;

    return-object p0
.end method

.method public static final synthetic access$setMIsPressing$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIsPressing:Z

    return-void
.end method

.method public static final synthetic access$setMNormalAnimation$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Landroid/view/animation/ScaleAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mNormalAnimation:Landroid/view/animation/ScaleAnimation;

    return-void
.end method

.method public static final synthetic access$setMPressAnimation$p(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Landroid/view/animation/ScaleAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimation:Landroid/view/animation/ScaleAnimation;

    return-void
.end method

.method private static final initPressAnimation$lambda$0(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimationValue:F

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3ecccccd  # 0.4f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_39

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIsNeedToDelayCancelScaleAnim:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimationValue:F

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->animateNormal(F)V

    :cond_39
    return-void
.end method

.method private final isNormalAnimRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mNormalAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->hasStarted()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mNormalAnimation:Landroid/view/animation/ScaleAnimation;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result p0

    if-nez p0, :cond_1d

    move p0, v1

    goto :goto_1e

    :cond_1d
    move p0, v2

    :goto_1e
    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method


# virtual methods
.method public final animateNormal(F)V
    .registers 9

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->isNormalAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez v0, :cond_32

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimation:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    sget-object v1, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    iget-object v6, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const-wide/16 v4, 0x163

    move-object v2, v6

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generateResumeAnimation(Landroid/view/View;FJLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mNormalAnimation:Landroid/view/animation/ScaleAnimation;

    if-eqz p1, :cond_2b

    new-instance v0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animateNormal$1;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2b
    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mNormalAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_32
    return-void
.end method

.method public final animatePress(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIsPressing:Z

    sget-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    iget-object v1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const v2, 0x3f666666  # 0.9f

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generatePressAnimation$OplusLauncher_RealmePallExportAallRelease(Landroid/view/View;FLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimation:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_1f

    new-instance v1, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animatePress$1;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper$animatePress$1;-><init>(Landroid/animation/ValueAnimator;Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1f
    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final cancelAnimation(Landroid/animation/ValueAnimator;Z)V
    .registers 5

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p2, :cond_1e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez p2, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_26
    return-void
.end method

.method public final getPressAnimation()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressRecordAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final initPressAnimation()V
    .registers 5

    sget-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    const-wide/16 v1, 0xc8

    const v3, 0x3f666666  # 0.9f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generatePressAnimationRecord(JF)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressRecordAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_17
    return-void
.end method

.method public final isPressingAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mIsPressing:Z

    return p0
.end method

.method public final startAnimateNormalAnim()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressRecordAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->cancelAnimation(Landroid/animation/ValueAnimator;Z)V

    iget v0, p0, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->mPressAnimationValue:F

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/PageIndicatorPressFeedbackHelper;->animateNormal(F)V

    return-void
.end method
