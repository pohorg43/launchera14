.class Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->appearScaleAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$800(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$800(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$900(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$800(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$400(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$900(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$800(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$900(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_43
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$100(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$600(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$600(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$700(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$600(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$700(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView$2;->this$0:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->access$600(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
