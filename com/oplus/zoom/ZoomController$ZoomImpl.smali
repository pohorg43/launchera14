.class Lcom/oplus/zoom/ZoomController$ZoomImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/IZoom;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/ZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomImpl"
.end annotation


# instance fields
.field private mController:Lcom/oplus/zoom/ZoomController;

.field public final synthetic this$0:Lcom/oplus/zoom/ZoomController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ZoomController;Lcom/oplus/zoom/ZoomController;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->mController:Lcom/oplus/zoom/ZoomController;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/ZoomController$ZoomImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/ZoomController$ZoomImpl;->lambda$requestChangeZoomState$1(II)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/ZoomController$ZoomImpl;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomController$ZoomImpl;->lambda$onConfigChanged$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/ZoomController$ZoomImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ZoomController$ZoomImpl;->lambda$hideZoomWindow$0(I)V

    return-void
.end method

.method private synthetic lambda$hideZoomWindow$0(I)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/zoom/ZoomRootTaskController;->requestChangeZoomState(IIZZ)V

    return-void
.end method

.method private synthetic lambda$onConfigChanged$2(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {v0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$100(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/zoom/ui/IZoomUiManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$requestChangeZoomState$1(II)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oplus/zoom/ZoomRootTaskController;->requestChangeZoomState(IIZZ)V

    return-void
.end method


# virtual methods
.method public hideZoomWindow(I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {v0}, Lcom/oplus/zoom/ZoomController;->access$400(Lcom/oplus/zoom/ZoomController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/b;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/b;-><init>(Lcom/oplus/zoom/ZoomController$ZoomImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {v0}, Lcom/oplus/zoom/ZoomController;->access$400(Lcom/oplus/zoom/ZoomController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/i;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/i;-><init>(Lcom/oplus/zoom/ZoomController$ZoomImpl;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestChangeZoomState(II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {v0}, Lcom/oplus/zoom/ZoomController;->access$400(Lcom/oplus/zoom/ZoomController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    iget-object v0, v0, Lcom/oplus/zoom/ZoomController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/oplus/zoom/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/c;-><init>(Lcom/oplus/zoom/ZoomController$ZoomImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startZoomWindow(ILandroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {v0}, Lcom/oplus/zoom/ZoomController;->access$400(Lcom/oplus/zoom/ZoomController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$ZoomImpl;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$500(Lcom/oplus/zoom/ZoomController;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
