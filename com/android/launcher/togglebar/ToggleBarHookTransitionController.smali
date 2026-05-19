.class public final Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nToggleBarHookTransitionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleBarHookTransitionController.kt\ncom/android/launcher/togglebar/ToggleBarHookTransitionController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,234:1\n1855#2,2:235\n*S KotlinDebug\n*F\n+ 1 ToggleBarHookTransitionController.kt\ncom/android/launcher/togglebar/ToggleBarHookTransitionController\n*L\n180#1:235,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

.field private static final DELAY_HOTSEAT_ALPHA:I = 0x32

.field public static final INVALID_DURATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "CustomTransitionController"


# instance fields
.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

.field private mScaleTarget:Lcom/android/launcher3/anim/ScaleTarget;

.field private mToggleBarRootView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v0

    const-string v1, "mLauncher.toggleBarManager.toggleBarContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mToggleBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object v0

    const-string v1, "mLauncher.pagePreviewManager.pagePreviewLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    new-instance v0, Lcom/android/launcher3/anim/ScaleTarget;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    const-string v3, "mLauncher.hotseat"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    const-string v3, "mLauncher.workspace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    const-string v3, "mLauncher.workspace.pageIndicator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/ScaleTarget;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mScaleTarget:Lcom/android/launcher3/anim/ScaleTarget;

    invoke-static {p1}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->setPivotForToggleBarState(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty$lambda$2(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty$lambda$0(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    return-void
.end method

.method public static final hookScaleHotseat(Lcom/android/launcher3/LauncherState;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScaleHotseat(Lcom/android/launcher3/LauncherState;)Z

    move-result p0

    return p0
.end method

.method public static final hookScalePageIndicator(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScalePageIndicator(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result p0

    return p0
.end method

.method public static final hookScaleWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScaleWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result p0

    return p0
.end method

.method public static final hookTranslateYPagePreview(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookTranslateYPagePreview(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result p0

    return p0
.end method

.method private final setTransitionProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    instance-of v2, v1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    const-string v3, "CustomTransitionController"

    if-nez v2, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t support the state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    iget-object v2, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTransitionProperty, toState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", last state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", propertySetter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v4

    and-int/lit16 v5, v4, 0x100

    const/4 v7, 0x0

    if-eqz v5, :cond_69

    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_6a

    :cond_69
    move v5, v7

    :goto_6a
    and-int/lit16 v8, v4, 0x200

    if-eqz v8, :cond_71

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_72

    :cond_71
    move v8, v7

    :goto_72
    iget-object v10, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v10

    invoke-virtual {v10, v5, v8}, Lcom/android/launcher/togglebar/ToggleBarManager;->toolbarAnimation(FF)Landroid/animation/AnimatorSet;

    move-result-object v10

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {v11}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getDelayForOpsBtn()I

    move-result v12

    sget-object v13, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v14, :cond_98

    sget-object v14, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    move v14, v15

    goto :goto_9a

    :cond_98
    move/from16 v14, v16

    :goto_9a
    if-eqz v10, :cond_db

    iget-object v6, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v6, :cond_bc

    cmpg-float v5, v5, v7

    if-nez v5, :cond_ac

    move v5, v15

    goto :goto_ae

    :cond_ac
    move/from16 v5, v16

    :goto_ae
    if-eqz v5, :cond_bc

    cmpg-float v5, v8, v7

    if-nez v5, :cond_b6

    move v5, v15

    goto :goto_b8

    :cond_b6
    move/from16 v5, v16

    :goto_b8
    if-eqz v5, :cond_bc

    move v5, v15

    goto :goto_be

    :cond_bc
    move/from16 v5, v16

    :goto_be
    if-nez v14, :cond_c5

    if-eqz v5, :cond_c3

    goto :goto_c5

    :cond_c3
    int-to-long v5, v12

    goto :goto_c7

    :cond_c5
    :goto_c5
    const-wide/16 v5, 0x0

    :goto_c7
    invoke-virtual {v10, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    instance-of v5, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v5, :cond_d5

    move-object v5, v9

    check-cast v5, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {v5, v10}, Lcom/android/launcher3/anim/PendingAnimation;->addWithoutDuration(Landroid/animation/Animator;)V

    goto :goto_db

    :cond_d5
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->end()V

    :cond_db
    :goto_db
    iget-object v5, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11b

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11b

    instance-of v6, v5, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz v6, :cond_11b

    check-cast v5, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-virtual {v5}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    move-result-object v5

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    new-instance v8, Landroidx/core/content/res/d;

    invoke-direct {v8, v0, v3}, Landroidx/core/content/res/d;-><init>(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->animationForDestroyMainUI(ZLjava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_14a

    instance-of v5, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v5, :cond_117

    move-object v5, v9

    check-cast v5, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/anim/PendingAnimation;->addWithoutDuration(Landroid/animation/Animator;)V

    goto :goto_14a

    :cond_117
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_14a

    :cond_11b
    sget-object v6, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object v8, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mToggleBarRootView:Landroid/view/View;

    sget-object v12, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v3, v3, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    sget-object v13, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v8, v12, v3, v13}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    if-nez v5, :cond_14a

    if-eqz v10, :cond_14a

    instance-of v3, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-nez v3, :cond_14a

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->getListeners()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_14a

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v10}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_13a

    :cond_14a
    :goto_14a
    invoke-virtual {v11}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getLauncherRootViewBgAlpha()I

    move-result v3

    iget-object v5, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.OplusLauncherRootView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {v5}, Lcom/android/launcher3/OplusLauncherRootView;->getBackgroundRender()Lcom/android/launcher3/RootViewBackgroundRenderer;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/RootViewBackgroundRenderer;->Companion:Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;

    invoke-virtual {v6}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;->getBACKGROUND_ALPHA()Landroid/util/IntProperty;

    move-result-object v6

    sget-object v8, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    invoke-interface {v9, v5, v6, v3, v8}, Lcom/android/launcher3/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)V

    sget-object v10, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v10, v1, v9}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScaleWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result v3

    if-eqz v3, :cond_19b

    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19b

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.anim.PendingAnimation"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v9

    check-cast v3, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v5, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v6, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mScaleTarget:Lcom/android/launcher3/anim/ScaleTarget;

    invoke-static {v5, v6}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->workspaceStateTransitionForToggleBar(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/anim/ScaleTarget;)Landroid/animation/AnimatorSet;

    move-result-object v5

    const-wide/16 v12, 0x226

    invoke-virtual {v3, v5, v12, v13}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;J)V

    :cond_19b
    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_1a2

    const/high16 v6, 0x3f800000  # 1.0f

    goto :goto_1a3

    :cond_1a2
    move v6, v7

    :goto_1a3
    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    if-eqz v3, :cond_1ad

    move v4, v7

    goto :goto_1ae

    :cond_1ad
    move v4, v6

    :goto_1ae
    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    sget-object v12, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c1

    sget-object v3, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_HOTSEAT:Landroid/view/animation/PathInterpolator;

    goto :goto_1c9

    :cond_1c1
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c9

    sget-object v3, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_TOGGLE_BAR:Landroid/view/animation/PathInterpolator;

    :cond_1c9
    :goto_1c9
    move-object v5, v3

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    const/16 v3, 0x32

    move v6, v3

    goto :goto_1d6

    :cond_1d4
    move/from16 v6, v16

    :goto_1d6
    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    if-ne v2, v12, :cond_1e1

    const-wide/16 v7, 0x15e

    goto :goto_1e3

    :cond_1e1
    const-wide/16 v7, -0x1

    :goto_1e3
    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;IJ)V

    invoke-virtual {v10, v1, v9}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookTranslateYPagePreview(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result v2

    if-eqz v2, :cond_226

    iget-object v2, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v11, v2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v2

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_212

    instance-of v3, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v3, :cond_212

    move-object v1, v9

    check-cast v1, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    new-instance v4, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v4, v0, v2}, Landroidx/constraintlayout/motion/widget/c;-><init>(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->destroyUIAnimation(Ljava/lang/Runnable;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x8c

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;J)V

    goto :goto_226

    :cond_212
    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_226

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object v0, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v2, v2, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    const/4 v4, 0x0

    invoke-interface {v1, v0, v3, v2, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_226
    :goto_226
    return-void
.end method

.method private static final setTransitionProperty$lambda$0(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mToggleBarRootView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget p1, p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, p1, v2}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private static final setTransitionProperty$lambda$2(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget p1, p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x0

    goto :goto_20

    :cond_1e
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_20
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 7

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->toolbarAnimation(FF)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_27
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.OplusLauncherRootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherRootView;->getBackgroundRender()Lcom/android/launcher3/RootViewBackgroundRenderer;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/RootViewBackgroundRenderer;->Companion:Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;

    invoke-virtual {v2}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;->getBACKGROUND_ALPHA()Landroid/util/IntProperty;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/launcher3/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)V

    :cond_47
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    const-string v1, "NO_ANIM_PROPERTY_SETTER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v1}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 5

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-direct {p0, p1, p3, p2}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
