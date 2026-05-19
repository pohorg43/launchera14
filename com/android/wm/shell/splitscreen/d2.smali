.class public final synthetic Lcom/android/wm/shell/splitscreen/d2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/os/IBinder;

.field public final synthetic d:Landroid/window/WindowContainerTransaction;

.field public final synthetic e:Landroid/window/TransitionInfo;

.field public final synthetic f:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic g:Landroid/window/IRemoteTransitionFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;Ljava/util/ArrayList;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/d2;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/d2;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/d2;->c:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/d2;->d:Landroid/window/WindowContainerTransaction;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/d2;->e:Landroid/window/TransitionInfo;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/d2;->f:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/d2;->g:Landroid/window/IRemoteTransitionFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/d2;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/d2;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/d2;->c:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/d2;->d:Landroid/window/WindowContainerTransaction;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/d2;->e:Landroid/window/TransitionInfo;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/d2;->f:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/d2;->g:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;Ljava/util/ArrayList;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method
