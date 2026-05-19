.class public final Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_PROGRESS:F = 0.5f

.field public static final Companion:Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;

.field private static final FLOAT_0:F = 0.0f

.field private static final FLOAT_1:F = 1.0f

.field private static final MAX_AUTO_ANIM_DURATION:I = 0x190

.field private static final MAX_FLING_AUTO_ANIM_DURATION:I = 0x1f4

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final MAX_VELOCITY:I = 0x5dc0

.field private static final MIN_FLING_AUTO_ANIM_DURATION:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "PullUpGuidePagePanel"

.field public static final TYPE_PULL_UP_SEARCH_TIPS:I = 0x3

.field private static final VELOCITY_UNIT:I = 0x3e8


# instance fields
.field private mAutoAnimEndValue:F

.field private mColorDragLayer:Lcom/android/launcher3/OplusDragLayer;

.field private mCurProgress:F

.field private mDeclarePanelShowCount:I

.field private final mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mPanelAnimator:Landroid/animation/ObjectAnimator;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewHeight:I

.field private mViewType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->Companion:Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string p2, "fromContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->onAttachedToWindow$lambda$0(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$closeComplete(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->closeComplete()V

    return-void
.end method

.method public static final synthetic access$getMAutoAnimEndValue$p(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mAutoAnimEndValue:F

    return p0
.end method

.method public static final synthetic access$setMColorDragLayer$p(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Lcom/android/launcher3/OplusDragLayer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mColorDragLayer:Lcom/android/launcher3/OplusDragLayer;

    return-void
.end method

.method public static final synthetic access$setMViewType$p(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewType:I

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->playAutoTouchUpAnimIfNecessary$lambda$3(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final closeComplete()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string/jumbo v1, "mLauncher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget p0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2a

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->alreadyKnowPullUpTips()V

    :cond_2a
    return-void
.end method

.method public static final createPanel(Landroid/content/Context;ILcom/android/launcher3/OplusDragLayer;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->Companion:Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$Companion;->createPanel(Landroid/content/Context;ILcom/android/launcher3/OplusDragLayer;)V

    return-void
.end method

.method private final dragAngleDetect(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mTouchDownY:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mTouchDownX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mTouchDownY:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    cmpg-float p1, v2, p1

    const/4 v2, 0x1

    if-nez p1, :cond_32

    move p1, v2

    goto :goto_33

    :cond_32
    move p1, v1

    :goto_33
    if-eqz p1, :cond_37

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_37
    div-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    double-to-float p0, p0

    const p1, 0x3f860a92

    cmpl-float p0, p0, p1

    if-lez p0, :cond_46

    move v1, v2

    :cond_46
    return v1
.end method

.method private final handleMove(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mTouchDownY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1d

    iput v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    goto :goto_25

    :cond_1d
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_25

    iput v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    :cond_25
    :goto_25
    iget p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->playDragDownAnimWithProgress(F)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda$0(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private final playAutoTouchUpAnimIfNecessary(F)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_13

    invoke-direct {p0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->closeComplete()V

    return-void

    :cond_13
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1c

    move v3, v4

    goto :goto_1d

    :cond_1c
    move v3, v5

    :goto_1d
    if-eqz v3, :cond_20

    return-void

    :cond_20
    iput v2, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mAutoAnimEndValue:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_28

    move v2, v4

    goto :goto_29

    :cond_28
    move v2, v5

    :goto_29
    const/high16 v3, 0x3f000000  # 0.5f

    cmpl-float v6, v0, v3

    if-gtz v6, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    iput v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mAutoAnimEndValue:F

    :cond_33
    const/16 v6, 0x1f4

    const/16 v7, 0xfa

    const/4 v8, 0x2

    if-eqz v2, :cond_4b

    iget v3, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewHeight:I

    mul-int/2addr v3, v8

    int-to-float v3, v3

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    div-float/2addr v1, p1

    float-to-int v0, v1

    if-ge v0, v7, :cond_46

    move v6, v7

    goto :goto_59

    :cond_46
    if-le v0, v6, :cond_49

    goto :goto_59

    :cond_49
    :goto_49
    move v6, v0

    goto :goto_59

    :cond_4b
    cmpg-float v3, v0, v3

    const/16 v6, 0x190

    if-gez v3, :cond_54

    int-to-float v1, v6

    mul-float/2addr v1, v0

    goto :goto_57

    :cond_54
    int-to-float v3, v6

    sub-float/2addr v1, v0

    mul-float/2addr v1, v3

    :goto_57
    float-to-int v0, v1

    goto :goto_49

    :goto_59
    const-string/jumbo v0, "playAutoTouchUpAnimationIfNecessary progress:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    const-string v3, ",velocityY:"

    const-string v7, ",mMaxHeightDiff:"

    invoke-static {v0, v1, v3, p1, v7}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewHeight:I

    const-string v1, ",duration:"

    const-string v3, ", fling = "

    invoke-static {v0, p1, v1, v6, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mAutoEndValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mAutoAnimEndValue:F

    const-string v1, "PullUpGuidePagePanel"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/v;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    new-array p1, v8, [F

    iget v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    aput v0, p1, v5

    iget v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mAutoAnimEndValue:F

    aput v0, p1, v4

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v0, v6

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$playAutoTouchUpAnimIfNecessary$2;-><init>(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final playAutoTouchUpAnimIfNecessary$lambda$3(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->playDragDownAnimWithProgress(F)V

    return-void
.end method

.method private final playDragDownAnimWithProgress(F)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final animateShow()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;

    if-eqz v0, :cond_15

    const-string p0, "PullUpGuidePagePanel"

    const-string/jumbo v0, "the panel is showing!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070866

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    int-to-float v2, v3

    aput v2, v1, v0

    const-string/jumbo v0, "translationY"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public handleClose(Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClose: animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullUpGuidePagePanel"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_22

    const-string p0, "handleClose, the panel not open yet!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/android/launcher/folder/recommend/DialogDismissCallback;->dismiss()V

    :cond_29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3e
    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v3, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewHeight:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    aput p1, v2, v0

    const-string/jumbo p1, "translationY"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_OUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$handleClose$1$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel$handleClose$1$1;-><init>(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mPanelAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_8d

    :cond_8a
    invoke-direct {p0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->closeComplete()V

    :goto_8d
    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    const/high16 p0, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final logActionCommand(I)V
    .registers 2

    const-string p0, "PullUpGuidePagePanel"

    const-string p1, "logActionCommand"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const-string/jumbo v0, "onAttachedToWindow mDeclarePanelShowCount = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mDeclarePanelShowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mViewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewType:I

    const-string v2, "PullUpGuidePagePanel"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    const v0, 0x7f0a036d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    new-instance v1, Lcom/android/common/util/c1;

    invoke-direct {v1, p0}, Lcom/android/common/util/c1;-><init>(Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_31
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mTouchDownY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mCurProgress:F

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string/jumbo v1, "mLauncher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return p1

    :cond_30
    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->dragAngleDetect(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_18

    if-nez v1, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_18
    iget-object v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_22

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_22
    iget-object v1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_29
    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_33

    const/4 p1, 0x3

    if-eq v0, p1, :cond_37

    goto :goto_52

    :cond_33
    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_52

    :cond_37
    iget-object p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_52

    const v0, 0x46bb8000  # 24000.0f

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->playAutoTouchUpAnimIfNecessary(F)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_52
    :goto_52
    return v1
.end method

.method public onFinishInflate()V
    .registers 6

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "context"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/android/launcher3/pullup/view/PullUpGuidePagePanel;->mViewHeight:I

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 2

    const-string p0, "PullUpGuidePagePanel"

    const-string/jumbo p1, "setWindowInsets"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
