.class public final synthetic Lcom/android/wm/shell/splitscreen/c1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroid/view/SurfaceControl;

.field public final synthetic e:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/c1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/c1;->b:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/c1;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/c1;->d:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/c1;->e:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/c1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/c1;->b:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/c1;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/c1;->d:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/c1;->e:Landroid/view/SurfaceControl$Transaction;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->b(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
