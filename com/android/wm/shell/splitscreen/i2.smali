.class public final synthetic Lcom/android/wm/shell/splitscreen/i2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Landroid/view/SurfaceControl;

.field public final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic c:Landroid/graphics/Point;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/i2;->a:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/i2;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/i2;->c:Landroid/graphics/Point;

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/i2;->d:Z

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/i2;->a:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/i2;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/i2;->c:Landroid/graphics/Point;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/i2;->d:Z

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->e(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
