.class public final synthetic Lcom/oplus/zoom/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILandroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/zoom/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/a;->b:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput p2, p0, Lcom/oplus/zoom/a;->c:I

    iput-object p3, p0, Lcom/oplus/zoom/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoom/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/a;->b:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput p2, p0, Lcom/oplus/zoom/a;->c:I

    iput-object p3, p0, Lcom/oplus/zoom/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I[Landroid/view/RemoteAnimationTarget;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/a;->b:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput p2, p0, Lcom/oplus/zoom/a;->c:I

    iput-object p3, p0, Lcom/oplus/zoom/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/zoom/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/oplus/zoom/a;->b:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget v1, p0, Lcom/oplus/zoom/a;->c:I

    iget-object p0, p0, Lcom/oplus/zoom/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->i(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILcom/oplus/zoomwindow/IOplusZoomTaskInfoCallback;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/oplus/zoom/a;->b:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget v1, p0, Lcom/oplus/zoom/a;->c:I

    iget-object p0, p0, Lcom/oplus/zoom/a;->d:Ljava/lang/Object;

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->h(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I[Landroid/view/RemoteAnimationTarget;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/oplus/zoom/a;->b:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget v1, p0, Lcom/oplus/zoom/a;->c:I

    iget-object p0, p0, Lcom/oplus/zoom/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->c(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;ILandroid/view/IRemoteAnimationFinishedCallback;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
