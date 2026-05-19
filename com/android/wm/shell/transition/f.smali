.class public final synthetic Lcom/android/wm/shell/transition/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/transition/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/f;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/transition/f;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/wm/shell/transition/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/transition/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/f;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/transition/f;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/wm/shell/transition/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/f;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/transition/f;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/wm/shell/transition/f;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/transition/f;->a:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_36

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/transition/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/transition/f;->d:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/transition/f;->e:Ljava/lang/Object;

    check-cast v2, Landroid/window/TransitionInfo;

    iget-object v3, p0, Lcom/android/wm/shell/transition/f;->c:Ljava/lang/Object;

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/transition/f;->f:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;->a(Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/transition/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/transition/f;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;

    iget-object v2, p0, Lcom/android/wm/shell/transition/f;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/transition/f;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/transition/f;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->i(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void

    :goto_36
    iget-object v0, p0, Lcom/android/wm/shell/transition/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v1, p0, Lcom/android/wm/shell/transition/f;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/wm/shell/transition/f;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/Optional;

    iget-object v3, p0, Lcom/android/wm/shell/transition/f;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/wm/shell/transition/f;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/Optional;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->b(Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
