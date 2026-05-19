.class public final Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HomeAnimation"
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MS:[I

.field private static final CLOSE_ICON_ALPHA_THRESHOLD:F = 0.9f

.field private static final CLOSE_WINDOW_START_CLIP:F = 0.0f

.field private static final CLOSE_WINDOW_STOP_CLIP:F = 0.55f

.field public static final INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->ANIMATION_DURATION_MS:[I

    return-void

    :array_10
    .array-data 4
        0x168
        0x1f4
        0x258
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 22

    invoke-static/range {p0 .. p21}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->getMenuClosingWindowAnimators$lambda$2(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private static final addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;Landroid/animation/AnimatorSet;IJ)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p4, p5}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance p4, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {p4}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    const/16 p5, 0xd

    sget-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    aget-object v2, v1, p3

    invoke-virtual {p4, p5, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    move-object p5, p0

    check-cast p5, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p5

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_2d

    if-ne p1, v2, :cond_2a

    goto :goto_2d

    :cond_2a
    aget-object p0, v1, p3

    goto :goto_2f

    :cond_2d
    :goto_2d
    sget-object p0, Lcom/android/launcher3/states/OplusSpringLoadedState;->LOAD_TRANSLATE_PATH:Landroid/view/animation/Interpolator;

    :goto_2f
    invoke-virtual {p5, p1, p4, v0, p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private static final addTaskViewAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;Landroid/animation/AnimatorSet;IJ)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    move-object v0, p0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p1, p0}, Lcom/android/launcher3/states/OPlusBaseState;->getLauncherTaskViewAlpha(Lcom/android/launcher3/Launcher;)F

    move-result p0

    sget-object p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->Companion:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;->getTASK_VIEW_ALPHA()Landroid/util/FloatProperty;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p0, v1, v2

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    aget-object p3, v1, p3

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation$addTaskViewAnimationForState$1;

    invoke-direct {p3, v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation$addTaskViewAnimationForState$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;F)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public static final createWindowAnimationToTaskViewAnimation(Lcom/android/launcher3/Launcher;)Landroid/animation/AnimatorSet;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TaskView"

    const-string v1, "TaskViewAnimationUtil"

    const-string v2, "createWindowAnimationToTaskViewAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getScroller()Lcom/android/launcher3/util/OverScroller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/OverScroller;->forceFinished(Z)V

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->ANIMATION_DURATION_MS:[I

    aget v2, v2, v1

    int-to-long v9, v2

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-string v11, "NORMAL"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, v2

    move-object v5, v0

    move v6, v1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->addTaskViewAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;Landroid/animation/AnimatorSet;IJ)V

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v3 .. v8}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;Landroid/animation/AnimatorSet;IJ)V

    return-object v0
.end method

