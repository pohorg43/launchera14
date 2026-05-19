.class public final synthetic Lcom/android/wm/shell/keyguard/a;
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
.method public synthetic constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/keyguard/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/keyguard/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/keyguard/a;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_1e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/keyguard/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/keyguard/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/window/WindowContainerTransaction;

    iget-object v3, p0, Lcom/android/wm/shell/keyguard/a;->e:Ljava/lang/Object;

    check-cast v3, Landroid/window/TransitionInfo;

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/a;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->a(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/wm/shell/keyguard/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/window/IRemoteTransition;

    iget-object v2, p0, Lcom/android/wm/shell/keyguard/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/window/IRemoteTransition;

    iget-object v3, p0, Lcom/android/wm/shell/keyguard/a;->e:Ljava/lang/Object;

    check-cast v3, Landroid/window/IRemoteTransition;

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/a;->f:Ljava/lang/Object;

    check-cast p0, Landroid/window/IRemoteTransition;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->a(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;Landroid/window/IRemoteTransition;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
