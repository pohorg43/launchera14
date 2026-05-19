.class public Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;,
        Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;,
        Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;,
        Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;,
        Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitScreenTransitions"


# instance fields
.field private mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field private mAnimatingTransition:Landroid/os/IBinder;

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

.field private mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mOnFinish:Ljava/lang/Runnable;

.field public mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

.field public mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

.field public mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

.field private final mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    new-instance v1, Lcom/android/wm/shell/splitscreen/y0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/y0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    new-instance p3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    return-void
.end method

.method public static synthetic a(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FFLandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$startFadeAnimation$4(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/transition/Transitions;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$playResizeAnimation$2()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$playDragDismissAnimation$0()V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$playResizeAnimation$3(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$playDragDismissAnimation$1(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V

    return-void
.end method

.method private getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    return-object p0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    return-object p0

    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$playDragDismissAnimation$0()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$playDragDismissAnimation$1(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/splitscreen/j;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/j;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method private synthetic lambda$playResizeAnimation$2()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$playResizeAnimation$3(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/splitscreen/l1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/l1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method private static synthetic lambda$startFadeAnimation$4(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FFLandroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p4

    mul-float/2addr v0, p2

    mul-float/2addr p3, p4

    add-float/2addr p3, v0

    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_33

    :cond_16
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p2, :cond_33

    const-string p2, "SplitScreenTransitions"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p4, -0x59f9241e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p0, v0, p2

    const-string p0, "%s: Invalid leash on startFadeAnimation: %s"

    invoke-static {p3, p4, v1, p0, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private playInternalAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v5

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v6

    :goto_13
    if-ltz v6, :cond_1d0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    invoke-static {v7, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v10

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x6

    if-ne v9, v12, :cond_95

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v12

    if-eqz v12, :cond_95

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v12

    if-nez v12, :cond_4c

    goto/16 :goto_1c8

    :cond_4c
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v2, v13, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v1, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v13

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v2, v11, v13}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v6

    invoke-virtual {v2, v11, v13}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v11, v8, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_95
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v11

    move-object/from16 v12, p6

    invoke-virtual {v12, v11}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v15

    const/high16 v12, 0x400000

    if-ne v15, v12, :cond_b9

    const/4 v12, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v12, 0x0

    :goto_ba
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v5, :cond_ea

    if-nez v15, :cond_d0

    if-eqz v3, :cond_ea

    :cond_d0
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v15, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_13f

    :cond_ea
    if-eqz v11, :cond_f5

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v8, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_13f

    :cond_f5
    if-eqz v5, :cond_f9

    if-nez v13, :cond_fb

    :cond_f9
    if-eqz v14, :cond_120

    :cond_fb
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v8, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v8, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_13f

    :cond_120
    if-eqz v12, :cond_13f

    const/4 v3, 0x4

    if-eq v9, v3, :cond_13f

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v8, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const v3, 0x7fffffff

    invoke-virtual {v2, v8, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13f
    :goto_13f
    if-nez v11, :cond_1c8

    if-nez v13, :cond_1c8

    if-nez v14, :cond_1c8

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_14f

    if-nez v12, :cond_14f

    goto/16 :goto_1c8

    :cond_14f
    if-eqz v5, :cond_158

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget-boolean v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    if-eqz v3, :cond_158

    goto :goto_1c8

    :cond_158
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_166

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iget v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_167

    goto :goto_1c8

    :cond_166
    const/4 v4, 0x4

    :cond_167
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-nez v3, :cond_17b

    const/4 v3, 0x2

    if-eq v9, v3, :cond_176

    if-ne v9, v4, :cond_17b

    :cond_176
    const/4 v3, 0x0

    invoke-direct {v0, v8, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    goto :goto_1c8

    :cond_17b
    const/4 v3, 0x6

    if-ne v9, v3, :cond_1c8

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_1c8

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v2, v3, v4, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    :cond_1c8
    :goto_1c8
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    goto/16 :goto_13

    :cond_1d0
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private startFadeAnimation(Landroid/view/SurfaceControl;Z)V
    .registers 11

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p2, :cond_6

    move v6, v0

    goto :goto_8

    :cond_6
    const/4 v1, 0x0

    move v6, v1

    :goto_8
    sub-float/2addr v0, v6

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v6, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x85

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_26

    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_28

    :cond_26
    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_28
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/x0;

    invoke-direct {p2, p1, v5, v0, v6}, Lcom/android/wm/shell/splitscreen/x0;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FF)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startFadeAnimation, addAnim="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitScreenTransitions"

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/splitscreen/s0;

    invoke-direct {p1, v1}, Lcom/android/wm/shell/splitscreen/s0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public end()Z
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_e
    if-ltz v0, :cond_42

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end, anim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SplitScreenTransitions"

    invoke-static {v5, v4, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v4}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/wm/shell/splitscreen/z0;

    invoke-direct {v5, v3, v1}, Lcom/android/wm/shell/splitscreen/z0;-><init>(Landroid/animation/Animator;I)V

    invoke-interface {v4, v5}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_42
    return v2
.end method

.method public getExt()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    return-object p0
.end method

.method public initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTransition, transition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finishCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimatingTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFinishCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitions"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method

.method public isPendingDismiss(Landroid/os/IBinder;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPendingEnter(Landroid/os/IBinder;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPendingResize(Landroid/os/IBinder;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPendingTransition(Landroid/os/IBinder;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mergeAnimation, transition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mergeTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finishCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mActiveRemoteHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitions"

    invoke-static {v1, v0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->logDebugForTransitionInfo(Ljava/lang/String;Ljava/lang/String;Landroid/window/TransitionInfo;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    if-eq p4, v0, :cond_36

    return-void

    :cond_36
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz v1, :cond_43

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_69

    :cond_43
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4b
    if-ltz p1, :cond_69

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p3}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/wm/shell/splitscreen/k1;

    invoke-direct {p4, p2}, Lcom/android/wm/shell/splitscreen/k1;-><init>(Landroid/animation/Animator;)V

    invoke-interface {p3, p4}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4b

    :cond_69
    :goto_69
    return-void
.end method

.method public onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    const-string/jumbo v0, "onFinish, mAnimatingTransition="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wctCB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimations.isEmpty()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFinishCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingEnter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingDismiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingResize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nwct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitions"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    return-void

    :cond_64
    if-nez p1, :cond_6b

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_6b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    goto :goto_a1

    :cond_7e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    goto :goto_a1

    :cond_90
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    :cond_a1
    :goto_a1
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz v0, :cond_b3

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_b3
    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransitionConsumed, transition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aborted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingEnter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingDismiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingResize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitions"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    if-nez p2, :cond_4b

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    :cond_4b
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onConsumed(Z)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    goto :goto_6e

    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_61

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onConsumed(Z)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    goto :goto_6e

    :cond_61
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onConsumed(Z)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    :cond_6e
    :goto_6e
    return-void
.end method

.method public playAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V
    .registers 21

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    move-result-object v11

    if-eqz v11, :cond_4d

    iget-boolean v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :cond_1b
    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, v11

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->handleBeforeRemoteTransitionStart(Landroid/os/IBinder;Landroid/window/TransitionInfo;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v11

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->handleAfterRemoteTransitionStart(Landroid/os/IBinder;Landroid/window/TransitionInfo;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :cond_4d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->playInternalAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V

    return-void
.end method

.method public playDragDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/window/WindowContainerToken;)V
    .registers 22

    move-object v0, p0

    move-object/from16 v10, p3

    move-object v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-static {p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->containsRotationActionInTransition(Landroid/window/TransitionInfo;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :cond_17
    :goto_17
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_97

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    if-eqz v1, :cond_3a

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3a

    invoke-virtual {v10, v7}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    goto :goto_79

    :cond_3a
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v8

    move-object/from16 v9, p6

    invoke-virtual {v9, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v11, 0x3f800000  # 1.0f

    if-eqz v8, :cond_7c

    invoke-virtual {v10, v7, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playDragDismissAnimation, addAnim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SplitScreenTransitions"

    invoke-static {v8, v7}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/wm/shell/splitscreen/z;

    invoke-direct {v7, p0, v4}, Lcom/android/wm/shell/splitscreen/z;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    move-object/from16 v8, p7

    invoke-virtual {v8, v10, v7}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    :goto_79
    move-object/from16 v12, p8

    goto :goto_17

    :cond_7c
    move-object/from16 v8, p7

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v4

    move-object/from16 v12, p8

    invoke-virtual {v12, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7fffffff

    invoke-virtual {v10, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10, v7, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_17

    :cond_97
    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p8

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->playDragDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/window/WindowContainerToken;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public playResizeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Lcom/android/wm/shell/common/split/SplitDecorManager;)V
    .registers 13

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_d
    if-ltz p1, :cond_96

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p5

    invoke-virtual {p6, p5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2d

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p5

    invoke-virtual {p7, p5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_92

    :cond_2d
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p5

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p3, p5, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p3, p5, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p5

    invoke-virtual {p6, p5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_61

    move-object p5, p8

    goto :goto_62

    :cond_61
    move-object p5, p9

    :goto_62
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playResizeAnimation, addAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitScreenTransitions"

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object p4

    invoke-virtual {p5, p4, p3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->setScreenshotIfNeeded(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    new-instance p4, Lcom/android/wm/shell/splitscreen/y;

    invoke-direct {p4, p0, v0}, Lcom/android/wm/shell/splitscreen/y;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p5, p3, p4}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    :cond_92
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_d

    :cond_96
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public setDismissTransition(Landroid/os/IBinder;II)V
    .registers 7
    .param p2  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;II)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDismissTransition, transition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", dismissTop="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitScreenTransitions"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->setDismissTransitionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;II)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_5c

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x6e644aae

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const-string p0, "  splitTransition  deduced Dismiss due to %s. toTop=%s"

    invoke-static {p2, p3, v2, p0, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    return-void
.end method

.method public setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V
    .registers 12

    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    iput-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEnterTransition, transition="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", remoteTransition="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", extraTransitType="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resizeAnim="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitScreenTransitions"

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_4d

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x26a76674

    const/4 p2, 0x0

    const/4 p3, 0x0

    const-string p4, "  splitTransition  deduced Enter split screen"

    invoke-static {p0, p1, p2, p4, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    return-void
.end method

.method public setResizeTransition(Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V
    .registers 5

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setResizeTransition, transition="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", finishCallback="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitScreenTransitions"

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_37

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x1f2b8afc

    const/4 p2, 0x0

    const-string v0, "  splitTransition  deduced Resize split screen"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    return-void
.end method

.method public startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;
    .registers 7
    .param p3  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->getDismissTransitionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mExt:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->getDismissTransitionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->isDirtySession()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "SplitScreenTransitions"

    const-string v1, "dismiss != null but dirty, go on."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_22
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_3e

    invoke-static {p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x86b0be1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    const-string p0, "  splitTransition  skip to start dismiss split transition since it already exist. reason to  dismiss = %s"

    invoke-static {p1, p2, p4, p0, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    const/4 p0, 0x0

    return-object p0

    :cond_40
    :goto_40
    const/4 v0, 0x4

    if-ne p4, v0, :cond_46

    const/16 v0, 0x3ee

    goto :goto_48

    :cond_46
    const/16 v0, 0x3ef

    :goto_48
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    return-object p1
.end method

.method public startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)Landroid/os/IBinder;
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v0, :cond_15

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, -0x49f9629b

    const/4 p3, 0x0

    const-string p4, "  splitTransition  skip to start enter split transition since it already exist. "

    invoke-static {p0, p2, p3, p4, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    return-object p1

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p5, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    return-object p1
.end method

.method public startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    return-void
.end method

.method public startResizeTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)Landroid/os/IBinder;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->cancel(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setResizeTransition(Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    return-object p1
.end method
