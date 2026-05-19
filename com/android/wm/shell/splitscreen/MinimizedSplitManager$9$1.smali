.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;
.super Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

.field public final synthetic val$actionLeash:Landroid/view/SurfaceControl;

.field public final synthetic val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)V
    .registers 6

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->val$actionLeash:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;-><init>(Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->val$actionLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$2200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    move-result-object v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-static {v0, v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1802(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x17f

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_7e

    :cond_47
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    if-eq v0, v1, :cond_7e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->onNormalSplitFinish()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->onNormalSplitFinish()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;->this$1:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1802(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    :cond_7e
    :goto_7e
    invoke-super {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
