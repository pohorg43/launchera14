.class Lcom/android/wm/shell/pip/PipTransition$2;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/PipTransition;->fadeExistingPip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$2;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/PipTransition$2;->val$show:Z

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z
    .registers 6

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-nez p4, :cond_2d

    iget-boolean p4, p0, Lcom/android/wm/shell/pip/PipTransition$2;->val$show:Z

    if-eqz p4, :cond_13

    iget p0, p3, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2, p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2d

    :cond_13
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$2;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTransition;->access$000(Lcom/android/wm/shell/pip/PipTransition;)Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    return p0
.end method
