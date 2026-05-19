.class public final Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;
.super Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<",
        "Lcom/android/quickstep/views/LauncherRecentsView;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRecentsViewStateControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRecentsViewStateControllerImpl.kt\ncom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,542:1\n1#2:543\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;

.field private static final MIN_RECENT_DIFF:F = 0.01f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusRecentsViewStateController"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mIsInRecents:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->Companion:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->addDockViewStateChangeAnim$lambda$9$lambda$8(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/launcher3/BaseQuickstepLauncher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsView$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/quickstep/views/RecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public static final synthetic access$resetRencentScroll(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->resetRencentScroll(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private final addDockViewStateChangeAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;[F)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_19

    move v3, v5

    goto :goto_1a

    :cond_19
    move v3, v4

    :goto_1a
    if-nez v3, :cond_7a

    if-nez v2, :cond_1f

    goto :goto_7a

    :cond_1f
    iget-boolean v2, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    goto :goto_32

    :cond_2f
    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    :goto_32
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    aget p4, p4, v5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    new-instance p4, Lcom/android/common/util/m;

    invoke-direct {p4, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)V

    invoke-virtual {p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    goto :goto_6d

    :cond_4a
    sget-object v0, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    aget p4, p4, v5

    const/4 v2, 0x7

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p3, v1, v0, p4, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    sget-object p4, Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;

    invoke-virtual {p0, p4}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    new-instance p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewStateChangeAnim$1$3;

    invoke-direct {p0, v1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewStateChangeAnim$1$3;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_6d
    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    const/4 v5, 0x0

    const-string v8, "STATE_CHANGE_WITH_ANIM"

    move-object v2, p1

    move-object v6, p3

    move-object v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    return-void

    :cond_7a
    :goto_7a
    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    iget-object p3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p3, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p3

    if-eqz p3, :cond_8a

    invoke-virtual {p3, p1}, Lcom/oplus/quickstep/dock/DockView;->updateLastState(Lcom/android/launcher3/LauncherState;)V

    :cond_8a
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    sget-object p3, Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;

    invoke-virtual {p0, p3}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addDockViewStateChangeAnim isRunningPendingAnimation: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isCurrentSupport: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "OplusRecentsViewStateController"

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    move-result-object p0

    if-eqz p0, :cond_c9

    const-string p3, "STATE_CHANGE_WITH_ANIM"

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_c9

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_c9
    return-void
.end method

.method private static final addDockViewStateChangeAnim$lambda$9$lambda$8(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Ljava/lang/Boolean;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setStateWithAnimationInternal$lambda$6$lambda$5(Lcom/android/quickstep/views/LauncherRecentsView;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[FLjava/lang/Boolean;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setStateWithAnimationInternal$lambda$4(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[FLjava/lang/Boolean;)V

    return-void
.end method

.method private final enterRecents(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateUseAbsoluteScrollX(Z)V

    :cond_1a
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    iget-boolean v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mIsInRecents:Z

    if-ne v0, p1, :cond_21

    return-void

    :cond_21
    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mIsInRecents:Z

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4a

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    new-instance v0, Lcom/android/common/util/n;

    invoke-direct {v0, p1}, Lcom/android/common/util/n;-><init>(Lcom/android/statistics/LauncherStatistics;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    goto :goto_51

    :cond_4a
    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statLaunch()V

    :goto_51
    return-void
.end method

.method private final ignoreUpdateState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Z
    .registers 6

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    move p1, v1

    goto :goto_13

    :cond_12
    move p1, v2

    :goto_13
    sget-object p2, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p2, v0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Landroid/util/MathUtils;->abs(F)F

    move-result p2

    const v0, 0x3c23d70a  # 0.01f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_35

    move p2, v1

    goto :goto_36

    :cond_35
    move p2, v2

    :goto_36
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p0, v0, :cond_42

    move p0, v1

    goto :goto_43

    :cond_42
    move p0, v2

    :goto_43
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    if-eqz p0, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    return v1
.end method

.method private final resetRencentScroll(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentAnimateDragging()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_7a

    :cond_1f
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    :cond_3f
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    :cond_50
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_6c

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setIgnoreLoadTaskListWhenRest(Z)V

    :cond_6c
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->reset()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setHasReset(Z)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private static final setStateWithAnimationInternal$lambda$4(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[FLjava/lang/Boolean;)V
    .registers 5

    const-string/jumbo p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p4, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 p1, 0x1

    if-eqz p2, :cond_1a

    aget p1, p3, p1

    neg-float p1, p1

    goto :goto_1c

    :cond_1a
    aget p1, p3, p1

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_1f
    return-void
.end method

.method private static final setStateWithAnimationInternal$lambda$6$lambda$5(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    return-void
.end method

.method private final startWallpaperAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 9

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getForceNotScaleWallpaperByLaunchTask()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWallpaperAnimation: fromState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", toState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", forceNotExecuteRecentExit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusRecentsViewStateController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "app_recent_exit"

    const-string v3, "app_recent_enter"

    const/4 v4, 0x0

    if-nez v1, :cond_6c

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_91

    :cond_52
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_91

    sget-object p2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    if-nez v0, :cond_91

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_91

    :cond_6c
    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_80

    if-nez v0, :cond_80

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_91

    :cond_80
    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_91
    :goto_91
    return-void
.end method

.method private final updateSystemUiState(Lcom/android/launcher3/LauncherState;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    if-nez v0, :cond_f

    return-void

    :cond_f
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v4, v5, :cond_2c

    move v4, v2

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    iget-boolean v6, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v6, :cond_4d

    :cond_39
    sget-object v6, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v6}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v6

    if-eqz v6, :cond_43

    if-nez v1, :cond_4d

    :cond_43
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    if-eqz v4, :cond_6f

    :cond_4d
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_56

    check-cast p1, Lcom/android/launcher/Launcher;

    goto :goto_57

    :cond_56
    const/4 p1, 0x0

    :goto_57
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object p1

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isStatusBarWpBright()Z

    move-result p1

    goto :goto_65

    :cond_64
    move p1, v3

    :goto_65
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_b6

    :cond_6f
    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_ac

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_8d

    move p1, v2

    goto :goto_8e

    :cond_8d
    move p1, v3

    :goto_8e
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const v1, 0x7f0604fd

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/common/util/ColorUtils;->isColorDark(I)Z

    move-result v0

    if-nez v0, :cond_a1

    if-nez p1, :cond_a1

    move p1, v2

    goto :goto_a2

    :cond_a1
    move p1, v3

    :goto_a2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_b6

    :cond_ac
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v3

    :goto_b6
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p1

    if-eq p1, v3, :cond_cd

    if-eqz v4, :cond_cd

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_cd
    return-void
.end method


# virtual methods
.method public getContentAlphaProperty()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;>;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method public getTaskModalnessProperty()Landroid/util/FloatProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;>;"
        }
    .end annotation

    sget-object p0, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    const-string v0, "TASK_MODALNESS"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 17

    move-object v0, p0

    move-object/from16 v9, p1

    const-string/jumbo v1, "state"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->updateSystemUiState(Lcom/android/launcher3/LauncherState;)V

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9, v1}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/LauncherState;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v3, "OplusRecentsViewStateController"

    const-string v4, "QuickStep"

    if-eqz v2, :cond_62

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setState(), to="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", from="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", scaleAndOffset="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isRecentInTransition="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v5, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string v5, "fromState"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v10, v9}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onEnterOverviewByStateChange(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2, v10, v9}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onExitRecentsViewByStateChanged(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    invoke-direct {p0, v10, v9}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->resetRencentScroll(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-direct {p0, v10, v9}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->ignoreUpdateState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v0, "ignoreUpdateState"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_86
    sget-object v11, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    aget v4, v1, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v13, 0x1

    aget v1, v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    new-instance v14, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v14}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightEnterRecentsAnimation()Z

    move-result v1

    if-eqz v1, :cond_ba

    iget v1, v14, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v14, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    :cond_ba
    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    if-eqz v1, :cond_101

    iget-boolean v2, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v2, :cond_d5

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v2

    sget-object v3, Lcom/oplus/quickstep/relay/data/RelayState$ExitRecentImmediately;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ExitRecentImmediately;

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    :cond_d5
    invoke-static {v14}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v2

    if-eqz v2, :cond_de

    sget-object v2, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    goto :goto_df

    :cond_de
    const/4 v2, 0x0

    :goto_df
    move-object v6, v2

    const/4 v3, 0x1

    const/high16 v4, 0x40400000  # 3.0f

    const/4 v5, 0x0

    const-string v8, "STATE_CHANGE"

    move-object/from16 v2, p1

    move-object v7, v14

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    :cond_101
    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-direct {p0, v9, v10}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->startWallpaperAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-virtual {v1, v13}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLogLoadVisibleTaskData(Z)V

    :cond_113
    invoke-virtual {v1, v9, v13, v14}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v4

    iget-boolean v5, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v5, :cond_129

    move v5, v6

    goto :goto_12a

    :cond_129
    move v5, v3

    :goto_12a
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_158

    sget-object v2, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9, v5}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_158
    iget-boolean v2, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const-string/jumbo v4, "this"

    if-eqz v2, :cond_1d8

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->openCpu()V

    :cond_171
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_183

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1f7

    :cond_183
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v2

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    aget v2, v2, v12

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getTaskModalnessProperty()Landroid/util/FloatProperty;

    move-result-object v2

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherState;->getOverviewModalness()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    invoke-interface {v9, v5}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v5

    if-eqz v5, :cond_1c3

    move v3, v6

    :cond_1c3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v2, :cond_1f7

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v2

    if-eqz v2, :cond_1f7

    invoke-virtual {v2}, Lcom/android/launcher3/QuickstepTransitionManager;->cancelContentViewAnim()V

    goto :goto_1f7

    :cond_1d8
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v12, v2}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V

    const-string/jumbo v2, "setState"

    invoke-virtual {v1, v12, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeCpu()V

    :cond_1f7
    :goto_1f7
    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils;->Companion:Lcom/android/common/util/OplusLauncherAnimUtils$Companion;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo v4, "mLauncher"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/common/util/OplusLauncherAnimUtils$Companion;->areAnimatorsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_20f

    iget-boolean v2, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const-string/jumbo v3, "setState#AnimatorsDisabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    :cond_20f
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->enterRecents(Lcom/android/launcher3/LauncherState;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setFullscreenProgress(F)V

    iget-boolean v0, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    xor-int/2addr v0, v13

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isAlreadyHintLockUpgrade()Z

    move-result v0

    if-nez v0, :cond_240

    sget-object v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;->Companion:Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;->isLockUpgradeHintShowing()Z

    move-result v0

    if-nez v0, :cond_240

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_240

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->currentPageTaskViewCanShowLockUpgradeHint()Z

    move-result v0

    if-eqz v0, :cond_240

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showLockUpgradeHintAtCurTaskView()V

    :cond_240
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 20

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    const-string/jumbo v2, "toState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "config"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "setter"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->updateSystemUiState(Lcom/android/launcher3/LauncherState;)V

    iget-object v2, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_30

    move v4, v7

    goto :goto_31

    :cond_30
    move v4, v8

    :goto_31
    iget-object v5, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-boolean v9, v5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v9, :cond_41

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v5, :cond_41

    move v5, v7

    goto :goto_42

    :cond_41
    move v5, v8

    :goto_42
    if-eqz v5, :cond_4e

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v5, v7

    goto :goto_4f

    :cond_4e
    move v5, v8

    :goto_4f
    iget-object v9, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v9, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v9

    if-ne v9, v7, :cond_5b

    move v9, v7

    goto :goto_5c

    :cond_5b
    move v9, v8

    :goto_5c
    iget-object v10, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/LauncherState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setStateWithAnimationInternal(), toState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", from="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", scaleAndOffset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", isNoButton="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", willRotate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isRtl="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "QuickStep"

    const-string v13, "OplusRecentsViewStateController"

    invoke-static {v12, v13, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v11, v8}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    const/16 v12, 0x9

    const/4 v14, 0x0

    if-eqz v5, :cond_d7

    iget-object v5, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v7

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v1, :cond_c4

    const/high16 v13, 0x3f800000  # 1.0f

    goto :goto_c5

    :cond_c4
    move v13, v14

    :goto_c5
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v12, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v5, v7, v13, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/quickstep/uioverrides/a;

    invoke-direct {v0, v3, v4, v9, v2}, Lcom/android/quickstep/uioverrides/a;-><init>(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[F)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    :cond_d7
    iget-object v4, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v5, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    const-string/jumbo v9, "mLauncher.stateManager.currentStableState"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/LauncherState;

    invoke-static {v4, v5, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onExitRecentsViewByStateChanged(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRotateAnim()V

    const-string v5, "fromState"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1, v10}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->startWallpaperAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    aget v9, v2, v8

    const/4 v10, 0x6

    sget-object v15, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10, v15}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v6, v4, v5, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v5

    const-string/jumbo v9, "this"

    if-eqz v5, :cond_11b

    aget v5, v2, v7

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4, v1, v6}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->transXForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V

    goto :goto_129

    :cond_11b
    sget-object v5, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    aget v10, v2, v7

    const/4 v7, 0x7

    sget-object v13, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7, v13}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v10, v7}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :goto_129
    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/16 v7, 0x8

    invoke-virtual {v0, v7, v15}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v14, v7}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-boolean v5, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v5, :cond_13b

    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_13c

    :cond_13b
    move v5, v14

    :goto_13c
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v7

    if-eqz v7, :cond_149

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4, v6}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->alphaForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PropertySetter;)V

    goto :goto_156

    :cond_149
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v7

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v12, v10}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v6, v4, v7, v5, v10}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :goto_156
    const-string/jumbo v5, "scaleAndOffset"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1, v0, v6, v2}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->addDockViewStateChangeAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;[F)V

    invoke-virtual {v4, v1, v8, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    iget-boolean v2, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v2, :cond_183

    iget-object v2, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_177

    iget-object v2, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v2, v8}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    :cond_177
    new-instance v2, Lcom/android/launcher3/model/b1;

    invoke-direct {v2, v4}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRemoveAllViewsTask()V

    goto :goto_18e

    :cond_183
    iget-object v2, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v8, v2}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :goto_18e
    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19d

    iget-boolean v2, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v2, :cond_19b

    goto :goto_19d

    :cond_19b
    move v7, v8

    goto :goto_19e

    :cond_19d
    :goto_19d
    const/4 v7, 0x1

    :goto_19e
    invoke-virtual {v4, v7}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v5

    invoke-virtual {v6, v4, v2, v5, v15}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v2, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo v5, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v2

    sget-object v5, Lcom/android/launcher3/graphics/OplusOverviewScrim;->Companion:Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;->getScrimProgressWithChannel(I)Landroid/util/FloatProperty;

    move-result-object v5

    iget-object v7, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v7

    const/16 v8, 0xb

    invoke-virtual {v0, v8, v15}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v2, v5, v7, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1de

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1fc

    :cond_1de
    iget-object v0, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    if-eqz v0, :cond_1f1

    const/high16 v13, 0x3f800000  # 1.0f

    goto :goto_1f2

    :cond_1f1
    move v13, v14

    :goto_1f2
    if-eqz v0, :cond_1f7

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->GESTURE_TO_RECNETS:Landroid/view/animation/Interpolator;

    goto :goto_1f9

    :cond_1f7
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_1f9
    invoke-virtual {v6, v4, v2, v13, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_1fc
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->enterRecents(Lcom/android/launcher3/LauncherState;)V

    iget-object v0, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v5

    iget-object v0, v3, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/LauncherState;

    new-instance v8, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p0

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;-><init>(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {v6, v8}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
