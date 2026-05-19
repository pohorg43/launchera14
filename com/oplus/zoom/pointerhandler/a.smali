.class public final synthetic Lcom/oplus/zoom/pointerhandler/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;III)V
    .registers 5

    iput p4, p0, Lcom/oplus/zoom/pointerhandler/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/a;->b:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iput p2, p0, Lcom/oplus/zoom/pointerhandler/a;->c:I

    iput p3, p0, Lcom/oplus/zoom/pointerhandler/a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/a;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/a;->b:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/a;->c:I

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->b(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;II)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/a;->b:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iget v1, p0, Lcom/oplus/zoom/pointerhandler/a;->c:I

    iget p0, p0, Lcom/oplus/zoom/pointerhandler/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->a(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;II)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
