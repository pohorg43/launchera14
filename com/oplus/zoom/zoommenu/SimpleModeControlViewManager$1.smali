.class Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->hideSimpleButtonWithAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->access$000(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->access$100(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->access$100(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_43

    const-string p1, "SimpleModeControlViewManager"

    const-string v0, "hideSimpleButton animationEnd, remove view"

    invoke-static {p1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->access$100(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->access$000(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {v0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->access$100(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;->this$0:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->access$102(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;Lcom/oplus/zoom/zoommenu/SimpleModeControlView;)Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    :cond_43
    return-void
.end method
