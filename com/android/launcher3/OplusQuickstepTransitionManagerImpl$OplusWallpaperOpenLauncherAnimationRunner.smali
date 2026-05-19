.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;
.super Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusWallpaperOpenLauncherAnimationRunner"
.end annotation


# instance fields
.field private mGpuBoostFd:J

.field public mHasAlreadyUpdateAppScene:Z

.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/os/Handler;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/os/Handler;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mHasAlreadyUpdateAppScene:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mGpuBoostFd:J

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mGpuBoostFd:J

    return-wide v0
.end method

.method public static synthetic access$802(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mGpuBoostFd:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->lambda$onCreateAnimation$1(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->lambda$onCreateAnimation$0(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    return-void
.end method

.method private synthetic lambda$onCreateAnimation$0(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 14

    add-int/lit8 v6, p6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    return-void
.end method

.method private synthetic lambda$onCreateAnimation$1(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 18

    move-object v1, p0

    iget-object v0, v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v9, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/launcher3/u1;

    const/4 v8, 0x1

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/u1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;II)V

    invoke-static {v9, v10}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 21

    move-object v9, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mHasAlreadyUpdateAppScene:Z

    const-wide/16 v0, -0x1

    iput-wide v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->mGpuBoostFd:J

    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->interceptTransitionSurfaceRelease(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0, v12}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_2f
    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_57

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-object/from16 v4, p3

    invoke-virtual {v1, v7, v4, v8}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->startAsyncWindowAnimator(Landroid/animation/AnimatorSet;Landroid/util/Pair;Ljava/lang/Boolean;)V

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void

    :cond_57
    move-object/from16 v4, p3

    const-string/jumbo v0, "onCreateAnimation: windowVisiblity: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusDragLayer;->isWindowVisiblity()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-gt v11, v0, :cond_df

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->isWindowVisiblity()Z

    move-result v0

    if-nez v0, :cond_df

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    if-nez v0, :cond_df

    new-instance v12, Lcom/android/launcher3/u1;

    const/4 v13, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/u1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;II)V

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {v12}, Lcom/android/launcher3/u1;->run()V

    goto :goto_de

    :cond_cd
    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_db

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v12}, Lcom/android/launcher/Launcher;->addOplusOnResumeCallback(Ljava/lang/Runnable;)V

    goto :goto_de

    :cond_db
    invoke-virtual {v0, v12}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    :goto_de
    return-void

    :cond_df
    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->addForceInvisibleFlag(I)V

    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :cond_fe
    iget-object v0, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-boolean v5, v9, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mFromUnlock:Z

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/RectF;

    move-result-object v6

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v11

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v4, v5

    move-object v5, v6

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenAnimations([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLandroid/graphics/RectF;F)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;

    invoke-direct {v2, p0, v8}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner$1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v2, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-static/range {p2 .. p2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v3, v3, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->isSupportCapsule(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_161

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v10, v0, v1, v2, v12}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    goto :goto_1a0

    :cond_161
    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    iget-object v3, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v3, v3, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v4, v3, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_17e

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->hasPendingState()Z

    move-result v3

    goto :goto_17f

    :cond_17e
    move v3, v12

    :goto_17f
    if-nez v1, :cond_183

    if-eqz v3, :cond_195

    :cond_183
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isSystemDisableAnimation()Z

    move-result v1

    if-eqz v1, :cond_195

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v10, v0, v1, v2, v12}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    goto :goto_1a0

    :cond_195
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v1, v9, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    :goto_1a0
    return-void
.end method


# virtual methods
.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    return-void
.end method
