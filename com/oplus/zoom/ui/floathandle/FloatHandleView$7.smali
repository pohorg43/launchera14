.class Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->removeFloatHandleViewWithAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

.field public final synthetic val$bothSide:Z


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    iput-boolean p2, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->val$bothSide:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1202(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Z)Z

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->updateArrowStyle(Z)V

    const-string p0, "FloatHandle"

    const-string p1, "remove animator cancel"

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "removeFloatHandleViewWithAnim onAnimationEnd, mRemoving: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1200(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatHandle"

    invoke-static {v0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1200(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Z

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1300(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3d
    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->clearMessage()V

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1400(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/baseview/ViewHook;

    move-result-object p1

    if-eqz p1, :cond_53

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1400(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/baseview/ViewHook;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->removeViewOnCallBack()V

    :cond_53
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$800(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentLockPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1002(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$800(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->getCurrentUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$1102(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;I)I

    iget-boolean p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->val$bothSide:Z

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$800(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentLockPkg(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$7;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$800(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleStatus;->setCurrentUserId(I)V

    :cond_32
    return-void
.end method
