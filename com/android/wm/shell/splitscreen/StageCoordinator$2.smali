.class Lcom/android/wm/shell/splitscreen/StageCoordinator$2;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$isEnteringSplit:Z

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->val$isEnteringSplit:Z

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->val$position:I

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinator$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->lambda$onAnimationStart$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/StageCoordinator$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->lambda$onAnimationCancelled$1()V

    return-void
.end method

.method private synthetic lambda$onAnimationCancelled$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v1, :cond_13

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$800(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object p0

    goto :goto_17

    :cond_13
    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object p0

    :goto_17
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->val$isEnteringSplit:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/l1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/l1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator$2;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 6

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->val$isEnteringSplit:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p3, Lcom/android/wm/shell/splitscreen/k1;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/splitscreen/k1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator$2;)V

    invoke-interface {p1, p3}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_27
    if-eqz p5, :cond_37

    :try_start_29
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_37

    :catch_2d
    move-exception p1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$700()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Error finishing legacy transition: "

    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    :goto_37
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->val$isEnteringSplit:Z

    if-nez p1, :cond_52

    if-eqz p2, :cond_52

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->val$position:I

    invoke-virtual {p3, p4, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEvictNonOpeningChildTasks(I[Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_52
    return-void
.end method
