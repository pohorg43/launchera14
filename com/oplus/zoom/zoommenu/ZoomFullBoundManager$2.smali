.class Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->buildExpandAnimation(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$300(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$400(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)V

    :cond_d
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$000(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$100(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$000(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$100(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$2;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$100(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2e
    return-void
.end method
