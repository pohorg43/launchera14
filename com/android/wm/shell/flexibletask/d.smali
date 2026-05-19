.class public final synthetic Lcom/android/wm/shell/flexibletask/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroid/animation/ValueAnimator;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V
    .registers 8

    iput p6, p0, Lcom/android/wm/shell/flexibletask/d;->a:I

    const/4 v0, 0x1

    if-eq p6, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/d;->b:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/d;->c:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/d;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/wm/shell/flexibletask/d;->e:Landroid/animation/ValueAnimator;

    iput-object p5, p0, Lcom/android/wm/shell/flexibletask/d;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/flexibletask/d;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_30

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/d;->b:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/d;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/flexibletask/d;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/flexibletask/d;->e:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/d;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->i(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/d;->b:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/d;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/flexibletask/d;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/flexibletask/d;->e:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/d;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->j(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/d;->b:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/d;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/flexibletask/d;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/flexibletask/d;->e:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/d;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->h(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :goto_30
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/d;->b:Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/d;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/flexibletask/d;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/flexibletask/d;->e:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/d;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->k(Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
