.class Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startAnimation(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "### transferAnimation Cancel:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    invoke-static {v0, v1, p1}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1402(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Z)Z

    iget p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_41
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "### animation end to:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentAnimationState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentAnimationState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state before up:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getBeforeUpState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cancleCurrentAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Z

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-nez p1, :cond_c7

    iget p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v2, :cond_81

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->needHideDimLayer()Z

    move-result p1

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_7b
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V

    goto :goto_c7

    :cond_81
    const/4 v2, 0x2

    if-eq p1, v2, :cond_87

    const/4 v2, 0x6

    if-ne p1, v2, :cond_a4

    :cond_87
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_a4
    iget p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    if-ne p1, v1, :cond_bb

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentAnimationState()I

    move-result p1

    const/4 v2, 0x7

    if-ne p1, v2, :cond_bb

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V

    goto :goto_c7

    :cond_bb
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object p1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentAnimationState(I)V

    :cond_c7
    :goto_c7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    if-ne p0, v1, :cond_d2

    goto :goto_d3

    :cond_d2
    const/4 v0, 0x0

    :goto_d3
    invoke-interface {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->notifySplitDragAnimationEnd(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "### transferAnimation Start:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentDragSurfaceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentAnimationState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentAnimationState()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    if-nez p1, :cond_3d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_3d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1100(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isImeShown()Z

    move-result p1

    if-nez p1, :cond_56

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hideImeDimLayerWhenRemoveImeSurface()V

    :cond_56
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_96

    iget p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    if-ne p1, v0, :cond_83

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_96

    :cond_83
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->access$1300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;->val$state:I

    if-ne p0, v0, :cond_a2

    const/4 p0, 0x1

    goto :goto_a3

    :cond_a2
    const/4 p0, 0x0

    :goto_a3
    invoke-interface {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->notifySplitDragAnimationStart(Z)V

    return-void
.end method
