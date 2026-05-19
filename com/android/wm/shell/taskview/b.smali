.class public final synthetic Lcom/android/wm/shell/taskview/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/taskview/TaskViewTaskController;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/b;->a:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iput p2, p0, Lcom/android/wm/shell/taskview/b;->b:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/b;->a:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget p0, p0, Lcom/android/wm/shell/taskview/b;->b:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->t(Lcom/android/wm/shell/taskview/TaskViewTaskController;ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
