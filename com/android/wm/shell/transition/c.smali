.class public final synthetic Lcom/android/wm/shell/transition/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public final synthetic b:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/c;->a:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/c;->b:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iput-boolean p3, p0, Lcom/android/wm/shell/transition/c;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/transition/c;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/transition/c;->a:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/c;->b:Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-boolean v2, p0, Lcom/android/wm/shell/transition/c;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/transition/c;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->a(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method
