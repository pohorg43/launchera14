.class public final synthetic Lcom/android/wm/shell/splitscreen/r1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/r1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/r1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/r1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/r1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/r1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/r1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/r1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/r1;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/r1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/r1;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/r1;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->z(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/r1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/r1;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/r1;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->b(Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
