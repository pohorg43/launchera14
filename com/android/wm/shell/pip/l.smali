.class public final synthetic Lcom/android/wm/shell/pip/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;I)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/pip/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/l;->b:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/pip/l;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/pip/l;->b:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->clearContentOverlay()V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
