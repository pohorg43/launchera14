.class public final synthetic Lcom/android/wm/shell/splitscreen/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

.field public final synthetic b:Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/o0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/o0;->b:Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/o0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/o0;->b:Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;

    invoke-static {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->g(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method
