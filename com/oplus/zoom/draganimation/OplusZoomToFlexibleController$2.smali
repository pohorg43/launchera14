.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_1b

    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppNotSupportWarn(Ljava/lang/String;I)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V

    :goto_1b
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
