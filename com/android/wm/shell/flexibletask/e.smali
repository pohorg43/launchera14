.class public final synthetic Lcom/android/wm/shell/flexibletask/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/animation/ValueAnimator;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;I)V
    .registers 6

    iput p4, p0, Lcom/android/wm/shell/flexibletask/e;->a:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p4, v0, :cond_13

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/e;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/e;->c:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/e;->d:Ljava/lang/Runnable;

    return-void

    :cond_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/e;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/e;->c:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/e;->d:Ljava/lang/Runnable;

    return-void

    :cond_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexibletask/e;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/wm/shell/flexibletask/e;->c:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/flexibletask/e;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/flexibletask/e;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_24

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/e;->c:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/e;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->d(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :pswitch_10  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/e;->c:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/e;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->e(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1a  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/e;->c:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/e;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->b(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :goto_24
    iget-object v0, p0, Lcom/android/wm/shell/flexibletask/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/flexibletask/e;->c:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/flexibletask/e;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionHandler;->a(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_10  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
