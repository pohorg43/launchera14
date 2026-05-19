.class Lcom/android/wm/shell/splitscreen/StageCoordinator$4;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;->wrapAsSplitRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$adapter:Landroid/view/RemoteAnimationAdapter;

.field public final synthetic val$evictWct:Landroid/window/WindowContainerTransaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onRemoteAnimationCancelled(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1100(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZLandroid/view/SurfaceControl$Transaction;)V

    :try_start_12
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_26

    :catch_1c
    move-exception p0

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error starting remote animation"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 12

    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$4$1;

    invoke-direct {v5, p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$4$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator$4;Landroid/view/IRemoteAnimationFinishedCallback;)V

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p5}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    move-result-object p5

    invoke-static {p5}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    :try_start_e
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p5}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    const-class p5, Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-static {p5, p4, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_34

    :catch_2a
    move-exception p0

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error starting remote animation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method
