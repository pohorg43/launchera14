.class public final Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppLaunchAnimUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLaunchAnimUtil.kt\ncom/android/launcher3/anim/light/AppLaunchAnimUtil\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,303:1\n94#2,14:304\n31#2:318\n94#2,14:319\n*S KotlinDebug\n*F\n+ 1 AppLaunchAnimUtil.kt\ncom/android/launcher3/anim/light/AppLaunchAnimUtil\n*L\n161#1:304,14\n274#1:318\n274#1:319,14\n*E\n"
    }
.end annotation


# static fields
.field private static final DURATION_LIGHT_WINDOW_SCALE:[J

.field private static final DURATION_WS_FAST:J = 0x1c2L

.field private static final DURATION_WS_SLOW:J = 0x1c2L

.field public static final INSTANCE:Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;

.field private static final INTERPOLATOR_APP_CLOSING:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_APP_OPENING:Landroid/view/animation/PathInterpolator;

.field private static final MIN_WINDOW_SCALE:F = 0.85f

.field private static final TAG:Ljava/lang/String; = "AppLaunchAnimUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;

    invoke-direct {v0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->INSTANCE:Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->DURATION_LIGHT_WINDOW_SCALE:[J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e051eb8  # 0.13f

    const v2, 0x3e19999a  # 0.15f

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->INTERPOLATOR_APP_OPENING:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eeb851f  # 0.46f

    const v2, 0x3ed70a3d  # 0.42f

    const v3, 0x3e23d70a  # 0.16f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->INTERPOLATOR_APP_CLOSING:Landroid/view/animation/PathInterpolator;

    return-void

    :array_32
    .array-data 8
        0x1c2
        0x1c2
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/graphics/Scrim;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->hideWallpaperScrim$lambda$4(Lcom/android/launcher3/graphics/Scrim;)V

    return-void
.end method

.method public static final synthetic access$hideWallpaperScrim(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->hideWallpaperScrim(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static final getAnimDuration()J
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "getAnimDuration, sEvaluationDuration = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLaunchAnimUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isEvaluationDurationValid()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-wide v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    return-wide v0

    :cond_25
    sget-object v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->DURATION_LIGHT_WINDOW_SCALE:[J

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public static final getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLightLauncherContentAnimation, isOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,sSpeedLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stableOverViewUi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLaunchAnimUtil"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getAnimDuration()J

    move-result-wide v6

    if-eqz p1, :cond_4e

    sget-object v1, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->INTERPOLATOR_APP_OPENING:Landroid/view/animation/PathInterpolator;

    goto :goto_50

    :cond_4e
    sget-object v1, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->INTERPOLATOR_APP_CLOSING:Landroid/view/animation/PathInterpolator;

    :goto_50
    move-object v8, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_9c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v2, "animator"

    if-eqz v0, :cond_69

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_69
    invoke-static {p3}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderDepth()F

    move-result v0

    goto :goto_82

    :cond_74
    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    :goto_82
    move v9, v0

    new-instance v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;

    move-object v3, v0

    move v4, p1

    move v5, p2

    move-object v10, p0

    move-object v11, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$1;-><init>(ZFJLandroid/view/animation/PathInterpolator;FLandroid/view/View;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;

    invoke-direct {p2, p1, p3, p0, v1}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightLauncherContentAnimation$$inlined$doOnEnd$1;-><init>(ZLcom/android/launcher3/Launcher;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :array_9c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static final getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;
    .registers 26
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move/from16 v15, p1

    const-string/jumbo v0, "targets"

    move-object/from16 v5, p0

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLightWindowAnimation, isOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sSpeedLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLaunchAnimUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float v7, v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    div-float v8, v0, v1

    invoke-static {}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getAnimDuration()J

    move-result-wide v2

    if-eqz v15, :cond_66

    sget-object v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->INTERPOLATOR_APP_OPENING:Landroid/view/animation/PathInterpolator;

    goto :goto_68

    :cond_66
    sget-object v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->INTERPOLATOR_APP_CLOSING:Landroid/view/animation/PathInterpolator;

    :goto_68
    move-object v4, v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v9

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_be

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v12, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v11, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;

    move-object v0, v11

    move/from16 v1, p1

    move-object/from16 v5, p0

    move/from16 v6, p4

    move-object/from16 v18, v11

    move/from16 v11, p3

    move-object/from16 v19, v12

    move-object/from16 v12, p2

    move-object/from16 v20, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v20

    invoke-direct/range {v0 .. v15}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;-><init>(ZJLandroid/view/animation/PathInterpolator;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZFFZLandroid/graphics/Matrix;FLcom/android/launcher3/Launcher;Landroid/graphics/Point;Landroid/graphics/Rect;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v0, v18

    move-object/from16 v6, v19

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_a5

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_a7

    :cond_a5
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LIGHT_MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_a7
    move-object v4, v0

    const-string v0, "animator"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;

    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v4

    move/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;-><init>(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;ZLcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v6

    :array_be
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final getWallpaperScrim(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/graphics/Scrim;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->getMWorkspaceScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object p0

    return-object p0
.end method

.method private static final hideWallpaperScrim(Lcom/android/launcher3/Launcher;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getWallpaperScrim(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/graphics/Scrim;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->supportAsyncTransition()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/oplus/util/OplusExecutors;->ANIM_EXECUTOR:Lcom/oplus/util/OplusLauncherAnimExecutor;

    new-instance v1, Landroidx/core/app/a;

    invoke-direct {v1, p0}, Landroidx/core/app/a;-><init>(Lcom/android/launcher3/graphics/Scrim;)V

    invoke-virtual {v0, v1}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e

    :cond_1a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/Scrim;->setScrimProgressAsync(Lcom/android/launcher3/graphics/Scrim;F)V

    :goto_1e
    return-void
.end method

.method private static final hideWallpaperScrim$lambda$4(Lcom/android/launcher3/graphics/Scrim;)V
    .registers 2

    const-string v0, "$wallpaperScrim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/Scrim;->setScrimProgressAsync(Lcom/android/launcher3/graphics/Scrim;F)V

    return-void
.end method
