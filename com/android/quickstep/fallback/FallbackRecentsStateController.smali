.class public Lcom/android/quickstep/fallback/FallbackRecentsStateController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/quickstep/RecentsActivity;

.field private final mNoConfig:Lcom/android/launcher3/states/StateAnimationConfig;

.field private final mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mNoConfig:Lcom/android/launcher3/states/StateAnimationConfig;

    iput-object p1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/fallback/FallbackRecentsView;

    iput-object p1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/fallback/FallbackRecentsStateController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->lambda$setStateWithAnimation$0()V

    return-void
.end method

.method private addDockViewStateAnim(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;[F)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    aget p4, p4, v2

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v3, 0x7

    invoke-virtual {p2, v3, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {p3, v0, v1, p4, v2}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object p4, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    move-result-object p4

    if-eqz p4, :cond_3d

    iget-object p0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p0

    if-eqz p0, :cond_3d

    const/high16 v0, 0x40400000  # 3.0f

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dock/DockView;->setDockIconDisplacementFactor(F)V

    const-string p0, "FallbackRecentsStateController#addDockViewStateAnim"

    invoke-virtual {p4, p1, p2, p0}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_3d

    sget-object p1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    if-eq p3, p1, :cond_3a

    invoke-interface {p3, p0}, Lcom/android/launcher3/anim/PropertySetter;->add(Landroid/animation/Animator;)V

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z
    .registers 2
    .param p1  # Lcom/android/quickstep/fallback/RecentsState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$setStateWithAnimation$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    return-void
.end method

.method private setProperties(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V
    .registers 13

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->hasOverviewActions()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsActivity;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-interface {p3, v3, v4, v0, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/fallback/RecentsState;->getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F

    move-result-object v0

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x6

    invoke-virtual {p2, v7, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-interface {p3, v3, v4, v6, v7}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    const/4 v6, 0x1

    aget v7, v0, v6

    const/4 v8, 0x7

    invoke-virtual {p2, v8, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-interface {p3, v3, v4, v7, v8}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    const/16 v7, 0x8

    invoke-virtual {p2, v7, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-interface {p3, v3, v4, v2, v7}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->getOverviewModalness()F

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {p2, v8, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-interface {p3, v3, v4, v7, v8}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->isFullScreen()Z

    move-result v7

    if-eqz v7, :cond_6b

    move v7, v1

    goto :goto_6c

    :cond_6b
    move v7, v2

    :goto_6c
    invoke-interface {p3, v3, v4, v7, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/quickstep/fallback/RecentsState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_87

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_87
    iget-object v4, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v7, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    if-eqz v3, :cond_8e

    goto :goto_8f

    :cond_8e
    move v1, v2

    :goto_8f
    if-eqz v3, :cond_94

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_96

    :cond_94
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_96
    invoke-interface {p3, v4, v7, v1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_99
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1, v3}, Lcom/android/quickstep/fallback/RecentsState;->getScrimColor(Lcom/android/quickstep/RecentsActivity;)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {p3, v1, v3, v4}, Lcom/android/launcher3/anim/PropertySetter;->setViewBackgroundColor(Landroid/view/View;ILandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-direct {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-direct {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z

    move-result v1

    if-nez v1, :cond_d9

    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1, v3, v6}, Lcom/android/quickstep/fallback/RecentsState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/RecentsView;->createSplitSelectInitAnimation(I)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->add(Landroid/animation/Animator;)V

    :cond_d9
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    sget-object v3, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v6, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    invoke-interface {v1, v3, v4, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/util/FloatProperty;

    invoke-interface {p3, v3, v4, v2, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z

    move-result v3

    if-eqz v3, :cond_10f

    iget-object v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->applySplitPrimaryScrollOffset()V

    iget-object v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/FloatProperty;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectTranslation()F

    move-result v3

    invoke-interface {p3, v2, v1, v3, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    goto :goto_11d

    :cond_10f
    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->resetSplitPrimaryScrollOffset()V

    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/FloatProperty;

    invoke-interface {p3, v3, v1, v2, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :goto_11d
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->addDockViewStateAnim(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;[F)V

    return-void
.end method


# virtual methods
.method public setState(Lcom/android/quickstep/fallback/RecentsState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->overviewUi()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mNoConfig:Lcom/android/launcher3/states/StateAnimationConfig;

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setProperties(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setState(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 6

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Lcom/android/launcher3/model/c1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/quickstep/fallback/FallbackRecentsStateController;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->overviewUi()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setProperties(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setStateWithAnimation(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
