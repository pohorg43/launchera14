.class public Lcom/android/wm/shell/transition/DefaultMixedHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;
    }
.end annotation


# instance fields
.field private final mActiveTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateRecentsDuringSplit:Z

.field private final mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field private mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

.field private final mPlayer:Lcom/android/wm/shell/transition/Transitions;

.field private mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

.field private mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Ljava/util/Optional;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mAnimateRecentsDuringSplit:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_2f

    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_2f

    new-instance p2, Lcom/android/wm/shell/transition/f;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/f;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->lambda$animateEnterPipFromSplit$2(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x7ea2ca34

    const-string v8, " Animating a mixed transition for entering PIP while Split-Screen is foreground."

    invoke-static {v0, v5, v1, v8, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    const/4 v0, 0x4

    const/4 v8, 0x1

    invoke-direct {v6, v2, v0, v8}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v5

    invoke-static {v2, v8}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    move v9, v1

    move-object v10, v4

    move-object v15, v10

    :goto_25
    if-ltz v0, :cond_71

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    iget-object v12, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v13

    invoke-virtual {v12, v11, v13}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v12

    if-eqz v12, :cond_5f

    if-nez v15, :cond_48

    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v15, v11

    goto :goto_6e

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than 1 pip-entering changes in one transition? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-direct {v6, v11}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isHomeOpening(Landroid/window/TransitionInfo$Change;)Z

    move-result v12

    if-eqz v12, :cond_67

    move v9, v8

    goto :goto_6e

    :cond_67
    invoke-direct {v6, v11}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v12

    if-eqz v12, :cond_6e

    move-object v10, v11

    :cond_6e
    :goto_6e
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_71
    if-nez v15, :cond_79

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return v1

    :cond_79
    new-instance v0, Lcom/android/wm/shell/transition/c;

    move-object/from16 v11, p5

    invoke-direct {v0, v6, v7, v9, v11}, Lcom/android/wm/shell/transition/c;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    if-eqz v9, :cond_fc

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_90

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, 0x1fed3c4f

    const-string v11, " Animation is actually mixed since entering-PiP caused us to leave split and return home."

    invoke-static {v2, v9, v1, v11, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_90
    const/4 v1, 0x2

    iput v1, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-eqz v10, :cond_a6

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_a6
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v9, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v10, -0x1

    const/16 v11, 0x9

    move-object v12, v5

    move-object v13, v4

    move-object/from16 v14, p4

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {v5, v8}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_bb
    if-ltz v1, :cond_db

    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    const/high16 v9, 0x400000

    and-int/2addr v2, v9

    if-eqz v2, :cond_d8

    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_db

    :cond_d8
    add-int/lit8 v1, v1, -0x1

    goto :goto_bb

    :cond_db
    :goto_db
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/pip/PipTransitionController;->setEnterAnimationType(I)V

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v9, p4

    invoke-virtual {v1, v15, v3, v9, v0}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v2, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move-object v3, v4

    move-object/from16 v4, p4

    move-object v5, v10

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    goto :goto_11d

    :cond_fc
    move-object/from16 v9, p4

    move-object v10, v0

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_10d

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x2793455

    const-string v11, "  Not leaving split, so just forward animation to Pip-Handler."

    invoke-static {v0, v5, v1, v11, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10d
    iput v8, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    :goto_11d
    return v8
.end method

.method private animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 13

    new-instance v5, Lcom/android/wm/shell/transition/a;

    const/4 v0, 0x2

    invoke-direct {v5, p0, p1, p5, v0}, Lcom/android/wm/shell/transition/a;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iget p5, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    const/4 v6, 0x1

    add-int/2addr p5, v6

    iput p5, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object p5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz p5, :cond_13

    invoke-virtual {p5, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object v1, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    if-nez p0, :cond_27

    iget p0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    sub-int/2addr p0, v6

    iput p0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    const/4 p0, 0x0

    return p0

    :cond_27
    return v6
.end method

.method private animateOpenIntentWithRemoteAndPip(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 18

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    const/4 v9, 0x1

    invoke-static {p2, v9}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_a
    if-ltz v0, :cond_47

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v4, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v2, :cond_2d

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v2, v3

    goto :goto_44

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than 1 pip-entering changes in one transition? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_47
    new-instance v10, Lcom/android/wm/shell/transition/a;

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-direct {v10, p0, p1, v0, v11}, Lcom/android/wm/shell/transition/a;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    if-nez v2, :cond_6b

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v0, :cond_65

    iput v9, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    if-eqz v0, :cond_65

    return v9

    :cond_65
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return v11

    :cond_6b
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_79

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x4e1b3190

    const-string v4, " Splitting PIP into a separate animation because remote-animation likely doesn\'t support it"

    invoke-static {v0, v3, v11, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_79
    const/4 v0, 0x2

    iput v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v11, p4

    invoke-virtual {v1, v2, v0, v11, v10}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v0, :cond_9a

    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    if-eqz v0, :cond_9a

    return v9

    :cond_9a
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v0

    iput-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return v9
.end method

.method private animateRecentsDuringSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 12

    new-instance v5, Lcom/android/wm/shell/transition/b;

    invoke-direct {v5, p0, p1, p4, p5}, Lcom/android/wm/shell/transition/b;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    const/4 p5, 0x1

    iput p5, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object p5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p5, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationStart(Landroid/window/TransitionInfo;)V

    iget-object v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v1, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p2

    if-nez p2, :cond_24

    iget-object p3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationCanceled()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_24
    return p2
.end method

.method private animateUnfold(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 12

    new-instance v5, Lcom/android/wm/shell/transition/a;

    const/4 v0, 0x3

    invoke-direct {v5, p0, p1, p5, v0}, Lcom/android/wm/shell/transition/a;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    const/4 p5, 0x1

    iput p5, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object p5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz p5, :cond_10

    invoke-virtual {p5, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget-object v1, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->lambda$new$0(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->lambda$animateOpenIntentWithRemoteAndPip$1(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->lambda$animateKeyguard$5(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->lambda$animateUnfold$6(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->lambda$animateRecentsDuringSplit$4(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->lambda$animatePendingSplitWithDisplayChange$3(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private isHomeOpening(Landroid/window/TransitionInfo$Change;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private isWallpaper(Landroid/window/TransitionInfo$Change;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isWithinTask(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    :goto_0
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_1a

    :cond_11
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p2

    goto :goto_0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$animateEnterPipFromSplit$2(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 7

    iget v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {p1, p4, p5}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->joinFinishArgs(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iget p4, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez p4, :cond_e

    return-void

    :cond_e
    iget-object p4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1a

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    :cond_1a
    iget-object p0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    invoke-interface {p3, p0, p5}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$animateKeyguard$5(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    iget v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2, p3, p4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$animateOpenIntentWithRemoteAndPip$1(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    iget v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {p1, p3, p4}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->joinFinishArgs(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iget p3, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez p3, :cond_e

    return-void

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    invoke-interface {p2, p0, p4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$animatePendingSplitWithDisplayChange$3(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    iget v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {p1, p3, p4}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->joinFinishArgs(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iget p3, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez p3, :cond_e

    return-void

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$animateRecentsDuringSplit$4(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mAnimateRecentsDuringSplit:Z

    if-eqz p4, :cond_e

    goto :goto_13

    :cond_e
    new-instance p4, Landroid/window/WindowContainerTransaction;

    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    :goto_13
    iget p1, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    if-eq p1, v1, :cond_1d

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p4, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_22

    :cond_1d
    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsPairToPairAnimationFinish(Landroid/window/WindowContainerTransaction;)V

    :goto_22
    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    invoke-interface {p3, p4, p5}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mAnimateRecentsDuringSplit:Z

    return-void
.end method

.method private synthetic lambda$animateUnfold$6(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 6

    iget v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-lez v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2, p3, p4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->getTransitionHandler()Lcom/android/wm/shell/pip/PipTransitionController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p1, :cond_24

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setMixedHandler(Lcom/android/wm/shell/transition/DefaultMixedHandler;)V

    :cond_24
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz p2, :cond_32

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->addMixer(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsMixedHandler;)V

    :cond_32
    invoke-virtual {p4, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    return-void
.end method

.method private subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;
    .registers 6

    new-instance p0, Landroid/window/TransitionInfo;

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    invoke-direct {p0, p2, v1}, Landroid/window/TransitionInfo;-><init>(II)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getTrack()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo;->setTrack(I)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo;->setDebugId(I)V

    if-eqz p3, :cond_3d

    move p2, v0

    :goto_1f
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_3d

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result p2

    if-ge v0, p2, :cond_4d

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/window/TransitionInfo;->addRoot(Landroid/window/TransitionInfo$Root;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_4d
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    return-object p0
.end method

.method private unlinkMissingParents(Landroid/window/TransitionInfo;)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_37

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_34

    :cond_1c
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    :cond_34
    :goto_34
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_37
    return-void
.end method


# virtual methods
.method public animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v6

    const/4 v2, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v9

    invoke-static {v1, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_16
    if-ltz v2, :cond_36

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-direct {p0, v1, v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->isWithinTask(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result v7

    if-eqz v7, :cond_29

    goto :goto_33

    :cond_29
    invoke-virtual {v9, v5}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_36
    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    return v4

    :cond_41
    invoke-direct {p0, v6}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->unlinkMissingParents(Landroid/window/TransitionInfo;)V

    new-instance v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    const/4 v2, 0x2

    move-object v5, p1

    invoke-direct {v1, v2, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    iget-object v7, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v7, :cond_5f

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x109692f

    const/4 v10, 0x0

    const-string v11, " Animation is a mix of display change and split change."

    invoke-static {v7, v8, v4, v11, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5f
    iput v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    new-instance v2, Lcom/android/wm/shell/transition/a;

    move-object/from16 v4, p5

    invoke-direct {v2, p0, v1, v4, v3}, Lcom/android/wm/shell/transition/a;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iget-object v7, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v8, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    iget-object v13, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v2

    invoke-virtual/range {v7 .. v13}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v4

    iput-object v4, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    return v3
.end method

.method public handleRecentsRequest(Landroid/window/WindowContainerTransaction;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->requestImpliesSplitToPip(Landroid/window/TransitionRequestInfo;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_41

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x86b03de

    const-string v5, " Got a PiP-enter request while Split-Screen is active, so treat it as Mixed."

    invoke-static {v0, v4, v2, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    invoke-direct {v2, v1, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/wm/shell/pip/PipTransitionController;->augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addEnterOrExitIfNeeded(Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    return-object v0

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected remote transition inpip-enter-from-split request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    const/4 v4, 0x2

    if-eqz v0, :cond_9b

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v5, 0x3

    if-eqz v0, :cond_69

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v0, v4, :cond_9b

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v0, v5, :cond_9b

    :cond_69
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultMixedHandler handleRequest, handler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    if-nez p2, :cond_86

    return-object v3

    :cond_86
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    invoke-direct {v0, v5, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    return-object p0

    :cond_9b
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_111

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_111

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    if-ne v0, v4, :cond_111

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x7f55aa37

    const-string v4, " Got a going-home request while Split-Screen is foreground, so treat it as Mixed."

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d5
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_fb

    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p2, :cond_eb

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x48aead5e

    const-string v1, " Lean on the remote transition handler to fetch a proper remote via TransitionFilter"

    invoke-static {p2, v0, v2, v1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_eb
    new-instance p2, Landroid/util/Pair;

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions;->getRemoteTransitionHandler()Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-result-object v0

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_fb
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    return-object p0

    :cond_111
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    if-eqz v0, :cond_133

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->hasUnfold(Landroid/window/TransitionRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object p2

    if-eqz p2, :cond_132

    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iput-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_132
    return-object p2

    :cond_133
    return-object v3
.end method

.method public isAnimateRecentsDuringSplit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mAnimateRecentsDuringSplit:Z

    return p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 16

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b5

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    if-eq v1, p4, :cond_17

    goto/16 :goto_9c

    :cond_17
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-gtz v2, :cond_24

    return-void

    :cond_24
    iget v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    goto/16 :goto_9c

    :cond_2b
    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    iget v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    if-ne v2, v3, :cond_4e

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->end()Z

    move-result v2

    if-nez v2, :cond_3b

    return-void

    :cond_3b
    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    iget-object v3, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v3, :cond_9c

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto/16 :goto_9c

    :cond_4e
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    goto :goto_9c

    :cond_54
    const/4 v4, 0x3

    if-ne v2, v4, :cond_69

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    iget-object v3, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v3, :cond_9c

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_9c

    :cond_69
    const/4 v4, 0x4

    if-ne v2, v4, :cond_81

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_76

    iput v3, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    :cond_76
    iget-object v4, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_9c

    :cond_81
    const/4 v3, 0x5

    if-ne v2, v3, :cond_8f

    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_9c

    :cond_8f
    const/4 v3, 0x6

    if-ne v2, v3, :cond_a0

    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :cond_9c
    :goto_9c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Playing a mixed transition with unknown type? "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b5
    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_22

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object v2, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    if-eq v2, p1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_19
    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-nez v0, :cond_26

    return-void

    :cond_26
    iget v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-ne v2, v1, :cond_30

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_53

    :cond_30
    const/4 v1, 0x4

    if-ne v2, v1, :cond_39

    iget-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_53

    :cond_39
    const/4 v1, 0x3

    if-ne v2, v1, :cond_42

    iget-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_53

    :cond_42
    const/4 v0, 0x5

    if-ne v2, v0, :cond_4b

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_53

    :cond_4b
    const/4 v0, 0x6

    if-ne v2, v0, :cond_53

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public requestHasPipEnter(Landroid/window/TransitionRequestInfo;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->requestHasPipEnter(Landroid/window/TransitionRequestInfo;)Z

    move-result p0

    return p0
.end method

.method public setRecentsTransition(Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x1acebd77

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, " Got a recents request while Split-Screen is foreground, so treat it as Mixed."

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iput-object p1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Accepted a recents transition but don\'t know how to handle it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldSplitEnterMixed(Landroid/app/PendingIntent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->isInPipPackage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 15

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_8
    const/4 v4, 0x0

    if-ltz v2, :cond_23

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object v5, v5, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    if-eq v5, p1, :cond_1a

    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_1a
    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    goto :goto_24

    :cond_23
    move-object v2, v4

    :goto_24
    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v5, :cond_4d

    if-eqz v2, :cond_43

    iget v2, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v2, v6, :cond_43

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_40

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x6b154bc1

    const-string v8, "Converting mixed transition into a keyguard transition"

    invoke-static {v2, v5, v7, v8, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_40
    invoke-virtual {p0, p1, v7, v4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_43
    new-instance v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    invoke-direct {v2, v6, p1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    move-object v1, v2

    if-nez v1, :cond_51

    return v7

    :cond_51
    iget v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-ne v2, v3, :cond_5f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_5f
    const/4 v4, 0x2

    if-ne v2, v4, :cond_63

    return v7

    :cond_63
    const/4 v4, 0x3

    if-ne v2, v4, :cond_70

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateOpenIntentWithRemoteAndPip(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_70
    const/4 v4, 0x4

    if-ne v2, v4, :cond_b3

    invoke-static {p2, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_77
    if-ltz v2, :cond_a9

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_a6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_a6
    add-int/lit8 v2, v2, -0x1

    goto :goto_77

    :cond_a9
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateRecentsDuringSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_b3
    if-ne v2, v6, :cond_bf

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_bf
    const/4 v3, 0x6

    if-ne v2, v3, :cond_cc

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateUnfold(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_cc
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Starting mixed animation without a known mixed type? "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
