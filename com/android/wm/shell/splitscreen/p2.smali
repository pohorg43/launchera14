.class public final synthetic Lcom/android/wm/shell/splitscreen/p2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/p2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/p2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/p2;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/p2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/p2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/p2;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/p2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/p2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/p2;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/p2;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/p2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/p2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->b(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/p2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/p2;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->a(Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/p2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/p2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->G(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
