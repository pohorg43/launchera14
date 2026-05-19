.class Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;
.super Lcom/android/wm/shell/bubbles/animation/OneTimeEndListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->animateBackToExpanded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

.field public final synthetic val$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->val$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/OneTimeEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/bubbles/animation/OneTimeEndListener;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->access$202(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Z)Z

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->access$302(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$2;->val$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setAnimating(Z)V

    return-void
.end method
