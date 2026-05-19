.class public final synthetic Lcom/android/wm/shell/splitscreen/e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic b:Landroid/window/TransitionInfo$Change;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/window/TransitionInfo$Change;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/window/WindowContainerTransaction;

.field public final synthetic g:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/e1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/e1;->b:Landroid/window/TransitionInfo$Change;

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/e1;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/e1;->d:Landroid/window/TransitionInfo$Change;

    iput-boolean p5, p0, Lcom/android/wm/shell/splitscreen/e1;->e:Z

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/e1;->f:Landroid/window/WindowContainerTransaction;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/e1;->g:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/e1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/e1;->b:Landroid/window/TransitionInfo$Change;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/e1;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/e1;->d:Landroid/window/TransitionInfo$Change;

    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/e1;->e:Z

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/e1;->f:Landroid/window/WindowContainerTransaction;

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/e1;->g:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->i(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
