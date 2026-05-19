.class Lcom/oplus/zoom/ZoomController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ZoomController;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ZoomController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ZoomController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController$1;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    const-string v0, "onTaskMovedToFront, task id:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$1;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$100(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/zoom/ui/IZoomUiManager;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 2

    const-string p0, "ZoomController"

    const-string p1, "onTaskRemoved"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
