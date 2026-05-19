.class public final synthetic Lcom/oplus/zoom/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/ZoomRootTaskManager$State;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomRootTaskManager$State;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/o;->a:Lcom/oplus/zoom/ZoomRootTaskManager$State;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/o;->a:Lcom/oplus/zoom/ZoomRootTaskManager$State;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskManager;->b(Lcom/oplus/zoom/ZoomRootTaskManager$State;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
