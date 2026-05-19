.class public final Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/transition/ZoomTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActiveTransition"
.end annotation


# instance fields
.field public animInfo:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

.field public cancel:Z

.field public finishCallback:Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;

.field public mStartT:Landroid/view/SurfaceControl$Transaction;

.field public rootTaskSurface:Landroid/view/SurfaceControl;

.field public running:Z

.field public seqId:I

.field public targets:[Landroid/view/RemoteAnimationTarget;

.field public taskBound:Landroid/graphics/Rect;

.field public taskSurface:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

.field public transitionFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/transition/ZoomTransitionManager;ILandroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->running:Z

    iput-boolean p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->cancel:Z

    iput p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->seqId:I

    iput-object p3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->rootTaskSurface:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->animInfo:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iput-object p5, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->taskBound:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->lambda$onAnimationEnd$1()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->lambda$cancel$0()V

    return-void
.end method

.method private synthetic lambda$cancel$0()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->transitionFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->transitionFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->cancel:Z

    iget-boolean v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->running:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {v1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$200(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->cancelAnimation()V

    :cond_10
    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->finishCallback:Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;->onTransitionEnd()V

    :cond_17
    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->transitionFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {v1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$300(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    iget p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->seqId:I

    invoke-static {v1, p0, v0}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$400(Lcom/oplus/zoom/transition/ZoomTransitionManager;IZ)V

    return-void
.end method

.method public notifyReleaseDragBg()V
    .registers 3

    const-string v0, "ZoomAnimation"

    const-string v1, "notifyReleaseDragBg "

    invoke-static {v0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->finishCallback:Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;->notifyReleaseDragBg()V

    :cond_e
    return-void
.end method

.method public onAnimationCancel(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const-string p1, "onAnimationCancel, seqId: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->seqId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomAnimation"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const-string p1, "onAnimationEnd, seqId: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->seqId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomAnimation"

    invoke-static {p2, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->animInfo:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->isOpeningTransition(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$000(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->setReadyForShadowsRadius(Z)V

    :cond_2a
    iget-boolean p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->cancel:Z

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->finishCallback:Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;

    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;->onTransitionEnd()V

    :cond_35
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->transitionFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz p1, :cond_4b

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$300(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/common/c;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4b
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    iget p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->seqId:I

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$400(Lcom/oplus/zoom/transition/ZoomTransitionManager;IZ)V

    :cond_53
    return-void
.end method

.method public onAnimationStart(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    const-string p1, "onAnimationStart, seqId: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->seqId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomAnimation"

    invoke-static {v0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->animInfo:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->isOpeningTransition(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$000(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->showZoomDecorView(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_49

    :cond_2b
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->animInfo:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/zoom/animation/ZoomAnimationUtils;->isClosingTransition(I)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$000(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->hideZoomDecorView(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$000(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->setReadyForShadowsRadius(Z)V

    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->targets:[Landroid/view/RemoteAnimationTarget;

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_64

    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v2, :cond_64

    array-length v2, p1

    :goto_54
    if-ge v0, v2, :cond_64

    aget-object v3, p1, v0

    if-eqz v3, :cond_61

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_61

    invoke-virtual {p2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_64
    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->taskSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_88

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_88

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->taskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->rootTaskSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_88

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->taskSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->rootTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_88
    return-void
.end method

.method public setAnimTarget([Landroid/view/RemoteAnimationTarget;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->targets:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method

.method public setFinishCallback(Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->finishCallback:Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;

    return-void
.end method

.method public setStartTransition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setTaskLeash(Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->taskSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setTransitionFinishCallback(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->transitionFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method

.method public start()V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_31

    const-string v0, " will merge "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {v1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$100(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {v0}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$100(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_31
    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {v0}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$200(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->animInfo:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iget-object v3, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->taskBound:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->rootTaskSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    invoke-static {v0}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->access$100(Lcom/oplus/zoom/transition/ZoomTransitionManager;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->startAnimation(Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$ActiveTransition;->running:Z

    return-void
.end method
