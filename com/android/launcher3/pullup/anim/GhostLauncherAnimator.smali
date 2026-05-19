.class public final Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator$Companion;

.field private static final QUARTER:I = 0x4


# instance fields
.field private final mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

.field private final mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

.field private mScaleOvalViewX:Landroid/animation/ObjectAnimator;

.field private mScaleOvalViewY:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->Companion:Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/pullup/controller/CommonAnimController;)V
    .registers 4

    const-string v0, "mCommonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_14
    new-instance v1, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;

    aget v5, v0, v2

    aget v2, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v4}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    add-int v6, v2, v4

    aget v7, v0, v3

    aget v0, v0, v3

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    :cond_3a
    add-int v8, v0, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;-><init>(IIIIFF)V

    goto :goto_77

    :cond_43
    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_4e
    sget-object v1, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    new-instance v11, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;

    aget v5, v0, v2

    aget v2, v0, v2

    add-int v6, v2, v1

    aget v7, v0, v3

    aget v0, v0, v3

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6e

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    :cond_6e
    add-int v8, v0, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;-><init>(IIIIFF)V

    move-object v1, v11

    :goto_77
    return-object v1
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    return-object p0
.end method

.method public onIntentStarted(Z)V
    .registers 2

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz p1, :cond_1c

    iget-object p1, p1, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    iget-object p1, p1, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    :cond_1c
    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    :cond_1a
    return-void
.end method

.method public onLaunchAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    invoke-virtual {p0}, Lcom/android/launcher3/pullup/controller/CommonAnimController;->resetGSearchView()V

    :cond_1a
    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;FF)V
    .registers 4

    const-string/jumbo p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mScaleOvalViewX:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mScaleOvalViewY:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    :cond_18
    return-void
.end method

.method public onLaunchAnimationStart()V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_1d

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mAnimController:Lcom/android/launcher3/pullup/controller/CommonAnimController;

    iget-object v0, v0, Lcom/android/launcher3/pullup/controller/CommonAnimController;->scaleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getGoogleLayoutView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getGoogleLayoutView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/pullup/anim/AnimManager;->alphaView(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3f
    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/pullup/anim/AnimManager;->scaleOvalViewX(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mScaleOvalViewX:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mCommonView:Lcom/android/launcher3/pullup/view/CommonPullUpView;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->getBaseView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/pullup/anim/AnimManager;->scaleOvalViewY(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pullup/anim/GhostLauncherAnimator;->mScaleOvalViewY:Landroid/animation/ObjectAnimator;

    :cond_57
    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .registers 2

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
