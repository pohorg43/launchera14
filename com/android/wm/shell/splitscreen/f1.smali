.class public final synthetic Lcom/android/wm/shell/splitscreen/f1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic b:Landroid/window/TransitionInfo;

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/f1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/f1;->b:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/f1;->c:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/f1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/f1;->b:Landroid/window/TransitionInfo;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/f1;->c:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->H(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
