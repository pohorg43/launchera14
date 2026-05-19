.class Lcom/android/wm/shell/splitscreen/StageCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$dividerLeash:Landroid/view/SurfaceControl;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_18
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1700(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1202(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_8f

    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getYOffsetForIme()I

    move-result p1

    if-eqz p1, :cond_57

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "offset divider position for ime shown."

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getYOffsetForIme()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_57
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$dividerLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_8f
    :goto_8f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1200(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
