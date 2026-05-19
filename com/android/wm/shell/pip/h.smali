.class public final synthetic Lcom/android/wm/shell/pip/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/pip/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/h;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/pip/h;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->c(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/wm/shell/pip/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->a(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
