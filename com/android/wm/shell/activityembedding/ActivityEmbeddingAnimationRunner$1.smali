.class Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

.field public final synthetic val$adapters:Ljava/util/List;

.field public final synthetic val$animationFinishCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;->this$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;->val$adapters:Ljava/util/List;

    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;->val$animationFinishCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;->val$adapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationEnd(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_b

    :cond_1b
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;->this$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->access$002(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;->val$animationFinishCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
