.class public final synthetic Lcom/android/wm/shell/transition/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic b:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/p;->a:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/transition/p;->b:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/transition/p;->a:Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/transition/p;->b:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {v0, p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->f(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method
