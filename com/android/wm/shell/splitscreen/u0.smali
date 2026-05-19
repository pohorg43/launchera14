.class public final synthetic Lcom/android/wm/shell/splitscreen/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/u0;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/u0;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/u0;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/u0;->b:I

    return-void
.end method


# virtual methods
.method public onConsumed(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/u0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/u0;->b:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->a(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;IZ)V

    return-void
.end method

.method public onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/u0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/u0;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->f(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
