.class public final synthetic Lcom/android/wm/shell/back/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/back/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/back/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/back/m;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/back/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-static {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->a(Lcom/android/wm/shell/back/CrossTaskBackAnimation;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/wm/shell/back/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->d(Lcom/android/wm/shell/back/BackAnimationController;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
