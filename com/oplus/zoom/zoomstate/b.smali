.class public final synthetic Lcom/oplus/zoom/zoomstate/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/zoom/zoomstate/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/b;->b:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/oplus/zoom/zoomstate/b;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/b;->b:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->d(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/b;->b:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->b(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
