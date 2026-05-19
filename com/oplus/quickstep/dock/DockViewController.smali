.class public final Lcom/oplus/quickstep/dock/DockViewController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dock/DockViewController$EnterParam;,
        Lcom/oplus/quickstep/dock/DockViewController$Companion;
    }
.end annotation


# static fields
.field private static final ALPHA_INDEX_END:I = 0x5

.field private static final ALPHA_INDEX_MULTI_WINDOW:I = 0x2

.field private static final ALPHA_INDEX_ORIENTATION:I = 0x3

.field private static final ALPHA_INDEX_PAGE_OFFSET:I = 0x5

.field private static final ALPHA_INDEX_STATE:I = 0x1

.field private static final ALPHA_INDEX_TASK_DISPLAY_MODE:I = 0x0

.field private static final ALPHA_INDEX_TASK_LAUNCH:I = 0x4

.field public static final Companion:Lcom/oplus/quickstep/dock/DockViewController$Companion;

.field private static final NUM_ALPHA_CHANNELS:I = 0x6

.field public static final REASON_APPLY_LOAD_PLAN:Ljava/lang/String; = "applyLoadPlan"

.field public static final REASON_GO_HOME:Ljava/lang/String; = "goHomeStartAppIconsExitAnima"

.field public static final REASON_STATE_CHANGE:Ljava/lang/String; = "STATE_CHANGE"

.field public static final REASON_STATE_CHANGE_WITH_ANIM:Ljava/lang/String; = "STATE_CHANGE_WITH_ANIM"

.field public static final REASON_SWIPE_UP_SUCCESS:Ljava/lang/String; = "onSwipeUpAnimationSuccess"

.field private static final TAG:Ljava/lang/String; = "DockViewController"


# instance fields
.field private final alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

.field private currentState:Lcom/android/launcher3/states/OPlusBaseState;

.field private final dockView:Lcom/oplus/quickstep/dock/DockView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation
.end field

.field private dockViewAlpha:F

.field private isLauncherInMultiWindow:Z

.field private isTaskDisplayInGrid:Z

.field private lastEnterParam:Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

.field private final onFoldStateChangeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private stateChangeAnimator:Landroid/animation/Animator;

