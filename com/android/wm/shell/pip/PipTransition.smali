.class public Lcom/android/wm/shell/pip/PipTransition;
.super Lcom/android/wm/shell/pip/PipTransitionController;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "PipTransition"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPipTaskToken:Landroid/window/WindowContainerToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mEndFixedRotation:I

.field private mEnterAnimationType:I

.field private final mEnterExitAnimationDuration:I

.field private final mExitDestinationBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mHasFadeOut:Z

.field private mInFixedRotation:Z

.field private mMoveToBackTransition:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field private final mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field private mRequestedEnterTask:Landroid/window/WindowContainerToken;

.field private mRequestedEnterTransition:Landroid/os/IBinder;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field private final mTransactionConsumer:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;)V
    .registers 22
    .param p2  # Lcom/android/wm/shell/sysui/ShellInit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/wm/shell/ShellTaskOrganizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/wm/shell/transition/Transitions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/pip/PipMenuController;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTransitionController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;)V

    const/4 v0, 0x0

    iput v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/wm/shell/pip/PipTransition$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipTransition$1;-><init>(Lcom/android/wm/shell/pip/PipTransition;)V

    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    move-object v0, p1

    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    move-object/from16 v1, p7

    iput-object v1, v8, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    move-object v1, p6

    iput-object v1, v8, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$integer;->config_pipResizeAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    move-object/from16 v0, p11

    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-object/from16 v0, p12

    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mSplitScreenOptional:Ljava/util/Optional;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/pip/PipTransition;)Lcom/android/wm/shell/pip/PipDisplayLayoutState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/pip/PipTransition;->lambda$startExitAnimation$2(Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->lambda$startExitAnimation$1(Landroid/app/TaskInfo;)V

    return-void
.end method

.method private callFinishCallback(Landroid/window/WindowContainerTransaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {v0, p1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private computeEnterPipRotatedBounds(IIILandroid/app/TaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p6  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v0, p3}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p5, v0, p3, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    if-eqz p6, :cond_27

    iget-object p0, p4, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    if-eqz p0, :cond_27

    const/4 p2, 0x3

    if-ne p1, p2, :cond_27

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p6, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_27
    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/pip/PipTransition;Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->lambda$startEnterAnimation$3(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/pip/PipTransition;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTransition;->lambda$fadeEnteredPipIfNeed$0()V

    return-void
.end method

.method private fadeEnteredPipIfNeed(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->hasEnteredPip()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/pip/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/d;-><init>(Lcom/android/wm/shell/pip/PipTransition;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/transition/Transitions;->runOnIdle(Ljava/lang/Runnable;)V

    goto :goto_24

    :cond_1a
    if-nez p1, :cond_24

    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-nez p1, :cond_24

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->fadeExistingPip(Z)V

    :cond_24
    :goto_24
    return-void
.end method

.method private fadeExistingPip(Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const/4 v0, 0x1

    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-nez v2, :cond_18

    goto :goto_4c

    :cond_18
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz p1, :cond_1f

    move v5, v1

    goto :goto_20

    :cond_1f
    move v5, v4

    :goto_20
    if-eqz p1, :cond_24

    move v6, v4

    goto :goto_25

    :cond_24
    move v6, v1

    :goto_25
    new-instance v7, Lcom/android/wm/shell/pip/PipTransition$2;

    invoke-direct {v7, p0, p1}, Lcom/android/wm/shell/pip/PipTransition$2;-><init>(Lcom/android/wm/shell/pip/PipTransition;Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    return-void

    :cond_4c
    :goto_4c
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_6b

    sget-object p0, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x66329ace

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6b
    return-void
.end method

.method private findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;
    .registers 7
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_29

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    return-object v2

    :cond_29
    return-object v1
.end method

.method private findFixedRotationChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;
    .registers 5
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :cond_8
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1e

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    return-object v0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private finishResizeForMenu(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000  # -1.0f

    invoke-interface {v0, v1, v1, p1, v2}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private handleSwipePipToHomeTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 26
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/app/ActivityManager$RunningTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-boolean v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    const/4 v15, 0x0

    const/4 v11, 0x2

    if-eqz v2, :cond_33

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_33

    sget-object v2, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x5969cfbd

    const/4 v7, 0x4

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v15

    const/4 v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const-string v2, "%s: SwipePipToHome should not use fixed rotation %d"

    invoke-static {v5, v6, v7, v2, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v10, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    if-eqz v10, :cond_48

    invoke-virtual {v1, v10, v12}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v10, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object v9, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    :cond_48
    iget-object v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object v5, v6

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object v15, v9

    move/from16 v9, v16

    move-object v15, v10

    move/from16 v10, v17

    move-object/from16 p4, v15

    move v15, v11

    move/from16 v11, v18

    invoke-virtual/range {v2 .. v11}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    invoke-virtual/range {p1 .. p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v12, v1, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1, v13}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0, v14, v13, v15, v1}, Lcom/android/wm/shell/pip/PipTransition;->onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v15}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    if-eqz p4, :cond_a1

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V

    goto :goto_a2

    :cond_a1
    const/4 v4, 0x0

    :goto_a2
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/pip/PipTransitionState;->setInSwipePipToHomeTransition(Z)V

    return-void
.end method

.method private isAnimatingLocally()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isEnteringPip(Landroid/window/TransitionInfo;)Z
    .registers 6
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_1f

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/PipTransition;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$fadeEnteredPipIfNeed$0()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->hasEnteredPip()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/PipTransition;->fadeExistingPip(Z)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$startEnterAnimation$3(Landroid/view/SurfaceControl;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic lambda$startExitAnimation$1(Landroid/app/TaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    return-void
.end method

.method private synthetic lambda$startExitAnimation$2(Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/a;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/a;-><init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    if-nez p1, :cond_3f

    const/4 p1, 0x0

    if-nez p2, :cond_2d

    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p2, :cond_2d

    sget-object p2, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x43e59f20

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v3, p1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    if-eqz p8, :cond_30

    goto :goto_36

    :cond_30
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object p8, p2

    :goto_36
    invoke-virtual {p8, p3, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 p2, 0x3

    invoke-virtual {p1, p8, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    :cond_3f
    if-eqz p4, :cond_5a

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_52
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController;->resetAnimatorState()V

    invoke-virtual {p5, p6}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5a
    invoke-interface {p7, p8, p9}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V
    .registers 6
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/app/TaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    const/4 p0, 0x0

    invoke-interface {p4, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private resetPrevPip(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    if-ne p2, v0, :cond_1e

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    :cond_1e
    return-void
.end method

.method private startEnterAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 10
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_b
    if-ltz v0, :cond_2c

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    move-object v1, v2

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_2c
    if-eqz v1, :cond_63

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5f

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    if-ne v2, v1, :cond_47

    goto :goto_36

    :cond_47
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_36

    :cond_5f
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTransition;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to start PiP animation without a pipparticipant"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startExitAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;Landroid/window/TransitionInfo$Change;)V
    .registers 34
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/app/TaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_24

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x7d5193a2

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v0, v4, v13

    invoke-static {v2, v3, v13, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_24
    if-nez p6, :cond_4b

    invoke-static {v10, v12}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_2a
    if-ltz v0, :cond_4b

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    iget-object v3, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    move-object v14, v2

    goto :goto_4e

    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_4b
    :goto_4b
    move-object/from16 v14, p6

    move-object v0, v1

    :goto_4e
    if-nez v14, :cond_6a

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_66

    sget-object v0, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x68140a71

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v0, v4, v13

    invoke-static {v2, v3, v13, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/pip/PipTransition;->removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    return-void

    :cond_6a
    invoke-static {v14, v10}, Lcom/android/wm/shell/util/TransitionUtil;->getRootFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    if-eqz v0, :cond_b4

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "_pip-leash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v11, v0, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-object v15, v3

    goto :goto_c0

    :cond_b4
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-object v15, v2

    :goto_c0
    const v2, 0x7fffffff

    invoke-virtual {v11, v15, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v8

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v1, v8, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v8, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v11, v15, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v0, :cond_ea

    move v5, v12

    goto :goto_eb

    :cond_ea
    move v5, v13

    :goto_eb
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v6, Lcom/android/wm/shell/pip/n;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v13, v6

    move-object/from16 v6, p3

    move-object/from16 v26, v7

    move-object v7, v15

    move-object/from16 p6, v8

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/pip/n;-><init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iput-object v13, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-object/from16 v3, p3

    iput-object v3, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v0, :cond_15a

    invoke-static {v10, v12}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_11b
    if-ltz v0, :cond_145

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_142

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_142

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v2

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v4

    if-eq v2, v4, :cond_142

    move-object v4, v1

    goto :goto_147

    :cond_142
    add-int/lit8 v0, v0, -0x1

    goto :goto_11b

    :cond_145
    const/4 v0, 0x0

    move-object v4, v0

    :goto_147
    if-eqz v4, :cond_15a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object v6, v14

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTransition;->startExpandAndRotationAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/TaskInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Point;)V

    return-void

    :cond_15a
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p6

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-boolean v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    if-eqz v0, :cond_1bd

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v0

    iget v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-static {v0, v1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v1, v5, v0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    if-ne v0, v12, :cond_18d

    const/16 v2, 0x5a

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    goto :goto_193

    :cond_18d
    const/16 v2, -0x5a

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    :goto_193
    iget-object v7, v9, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    int-to-float v2, v2

    int-to-float v4, v4

    int-to-float v6, v6

    const/16 v24, 0x1

    const/4 v8, 0x3

    if-ne v0, v8, :cond_1a6

    move/from16 v25, v12

    move-object v8, v15

    goto :goto_1a9

    :cond_1a6
    move-object v8, v15

    const/16 v25, 0x0

    :goto_1a9
    move-object v15, v7

    move-object/from16 v16, p3

    move-object/from16 v17, v8

    move-object/from16 v18, v1

    move-object/from16 v19, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v23, v6

    invoke-virtual/range {v15 .. v25}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move v6, v0

    goto :goto_1bf

    :cond_1bd
    move-object v8, v15

    const/4 v6, 0x0

    :goto_1bf
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v8

    move-object/from16 v3, v26

    move-object/from16 v4, v26

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTransition;->startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private startExitToSplitAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V
    .registers 12
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/app/TaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_8
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_58

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_24

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_24

    goto :goto_8

    :cond_24
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_58
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    const/4 p0, 0x0

    invoke-interface {p4, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private startExpandAndRotationAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/TaskInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Point;)V
    .registers 26
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/app/TaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    invoke-static {v2, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v2

    new-instance v3, Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-direct {v3}, Lcom/android/wm/shell/transition/CounterRotatorHelper;-><init>()V

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    move-object/from16 v5, p4

    invoke-virtual {v3, v4, v15, v5}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {p6 .. p6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v14, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v14, v4, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual/range {p6 .. p6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v13, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v14, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {v13, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_58

    const/16 v5, 0x5a

    iget v6, v14, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    goto :goto_5e

    :cond_58
    const/16 v5, -0x5a

    iget v6, v14, Landroid/graphics/Rect;->left:I

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    :goto_5e
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual/range {p6 .. p6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    int-to-float v11, v5

    int-to-float v12, v6

    int-to-float v7, v7

    const/16 v16, 0x1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_72

    move v1, v4

    :cond_72
    move-object v4, v8

    move-object/from16 v5, p2

    move v8, v6

    move-object v6, v9

    move/from16 v17, v7

    move-object v7, v13

    move v9, v8

    move-object v8, v14

    move-object v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v17

    move-object/from16 v17, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move v14, v1

    invoke-virtual/range {v4 .. v14}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v1, p3

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual/range {p6 .. p6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move v13, v2

    invoke-virtual/range {v4 .. v13}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 20
    .param p7  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v11, p7

    iget-object v1, v2, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    move-object/from16 v6, p5

    invoke-static {v1, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_35

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, p2

    invoke-virtual {v2, p2, v11, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    invoke-virtual/range {p7 .. p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_35
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getPipTransactionHandler()Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_41

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getCurrentOrAnimatingBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, p2, p1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, p3, p1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    invoke-virtual {v0, p3, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    invoke-virtual {v0, p3, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    if-eqz v1, :cond_40

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-eqz p0, :cond_40

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_40
    return-void

    :cond_41
    :goto_41
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_61

    sget-object p0, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x2ee9af41

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    return-void
.end method


# virtual methods
.method public augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/window/WindowContainerTransaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipTransitionController;->requestHasPipEnter(Landroid/window/TransitionRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p1, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_2e
    return-void

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called PiP augmentRequest when request has no PiP"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    const-string v2, "mCurrentPipTaskToken="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mFinishCallback="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public end()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_11
    return-void
.end method

.method public forceFinishTransition()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v1, :cond_8

    return-void

    :cond_8
    invoke-interface {v1, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public getPipTransitionState()Lcom/android/wm/shell/pip/PipTransitionState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    return-object p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 9
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipTransitionController;->requestHasPipEnter(Landroid/window/TransitionRequestInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x5cfdbd56

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/pip/PipTransition;->augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    return-object v0

    :cond_28
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4e

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4e

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_4e
    return-object v1
.end method

.method public handleRotateDisplay(IILandroid/window/WindowContainerTransaction;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    invoke-static {p1, p2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p0, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z
    .registers 5
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    const/16 p0, 0xa

    const/4 p1, 0x1

    if-eq p2, p0, :cond_45

    if-ne p2, p1, :cond_25

    goto :goto_45

    :cond_25
    const/4 p0, 0x6

    if-ne p2, p0, :cond_29

    return p1

    :cond_29
    sget-object p0, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    const-string p1, "Found new PIP in transition with mis-matched type="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    :cond_45
    :goto_45
    return p1

    :cond_46
    :goto_46
    const/4 p0, 0x0

    return p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTransition;->end()V

    return-void
.end method

.method public onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 13
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    :cond_c
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTransition;->isAnimatingLocally()Z

    move-result v1

    if-eqz v1, :cond_cd

    :cond_16
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2c

    move v4, v2

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_41

    iget-boolean p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    if-nez p3, :cond_3f

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p3, :cond_3f

    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_3f
    move-object v5, v6

    goto :goto_70

    :cond_41
    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result p3

    if-eqz p3, :cond_57

    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, v3}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_5c

    :cond_57
    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :goto_5c
    if-eqz v4, :cond_6b

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p3, p4, v1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p3

    invoke-virtual {p3, p4, v1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p3

    invoke-virtual {p3, p4, v1, v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    :cond_6b
    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, p3, p4}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    :goto_70
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p1

    if-eqz v0, :cond_c8

    iget-boolean p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    if-eqz p3, :cond_c8

    iget p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    if-eq p3, p1, :cond_c8

    if-eqz v4, :cond_c8

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p3

    iget-object p4, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-virtual {p4}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-static {v0, p4, v4, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c8

    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p3, :cond_bc

    sget-object p3, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x77db6386

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v4, v7, v3, v6, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_bc
    iget p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-static {v0, p4, p3, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p3, v1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    :cond_c8
    iput-object v6, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v5}, Lcom/android/wm/shell/pip/PipTransition;->callFinishCallback(Landroid/window/WindowContainerTransaction;)V

    :cond_cd
    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/PipTransition;->finishResizeForMenu(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onFixedRotationFinished()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/PipTransition;->fadeEnteredPipIfNeed(Z)V

    return-void
.end method

.method public onFixedRotationStarted()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/PipTransition;->fadeEnteredPipIfNeed(Z)V

    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 13
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    if-eq p1, p3, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->resetAnimatorState()V

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    move p1, p3

    :goto_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    if-nez p1, :cond_25

    return-void

    :cond_25
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_6c

    if-eqz p2, :cond_4d

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v1, p2, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v1, p2, p1, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;IZ)V

    goto :goto_6c

    :cond_4d
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v6, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipTransition;->startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public setEnterAnimationType(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 17
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v7, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/PipTransition;->findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/PipTransition;->findFixedRotationChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_13

    move v9, v8

    goto :goto_14

    :cond_13
    move v9, v5

    :goto_14
    iput-boolean v9, v7, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    if-eqz v9, :cond_1d

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    move-result v4

    goto :goto_1e

    :cond_1d
    const/4 v4, -0x1

    :goto_1e
    iput v4, v7, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    iget-object v9, v7, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_73

    iget-object v9, v7, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    goto :goto_73

    :cond_36
    iget-object v4, v7, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    if-ne v0, v4, :cond_3e

    iput-object v10, v7, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    iput-object v10, v7, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    :cond_3e
    if-eqz v6, :cond_4e

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4e

    invoke-direct {p0, v6, p3}, Lcom/android/wm/shell/pip/PipTransition;->resetPrevPip(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    :cond_4e
    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/PipTransition;->isEnteringPip(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move-object/from16 v9, p5

    invoke-direct {p0, p2, p3, p4, v9}, Lcom/android/wm/shell/pip/PipTransition;->startEnterAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return v8

    :cond_5a
    if-eqz v6, :cond_72

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    :cond_6f
    invoke-direct {p0, v6, p3, p4}, Lcom/android/wm/shell/pip/PipTransition;->updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_72
    return v5

    :cond_73
    :goto_73
    move-object/from16 v9, p5

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v10, v7, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    iput-object v10, v7, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    iput-boolean v5, v7, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v0, :cond_db

    if-eqz v6, :cond_8b

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    goto :goto_91

    :cond_8b
    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    :goto_91
    move-object v5, v0

    if-eqz v5, :cond_d3

    if-eq v4, v8, :cond_c7

    const/4 v0, 0x4

    if-eq v4, v0, :cond_c7

    packed-switch v4, :pswitch_data_e8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mExitTransition with unexpected transit type="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b3  #0x3ea
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->startExitToSplitAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    goto :goto_d0

    :pswitch_bd  #0x3e9
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTransition;->startExitAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;Landroid/window/TransitionInfo$Change;)V

    goto :goto_d0

    :cond_c7
    :pswitch_c7  #0x3eb
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    :goto_d0
    iput-object v10, v7, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    return v8

    :cond_d3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find the pip task for exit-pip transition."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    invoke-direct {p0, v10}, Lcom/android/wm/shell/pip/PipTransition;->callFinishCallback(Landroid/window/WindowContainerTransaction;)V

    iput-object v10, v7, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous callback not called, aborting exit PIP."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_e8
    .packed-switch 0x3e9
        :pswitch_bd  #000003e9
        :pswitch_b3  #000003ea
        :pswitch_c7  #000003eb
    .end packed-switch
.end method

.method public startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 27
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v0, :cond_1a5

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v9, v7, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v2

    iget-boolean v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    const/4 v13, 0x1

    if-nez v0, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    move-result v0

    iput v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    move v0, v13

    goto :goto_3c

    :cond_3b
    move v0, v10

    :goto_3c
    iput-boolean v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    :cond_3e
    iget-boolean v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    if-eqz v0, :cond_45

    iget v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    goto :goto_49

    :cond_45
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v0

    :goto_49
    move v3, v0

    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v1, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0, v1, v4}, Lcom/android/wm/shell/pip/PipTransitionController;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/app/PictureInPictureParams;Landroid/content/pm/ActivityInfo;)V

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldAttachMenuEarly()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {v0, v14}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    :cond_60
    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {v2, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v21

    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v0, v11, v12}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v21, :cond_86

    iget-boolean v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    if-eqz v0, :cond_86

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object v4, v15

    move-object v5, v12

    move-object/from16 p1, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTransition;->computeEnterPipRotatedBounds(IIILandroid/app/TaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_88

    :cond_86
    move-object/from16 p1, v6

    :goto_88
    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldAttachMenuEarly()Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/animation/c;

    invoke-direct {v1, v7, v14}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/view/SurfaceControl;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_a0
    iget-object v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->getInSwipePipToHomeTransition()Z

    move-result v0

    if-eqz v0, :cond_c1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p1

    move-object v5, v12

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTransition;->handleSwipePipToHomeTransition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :cond_c1
    iget v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    const/high16 v6, 0x3f800000  # 1.0f

    if-ne v0, v13, :cond_cc

    const/4 v1, 0x0

    invoke-virtual {v8, v14, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_cf

    :cond_cc
    invoke-virtual {v8, v14, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_cf
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-nez v0, :cond_143

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v1, v11

    move-object v11, v0

    move-object v8, v12

    move-object v12, v15

    move v5, v13

    move-object v13, v14

    move-object v4, v14

    move-object v14, v1

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, v8

    move-object/from16 v17, p1

    move/from16 v20, v21

    invoke-virtual/range {v11 .. v20}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    move-object/from16 v3, p1

    if-nez v3, :cond_136

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_f8

    move v13, v5

    goto :goto_f9

    :cond_f8
    move v13, v10

    :goto_f9
    if-nez v13, :cond_113

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_113

    sget-object v3, Lcom/android/wm/shell/pip/PipTransition;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v11, 0x3270671a

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v3, v12, v10

    const-string v3, "%s: TaskInfo.topActivityInfo is null"

    invoke-static {v8, v11, v10, v3, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_113
    const-string/jumbo v3, "persist.wm.debug.enable_pip_app_icon_overlay"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_130

    if-eqz v13, :cond_130

    iget-object v3, v7, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState;->getLauncherState()Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;->getAppIconSizePx()I

    move-result v5

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setAppIconContentOverlay(Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo;I)V

    goto :goto_141

    :cond_130
    iget-object v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setColorContentOverlay(Landroid/content/Context;)V

    goto :goto_141

    :cond_136
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    invoke-static {v1, v10}, Lcom/android/wm/shell/pip/PipUtils;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v1

    if-eqz v1, :cond_141

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setSnapshotContentOverlay(Landroid/window/TaskSnapshot;Landroid/graphics/Rect;)V

    :cond_141
    :goto_141
    move-object v12, v4

    goto :goto_162

    :cond_143
    move-object v8, v12

    move v5, v13

    move-object v4, v14

    move-object v2, v15

    if-ne v0, v5, :cond_199

    iget-object v0, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000  # 1.0f

    move-object v1, v2

    move-object v2, v4

    move-object v3, v8

    move-object v12, v4

    move v4, v10

    move v10, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget-object v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v1, v9, v12, v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    invoke-virtual {v1, v9, v12, v10}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    :goto_162
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget-object v2, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget v2, v7, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v21, :cond_182

    iget-boolean v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    if-eqz v1, :cond_182

    iget-object v1, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    :cond_182
    iget-object v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    invoke-virtual {v1, v12, v9, v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    iget-object v1, v7, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getPipTransactionHandler()Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_199
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unrecognized animation type: "

    invoke-static {v2, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a5
    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/wm/shell/pip/PipTransition;->callFinishCallback(Landroid/window/WindowContainerTransaction;)V

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous callback not called, aborting entering PIP."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V
    .registers 5
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p3

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_18
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    return-void
.end method

.method public syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 4
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTransition;->updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    return p0
.end method
