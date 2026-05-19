.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

.field public final synthetic $forceInvisibleRecentsView:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic $homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $transformParams:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/util/TransformParams;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "TT;TQ;TS;>;",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
            "Lcom/android/quickstep/util/TransformParams;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$forceInvisibleRecentsView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->onAnimationSuccess$lambda$0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private static final onAnimationSuccess$lambda$0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    :cond_e
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onEnd()V

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isReverse()Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v1, "targets"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForResetTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParamsImmediately(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_28
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_37

    :cond_36
    move-object p1, v1

    :goto_37
    if-eqz p1, :cond_3c

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    :cond_3c
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getAppTransitionManager$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object p1

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object p1

    if-eqz p1, :cond_4d

    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setSwipeToHomeAnimation(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    :cond_4d
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getAppTransitionManager$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setOnContentChangeListener(Ljava/lang/Runnable;)V

    :cond_5e
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onStart()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/launcher/UiConfig;->isAmber()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object v0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    long-to-int p1, v1

    goto :goto_21

    :cond_1f
    const/16 p1, 0x1f4

    :goto_21
    const/16 v1, 0x7530

    invoke-virtual {v0, p1, v1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(II)V

    :cond_26
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate(ZLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$forceInvisibleRecentsView:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    if-nez p1, :cond_46

    goto :goto_4a

    :cond_46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->runDeferredRemoveCallback()V

    :cond_6a
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isViewSupportAsync()Z

    move-result p1

    if-nez p1, :cond_87

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$transformParams:Lcom/android/quickstep/util/TransformParams;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v0, "targets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p0, v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParamsImmediately(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_87
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$resolveHomeAnimEnd(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$homeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    new-instance v1, Lcom/oplus/quickstep/gesture/d;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/oplus/quickstep/gesture/d;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_23
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$maybeUpdateRecentsAttachedState(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMActivityInterface$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->this$0:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->access$getMDeviceState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/quickstep/BaseActivityInterface;->onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    sget-object p1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->$anim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget p0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float p0, p0, v1

    if-nez p0, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    if-eqz v0, :cond_62

    if-eqz p1, :cond_62

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/guide/DrawerGuideManager;->showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    :cond_62
    return-void
.end method
