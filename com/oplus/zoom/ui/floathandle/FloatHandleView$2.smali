.class Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->createAnimatorForRebound(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

.field public final synthetic val$toArrow:Z


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iput-boolean p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->val$toArrow:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "FloatHandle"

    const-string p1, "rebound animator is cancel"

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_1d
    iget-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->val$toArrow:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateArrowStyle(Z)V

    goto :goto_2e

    :cond_28
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateArrowStyle(Z)V

    :goto_2e
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$400(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3c

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->postDelayMsgToHalfHiddenState()V

    :cond_3c
    const-string p0, "FloatHandle"

    const-string p1, "rebound animator is end"

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    const-string p1, "FloatHandle"

    const-string v0, "rebound animator start"

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->val$toArrow:Z

    const/16 v0, 0x1b

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    const/16 v1, 0x3b

    invoke-virtual {p1, v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setMinAndMaxFrame(II)V

    goto :goto_28

    :cond_1e
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setMinAndMaxFrame(II)V

    :goto_28
    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$2;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method
