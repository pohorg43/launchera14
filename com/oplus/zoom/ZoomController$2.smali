.class Lcom/oplus/zoom/ZoomController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher$SplitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ZoomController;->lambda$initialize$0(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
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

    iput-object p1, p0, Lcom/oplus/zoom/ZoomController$2;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplitDragAnimationEnd(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$2;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->onSplitDragAnimationEnd(Z)V

    return-void
.end method

.method public onSplitDragAnimationStart(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/ZoomController$2;->this$0:Lcom/oplus/zoom/ZoomController;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomController;->access$300(Lcom/oplus/zoom/ZoomController;)Lcom/oplus/zoom/ZoomRootTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->onSplitDragAnimationStart(Z)V

    return-void
.end method
