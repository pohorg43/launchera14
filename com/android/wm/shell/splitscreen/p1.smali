.class public final synthetic Lcom/android/wm/shell/splitscreen/p1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic c:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/splitscreen/p1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/p1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/p1;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/p1;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/p1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/p1;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->E(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/p1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/p1;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->j(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
