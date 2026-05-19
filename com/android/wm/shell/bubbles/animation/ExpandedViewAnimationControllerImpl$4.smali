.class Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->createCollapseAnimation(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

.field public final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;->val$after:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$4;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->access$502(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Z)Z

    return-void
.end method
