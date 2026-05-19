.class public final synthetic Lcom/android/wm/shell/transition/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic d:Landroid/window/RemoteTransition;

.field public final synthetic e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic g:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/k;->a:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    iput-object p2, p0, Lcom/android/wm/shell/transition/k;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/transition/k;->c:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/transition/k;->d:Landroid/window/RemoteTransition;

    iput-object p5, p0, Lcom/android/wm/shell/transition/k;->e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p6, p0, Lcom/android/wm/shell/transition/k;->f:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/wm/shell/transition/k;->g:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/transition/k;->a:Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    iget-object v1, p0, Lcom/android/wm/shell/transition/k;->b:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/k;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/transition/k;->d:Landroid/window/RemoteTransition;

    iget-object v4, p0, Lcom/android/wm/shell/transition/k;->e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v5, p0, Lcom/android/wm/shell/transition/k;->f:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/wm/shell/transition/k;->g:Landroid/window/WindowContainerTransaction;

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;->a(Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
