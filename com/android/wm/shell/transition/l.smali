.class public final synthetic Lcom/android/wm/shell/transition/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/os/IBinder;

.field public final synthetic d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/transition/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/l;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/l;->c:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/wm/shell/transition/l;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/l;->c:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/transition/l;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p4, p0, Lcom/android/wm/shell/transition/l;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/transition/l;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/transition/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;

    iget-object v1, p0, Lcom/android/wm/shell/transition/l;->c:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/l;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object p0, p0, Lcom/android/wm/shell/transition/l;->e:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->a(Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/transition/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/l;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/transition/l;->c:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/l;->d:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->d(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
