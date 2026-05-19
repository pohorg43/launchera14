.class Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->createAnimatorForPan(IIZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

.field public final synthetic val$needToRebound:Z

.field public final synthetic val$toMode:I


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iput p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->val$toMode:I

    iput-boolean p3, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->val$needToRebound:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "FloatHandle"

    const-string p1, "pan animator cancel"

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "FloatHandle"

    const-string v0, "pan animator end"

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->val$toMode:I

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$402(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$602(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I

    iget-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->val$needToRebound:Z

    if-nez p1, :cond_30

    iget p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->val$toMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2a

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateArrowStyle(Z)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->postDelayMsgToHalfHiddenState()V

    goto :goto_30

    :cond_2a
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateArrowStyle(Z)V

    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$700(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->startAnimationForIconTransaction()V

    :cond_3d
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iget p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$4;->val$toMode:I

    invoke-static {p1, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$602(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I

    const-string p0, "FloatHandle"

    const-string p1, "pan animator start"

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
