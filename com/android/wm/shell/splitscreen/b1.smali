.class public final synthetic Lcom/android/wm/shell/splitscreen/b1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/splitscreen/b1;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/b1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/b1;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/b1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->z(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/b1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->D(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/b1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->A(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
