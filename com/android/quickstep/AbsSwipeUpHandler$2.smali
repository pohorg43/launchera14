.class Lcom/android/quickstep/AbsSwipeUpHandler$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_10

    goto :goto_1b

    :cond_10
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endLauncherTransitionController()V

    goto :goto_3f

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2e

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p1, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->interceptTransitionSurfaceRelease(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_2e
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p1, p1, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 p1, 0x100

    invoke-static {p0, v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$2;->accept(Ljava/lang/Integer;)V

    return-void
.end method
