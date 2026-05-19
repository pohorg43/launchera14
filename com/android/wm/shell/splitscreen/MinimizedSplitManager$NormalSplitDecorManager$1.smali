.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->onNormalSplitFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

.field public final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->access$2300(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager$1;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->release()V

    return-void
.end method
