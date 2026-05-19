.class Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;
.super Lcom/oplus/animation/OplusAnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->lambda$enterSplitScreenInner$4(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

.field public final synthetic val$screenshot:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Lcom/oplus/animation/OplusAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/animation/OplusAnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;->val$screenshot:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$102(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Z)Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$200(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->restoreSideStageAlphaIfNeed(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-super {p0, p1}, Lcom/oplus/animation/OplusAnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetSplitScreenGestureSnapshotRunning()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenGestureSnapshotRunning(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/animation/OplusAnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
