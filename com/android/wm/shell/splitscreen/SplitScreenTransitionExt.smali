.class public Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;,
        Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;
    }
.end annotation


# static fields
.field public static final TRANSIT_MOVE_TASKS_TO_SPLIT_STAGES:I = 0x451

.field private static final TRANSIT_OPLUS_SPLIT_SCREEN:I = 0x64

.field public static final TRANSIT_SPLIT_SCREEN_OPEN_MINIMIZED_TO_NORMAL:I = 0x44d

.field public static final TRANSIT_SPLIT_SCREEN_OPEN_TO_MINIMIZED:I = 0x44e

.field public static final TRANSIT_SPLIT_SCREEN_OPEN_TO_MINIMIZED_BOTTMO_OR_RIGHT:I = 0x44f

.field public static final TRANSIT_SPLIT_SCREEN_OPEN_TO_NORMAL_BY_APPLICATION:I = 0x450


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mEvic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraTransitionFinishedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

.field private final mSplitScreenTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field private final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SplitScreenTransitionExt"

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mExtraTransitionFinishedCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mEvic:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mSplitScreenTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->lambda$setFinishCallbackForDismissTransition$1(IZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mEvic:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic b(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->lambda$setFinishCallbackForDismissTransition$0(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->lambda$setFinishCallbackForDismissTransition$2(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private isTargetDismissTransitionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)Z
    .registers 2

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mDismissSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static synthetic lambda$setFinishCallbackForDismissTransition$0(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetIsSnappingToDismiss()V

    return-void
.end method

.method private synthetic lambda$setFinishCallbackForDismissTransition$1(IZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSnappedToDismiss：onDismissTransitionConsumed abort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitionExt"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_22

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetStateOnDismissTransitionConsumed(I)V

    :cond_22
    return-void
.end method

.method private synthetic lambda$setFinishCallbackForDismissTransition$2(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetDividerVisibilityDefer()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setNeedEnterSplitScreenNormal(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskId(I)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetExitSplitType()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsExiting(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setIsRecentsInSplitAnimating(Z)V

    return-void
.end method

.method private setFinishCallbackForDismissTransition(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)V
    .registers 4

    iget v0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    sget-object v0, Lcom/android/wm/shell/splitscreen/w0;->a:Lcom/android/wm/shell/splitscreen/w0;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->addExtraTransitionFinishedCallbacks(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget v1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, -0x1

    goto :goto_1e

    :cond_16
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result v0

    :goto_1e
    new-instance v1, Lcom/android/wm/shell/splitscreen/u0;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/splitscreen/u0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;I)V

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->setConsumedCallback(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;)V

    :cond_26
    new-instance v0, Lcom/android/wm/shell/splitscreen/v0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/v0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->addExtraTransitionFinishedCallbacks(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;)V

    return-void
.end method


# virtual methods
.method public addExtraTransitionFinishedCallbacks(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->addExtraTransitionFinishedCallbacks(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V

    return-void
.end method

.method public addExtraTransitionFinishedCallbacks(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mExtraTransitionFinishedCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTransitSessionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mDismissSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-ne v0, p1, :cond_b

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    :cond_b
    return-void
.end method

.method public clearTransitSessionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->clearTransitSessionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)V

    :cond_c
    return-void
.end method

.method public getDismissTransitionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    if-eqz p0, :cond_d

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mDismissSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-ne v1, p1, :cond_d

    return-object p0

    :cond_d
    return-object v0
.end method

.method public getDismissTransitionWrapperUncheck()Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    return-object p0
.end method

.method public getPendingDismiss()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mSplitScreenTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    return-object p0
.end method

.method public hasPendingDismiss()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mSplitScreenTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasPendingEnter()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mSplitScreenTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public playDragDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/window/WindowContainerToken;)V
    .registers 9

    const/4 p0, 0x1

    invoke-static {p2, p0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result p1

    :goto_5
    if-ltz p1, :cond_2e

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p5

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p6

    if-eq p6, p0, :cond_1e

    const/4 p7, 0x3

    if-ne p6, p7, :cond_2b

    :cond_1e
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p4

    and-int/lit16 p4, p4, 0x200

    if-eqz p4, :cond_2b

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-virtual {p3, p5, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2b
    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_2e
    return-void
.end method

.method public setDismissTransitionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;II)V
    .registers 5
    .param p2  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mNeedToTop:Z

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_22

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mPendingDismissWrapper:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$DismissSessionWrapper;->mToTopAppTaskToken:Landroid/window/WindowContainerToken;

    :cond_22
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->setFinishCallbackForDismissTransition(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;)V

    return-void
.end method

.method public transitionOnFinished(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 7

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mExtraTransitionFinishedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mExtraTransitionFinishedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mExtraTransitionFinishedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->onFinished(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mExtraTransitionFinishedCallbacks:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mEvic:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->mEvic:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->clearTransitSessionWrapper(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;)V

    return-void
.end method

.method public transitionSessionOnConsumed(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V
    .registers 4

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->transitionOnFinished(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public transitionSessionOnFinished(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->transitionOnFinished(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method
