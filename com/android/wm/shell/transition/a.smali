.class public final synthetic Lcom/android/wm/shell/transition/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V
    .registers 6

    iput p4, p0, Lcom/android/wm/shell/transition/a;->a:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/transition/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/transition/a;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_46

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/wm/shell/transition/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object p0, p0, Lcom/android/wm/shell/transition/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->e(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :pswitch_16  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/transition/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object p0, p0, Lcom/android/wm/shell/transition/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->d(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :pswitch_26  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/transition/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object p0, p0, Lcom/android/wm/shell/transition/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->g(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/transition/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object p0, p0, Lcom/android/wm/shell/transition/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->c(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :goto_46
    iget-object v0, p0, Lcom/android/wm/shell/transition/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, p0, Lcom/android/wm/shell/transition/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object p0, p0, Lcom/android/wm/shell/transition/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->b(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_26  #00000001
        :pswitch_16  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
