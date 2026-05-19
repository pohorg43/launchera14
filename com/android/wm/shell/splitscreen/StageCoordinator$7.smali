.class Lcom/android/wm/shell/splitscreen/StageCoordinator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;->lambda$switchSplitPosition$9(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$bottomRightScreenshot:Landroid/view/SurfaceControl;

.field public final synthetic val$t:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$topLeftScreenshot:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$topLeftScreenshot:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$bottomRightScreenshot:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1  # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$t:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$topLeftScreenshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$t:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$bottomRightScreenshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1700(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
