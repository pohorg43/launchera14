.class Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->lambda$onOneHandedAnimationEnd$1(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->lambda$onOneHandedAnimationCancel$2(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->lambda$onOneHandedAnimationStart$0(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void
.end method

.method private synthetic lambda$onOneHandedAnimationCancel$2(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->removeAnimator(Landroid/window/WindowContainerToken;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz v1, :cond_29

    const/16 v1, 0x2a

    goto :goto_2b

    :cond_29
    const/16 v1, 0x2b

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->cancelCUJTracing(I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getDestinationOffset()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    :cond_3c
    return-void
.end method

.method private synthetic lambda$onOneHandedAnimationEnd$1(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->removeAnimator(Landroid/window/WindowContainerToken;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz v1, :cond_29

    const/16 v1, 0x2a

    goto :goto_2b

    :cond_29
    const/16 v1, 0x2b

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->endCUJTracing(I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getDestinationOffset()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    :cond_3c
    return-void
.end method

.method private synthetic lambda$onOneHandedAnimationStart$0(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    move p1, v0

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$200(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$200(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_21
    if-ltz v1, :cond_35

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$200(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;->onStartTransition(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_35
    return-void
.end method


# virtual methods
.method public onOneHandedAnimationCancel(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 4

    const-string/jumbo v0, "onOneHandedAnimationCancel: mAnimationController.isAnimatorsConsumed = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandedDisplayAreaOrganizer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/wm/shell/onehanded/k;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/onehanded/k;-><init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOneHandedAnimationEnd(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 4

    const-string/jumbo p1, "onOneHandedAnimationEnd: mAnimationController.isAnimatorsConsumed = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$100(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneHandedDisplayAreaOrganizer"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/wm/shell/onehanded/q;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/wm/shell/onehanded/q;-><init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOneHandedAnimationStart(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 4

    new-instance v0, Lcom/android/wm/shell/onehanded/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/onehanded/q;-><init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->access$000(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
