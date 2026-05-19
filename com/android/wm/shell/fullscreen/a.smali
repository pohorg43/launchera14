.class public final synthetic Lcom/android/wm/shell/fullscreen/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/fullscreen/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/a;->c:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/fullscreen/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/fullscreen/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/a;->c:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/fullscreen/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/fullscreen/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/a;->c:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->a(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/a;->c:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->g(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
