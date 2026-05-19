.class public final Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;
.super Lcom/android/launcher3/taskbar/StashedHandleViewController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$Companion;

.field public static final DOWN_TRANSLATE_Y_DURATION:J = 0x190L

.field private static final FLAGS_ALL:I = -0x1

.field private static final FLAGS_HIDE:I = 0x7

.field private static final FLAG_HIDE_IN_NAV_BUTTON:I = 0x1

.field private static final FLAG_HIDE_IN_SMALL_SCREEN:I = 0x4

.field private static final FLAG_HIDE_IN_SWITCH_OFF:I = 0x2

.field public static final SHARED_PREFS_STASHED_KEY:Ljava/lang/String; = "taskbar_is_stashed"

.field private static final TAG:Ljava/lang/String; = "OplusStashedHandleViewController"

.field private static final TRANSLATE_Y_DURATION:J = 0x12cL

.field public static final UP_TRANSLATE_Y:F = -15.0f

.field public static final UP_TRANSLATE_Y_DURATION:J = 0xc8L


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mBgDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

.field private final mHandleViewTransYAnim:Lcom/android/quickstep/AnimatedFloat;

.field private final mHandleViewTransYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

.field private mHandleViewVisibility:I

.field private mIsBgDark:Z

.field private mIsEndDownAnim:Z

.field private mIsTranslateYAniming:Z

.field private mPrevState:I

.field private final mStashedHandleTranslateY$delegate:Lh4/f;

.field private final mStashedHandlerHiddenListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarTransYAnimForHandleView:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarTranslateY$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->Companion:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stashedHandleView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V

    new-instance p1, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mStashedHandleTranslateY$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mStashedHandleTranslateY$2;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mStashedHandleTranslateY$delegate:Lh4/f;

    new-instance p1, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mTaskbarTranslateY$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mTaskbarTranslateY$2;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mTaskbarTranslateY$delegate:Lh4/f;

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/model/b1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-direct {p1, p2}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYAnim:Lcom/android/quickstep/AnimatedFloat;

    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/model/c1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-direct {p1, p2}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mPrevState:I

    new-instance p1, Landroidx/core/location/a;

    invoke-direct {p1, p0}, Landroidx/core/location/a;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    new-instance p1, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mBgDarkChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$mBgDarkChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mBgDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    return-void
.end method

.method public static final synthetic access$getMIsBgDark$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsBgDark:Z

    return p0
.end method

.method public static final synthetic access$getMIsEndDownAnim$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsEndDownAnim:Z

    return p0
.end method

