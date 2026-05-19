.class public final Lcom/android/launcher3/pullup/anim/GhostViewController;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

.field private mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

.field private mScaleOvalViewX:Landroid/animation/ObjectAnimator;

.field private mScaleOvalViewY:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 4

    const-string v0, "mCommonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    return-void
.end method


# virtual methods
.method public final onLaunchAnimationCancelled()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mScaleOvalViewX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    :cond_2d
    return-void
.end method

.method public final onLaunchAnimationEnd()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mScaleOvalViewX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostViewController;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    :cond_2d
    return-void
.end method

.method public final onLaunchAnimationProgress(F)V
    .registers 2

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    return-void
.end method

.method public final onLaunchAnimationStart()V
    .registers 1

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    return-void
.end method
