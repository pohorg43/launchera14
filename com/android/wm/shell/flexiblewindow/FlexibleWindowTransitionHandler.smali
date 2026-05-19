.class public Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field private static final DEBUG:Z

.field private static final MAX_ANIMATION_DURATION:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "FWShellTransitionHandler"


# instance fields
.field private OPLUS_FLAG_POCKET_STUDIO_CANVAS:I

.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mTransition:Landroid/os/IBinder;

.field private mTransitionAnimationScaleSetting:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    iput v0, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->OPLUS_FLAG_POCKET_STUDIO_CANVAS:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mTransitionAnimationScaleSetting:F

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    iput-object p4, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p5, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->lambda$startAnimation$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method private inTaskEmbedded(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->getScenario(Landroid/content/res/Configuration;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private isCanvasTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    if-eqz p1, :cond_f

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->getOplusFlags(Landroid/content/Intent;)I

    move-result p1

    iget p0, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->OPLUS_FLAG_POCKET_STUDIO_CANVAS:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private synthetic lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-interface {p3, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$1(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 5

    sget-boolean v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequest() called with: transitionRequestInfo = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FWShellTransitionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->isCanvasTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3f

    iput-object p1, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mTransition:Landroid/os/IBinder;

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAnimScaleSetting(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mTransitionAnimationScaleSetting:F

    return-void
.end method

.method public skipDefaultTransition(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_35

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->getScenario(Landroid/content/res/Configuration;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_35

    const-string/jumbo p0, "skipDefaultTransition for LAUNCH_SCENARIO_CANVAS "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FWShellTransitionHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mTransition:Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eq v2, v1, :cond_a

    return v3

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/common/debug/c;

    move-object/from16 v4, p5

    invoke-direct {v13, v0, v2, v1, v4}, Lcom/android/common/debug/c;-><init>(Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    const/4 v1, 0x1

    move-object/from16 v14, p2

    invoke-static {v14, v1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v4

    move v15, v4

    :goto_23
    const-string v4, "FWShellTransitionHandler"

    if-ltz v15, :cond_df

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_60

    invoke-direct {v0, v6}, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->isCanvasTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    invoke-static {v8}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v9

    if-eqz v9, :cond_51

    iget-object v7, v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/wm/shell/R$anim;->oplus_ps_container_exit:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    goto :goto_60

    :cond_51
    const/4 v9, 0x6

    if-ne v8, v9, :cond_60

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v7, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_60
    :goto_60
    if-eqz v7, :cond_db

    sget-boolean v8, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->DEBUG:Z

    if-eqz v8, :cond_ba

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "create animation: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v9, :cond_78

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_78
    const-string/jumbo v9, "mode= "

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    invoke-static {v10}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " create animation: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget v4, v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v7, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v8, v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v9, v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    move-object v4, v2

    move-object v5, v7

    move-object v7, v13

    invoke-static/range {v4 .. v12}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    :cond_db
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_23

    :cond_df
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_f0

    sget-boolean v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->DEBUG:Z

    if-eqz v0, :cond_ef

    const-string/jumbo v0, "other TransitionHandler work"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    return v3

    :cond_f0
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v0, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lq0/a;

    invoke-direct {v4, v2, v3}, Lq0/a;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v0, v4}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Lcom/android/common/debug/c;->run()V

    return v1
.end method
