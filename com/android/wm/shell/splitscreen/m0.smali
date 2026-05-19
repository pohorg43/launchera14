.class public final synthetic Lcom/android/wm/shell/splitscreen/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomRootTaskManager;Landroid/view/SurfaceControl;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/m0;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/ZoomRootTaskManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->a(Lcom/oplus/zoom/ZoomRootTaskManager;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->d(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->f(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/m0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/m0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    invoke-static {v0, p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->m(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
