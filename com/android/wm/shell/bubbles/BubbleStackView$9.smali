.class Lcom/android/wm/shell/bubbles/BubbleStackView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScrimAlphaForDrag(F)F
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$1500(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object v0

    const v1, 0x3f19999a  # 0.6f

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$1500(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_34

    const v0, 0x3eccccce  # 0.40000004f

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$1500(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float/2addr p1, v0

    sub-float/2addr v1, p1

    const p0, 0x3e4ccccd  # 0.2f

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_34
    return v1
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3700(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;->animateBackToExpanded()V

    return-void
.end method

.method public onDown(FF)V
    .registers 3

    return-void
.end method

.method public onMove(FF)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isManageEduVisible()Z

    move-result p1

    if-nez p1, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_41

    :cond_11
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$1900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    :cond_1f
    const/4 p1, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    neg-float p2, p2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3700(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;

    move-result-object v0

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-interface {v0, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;->updateDrag(F)V

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3800(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z

    move-result p2

    if-nez p2, :cond_41

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_41
    :goto_41
    return-void
.end method

.method public onUp(FF)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3700(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;->setSwipeVelocity(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3700(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;->shouldCollapse()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$1400(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubbleData;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3800(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3900(Lcom/android/wm/shell/bubbles/BubbleStackView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4a

    :cond_32
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3700(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationController;->animateBackToExpanded()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3800(Lcom/android/wm/shell/bubbles/BubbleStackView;)Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$4000(Lcom/android/wm/shell/bubbles/BubbleStackView;ZLjava/lang/Runnable;)V

    :cond_4a
    :goto_4a
    return-void
.end method
