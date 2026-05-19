.class Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/baseview/BaseViewManager;->removeView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/baseview/BaseViewManager;

.field public final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/baseview/BaseViewManager;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->this$0:Lcom/oplus/zoom/ui/baseview/BaseViewManager;

    iput-object p2, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->this$0:Lcom/oplus/zoom/ui/baseview/BaseViewManager;

    iget-object p1, p1, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_17

    :cond_11
    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_17
    :goto_17
    const-string p1, "mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->this$0:Lcom/oplus/zoom/ui/baseview/BaseViewManager;

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->this$0:Lcom/oplus/zoom/ui/baseview/BaseViewManager;

    iget-object p1, p1, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/oplus/zoom/ui/baseview/IView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_17

    :cond_11
    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_17
    :goto_17
    const-string p1, "mTarget may not AttachedToWindow : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager$1;->this$0:Lcom/oplus/zoom/ui/baseview/BaseViewManager;

    iget-object p0, p0, Lcom/oplus/zoom/ui/baseview/BaseViewManager;->mTarget:Lcom/oplus/zoom/ui/baseview/IView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;)V

    return-void
.end method
