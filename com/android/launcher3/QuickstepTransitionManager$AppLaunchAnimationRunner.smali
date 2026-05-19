.class Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;
.super Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppLaunchAnimationRunner"
.end annotation


# instance fields
.field private mCancelRequest:Z

.field private final mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

.field private mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

.field private final mV:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/launcher3/util/RunnableList;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;-><init>()V

    new-instance p1, Lcom/android/systemui/shared/system/AppTransitionParam;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;-><init>(Z)V

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mCancelRequest:Z

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method

.method public static synthetic a(Landroid/animation/AnimatorSet;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->lambda$onCreateAnimation$0(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->requestCancel()V

    return-void
.end method

.method private static synthetic lambda$onCreateAnimation$0(Landroid/animation/AnimatorSet;)V
    .registers 1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private requestCancel()V
    .registers 3

    const-string v0, "QuickstepTransition"

    const-string/jumbo v1, "requestCancel"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mCancelRequest:Z

    return-void
.end method


# virtual methods
.method public appLaunchAnimStartOrEnd(Z[Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->supportInterruption()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->appLaunchAnimStartOrEnd(ZLcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public getAppTransitionParams(Z)Lcom/android/systemui/shared/system/AppTransitionParam;
    .registers 8

    const-string v0, "getAppTransitionParams: interrupt = "

    const-string v1, ", transitionBySpringAnim = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->openAnimWithSpring(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", openingProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->getOpeningWindowProgress()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", needInterceptIconSurface = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/AppTransitionParam;->getNeedInterceptIconSurface()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFromRecent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromRecent()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFromFolder = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromFolder()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickstepTransition"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_6f

    const-string p0, "launchingFromWidget not support interrupt"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_6f
    if-eqz p1, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mAppTransitionHelper:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->openAnimWithSpring(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_d2

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->getOpeningWindowProgress()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromRecent()Z

    move-result p1

    if-nez p1, :cond_d2

    iget-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->hasParent(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_d2

    const-string p1, "Init params for opening interrupt"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v2, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    const/4 v4, 0x1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3, v4, p1, v5}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v3, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/shared/system/AppTransitionParam;->initForOpeningInterrupt(Landroid/graphics/RectF;I)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->updateCurrentRectF(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->updateOpeningWindowAnimProgress(F)V

    :cond_d2
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    return-object p0
.end method

.method public handleAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->supportInterruption()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->onRemoteAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z

    move-result p0

    return p0
.end method

.method public onAnimationCancelled()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v4, p2

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/4 v10, 0x1

    invoke-virtual {v1, v4, v10}, Lcom/android/launcher3/QuickstepTransitionManager;->launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    move v12, v11

    goto :goto_22

    :cond_21
    :goto_21
    move v12, v10

    :goto_22
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/QuickstepTransitionManager;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v13

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/QuickstepTransitionManager;->isLaunchingFromFolder(Landroid/view/View;)Z

    move-result v1

    if-eqz v2, :cond_72

    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-object v2, v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->access$500(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    goto :goto_6a

    :cond_59
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v2, v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v12

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/QuickstepTransitionManager;->composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    :goto_6a
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/16 v2, 0x1b

    invoke-static {v1, v9, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->access$600(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    goto :goto_b2

    :cond_72
    if-eqz v13, :cond_94

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-virtual {v1, v10}, Lcom/android/systemui/shared/system/AppTransitionParam;->setFromRecent(Z)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v2, v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/4 v2, 0x7

    invoke-static {v1, v9, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->access$600(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    goto :goto_b2

    :cond_94
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mTransitionParam:Lcom/android/systemui/shared/system/AppTransitionParam;

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/system/AppTransitionParam;->setFromFolder(Z)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v2, v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v12

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/QuickstepTransitionManager;->composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/16 v2, 0x8

    invoke-static {v1, v9, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->access$600(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    move v10, v11

    :goto_b2
    if-eqz v12, :cond_bb

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_bb
    invoke-virtual {p0, v9, v13}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->onAnimationCreated(Landroid/animation/Animator;Z)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->sendStartDurationEvent(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_da

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart()Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-virtual {v1, v11}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setWaitTaskAnimationStart(Z)V

    :cond_da
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/r0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/r0;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    move-object/from16 v2, p5

    invoke-virtual {v2, v9, v1, v3, v10}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    iget-boolean v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mCancelRequest:Z

    if-eqz v1, :cond_104

    const-string v1, "QuickstepTransition"

    const-string v2, "Cancel as has request before"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/c3;

    invoke-direct {v1, v9, v11}, Lcom/android/launcher3/c3;-><init>(Landroid/animation/AnimatorSet;I)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_104
    return-void
.end method

.method public supportInterruption()Z
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    instance-of p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public tryFinishOpenRemote(Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->supportInterruption()Z

    move-result p0

    if-nez p0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_c
    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->tryFinishOpenRemote(Ljava/lang/Runnable;)V

    return-void
.end method
