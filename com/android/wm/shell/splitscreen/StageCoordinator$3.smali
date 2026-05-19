.class Lcom/android/wm/shell/splitscreen/StageCoordinator$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentLegacy(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$isEnteringSplit:Z

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinator$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->lambda$onAnimationStart$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$isEnteringSplit:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p3, Lcom/android/wm/shell/splitscreen/m1;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/splitscreen/m1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator$3;)V

    invoke-interface {p1, p3}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_27
    if-eqz p2, :cond_3d

    const/4 p1, 0x0

    :goto_2a
    array-length p3, p2

    if-ge p1, p3, :cond_3d

    aget-object p3, p2, p1

    iget p3, p3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez p3, :cond_3a

    aget-object p3, p2, p1

    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p6, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    :cond_3d
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz p5, :cond_50

    :try_start_42
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_50

    :catch_46
    move-exception p1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$700()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Error finishing legacy transition: "

    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    :goto_50
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$isEnteringSplit:Z

    if-nez p1, :cond_6b

    if-eqz p2, :cond_6b

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->val$position:I

    invoke-virtual {p3, p4, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEvictNonOpeningChildTasks(I[Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$200(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_6b
    return-void
.end method
