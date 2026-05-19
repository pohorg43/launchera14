.class public final synthetic Lcom/android/wm/shell/pip/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic b:Landroid/app/TaskInfo;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/window/WindowContainerToken;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic g:Landroid/view/SurfaceControl;

.field public final synthetic h:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/n;->a:Lcom/android/wm/shell/pip/PipTransition;

    iput-object p2, p0, Lcom/android/wm/shell/pip/n;->b:Landroid/app/TaskInfo;

    iput-boolean p3, p0, Lcom/android/wm/shell/pip/n;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/pip/n;->d:Landroid/window/WindowContainerToken;

    iput-boolean p5, p0, Lcom/android/wm/shell/pip/n;->e:Z

    iput-object p6, p0, Lcom/android/wm/shell/pip/n;->f:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/wm/shell/pip/n;->g:Landroid/view/SurfaceControl;

    iput-object p8, p0, Lcom/android/wm/shell/pip/n;->h:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/pip/n;->a:Lcom/android/wm/shell/pip/PipTransition;

    iget-object v1, p0, Lcom/android/wm/shell/pip/n;->b:Landroid/app/TaskInfo;

    iget-boolean v2, p0, Lcom/android/wm/shell/pip/n;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/pip/n;->d:Landroid/window/WindowContainerToken;

    iget-boolean v4, p0, Lcom/android/wm/shell/pip/n;->e:Z

    iget-object v5, p0, Lcom/android/wm/shell/pip/n;->f:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/wm/shell/pip/n;->g:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/wm/shell/pip/n;->h:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/pip/PipTransition;->b(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method
