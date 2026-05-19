.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterNormalSplitUncheck(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field public final synthetic val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$602(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1700(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    move-result-object p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-static {p1, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1802(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x17f

    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_5a

    :cond_2d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    if-eq p1, v0, :cond_5a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->val$decorManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->onNormalSplitFinish()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->onNormalSplitFinish()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1802(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1600(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    return-void
.end method
