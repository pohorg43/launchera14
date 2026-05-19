.class Lcom/android/wm/shell/splitscreen/StageCoordinator$5;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$wrapAsSplitRemoteAnimation$5(Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$apps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;->val$apps:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;->val$apps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2800(Lcom/android/wm/shell/splitscreen/StageCoordinator;[Landroid/view/RemoteAnimationTarget;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$5;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    return-void
.end method
