.class Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$100(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setSurfaceZOrderedOnTop(Z)V

    :cond_2a
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$100(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setAnimating(Z)V

    :cond_4a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setSurfaceZOrderedOnTop(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setAnimating(Z)V

    :cond_2f
    return-void
.end method
