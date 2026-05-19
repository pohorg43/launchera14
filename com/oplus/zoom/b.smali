.class public final synthetic Lcom/oplus/zoom/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/b;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/zoom/b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$ZoomImpl;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoom/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/b;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/zoom/b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomRootTaskController;I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/zoom/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/b;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/zoom/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/zoom/b;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/oplus/zoom/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/ZoomController$ZoomImpl;

    iget p0, p0, Lcom/oplus/zoom/b;->c:I

    invoke-static {v0, p0}, Lcom/oplus/zoom/ZoomController$ZoomImpl;->c(Lcom/oplus/zoom/ZoomController$ZoomImpl;I)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/oplus/zoom/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget p0, p0, Lcom/oplus/zoom/b;->c:I

    invoke-static {v0, p0}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->b(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;I)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/oplus/zoom/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/ZoomRootTaskController;

    iget p0, p0, Lcom/oplus/zoom/b;->c:I

    invoke-static {v0, p0}, Lcom/oplus/zoom/ZoomRootTaskController;->u(Lcom/oplus/zoom/ZoomRootTaskController;I)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
