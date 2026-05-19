.class Lcom/android/wm/shell/splitscreen/SplitScreenController$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final synthetic val$position:I

.field public final synthetic val$result:[I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;[II)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->val$result:[I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->val$position:I

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEvictInvisibleChildTasks(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$200(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 6

    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception p1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Failed to invoke onAnimationFinished"

    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->val$result:[I

    const/4 p3, 0x0

    aget p4, p1, p3

    if-eqz p4, :cond_1a

    aget p1, p1, p3

    const/4 p3, 0x2

    if-ne p1, p3, :cond_31

    :cond_1a
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->val$position:I

    invoke-virtual {p3, p4, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEvictNonOpeningChildTasks(I[Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$200(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_31
    return-void
.end method
