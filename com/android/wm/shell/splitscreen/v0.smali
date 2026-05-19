.class public final synthetic Lcom/android/wm/shell/splitscreen/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/v0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/v0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/v0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/v0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/v0;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/v0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->c(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/v0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->l(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
