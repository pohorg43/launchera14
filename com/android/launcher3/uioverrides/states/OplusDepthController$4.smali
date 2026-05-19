.class Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getZoomOutAndBlurAnim(FFF)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field public final synthetic val$anim:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ObjectAnimator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;->val$anim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OplusDepthController"

    const-string v1, "getZoomOutAnim onAnimationCancel"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$800(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Z)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;->val$anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$902(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$800(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusDepthController$4;->this$0:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->access$800(Lcom/android/launcher3/uioverrides/states/OplusDepthController;Z)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
