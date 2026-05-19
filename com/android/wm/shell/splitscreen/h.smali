.class public final synthetic Lcom/android/wm/shell/splitscreen/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/h;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/h;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/h;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->c(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/h;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->a(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Ljava/util/List;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
