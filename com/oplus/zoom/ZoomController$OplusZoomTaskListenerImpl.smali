.class Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;
.super Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/ZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusZoomTaskListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ZoomController;


# direct methods
.method private constructor <init>(Lcom/oplus/zoom/ZoomController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-direct {p0}, Lcom/oplus/zoomwindow/IOplusZoomTaskListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController;Lcom/oplus/zoom/ZoomController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;-><init>(Lcom/oplus/zoom/ZoomController;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$onZoomEnter$0(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$notifySystemEvent$4(I)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILandroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$onRemoteTransitionCancel$8(ILandroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$onZoomTaskChanged$1(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$notifyZoomTaskEvent$3(II)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$requestChangeZoomState$5(IIZ)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$notifyShowCompatibilityToast$9(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic h(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I[Landroid/view/RemoteAnimationTarget;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$onRemoteTransitionStart$6(I[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public static synthetic i(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$getCurrentZoomInfo$7(ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V

    return-void
.end method

.method public static synthetic j(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->lambda$onZoomExit$2(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$getCurrentZoomInfo$7(ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->getCurrentZoomTaskInfo(ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V

    return-void
.end method

.method private synthetic lambda$notifyShowCompatibilityToast$9(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$100(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oplus/zoom/ui/IZoomUiManager;->showCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$notifySystemEvent$4(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_d

    :cond_4
    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/ZoomRootTaskController;->onRecentHomeClicked()V

    :goto_d
    return-void
.end method

.method private synthetic lambda$notifyZoomTaskEvent$3(II)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->onZoomTaskEvent(II)V

    return-void
.end method

.method private synthetic lambda$onRemoteTransitionCancel$8(ILandroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$200(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/transition/ZoomTransitionController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/transition/ZoomTransitionController;->onRemoteTransitionCancel(ILandroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private synthetic lambda$onRemoteTransitionStart$6(I[Landroid/view/RemoteAnimationTarget;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$200(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/transition/ZoomTransitionController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/transition/ZoomTransitionController;->onRemoteTransitionStart(I[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method private synthetic lambda$onZoomEnter$0(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/zoom/ZoomRootTaskController;->onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic lambda$onZoomExit$2(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/ZoomRootTaskController;->onZoomExit(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$onZoomTaskChanged$1(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->onZoomTaskChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    return-void
.end method

.method private synthetic lambda$requestChangeZoomState$5(IIZ)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/zoom/ZoomRootTaskController;->requestChangeZoomState(IIZZ)V

    return-void
.end method


# virtual methods
.method public getCurrentZoomInfo(ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/a;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v8, Lcom/oplus/zoom/d;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oplus/zoom/d;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v8}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySystemEvent(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/b;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/b;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyZoomTaskEvent(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/c;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteTransitionCancel(ILandroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/a;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILandroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteTransitionStart(I[Landroid/view/RemoteAnimationTarget;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/a;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I[Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomEnter(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/zoom/h;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomExit(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/g;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onZoomTaskChanged(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/f;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/f;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestChangeZoomState(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/zoom/e;-><init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IIZ)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
