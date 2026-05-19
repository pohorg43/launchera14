.class public final synthetic Lcom/android/wm/shell/splitscreen/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/i;->a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/i;->b:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/i;->a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/i;->b:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->b(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
