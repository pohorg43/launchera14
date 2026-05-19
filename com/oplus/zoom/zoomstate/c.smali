.class public final synthetic Lcom/oplus/zoom/zoomstate/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/c;->a:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/c;->a:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->k(Lcom/oplus/zoom/zoomstate/ZoomStateManager;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
