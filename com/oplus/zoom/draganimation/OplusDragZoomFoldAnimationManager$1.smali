.class Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 p1, 0x2

    if-eq v0, p1, :cond_b

    goto :goto_32

    :cond_b
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->finishGestureAnimation()V

    goto :goto_32

    :cond_13
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->transferToState(I)V

    goto :goto_32

    :cond_23
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->allowEnterSplitMode()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->startGestureAnimation()V

    :cond_32
    :goto_32
    return-void
.end method
