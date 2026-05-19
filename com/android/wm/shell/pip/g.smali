.class public final synthetic Lcom/android/wm/shell/pip/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/pip/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/pip/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/pip/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/g;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->q(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->c(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/wm/shell/pip/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorManager;->b(Lcom/oplus/zoom/zoommenu/ZoomDecorManager;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
