.class public final Lcom/android/launcher3/search/SearchEntryStateAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchEntryStateAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchEntryStateAnimation.kt\ncom/android/launcher3/search/SearchEntryStateAnimation\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,198:1\n31#2:199\n94#2,14:200\n31#2:214\n94#2,14:215\n*S KotlinDebug\n*F\n+ 1 SearchEntryStateAnimation.kt\ncom/android/launcher3/search/SearchEntryStateAnimation\n*L\n58#1:199\n58#1:200,14\n97#1:214\n97#1:215,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;

.field private static final DURATION_STATE_SWITCH_ANIM:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "SearchEntryStateAnimation"


# instance fields
.field private mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mBgAlphaAnim:Landroid/animation/ValueAnimator;

.field private mContentSwitchAnim:Landroid/animation/ValueAnimator;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIndicatorScrollAnim:Landroid/animation/ValueAnimator;

.field private mNeedContentAnim:Z

.field private mToSearchEntry:Z

.field private mToState:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->Companion:Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;ZIZ)V
    .registers 6

    const-string v0, "mIndicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-boolean p2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToSearchEntry:Z

    iput p3, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToState:I

    iput-boolean p4, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mNeedContentAnim:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->start$lambda$5$lambda$4(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static final synthetic access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method public static final synthetic access$getMToSearchEntry$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToSearchEntry:Z

    return p0
.end method

.method public static final synthetic access$getMToState$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToState:I

    return p0
.end method

.method private static final start$lambda$5$lambda$4(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetSearchEntryState()V

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getPageNumChangeAnimRunner()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getPageNumChangeAnimRunner()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicatorScrollAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->resetForceState()V

    return-void
.end method

.method public final cancelScrollXAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicatorScrollAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public final isBgAnimRunning()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final isRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_1d

    move p0, v1

    goto :goto_1e

    :cond_1d
    move p0, v2

    :goto_1e
    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :cond_22
    :goto_22
    return v1
.end method

.method public final start()V
    .registers 13

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget-boolean v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mNeedContentAnim:Z

    const-wide/16 v2, 0xfa

    const/4 v4, 0x2

    if-eqz v1, :cond_30

    new-array v1, v4, [F

    fill-array-data v1, :array_16a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v5, "start$lambda$1"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$lambda$1$$inlined$doOnEnd$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$lambda$1$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;

    invoke-direct {v5, p0, v0}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_30
    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/search/SearchEntry;->isSwitchEnableState()Z

    move-result v1

    if-nez v1, :cond_63

    new-array v1, v4, [F

    fill-array-data v1, :array_172

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v5, "start$lambda$3"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$lambda$3$$inlined$doOnEnd$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$lambda$3$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBgAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;

    invoke-direct {v5, p0, v0}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_63
    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByState(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget v6, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToState:I

    invoke-virtual {v5, v6}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidthByState(I)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v1, v4

    iget v5, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToState:I

    iget-object v6, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v6}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_8a

    move v5, v7

    goto :goto_8b

    :cond_8a
    move v5, v6

    :goto_8b
    if-eqz v5, :cond_8f

    move v8, v6

    goto :goto_90

    :cond_8f
    move v8, v1

    :goto_90
    if-eqz v5, :cond_94

    move v5, v1

    goto :goto_95

    :cond_94
    move v5, v6

    :goto_95
    if-eqz v1, :cond_99

    move v9, v7

    goto :goto_9a

    :cond_99
    move v9, v6

    :goto_9a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doReplaceAnimation, targetOffset = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needBackgroundAnim="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "SearchEntryStateAnimation"

    invoke-static {v10, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_e8

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v8, v8

    new-instance v11, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$5;

    invoke-direct {v11, p0, v8}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$5;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;F)V

    int-to-float v5, v5

    invoke-direct {v1, v11, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    const v8, 0x3f3d70a4  # 0.74f

    invoke-virtual {v5, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    const/high16 v8, 0x43480000  # 200.0f

    invoke-virtual {v5, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x3b800000  # 0.00390625f

    invoke-virtual {v1, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v5, Lcom/android/launcher3/search/c;

    invoke-direct {v5, p0}, Lcom/android/launcher3/search/c;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;)V

    invoke-virtual {v1, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iput-object v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_e8
    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorScrollX()F

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget v8, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToState:I

    invoke-virtual {v5, v8}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetScrollXAndRestoreActiveIndex(I)F

    move-result v5

    cmpg-float v8, v1, v5

    if-nez v8, :cond_fb

    move v6, v7

    :cond_fb
    xor-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doReplaceAnimation, currentIndicatorScrollX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", targetIndicatorScrollX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_133

    new-array v4, v4, [F

    fill-array-data v4, :array_17a

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v4, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicatorScrollAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;

    invoke-direct {v2, p0, v1, v5, v0}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;FFLandroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_133
    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mNeedContentAnim:Z

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_13e
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isSwitchEnableState()Z

    move-result v0

    if-nez v0, :cond_151

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBgAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_151

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_151
    if-eqz v9, :cond_15f

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->cancelPageNumChangeAnim()V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_15f

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_15f
    if-eqz v6, :cond_168

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicatorScrollAnim:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_168

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_168
    return-void

    nop

    :array_16a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_172
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_17a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
