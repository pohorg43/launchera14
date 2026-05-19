.class Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->buildFadeOutAnimation()Landroid/animation/ValueAnimator;
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

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$000(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$100(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$200(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$100(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager$1;->this$0:Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    invoke-static {p0}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->access$100(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2b
    return-void
.end method
