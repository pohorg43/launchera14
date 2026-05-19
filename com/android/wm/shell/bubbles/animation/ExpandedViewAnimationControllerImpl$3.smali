.class Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->animateForImeVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$3;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$3;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->access$402(Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
