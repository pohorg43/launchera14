.class public final synthetic Lcom/android/wm/shell/splitscreen/animation/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

.field public final synthetic c:Landroid/animation/Animator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;I)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/splitscreen/animation/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/a;->b:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/animation/a;->c:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/animation/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/a;->b:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/a;->c:Landroid/animation/Animator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->a(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/a;->b:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/a;->c:Landroid/animation/Animator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->c(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
