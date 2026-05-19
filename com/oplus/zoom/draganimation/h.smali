.class public final synthetic Lcom/oplus/zoom/draganimation/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/h;->a:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/h;->a:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;

    invoke-static {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;->b(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