.field private toState:Lcom/android/launcher3/states/OPlusBaseState;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dock/DockViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dock/DockViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockViewController;->Companion:Lcom/oplus/quickstep/dock/DockViewController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dock/DockView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    new-instance p1, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x6

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    new-instance p1, Lcom/android/common/a;

    invoke-direct {p1, p0}, Lcom/android/common/a;-><init>(Lcom/oplus/quickstep/dock/DockViewController;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->onFoldStateChangeCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->onFoldStateChangeCallback$lambda$0(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getDockView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/oplus/quickstep/dock/DockView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    return-object p0
.end method

.method public static final synthetic access$getRecentsView$p(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public static final synthetic access$getStateAlphaProperty(Lcom/oplus/quickstep/dock/DockViewController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getStateAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentState$p(Lcom/oplus/quickstep/dock/DockViewController;Lcom/android/launcher3/states/OPlusBaseState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->currentState:Lcom/android/launcher3/states/OPlusBaseState;

    return-void
.end method

.method public static final synthetic access$setStateChangeAnimator$p(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->createEnterAnimator$lambda$8$lambda$7(Lcom/oplus/quickstep/dock/DockIconView;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Float;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->init$lambda$1(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Float;)V

    return-void
.end method

.method private final createDockExitAnimator(ZLjava/lang/String;)Landroid/animation/Animator;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_12

    const-string v3, "goHomeStartAppIconsExitAnima"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDockExitAnimator isLightAnim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", reason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", withTrans: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "DockViewController"

    invoke-static {v4, v3, v7}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_f1

    iget-object v3, v0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    iget-object v8, v0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dock/DockViewController;->getDockIconViewAnimateCount()I

    move-result v9

    if-le v3, v9, :cond_4a

    sub-int v10, v3, v9

    goto :goto_4b

    :cond_4a
    const/4 v10, 0x0

    :goto_4b
    add-int/lit8 v11, v8, -0x1

    sub-int v12, v11, v3

    if-gt v12, v9, :cond_52

    goto :goto_54

    :cond_52
    add-int v11, v3, v9

    :goto_54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    :goto_5c
    if-ge v9, v8, :cond_92

    iget-object v14, v0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const-string v15, "dockView.getChildAt(i)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v15, v14, Lcom/oplus/quickstep/dock/DockIconView;

    if-eqz v15, :cond_8f

    if-gt v10, v9, :cond_73

    if-gt v9, v11, :cond_73

    const/4 v15, 0x1

    goto :goto_74

    :cond_73
    const/4 v15, 0x0

    :goto_74
    if-eqz v15, :cond_8a

    invoke-direct {v0, v14}, Lcom/oplus/quickstep/dock/DockViewController;->createDockIconExitAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v15

    cmp-long v15, v12, v15

    if-gez v15, :cond_8f

    invoke-virtual {v14}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v12

    goto :goto_8f

    :cond_8a
    check-cast v14, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v14, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_8f
    :goto_8f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    :cond_92
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_104

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-lez v8, :cond_a5

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_a5
    new-instance v8, Lcom/oplus/quickstep/dock/c;

    invoke-direct {v8, v0}, Lcom/oplus/quickstep/dock/c;-><init>(Lcom/oplus/quickstep/dock/DockViewController;)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v8, "va"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v3, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;

    invoke-direct {v3, v0}, Lcom/oplus/quickstep/dock/DockViewController$createDockExitAnimator$2;-><init>(Lcom/oplus/quickstep/dock/DockViewController;)V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start: "

    const-string v3, ", end: "

    invoke-static {v0, v2, v1, v10, v3}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_f1
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/dock/DockViewController;->getStateAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_104
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createDockExitAnimator$lambda$10(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    return-void
.end method

.method private final createDockIconEnterAnimator(Landroid/view/View;II)Landroid/animation/Animator;
    .registers 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getDockIconDisplacementFactor()F

    move-result p0

    const/high16 v2, -0x3d380000  # -100.0f

    if-eqz v1, :cond_13

    mul-float/2addr p0, v2

    goto :goto_15

    :cond_13
    mul-float/2addr p0, v2

    neg-float p0, p0

    :goto_15
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p0, v3, v4

    const/4 p0, 0x0

    const/4 v5, 0x1

    aput p0, v3, v5

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string v1, "ofFloat(dockIconView, Vi…RANSLATION_X, offset, 0f)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_62

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "ofFloat(dockIconView, View.ALPHA, 0f, 1f)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {p2, p3}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->getDockIconEnterAnimDelay(II)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 p2, 0x190

    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object p0, p2, v4

    aput-object v1, p2, v5

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Lcom/oplus/quickstep/dock/DockViewController$createDockIconEnterAnimator$1;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController$createDockIconEnterAnimator$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_62
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private final createDockIconExitAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .registers 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->getDockIconDisplacementFactor()F

    move-result p0

    const/high16 v2, -0x3d380000  # -100.0f

    if-eqz v1, :cond_13

    mul-float/2addr p0, v2

    goto :goto_15

    :cond_13
    mul-float/2addr p0, v2

    neg-float p0, p0

    :goto_15
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput p0, v3, v4

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "ofFloat(dockIconView, Vi…iew.translationX, offset)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v5

    const/4 v7, 0x0

    aput v7, v6, v4

    invoke-static {p1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v6, "ofFloat(dockIconView, Vi…, dockIconView.alpha, 0f)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v5

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;

    invoke-direct {v1, p1, p0}, Lcom/oplus/quickstep/dock/DockViewController$createDockIconExitAnimator$1;-><init>(Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private final createDockViewStateChangeAnimator(ZZLjava/lang/String;)Landroid/animation/Animator;
    .registers 4

    if-nez p1, :cond_11

    invoke-direct {p0, p2, p3}, Lcom/oplus/quickstep/dock/DockViewController;->createDockExitAnimator(ZLjava/lang/String;)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_10

    new-instance p1, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$1$1;

    invoke-direct {p1}, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$1$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_10
    return-object p0

    :cond_11
    invoke-direct {p0, p2, p3}, Lcom/oplus/quickstep/dock/DockViewController;->createEnterAnimator(ZLjava/lang/String;)Landroid/animation/Animator;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/dock/DockViewController$createDockViewStateChangeAnimator$2$1;-><init>(Lcom/oplus/quickstep/dock/DockViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private final createEnterAnimator(ZLjava/lang/String;)Landroid/animation/Animator;
    .registers 16

    if-eqz p1, :cond_f

    new-instance p1, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0, v0}, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->lastEnterParam:Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockViewController;->createLightEnterAnimatorForDockView()Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p1

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getDockIconViewAnimateCount()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-le p1, v0, :cond_25

    sub-int v3, p1, v0

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    add-int/lit8 v4, v1, -0x1

    sub-int v5, v4, p1

    if-gt v5, v0, :cond_2d

    goto :goto_2f

    :cond_2d
    add-int v4, p1, v0

    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createEnterAnimator start: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", end: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "DockViewController"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    invoke-direct {v6, p2, p1, v1}, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;-><init>(Ljava/lang/String;II)V

    iput-object v6, p0, Lcom/oplus/quickstep/dock/DockViewController;->lastEnterParam:Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    const-wide/16 p1, 0x0

    move-wide v7, p1

    move v6, v2

    :goto_62
    const/4 v9, 0x1

    if-ge v6, v1, :cond_9d

    iget-object v10, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "dockView.getChildAt(i)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v11, v10, Lcom/oplus/quickstep/dock/DockIconView;

    if-eqz v11, :cond_9a

    if-gt v3, v6, :cond_79

    if-gt v6, v4, :cond_79

    goto :goto_7a

    :cond_79
    move v9, v2

    :goto_7a
    const/4 v11, 0x0

    if-eqz v9, :cond_91

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v10, v6, v3}, Lcom/oplus/quickstep/dock/DockViewController;->createDockIconEnterAnimator(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v11

    cmp-long v9, v7, v11

    if-gez v9, :cond_97

    move-wide v7, v11

    goto :goto_97

    :cond_91
    move-object v9, v10

    check-cast v9, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationX(F)V

    :cond_97
    :goto_97
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    :cond_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a5

    const/4 v0, 0x0

    goto :goto_ab

    :cond_a5
    new-instance v1, Lcom/android/common/util/s0;

    invoke-direct {v1, v0, v9}, Lcom/android/common/util/s0;-><init>(Ljava/util/List;I)V

    move-object v0, v1

    :goto_ab
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_de

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    cmp-long p1, v7, p1

    if-lez p1, :cond_bc

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_bc
    new-instance p1, Lcom/oplus/quickstep/dock/b;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/dock/b;-><init>(Lcom/oplus/quickstep/dock/DockViewController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p1, "va"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance p2, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;

    invoke-direct {p2, p0, v0}, Lcom/oplus/quickstep/dock/DockViewController$createEnterAnimator$2;-><init>(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    nop

    :array_de
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createEnterAnimator$lambda$8(Ljava/util/List;)V
    .registers 3

    const-string v0, "$iconViews"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetIconViewsTask size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockViewController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/dock/h;->a:Lcom/oplus/quickstep/dock/h;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final createEnterAnimator$lambda$8$lambda$7(Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static final createEnterAnimator$lambda$9(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->updateCurveProperties()V

    return-void
.end method

.method private final createLightEnterAnimatorForDockView()Landroid/animation/Animator;
    .registers 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    iget-boolean v2, v1, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->getDockIconDisplacementFactor()F

    move-result v1

    const/high16 v3, -0x3d380000  # -100.0f

    if-eqz v2, :cond_13

    mul-float/2addr v1, v3

    goto :goto_15

    :cond_13
    mul-float/2addr v1, v3

    neg-float v1, v1

    :goto_15
    iget-object v2, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v1, 0x0

    const/4 v7, 0x1

    aput v1, v5, v7

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "ofFloat(dockView, View.TRANSLATION_X, offset, 0f)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->INTERPOLATOR_MOVE_EASE:Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getStateAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v2

    const-string v3, "dockViewStateAlphaProp.animateToValue(1f)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/oplus/quickstep/dock/DockViewController$createLightEnterAnimatorForDockView$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/dock/DockViewController$createLightEnterAnimatorForDockView$1;-><init>(Lcom/oplus/quickstep/dock/DockViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->createDockExitAnimator$lambda$10(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dock/DockViewController;->createEnterAnimator$lambda$8(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->createEnterAnimator$lambda$9(Lcom/oplus/quickstep/dock/DockViewController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final getDockIconViewAnimateCount()I
    .registers 2

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x8

    goto :goto_1f

    :cond_b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockView;->isActivityPortrait()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x6

    goto :goto_1f

    :cond_1b
    const/16 p0, 0xa

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x5

    :goto_1f
    return p0
.end method

.method private final getStateAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const-string v0, "alphaValues.getProperty(ALPHA_INDEX_STATE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final init$lambda$1(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Float;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    iget v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockViewAlpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_21

    iput p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockViewAlpha:F

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->onDockViewAlphaChanged(F)V

    :cond_21
    return-void
.end method

.method private final isEnter(Lcom/android/launcher3/states/OPlusBaseState;)Ljava/lang/Boolean;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    sget-object p0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final onFoldStateChangeCallback$lambda$0(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Boolean;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->updateOnTaskDisplayModeChange(Z)V

    return-void
.end method

.method private final updateOnTaskDisplayModeChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->isTaskDisplayInGrid:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->isTaskDisplayInGrid:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    goto :goto_d

    :cond_b
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_d
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    return-void
.end method


# virtual methods
.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DockViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ttoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->toState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tcurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->currentState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisRecentsViewPortrait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isRecentsViewPortrait()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisActivityPortrait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isActivityPortrait()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tALPHA_INDEX_TASK_DISPLAY_MODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tALPHA_INDEX_LAUNCHER_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tALPHA_INDEX_MULTI_WINDOW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tALPHA_INDEX_ORIENTATION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tALPHA_INDEX_TASK_LAUNCH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tALPHA_INDEX_PAGE_OFFSET: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final endDockViewStateChangeAnimator()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    const-string v0, "DockViewController"

    const-string v1, "endDockViewStateChangeAnimator"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_1a
    return-void
.end method

.method public final getLastEnterParam()Lcom/oplus/quickstep/dock/DockViewController$EnterParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->lastEnterParam:Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    return-object p0
.end method

.method public final getOrientationAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const-string v0, "alphaValues.getProperty(ALPHA_INDEX_ORIENTATION)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPageOffsetAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const-string v0, "alphaValues.getProperty(ALPHA_INDEX_PAGE_OFFSET)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTaskLaunchAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const-string v0, "alphaValues.getProperty(ALPHA_INDEX_TASK_LAUNCH)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;
    .registers 16

    const-string v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->toState:Lcom/android/launcher3/states/OPlusBaseState;

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->toState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/dock/DockViewController;->isEnter(Lcom/android/launcher3/states/OPlusBaseState;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isDockIconAndClearAllPanelLightAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result p2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->isEnter(Lcom/android/launcher3/states/OPlusBaseState;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dock/DockView;->isActivityPortrait()Z

    move-result v3

    iget-object v4, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v4}, Lcom/oplus/quickstep/dock/DockView;->isRecentsViewPortrait()Z

    move-result v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v5, ", isLightAnim: "

    const-string v6, ", isActivityPortrait: "

    const-string v7, ", isRecentsViewPortrait: "

    const-string v8, "gotoState "

    const-string v9, "DockViewController"

    if-eqz v0, :cond_bb

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    const/4 v11, 0x1

    if-eqz v10, :cond_4d

    const-string v10, "STATE_CHANGE_WITH_ANIM"

    invoke-static {v10, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    if-nez v1, :cond_4d

    move v0, v11

    :cond_4d
    if-eqz v1, :cond_58

    const-string v10, "applyLoadPlan"

    invoke-static {v10, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    goto :goto_59

    :cond_58
    move v11, v0

    :goto_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " same return, reason: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", currentState: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oplus/quickstep/dock/DockViewController;->currentState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", stateChangeAnimator isRunning: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    if-eqz v10, :cond_94

    invoke-virtual {v10}, Landroid/animation/Animator;->isRunning()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_95

    :cond_94
    move-object v10, v2

    :goto_95
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", startAnimAgain: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_bb

    if-nez v1, :cond_ba

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getTaskLaunchAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_ba
    return-object v2

    :cond_bb
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    const-string v2, ", reason: "

    if-eqz v0, :cond_106

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v10

    if-nez v10, :cond_cd

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v10

    if-eqz v10, :cond_106

    :cond_cd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " cancel old "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_106
    invoke-direct {p0, v1, p2, p3}, Lcom/oplus/quickstep/dock/DockViewController;->createDockViewStateChangeAnimator(ZZLjava/lang/String;)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_114

    new-instance v0, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;

    invoke-direct {v0, p1, p3, v1, p0}, Lcom/oplus/quickstep/dock/DockViewController$gotoState$2$1;-><init>(Lcom/android/launcher3/states/OPlusBaseState;Ljava/lang/String;ZLcom/oplus/quickstep/dock/DockViewController;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_114
    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", create "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    return-object p0

    :cond_14b
    return-object v2
.end method

.method public final init()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dockView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->onFoldStateChangeCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/common/util/FoldStateMonitor;->addCallback(Ljava/util/function/Consumer;)V

    :cond_1e
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/dock/DockViewController;->updateOnTaskDisplayModeChange(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isLauncherInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockViewController;->updateOnLauncherMultiWindowChange(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isRecentsViewPortrait()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getOrientationAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    if-eqz v0, :cond_3d

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockViewAlpha:F

    const/4 v0, 0x0

    :goto_4a
    const/4 v1, 0x6

    if-ge v0, v1, :cond_5e

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/pip/f;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/f;-><init>(Lcom/oplus/quickstep/dock/DockViewController;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_5e
    return-void
.end method

.method public final isDockViewEnterRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->stateChangeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-ne v0, v1, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    if-eqz v0, :cond_2f

    :cond_20
    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->toState:Lcom/android/launcher3/states/OPlusBaseState;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/dock/DockViewController;->isEnter(Lcom/android/launcher3/states/OPlusBaseState;)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1
.end method

.method public final onDestroy()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->dockView:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dockView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->onFoldStateChangeCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/common/util/FoldStateMonitor;->removeCallback(Ljava/util/function/Consumer;)V

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final onRecentsViewOrientationChange(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecentsViewOrientationChange isPortrait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockViewController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockViewController;->getOrientationAlphaProperty()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    if-eqz p1, :cond_1f

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    return-void
.end method

.method public final updateOnLauncherMultiWindowChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/dock/DockViewController;->isLauncherInMultiWindow:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/oplus/quickstep/dock/DockViewController;->isLauncherInMultiWindow:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    goto :goto_d

    :cond_b
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_d
    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController;->alphaValues:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    return-void
.end method