.method public static final synthetic access$getMStashedHandleView$p$s-1743425996(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    return-object p0
.end method

.method public static final synthetic access$getMTaskbarStashedHandleAlpha$p$s-1743425996(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)Lcom/android/launcher3/util/MultiValueAlpha;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public static final synthetic access$setMIsBgDark$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsBgDark:Z

    return-void
.end method

.method public static final synthetic access$setMIsTranslateYAniming$p(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsTranslateYAniming:Z

    return-void
.end method

.method public static final synthetic access$updateHandleViewBg(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateHandleViewBg(ZZ)V

    return-void
.end method

.method private final applyState(JZ)Landroid/animation/Animator;
    .registers 7

    iget v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mPrevState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v2, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    if-eq v0, v2, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_c
    if-ne v0, v1, :cond_f

    goto :goto_12

    :cond_f
    iget v1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    xor-int/2addr v1, v0

    :goto_12
    iget v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    iput v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mPrevState:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onStateChange(IJZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Ljava/lang/Float;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->init$lambda$3(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mStashedHandlerHiddenListener$lambda$2(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYAnim$lambda$0(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYForEnableChange$lambda$1(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    return-void
.end method

.method private final getMStashedHandleTranslateY()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mStashedHandleTranslateY$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMTaskbarTranslateY()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mTaskbarTranslateY$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final init$lambda$3(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Ljava/lang/Float;)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewVisibility:I

    if-eq p1, v0, :cond_15

    iput p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewVisibility:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onHandleViewVisibilityChange(I)V

    :cond_15
    return-void
.end method

.method private static final mHandleViewTransYAnim$lambda$0(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateTransY()V

    return-void
.end method

.method private static final mHandleViewTransYForEnableChange$lambda$1(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateTransY()V

    return-void
.end method

.method private static final mStashedHandlerHiddenListener$lambda$2(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isStashedHandlerHidden"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onHandleViewVisibilitySwitchChange(Z)V

    return-void
.end method

.method private final onHandleViewVisibilityChange(I)V
    .registers 6

    const-string/jumbo v0, "onHandleViewVisibilityChange visible: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    move p1, v1

    goto :goto_e

    :cond_d
    move p1, v2

    :goto_e
    const-string v3, "OplusStashedHandleViewController"

    invoke-static {v0, p1, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p1

    if-nez p1, :cond_46

    :cond_2e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result p1

    if-ne p1, v1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    if-eqz v1, :cond_46

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string/jumbo p1, "onHandleViewVisibilityChange"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private final onHandleViewVisibilitySwitchChange(Z)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateStateForFlag(IZ)V

    const-wide/16 v0, 0x12c

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->applyState(JZ)Landroid/animation/Animator;

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p1

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p1

    if-ne p1, v2, :cond_26

    goto :goto_27

    :cond_26
    move v2, v0

    :goto_27
    if-eqz v2, :cond_3c

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p1, :cond_34

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    :cond_34
    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string/jumbo p1, "onHandleViewVisibilitySwitchChange"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method private final onStateChange(IJZ)Landroid/animation/Animator;
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->isStashViewInHiddenState()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChange isHide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", changedFlags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OplusStashedHandleViewController"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz v1, :cond_4a

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->getMStashedHandleTranslateY()I

    move-result v2

    int-to-float v2, v2

    goto :goto_4b

    :cond_4a
    move v2, p1

    :goto_4b
    iget-object v3, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYAnim:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYAnim:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v3}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object v3, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYAnim:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_61
    iget-object v2, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mTaskbarTransYAnimForHandleView:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v2, :cond_7f

    if-eqz v1, :cond_69

    move v3, p1

    goto :goto_6f

    :cond_69
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->getMTaskbarTranslateY()I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    :goto_6f
    invoke-virtual {v2, v3}, Lcom/android/quickstep/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v4

    if-nez v4, :cond_7f

    invoke-virtual {v2}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7f
    iget-object v2, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

    if-eqz v2, :cond_94

    if-nez v1, :cond_8b

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_BACKGROUND_TRANSPARENT_ONLY_BUTTON_NAV()Z

    move-result v3

    if-eqz v3, :cond_8d

    :cond_8b
    const/high16 p1, 0x3f800000  # 1.0f

    :cond_8d
    invoke-virtual {v2, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_94
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;

    invoke-direct {p1, v1, p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$onStateChange$3;-><init>(ZLcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_a9

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_a9
    return-object v0
.end method

.method private final updateHandleViewBg(ZZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V

    return-void
.end method

.method private final updateStateForFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    or-int/2addr p1, p2

    goto :goto_a

    :cond_6
    iget p2, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_a
    iput p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    return-void
.end method

.method private final updateTransY()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYAnim:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final createHandleViewTransYAnim(ZFF)Landroid/animation/Animator;
    .registers 5

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {p1, p2, p3, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->createTaskbarTransYAnimForEnableChange(ZFFLcom/android/quickstep/AnimatedFloat;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroidx/exifinterface/media/a;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Animators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmHandleViewTransYAnim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYAnim:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const-string v2, "\tmHandleViewTransYForEnableChange:"

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getMHandleViewTransYForEnableChange()Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewTransYForEnableChange:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 7

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->getTaskbarBgHeightOffsetForHandleView()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mTaskbarBgHeightOffsetForHandleView:Lcom/android/quickstep/AnimatedFloat;

    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconTranslationYForStashHandle()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mTaskbarTransYAnimForHandleView:Lcom/android/quickstep/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mHandleViewVisibility:I

    const/4 p1, 0x0

    move v0, p1

    :goto_24
    const/4 v1, 0x3

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/guide/side/e;

    invoke-direct {v2, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_38
    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateStateForFlag(IZ)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateStateForFlag(IZ)V

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateStateForFlag(IZ)V

    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->applyState(JZ)Landroid/animation/Animator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->addStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "taskbar_region_is_dark"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsBgDark:Z

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateHandleViewBg(ZZ)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mBgDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->addNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object p1

    const-string v0, "mActivity.taskbarProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onTaskbarProfileChange(Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    return-void
.end method

.method public final isStashViewInHiddenState()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onDestroy()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->removeStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mBgDarkChangeListener:Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->removeNavbarDarkChangeListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    const/4 v0, 0x0

    :goto_13
    const/4 v1, 0x3

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setConsumer(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_23
    return-void
.end method

.method public onIsStashedChanged(Z)V
    .registers 4

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p0

    const-string p1, "mActivity.taskbarView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewGuidHelper;->showStashedHandleViewGuideIfNecessary(Landroid/view/View;)V

    :cond_2f
    return-void
.end method

.method public final onTaskbarProfileChange(Lcom/android/launcher3/taskbar/TaskbarProfile;)V
    .registers 4

    const-string/jumbo v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->updateStateForFlag(IZ)V

    const-wide/16 v0, 0x0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->applyState(JZ)Landroid/animation/Animator;

    return-void
.end method

.method public final resetTranslateYHandlerViewAnim()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$resetTranslateYHandlerViewAnim$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$resetTranslateYHandlerViewAnim$1;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->HANDLE_RESET_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final startUpstashHandleView(Z)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mState:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsTranslateYAniming:Z

    if-nez p1, :cond_21

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsEndDownAnim:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->translateYHandlerViewAnim()V

    goto :goto_21

    :cond_14
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsTranslateYAniming:Z

    if-nez p1, :cond_1e

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsEndDownAnim:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->resetTranslateYHandlerViewAnim()V

    goto :goto_21

    :cond_1e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->mIsEndDownAnim:Z

    :cond_21
    :goto_21
    return-void
.end method

.method public final translateYHandlerViewAnim()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, -0x3e900000  # -15.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController$translateYHandlerViewAnim$1;-><init>(Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