.method public static final getMenuClosingWindowAnimators(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;
    .registers 31
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const-string v1, "launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appTargets"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->shouldAnimateToRemoteViewPosition(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    invoke-static {v0, v4, v2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->getLightWindowAnimation(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getRemoteAnimationViewInfo()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    if-nez v1, :cond_2f

    invoke-static {v0, v4, v2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$LightAnimation;->getLightWindowAnimation(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_2f
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewLocation()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getWindowBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/RectF;

    move-result-object v7

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v13, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v5, ", targetBounds = "

    const-string v6, "TaskViewAnimationUtil"

    const-string v8, "TaskView"

    if-eqz v3, :cond_77

    const-string v3, "getClosingWindowAnimators: closingPkg = "

    const-string v9, ", startBounds = "

    invoke-static {v3, v15, v9}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0701d4

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v3, v11

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v20

    mul-float v20, v20, v3

    div-float v20, v20, v17

    sget-object v3, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {v3, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v3

    int-to-float v3, v3

    new-instance v21, Landroid/graphics/RectF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    move/from16 v22, v3

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v23, v11

    sget-object v11, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v11, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v11}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v25, v13

    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getRotation()I

    move-result v13

    move-object/from16 v24, v15

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getClosingAppTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v15

    move-object/from16 v26, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v12

    move-object/from16 v27, v9

    const-string v9, "launcher.getOverviewPanel()"

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/android/quickstep/views/RecentsView;

    new-instance v9, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v12

    invoke-direct {v9, v0, v12}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    if-eqz v15, :cond_10d

    invoke-virtual {v9, v15}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_10d
    invoke-virtual {v9, v11, v11}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    invoke-virtual {v9, v4}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v9}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v12

    const-string v15, "tsv.orientationState.orientationHandler"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v11, v12}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getPagedOrientationHandler(IILcom/android/launcher3/touch/PagedOrientationHandler;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v3, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float/2addr v9, v12

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v12, v9

    sub-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getClosingAppsLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_16b

    new-instance v9, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v9}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v13, 0x1

    invoke-virtual {v9, v1, v13}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v13, 0x7fffffff

    invoke-virtual {v9, v1, v13}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_16c

    :cond_16b
    const/4 v1, 0x0

    :goto_16c
    move-object v15, v1

    new-instance v13, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;

    invoke-direct {v13, v3, v14, v2}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_196

    const-string v1, "getClosingWindowAnimators-final: startBounds = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_196
    new-instance v9, Ln2/a;

    move-object v1, v9

    move-object v2, v4

    move-object/from16 v3, v21

    move-object/from16 v4, p1

    move-object v5, v10

    move-object v6, v11

    move/from16 v8, v20

    move-object v11, v9

    move-object/from16 v9, v27

    move v10, v12

    move-object v12, v11

    move/from16 v20, v23

    move/from16 v11, v22

    move-object v0, v12

    move-object/from16 v12, v26

    move-object/from16 v22, v0

    move-object v0, v13

    move-object/from16 v21, v25

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move/from16 v14, v17

    move-object/from16 p1, v15

    move-object/from16 v28, v24

    move-object/from16 v15, v16

    move-object/from16 v16, p1

    move-object/from16 v17, v21

    invoke-direct/range {v1 .. v20}, Ln2/a;-><init>(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;I)V

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation$getMenuClosingWindowAnimators$2;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v3, v28

    invoke-direct {v1, v3, v2, v4}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation$getMenuClosingWindowAnimators$2;-><init>(Ljava/lang/String;Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "transitAnimator.animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getMenuClosingWindowAnimators$lambda$2(Landroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/PointF;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;FLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;FLandroid/graphics/RectF;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/Matrix;Landroid/graphics/Rect;ILandroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p14

    move-object/from16 v5, p15

    move-object/from16 v4, p16

    move-object/from16 v3, p17

    move-object/from16 v2, p19

    const-string v1, "$homeToWindowPositionMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$currentWindowRect"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$appTargets"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$tmpPos"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$orientationHandler"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$windowBounds"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cropRect"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$matrix"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cardRect"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$startBounds"

    move-object/from16 v15, p13

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$surfaceApplier"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cardMatrix"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cardCropRect"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1f5

    move-object/from16 v16, v2

    :goto_70
    add-int/lit8 v17, v0, -0x1

    aget-object v0, v7, v0

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    move-object/from16 p20, v1

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_8c

    move-object/from16 p0, v2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v8, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_99

    :cond_8c
    move-object/from16 p0, v2

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v8, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_99
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c1

    const/16 v16, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move-object/from16 v20, p20

    move/from16 v2, p21

    move-object/from16 v1, p1

    move-object/from16 v21, p0

    move-object/from16 v2, p5

    move/from16 v3, v16

    move/from16 v4, v18

    move-object v7, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$DefaultImpls;->calculateScale$default(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;IILjava/lang/Object;)F

    move-result v5

    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v1, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/RectF;->top:F

    iget v1, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/PointF;->y:F

    const v0, 0x3f0ccccd  # 0.55f

    move/from16 v4, p21

    cmpl-float v0, v4, v0

    const/4 v3, 0x0

    if-lez v0, :cond_117

    const v0, 0x3f666666  # 0.9f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_e9

    const/high16 v0, 0x3f800000  # 1.0f

    move v15, v5

    goto :goto_10a

    :cond_e9
    const v1, 0x3f0ccccd  # 0.55f

    const v2, 0x3f666666  # 0.9f

    const/high16 v16, 0x3f800000  # 1.0f

    const/16 v18, 0x0

    sget-object v19, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v0, p21

    move/from16 v3, v16

    move/from16 v4, v18

    move v15, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    move v0, v1

    :goto_10a
    invoke-interface {v9, v11, v10, v0, v12}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateTaskViewWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    invoke-interface {v9, v8, v6, v10, v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateTaskViewWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    move/from16 v1, p6

    move v2, v1

    move v7, v3

    move/from16 v3, p9

    goto :goto_141

    :cond_117
    move v15, v5

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    const v2, 0x3f0ccccd  # 0.55f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    new-instance v16, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move/from16 v0, p21

    move v7, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-static {v0, v1, v7}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    move/from16 v2, p6

    move/from16 v3, p9

    invoke-static {v0, v3, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-interface {v9, v11, v10, v0, v12}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateTaskViewWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    invoke-interface {v9, v8, v6, v10, v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateTaskViewWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    :goto_141
    invoke-virtual {v13, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v0, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a2

    const-string v0, "onAnimationUpdate: progress = "

    const-string v4, ", windowAlpha = "

    const-string v5, ", tmpPos_x = "

    move/from16 v2, p21

    invoke-static {v0, v2, v4, v7, v5}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", tmpPos_y = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", currentRect = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mCropRect = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", cardRect = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", delta = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", scale = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TaskView"

    const-string v15, "TaskViewAnimationUtil"

    invoke-static {v5, v15, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a6

    :cond_1a2
    move-object/from16 v4, p19

    move/from16 v2, p21

    :goto_1a6
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-object/from16 v16, v4

    goto :goto_1df

    :cond_1c1
    move-object/from16 v0, p0

    move/from16 v3, p9

    move-object/from16 v4, p19

    move-object/from16 v20, p20

    move/from16 v2, p21

    iget v5, v8, Landroid/graphics/PointF;->x:F

    iget v7, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v5, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, v13}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :goto_1df
    if-gez v17, :cond_1e4

    move-object/from16 v0, v16

    goto :goto_1fb

    :cond_1e4
    move-object/from16 v7, p2

    move-object/from16 v15, p13

    move-object/from16 v5, p15

    move-object/from16 v3, p17

    move-object v2, v4

    move/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v4, p16

    goto/16 :goto_70

    :cond_1f5
    move-object/from16 v20, v1

    move-object v4, v2

    move/from16 v2, p21

    move-object v0, v4

    :goto_1fb
    invoke-virtual/range {p19 .. p19}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, p12

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v2

    mul-float/2addr v4, v3

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float v5, v4, v2

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v14, v0, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v0, v2}, Ly4/h;->b(FF)F

    move-result v0

    iget v2, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v4

    invoke-virtual {v14, v2, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p14

    if-eqz v0, :cond_281

    move-object/from16 v2, p16

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v1, v14, Landroid/graphics/RectF;->left:F

    iget v3, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual/range {p14 .. p14}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    invoke-virtual/range {p14 .. p14}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v5, p17

    invoke-virtual {v5, v4, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v1, p18

    int-to-float v1, v1

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v3, v3, p12

    mul-float/2addr v3, v1

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v0, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_283

    :cond_281
    move-object/from16 v1, v20

    :goto_283
    move-object/from16 v0, p15

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
