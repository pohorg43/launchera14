.class public final synthetic Lcom/android/wm/shell/transition/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic b:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/j;->a:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p2, p0, Lcom/android/wm/shell/transition/j;->b:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/j;->a:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object p0, p0, Lcom/android/wm/shell/transition/j;->b:Landroid/window/WindowContainerTransaction;

    invoke-static {v0, p0}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->a(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
