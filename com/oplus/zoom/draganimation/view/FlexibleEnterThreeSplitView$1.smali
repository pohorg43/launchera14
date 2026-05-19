.class Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setScaleAnimPlayIfNeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

.field public final synthetic val$isLarge:Z


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->val$isLarge:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->val$isLarge:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$200(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$300(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p1, v0

    add-float/2addr p1, v0

    invoke-static {p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$400(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;F)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$500(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;FLandroid/graphics/Rect;Z)V

    goto :goto_3e

    :cond_2c
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$200(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->val$isLarge:Z

    invoke-static {p1, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$002(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;Z)Z

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->val$isLarge:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$200(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$200(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_46

    :cond_34
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$1;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$200(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_46
    return-void
.end method
