.class public final synthetic Lcom/android/wm/shell/splitscreen/s1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Rect;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/s1;->a:I

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/s1;->b:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/s1;->c:F

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/s1;->a:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/s1;->b:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/s1;->c:F

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->l(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
