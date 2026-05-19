.class public final synthetic Lcom/android/wm/shell/splitscreen/j1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/splitscreen/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/j1;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->y(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->j(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->c(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;->a(Lcom/android/wm/shell/splitscreen/StageCoordinator$1;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/j1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->A(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
