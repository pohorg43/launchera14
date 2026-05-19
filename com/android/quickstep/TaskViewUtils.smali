.class public final Lcom/android/quickstep/TaskViewUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskViewUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/quickstep/TaskViewUtils;->lambda$createRecentsWindowAnimator$1([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/views/GroupedTaskView;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskViewUtils;->setPhoneManagerViewTranslationY(Lcom/android/quickstep/views/GroupedTaskView;I)V

    return-void
.end method

.method private static animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V
    .registers 3

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_12
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/TaskViewUtils;->lambda$createSplitAuxiliarySurfacesAnimator$3(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Runnable;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;ZLcom/android/quickstep/views/TaskView;Lcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/TaskViewUtils;->lambda$createRecentsWindowAnimator$0(Ljava/lang/Runnable;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;ZLcom/android/quickstep/views/TaskView;Lcom/android/quickstep/util/TaskViewSimulator;)V

    return-void
.end method

.method public static composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V
    .registers 25
    .param p0  # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/statemanager/StateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lcom/android/quickstep/views/RecentsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    xor-int/lit8 v5, v2, 0x1

    move-object/from16 v8, p2

    invoke-static {v4, v1, v8}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    if-nez v6, :cond_1b

    instance-of v7, v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v7, :cond_1b

    move-object v6, v1

    check-cast v6, Lcom/android/quickstep/views/TaskView;

    :cond_1b
    move-object v13, v6

    new-instance v14, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v6, 0x150

    invoke-direct {v14, v6, v7}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    sget-boolean v6, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_3a

    instance-of v6, v13, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v6, :cond_3a

    if-nez v5, :cond_38

    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_38

    :cond_36
    move v7, v15

    goto :goto_3b

    :cond_38
    :goto_38
    move v7, v12

    goto :goto_3b

    :cond_3a
    move v7, v5

    :goto_3b
    const-string v5, "composeRecentsLaunchAnimator: skipLauncherChanges: "

    const-string v6, ", launcherClosing: "

    const-string v9, "TaskViewUtils"

    invoke-static {v5, v7, v6, v2, v9}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object v6, v13

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p8

    move v5, v12

    move-object v12, v14

    invoke-static/range {v6 .. v12}, Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V

    if-eqz v2, :cond_59

    move-object/from16 v6, p4

    invoke-static {v6, v14}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesWithoutAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/PendingAnimation;)V

    :cond_59
    const/4 v6, 0x0

    if-eqz v2, :cond_a9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    if-nez v4, :cond_6b

    return-void

    :cond_6b
    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v2, :cond_7b

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_76

    goto :goto_7b

    :cond_76
    invoke-virtual {v4, v13}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v2

    goto :goto_86

    :cond_7b
    :goto_7b
    sget-object v2, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v7, v5, [F

    const/4 v8, 0x0

    aput v8, v7, v15

    invoke-static {v4, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_86
    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_99

    const-string v1, "b/223498680"

    const-string v7, "TVU composeRecentsLaunchAnimator alpha=0"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$10;

    invoke-direct {v1, v4}, Lcom/android/quickstep/TaskViewUtils$10;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_99
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x150

    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$11;

    invoke-direct {v1, v4, v14, v3}, Lcom/android/quickstep/TaskViewUtils$11;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/launcher3/statemanager/StateManager;)V

    goto :goto_c6

    :cond_a9
    const-wide/16 v1, 0x150

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v6, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$12;

    invoke-direct {v1, v14, v4, v3}, Lcom/android/quickstep/TaskViewUtils$12;-><init>(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V

    move-object v6, v7

    :goto_c6
    invoke-virtual {v14, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-virtual/range {p7 .. p7}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_e0

    new-instance v2, Lcom/android/quickstep/y0;

    invoke-direct {v2, v4}, Lcom/android/quickstep/y0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v14, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_e0
    invoke-virtual {v14}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v6, v2, v15

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static composeRecentsSplitLaunchAnimator(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 22
    .param p1  # Lcom/android/launcher3/statemanager/StateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    move/from16 v0, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v9, p6

    move-object/from16 v4, p7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_4d

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Lcom/android/quickstep/TaskViewUtils$5;

    invoke-direct {v0, p0, v4}, Lcom/android/quickstep/TaskViewUtils$5;-><init>(Lcom/android/quickstep/views/GroupedTaskView;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v3, v9, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-static {v3, v6, v9, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-static {v3, v5, v9, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v7

    invoke-static {v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v4

    invoke-static {v2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v5

    invoke-static {v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v6

    const/4 v8, 0x1

    move-object v0, v10

    move-object v1, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v8

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-static/range {v0 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4d
    move-object v1, v7

    :goto_4e
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_b9

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-nez v10, :cond_69

    goto :goto_b6

    :cond_69
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v10, v0, :cond_77

    if-ne v10, v2, :cond_92

    :cond_77
    if-eq v11, v6, :cond_92

    const/4 v12, 0x3

    if-eq v11, v12, :cond_92

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected task to be showing, but it is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "TaskViewUtils"

    invoke-static {v12, v11}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    if-ne v10, v0, :cond_a4

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-nez v7, :cond_9c

    move-object v7, v8

    goto :goto_a4

    :cond_9c
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v7

    :cond_a4
    :goto_a4
    if-ne v10, v2, :cond_b6

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_ad

    goto :goto_b5

    :cond_ad
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v8

    :goto_b5
    move-object v1, v8

    :cond_b6
    :goto_b6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_b9
    invoke-static {v9, v7}, Lcom/android/quickstep/TaskViewUtils;->animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    invoke-static {v9, v1}, Lcom/android/quickstep/TaskViewUtils;->animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_de

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x172

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$6;

    invoke-direct {v1, v4}, Lcom/android/quickstep/TaskViewUtils$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_de
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static composeRecentsSplitLaunchAnimatorLegacy(Lcom/android/quickstep/views/GroupedTaskView;II[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Ljava/lang/Runnable;)V
    .registers 24
    .param p0  # Lcom/android/quickstep/views/GroupedTaskView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lcom/android/launcher3/statemanager/StateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "QuickStep"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_20

    const-string v3, "composeRecentsSplitLaunchAnimatorLegacy: is launchingTaskView null "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p0, :cond_1a

    move v7, v6

    goto :goto_1b

    :cond_1a
    move v7, v5

    :goto_1b
    const-string v8, "TaskViewUtils"

    invoke-static {v3, v7, v4, v8}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz p0, :cond_4d

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v7

    new-instance v3, Lcom/android/quickstep/TaskViewUtils$7;

    invoke-direct {v3, v2}, Lcom/android/quickstep/TaskViewUtils$7;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static/range {p3 .. p3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v0

    move v9, v5

    :goto_59
    if-ge v9, v8, :cond_8d

    aget-object v10, v0, v9

    iget-object v11, v10, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v11, :cond_64

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_65

    :cond_64
    const/4 v11, -0x1

    :goto_65
    iget v12, v10, Landroid/view/RemoteAnimationTarget;->mode:I

    iget-object v10, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-nez v10, :cond_6c

    goto :goto_71

    :cond_6c
    if-nez v12, :cond_76

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_71
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_8a

    :cond_76
    move/from16 v13, p1

    move/from16 v14, p2

    if-eq v11, v13, :cond_85

    if-ne v11, v14, :cond_7f

    goto :goto_85

    :cond_7f
    if-ne v12, v6, :cond_8a

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_85
    :goto_85
    const-string v10, "Expected task to be opening, but it is close"

    invoke-static {v4, v10}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    :cond_8d
    :goto_8d
    array-length v0, v1

    if-ge v5, v0, :cond_a4

    aget-object v0, v1, v5

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    aget-object v4, v1, v5

    iget v4, v4, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v6, 0x7f2

    if-ne v4, v6, :cond_a1

    if-eqz v0, :cond_a1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    :cond_a4
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_c0

    goto :goto_ad

    :cond_c0
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v4, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ad

    :cond_ca
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_e4

    goto :goto_d1

    :cond_e4
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d1

    :cond_e8
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_104

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x172

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$8;

    invoke-direct {v1, v2}, Lcom/android/quickstep/TaskViewUtils$8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_104
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 36
    .param p0  # Lcom/android/quickstep/views/TaskView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v12

    const-string v13, "QuickStep"

    if-nez v12, :cond_18

    const-string v0, "TaskViewUtils"

    const-string v1, "createRecentsWindowAnimator recentsView is null"

    invoke-static {v13, v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isEndQuickswitchCuj()Z

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/android/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    new-instance v7, Lcom/android/quickstep/RemoteAnimationTargets;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, v9, v0, v1, v15}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v6

    new-instance v5, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v5, v8}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v7, v5}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_43

    if-eqz v0, :cond_43

    goto :goto_90

    :cond_43
    new-instance v0, Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2, v7}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;[I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    array-length v1, v0

    if-le v1, v4, :cond_90

    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    if-eqz v1, :cond_90

    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setWindowPositionOffset(Z)V

    array-length v1, v0

    move v2, v15

    :goto_74
    if-ge v2, v1, :cond_90

    aget-object v3, v0, v2

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v16

    if-nez v16, :cond_81

    goto :goto_8b

    :cond_81
    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->forceUseSplitScreenWindowCornerRadius()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    invoke-virtual {v0, v7}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargets(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    :cond_90
    :goto_90
    move-object v3, v0

    array-length v0, v3

    move v1, v15

    :goto_93
    if-ge v1, v0, :cond_a1

    aget-object v2, v3, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_a1
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v4, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v4, :cond_bf

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_bc

    goto :goto_bf

    :cond_bc
    move/from16 v16, v15

    goto :goto_c1

    :cond_bf
    :goto_bf
    const/16 v16, 0x1

    :goto_c1
    invoke-virtual {v12}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    instance-of v15, v12, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v15, :cond_d6

    move-object v15, v12

    check-cast v15, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v15}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result v15

    if-eqz v15, :cond_d6

    invoke-virtual {v12}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v4

    :cond_d6
    if-eq v2, v4, :cond_dc

    if-nez v16, :cond_dc

    const/4 v15, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v15, 0x0

    :goto_dd
    if-eqz v16, :cond_e4

    invoke-static {v2, v12, v8}, Lcom/android/quickstep/TaskViewUtils;->getGridTaskPrimaryTranslation(ILcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)I

    move-result v4

    goto :goto_e8

    :cond_e4
    invoke-virtual {v12, v2}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v4

    :goto_e8
    move/from16 p4, v2

    if-eqz v16, :cond_f2

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getGridTranslationY()F

    move-result v2

    float-to-int v2, v2

    goto :goto_f3

    :cond_f2
    const/4 v2, 0x0

    :goto_f3
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v18

    if-nez v18, :cond_156

    array-length v10, v3

    move-object/from16 v19, v5

    const/4 v5, 0x0

    :goto_ff
    if-ge v5, v10, :cond_158

    aget-object v20, v3, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v20}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    move-object/from16 v20, v1

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    iget-object v0, v6, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v0, v6, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isGridTask()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->setIsGridTask(Z)V

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/i2;->a:Lcom/android/quickstep/i2;

    invoke-interface {v0, v6, v1, v4, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/n2;->b:Lcom/android/launcher3/n2;

    invoke-interface {v0, v6, v1, v4, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v20

    move-object/from16 v6, v21

    move-object/from16 v0, v22

    goto :goto_ff

    :cond_156
    move-object/from16 v19, v5

    :cond_158
    move-object/from16 v21, v6

    array-length v10, v3

    move-object/from16 v6, v17

    const/4 v5, 0x0

    :goto_15e
    if-ge v5, v10, :cond_1f5

    aget-object v0, v3, v5

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    iget-object v0, v6, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    sget-object v1, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move/from16 v17, v10

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual {v11, v0, v1, v10, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v0, v6, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v10

    invoke-virtual {v11, v0, v1, v10, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v0, v6, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    const/4 v10, 0x0

    invoke-virtual {v11, v0, v1, v10, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->needSkipApplySimulator()Z

    move-result v10

    new-instance v20, Lcom/android/quickstep/TaskViewUtils$1;

    move-object/from16 v0, v20

    move-object v1, v12

    move/from16 v23, p4

    move/from16 v22, v2

    move-object/from16 v2, p0

    move-object v4, v3

    move/from16 v3, v16

    move-object/from16 p4, v4

    const/16 v24, 0x1

    move-object v4, v6

    move-object/from16 v8, v19

    move/from16 v19, v5

    move/from16 v5, v23

    move-object/from16 p3, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v6

    move/from16 v6, v22

    move-object v9, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/quickstep/TaskViewUtils$1;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/util/TaskViewSimulator;IILcom/android/launcher3/anim/PendingAnimation;)V

    new-instance v6, Lcom/android/quickstep/k0;

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move v3, v10

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/k0;-><init>(Ljava/lang/Runnable;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;ZLcom/android/quickstep/views/TaskView;Lcom/android/quickstep/util/TaskViewSimulator;)V

    invoke-virtual {v11, v6}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    if-eqz v8, :cond_1d3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$2;

    move-object/from16 v2, p4

    invoke-direct {v1, v2, v8, v0}, Lcom/android/quickstep/TaskViewUtils$2;-><init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1e0

    :cond_1d3
    move-object/from16 v2, p4

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getRecentsAnimationController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1e0

    const-wide/16 v3, 0x150

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/RecentsAnimationController;->animateNavigationBarToApp(J)V

    :cond_1e0
    :goto_1e0
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v19, p3

    move-object v3, v2

    move-object v6, v3

    move-object/from16 v21, v8

    move-object v7, v9

    move/from16 v10, v17

    move/from16 v2, v22

    move/from16 p4, v23

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    goto/16 :goto_15e

    :cond_1f5
    move-object v9, v7

    move-object/from16 p3, v19

    const/16 v24, 0x1

    if-nez p1, :cond_2e0

    if-eqz v15, :cond_2e0

    if-eqz v6, :cond_2e0

    array-length v0, v6

    if-lez v0, :cond_2e0

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v1, 0x3e4ccccd  # 0.2f

    const v5, 0x3ecccccd  # 0.4f

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    array-length v0, v6

    const/4 v1, 0x0

    :goto_21d
    if-ge v1, v0, :cond_22f

    aget-object v2, v6, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21d

    :cond_22f
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    array-length v1, v6

    new-array v1, v1, [Landroid/graphics/Matrix;

    array-length v2, v6

    new-array v2, v2, [Landroid/graphics/Matrix;

    array-length v3, v0

    array-length v4, v6

    array-length v5, v0

    if-ge v4, v5, :cond_244

    array-length v3, v6

    const-string v4, "There is a problem with the number of TaskTargets,To avoid array out of Index exception!!"

    invoke-static {v13, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_244
    const/4 v4, 0x0

    :goto_245
    if-ge v4, v3, :cond_29f

    aget-object v5, v0, v4

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/4 v12, 0x0

    invoke-direct {v7, v12, v12, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v10, 0x0

    aput v12, v8, v10

    aput v12, v8, v24

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/4 v15, 0x2

    aput v13, v8, v15

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/16 v16, 0x3

    aput v13, v8, v16

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-static {v5, v13, v8, v10}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    new-instance v5, Landroid/graphics/RectF;

    aget v13, v8, v10

    aget v10, v8, v24

    aget v15, v8, v15

    aget v8, v8, v16

    invoke-direct {v5, v13, v10, v15, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v8, v7, v5, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    aput-object v8, v1, v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_245

    :cond_29f
    array-length v3, v6

    new-array v3, v3, [Landroid/graphics/Matrix;

    const/4 v15, 0x0

    :goto_2a3
    array-length v4, v6

    if-ge v15, v4, :cond_2bf

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    aput-object v4, v3, v15

    aget-object v4, v6, v15

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    aget-object v5, v3, v15

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_2a3

    :cond_2bf
    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Lcom/android/launcher3/model/s0;

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v2

    move-object/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Lcom/android/launcher3/model/s0;-><init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v11, v4}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$3;

    invoke-direct {v1, v0}, Lcom/android/quickstep/TaskViewUtils$3;-><init>([Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v11, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2e0
    new-instance v0, Lcom/android/quickstep/TaskViewUtils$4;

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object v2, v9

    invoke-direct {v0, v14, v2, v3, v1}, Lcom/android/quickstep/TaskViewUtils$4;-><init>(ZLcom/android/quickstep/RemoteAnimationTargets;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v11, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    if-eqz v1, :cond_301

    check-cast v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    new-instance v2, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v2}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V

    :cond_301
    return-void
.end method

.method public static createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Landroid/animation/ValueAnimator;",
            ">;)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_56

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_56

    :cond_7
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    array-length v5, p0

    if-ge v3, v5, :cond_30

    aget-object v5, p0, v3

    iget-object v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget v5, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v7, 0x7f2

    if-ne v5, v7, :cond_2d

    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_30
    if-nez v4, :cond_33

    return-object v0

    :cond_33
    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_58

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/iconrender/impl/e;

    invoke-direct {v0, v2, v1, p1}, Lcom/android/launcher3/iconrender/impl/e;-><init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/quickstep/TaskViewUtils$13;

    invoke-direct {v0, p1, v2, v1}, Lcom/android/quickstep/TaskViewUtils$13;-><init>(ZLjava/util/List;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0

    :cond_56
    :goto_56
    return-object v0

    nop

    :array_58
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static createSplitAuxiliarySurfacesWithoutAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 10

    if-eqz p0, :cond_3a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_3a

    :cond_6
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v3, v2, :cond_2f

    aget-object v5, p0, v3

    iget-object v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget v5, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v7, 0x7f2

    if-ne v5, v7, :cond_2c

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2f
    if-nez v4, :cond_32

    return-void

    :cond_32
    new-instance p0, Lcom/android/quickstep/TaskViewUtils$14;

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/TaskViewUtils$14;-><init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;
    .registers 9

    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    return-object p1

    :cond_7
    instance-of v0, p1, Lcom/oplus/quickstep/dock/DockIconView;

    if-eqz v0, :cond_1d

    move-object v0, p1

    check-cast v0, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockIconView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-eqz v0, :cond_69

    move v2, v1

    :goto_39
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    if-ge v2, v3, :cond_69

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne p1, v4, :cond_66

    return-object v3

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_69
    const/4 p1, 0x0

    if-nez p2, :cond_6d

    return-object p1

    :cond_6d
    array-length v0, p2

    :goto_6e
    const/4 v2, -0x1

    if-ge v1, v0, :cond_7d

    aget-object v3, p2, v1

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_7a

    iget p2, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_7e

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7d
    move p2, v2

    :goto_7e
    if-ne p2, v2, :cond_81

    return-object p1

    :cond_81
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    if-eqz p2, :cond_8f

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto :goto_8f

    :cond_8e
    return-object p2

    :cond_8f
    :goto_8f
    return-object p1
.end method

.method private static getGridTaskPrimaryTranslation(ILcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v0

    if-nez p0, :cond_8

    return v0

    :cond_8
    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result p1

    add-int/2addr p1, p2

    mul-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method private static synthetic lambda$composeRecentsSplitLaunchAnimatorLegacy$2(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_18
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$createRecentsWindowAnimator$0(Ljava/lang/Runnable;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;ZLcom/android/quickstep/views/TaskView;Lcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 8

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    array-length p0, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_22

    aget-object v1, p1, v0

    if-eqz p2, :cond_14

    iget-object v2, p3, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v2, p4}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isProgressAlmostEnd(Lcom/android/quickstep/util/TaskViewSimulator;)Z

    move-result v2

    if-nez v2, :cond_14

    return-void

    :cond_14
    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private static synthetic lambda$createRecentsWindowAnimator$1([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_34

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :try_start_9
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v1, p4, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v1

    const-string v2, "QuickStep"

    const-string v3, "TaskViewUtils"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    array-length v1, p5

    if-ge v0, v1, :cond_31

    aget-object v1, p5, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_34
    return-void
.end method

.method private static synthetic lambda$createSplitAuxiliarySurfacesAnimator$3(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_8

    :cond_1b
    if-eqz p2, :cond_1f

    move v1, p3

    goto :goto_22

    :cond_1f
    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p3

    :goto_22
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_26
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public static setDividerShown([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 12

    const-string/jumbo v0, "setDividerShown--START: show="

    const-string v1, "QuickStep"

    const-string v2, "TaskViewUtils"

    invoke-static {v0, p1, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_91

    array-length v0, p0

    if-nez v0, :cond_11

    goto/16 :goto_91

    :cond_11
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    :goto_1f
    if-ge v5, v4, :cond_3a

    aget-object v7, p0, v5

    iget-object v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget v7, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v9, 0x7f2

    if-ne v7, v9, :cond_37

    if-eqz v8, :cond_37

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_3a
    if-nez v6, :cond_43

    const-string/jumbo p0, "there is not any surface to animate"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    if-eqz p1, :cond_65

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_49

    :cond_5c
    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_49

    :cond_65
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_69
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_7c

    goto :goto_69

    :cond_7c
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_69

    :cond_84
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    const-string/jumbo p0, "setDividerShown--END"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_91
    :goto_91
    const-string/jumbo p0, "setDividerShown: nonApps is empty"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setPhoneManagerViewTranslationY(Lcom/android/quickstep/views/GroupedTaskView;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getOplusCleanStorageFrameLayout()Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    move-result-object p0

    if-eqz p0, :cond_18

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    :cond_18
    return-void
.end method
