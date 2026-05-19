.class final Lcom/android/quickstep/AppToOverviewAnimationProvider;
.super Lcom/android/quickstep/util/OplusRemoteAnimationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "*>;>",
        "Lcom/android/quickstep/util/OplusRemoteAnimationProvider;"
    }
.end annotation


# static fields
.field private static final GRID_RECENTS_LAUNCH_DURATION:J = 0x12cL

.field private static final PROGRESS_LOWER:F = 0.0f

.field private static final PROGRESS_UPPER:F = 0.8f

.field private static final RECENTS_LAUNCH_DURATION:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "AppToOverviewAnimationProvider"


# instance fields
.field private mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private final mSplitIds:[I

.field private final mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/quickstep/util/OplusRemoteAnimationProvider;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    sget-object p2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p2}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mSplitIds:[I

    new-instance p2, Lcom/android/quickstep/RemoteTargetGluer;

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {p2, p1, v0}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iput-object p3, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/BaseActivityInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$onActivityReady$0(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/TransformParams;ZLcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$4(Lcom/android/quickstep/util/TransformParams;ZLcom/android/quickstep/util/TaskViewSimulator;)V

    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$1()V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$3(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/AnimatedFloat;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$2(Lcom/android/quickstep/AnimatedFloat;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static getRecentsLaunchDuration()J
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x12c

    return-wide v0

    :cond_9
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method private static synthetic lambda$createWindowAnimation$1()V
    .registers 0

    return-void
.end method

.method private static synthetic lambda$createWindowAnimation$2(Lcom/android/quickstep/AnimatedFloat;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    return-void
.end method

.method private static synthetic lambda$createWindowAnimation$3(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 3

    invoke-virtual {p2}, Lcom/android/quickstep/util/TransformParams;->getProgress()F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    return-void
.end method

.method private static synthetic lambda$createWindowAnimation$4(Lcom/android/quickstep/util/TransformParams;ZLcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 5

    const-string v0, "createWindowAnimation: progress = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {v1, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; isDefaultHome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppToOverviewAnimationProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method private static synthetic lambda$onActivityReady$0(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v7, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v2, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v3, "AppToOverviewAnimationProvider"

    if-nez v2, :cond_1d

    const-string v0, "Animation created, before activity"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v2, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/quickstep/views/RecentsView;->setTaskIconScaledDown(Z)V

    new-instance v2, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;

    invoke-direct {v2, v0, v1}, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;-><init>(Lcom/android/quickstep/AppToOverviewAnimationProvider;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v7, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v2

    instance-of v4, v2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    if-eqz v4, :cond_40

    check-cast v2, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4, v5, v7, v6}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V

    :cond_40
    new-instance v9, Lcom/android/quickstep/RemoteAnimationTargets;

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-direct {v9, v1, v2, v4, v8}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    iget-object v1, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iget-object v2, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mSplitIds:[I

    invoke-virtual {v1, v9, v2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;[I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v10

    if-eqz v10, :cond_142

    array-length v1, v10

    if-ge v1, v8, :cond_58

    goto/16 :goto_142

    :cond_58
    invoke-virtual {v9}, Lcom/android/quickstep/RemoteAnimationTargets;->isAnimatingHome()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_62

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_6b

    :cond_62
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const v2, 0x3f4ccccd  # 0.8f

    invoke-static {v1, v11, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_6b
    move-object v12, v1

    array-length v13, v10

    const/4 v14, 0x0

    move v15, v14

    :goto_6f
    if-ge v15, v13, :cond_135

    aget-object v1, v10, v15

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-virtual {v6, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->setIsGridTask(Z)V

    :cond_80
    iget-object v2, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v2, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v2

    iget-object v3, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    :cond_b7
    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v5

    new-instance v1, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v2, v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    new-instance v2, Lcom/android/quickstep/AnimatedFloat;

    sget-object v1, Lcom/android/quickstep/y;->a:Lcom/android/quickstep/y;

    invoke-direct {v2, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/quickstep/v;

    invoke-direct {v1, v2}, Lcom/android/quickstep/v;-><init>(Lcom/android/quickstep/AnimatedFloat;)V

    invoke-virtual {v5, v1}, Lcom/android/quickstep/util/TransformParams;->setBaseBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    invoke-static {}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object v1

    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/OverviewComponentObserver;->isDefaultHome()Z

    move-result v1

    if-eqz v1, :cond_ea

    move v4, v8

    goto :goto_eb

    :cond_ea
    move v4, v14

    :goto_eb
    invoke-virtual {v9}, Lcom/android/quickstep/RemoteAnimationTargets;->isAnimatingHome()Z

    move-result v1

    if-eqz v1, :cond_114

    sget-object v1, Lcom/android/quickstep/w;->a:Lcom/android/quickstep/w;

    invoke-virtual {v5, v1}, Lcom/android/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    sget-object v3, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    if-eqz v4, :cond_ff

    const/high16 v1, 0x3f800000  # 1.0f

    move/from16 v16, v1

    goto :goto_101

    :cond_ff
    move/from16 v16, v11

    :goto_101
    const/high16 v17, 0x3f800000  # 1.0f

    sget-object v18, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v1, v7

    move v8, v4

    move/from16 v4, v16

    move-object/from16 p1, v5

    move/from16 v5, v17

    move-object v11, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    goto :goto_118

    :cond_114
    move v8, v4

    move-object/from16 p1, v5

    move-object v11, v6

    :goto_118
    sget-object v3, Lcom/android/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v11, v7, v12, v14}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;Z)V

    new-instance v1, Lcom/android/quickstep/x;

    invoke-direct {v1, v2, v8, v11}, Lcom/android/quickstep/x;-><init>(Lcom/android/quickstep/util/TransformParams;ZLcom/android/quickstep/util/TaskViewSimulator;)V

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_6f

    :cond_135
    new-instance v1, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;

    invoke-direct {v1, v0, v9}, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;-><init>(Lcom/android/quickstep/AppToOverviewAnimationProvider;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :cond_142
    :goto_142
    const-string v0, "No closing app"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public makeDividerHidden([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 9

    if-eqz p1, :cond_44

    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_44

    :cond_6
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v2, v1, :cond_29

    aget-object v4, p1, v2

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v6, 0x7f2

    if-ne v4, v6, :cond_26

    if-eqz v5, :cond_26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_30

    :cond_41
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_44
    :goto_44
    return-void
.end method

.method public onActivityReady(Lcom/android/launcher3/statemanager/StatefulActivity;Ljava/lang/Boolean;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "AppToOverviewAnimationProvider"

    const-string p1, "activity is null, do nothing"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    sget-object v1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->showCurrentTask([Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-object v1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-object v4, Lcom/android/quickstep/z;->a:Lcom/android/quickstep/z;

    invoke-virtual {v1, v3, p2, v4}, Lcom/android/quickstep/BaseActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    move-result-object p2

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-interface {p2, v1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->adjustTransYPropertyState(Z)V

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->createActivityInterface(J)V

    invoke-interface {p2, v2, v0}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p1, p1, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_65

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    goto :goto_67

    :cond_65
    sget-object p1, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    :goto_67
    invoke-static {p1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_78

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_7d

    :cond_78
    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    :cond_7d
    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string/jumbo p1, "onActivityReady"

    invoke-virtual {p0, v2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    return v0
.end method

.method public setActivityInterface(Lcom/android/quickstep/BaseActivityInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-void
.end method
