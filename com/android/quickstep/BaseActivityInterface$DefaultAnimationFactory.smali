.class Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/BaseActivityInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAnimationFactory"
.end annotation


# instance fields
.field public final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TACTIVITY_TYPE;"
        }
    .end annotation
.end field

.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;"
        }
    .end annotation
.end field

.field private mHasEverAttachedToWindow:Z

.field private mIsAttachedToWindow:Z

.field private final mStartState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/quickstep/BaseActivityInterface;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mStartState:Lcom/android/launcher3/statemanager/BaseState;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->lambda$createActivityInterface$0(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method private synthetic lambda$createActivityInterface$0(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 11

    invoke-static {}, Lcom/android/quickstep/BaseActivityInterface;->access$200()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v0

    const-string v1, "isWindowAnimatingToHome: "

    const-string v2, ", mTargetState: "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v2}, Lcom/android/quickstep/BaseActivityInterface;->access$100(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "BaseActivityInterface"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_3d

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getOveriewToNormalAnim()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4f

    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v1}, Lcom/android/quickstep/BaseActivityInterface;->access$100(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    goto :goto_53

    :cond_4f
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, v1, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    :goto_53
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_6c

    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const v2, 0x3dcccccd  # 0.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6c

    move v1, v5

    goto :goto_6d

    :cond_6c
    move v1, v6

    :goto_6d
    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result p1

    float-to-double v7, p1

    cmpl-double p1, v7, v3

    if-gtz p1, :cond_7a

    if-eqz v0, :cond_79

    goto :goto_7a

    :cond_79
    move v5, v6

    :cond_7a
    :goto_7a
    iget-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    if-eqz v5, :cond_89

    invoke-static {p0}, Lcom/android/quickstep/BaseActivityInterface;->access$100(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    goto :goto_8b

    :cond_89
    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    :goto_8b
    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method


# virtual methods
.method public createActivityInterface(J)V
    .registers 12

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x2

    mul-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iget-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentUserControlledAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    new-instance p1, Lcom/android/quickstep/r;

    invoke-direct {p1, p0, v1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/android/quickstep/views/RecentsView;

    sget-object v8, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    invoke-virtual {v8, v7}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_43

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v8, v7, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_43
    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    iget-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    move-object v5, v7

    invoke-static/range {v1 .. v8}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p1, p2, :cond_6b

    iget-boolean p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    :cond_6b
    return-void
.end method

.method public createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TACTIVITY_TYPE;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    instance-of v0, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_12

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAppToOverview(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void

    :cond_12
    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v0, p2

    move-object v1, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;-><init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public initBackgroundStateUI()Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TACTIVITY_TYPE;"
        }
    .end annotation

    const-string v0, "initBackgroundStateUI(), mStartState="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mStartState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "BaseActivityInterface"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mStartState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-interface {v0}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    :cond_28
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/statemanager/StateManager;->setRestState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, v1, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mStartState:Lcom/android/launcher3/statemanager/BaseState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_4f
    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string v1, "initBackgroundStateUI"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setClearAllButtonVisible(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v0}, Lcom/android/quickstep/BaseActivityInterface;->access$000(Lcom/android/quickstep/BaseActivityInterface;)V

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-object p0
.end method

.method public isRecentsAttachedToAppWindow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    return p0
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/quickstep/BaseActivityInterface;->access$102(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string/jumbo p1, "setEndTarget="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {p0}, Lcom/android/quickstep/BaseActivityInterface;->access$100(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "BaseActivityInterface"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public setRecentsAttachedToAppWindow(ZZ)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    if-ne v3, v1, :cond_d

    if-eqz v2, :cond_d

    return-void

    :cond_d
    iput-boolean v1, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    iget-object v3, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    const/4 v4, 0x1

    if-eqz v1, :cond_1c

    iput-boolean v4, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mHasEverAttachedToWindow:Z

    :cond_1c
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v5

    const/4 v6, -0x1

    const-string v7, "BaseActivityInterface"

    const-string v8, "QuickStep"

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v11, 0x0

    if-eqz v5, :cond_44

    array-length v12, v5

    if-lt v12, v4, :cond_44

    aget v12, v5, v11

    if-eq v12, v6, :cond_44

    iget-object v12, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v12}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v12

    new-array v13, v4, [F

    if-eqz v1, :cond_3d

    move v14, v9

    goto :goto_3e

    :cond_3d
    const/4 v14, 0x0

    :goto_3e
    aput v14, v13, v11

    invoke-virtual {v12, v11, v13}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    goto :goto_61

    :cond_44
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Not found runningTaskIds when createStateElementAnimation[INDEX_RECENTS_FADE_ANIM]"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ",attach="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5a

    const-string v13, ". Will set RecentsView setContentAlpha to 0!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v7, v12}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    if-eqz v1, :cond_65

    move v12, v9

    goto :goto_66

    :cond_65
    const/4 v12, 0x0

    :goto_66
    if-eqz v1, :cond_69

    const/4 v9, 0x0

    :cond_69
    iget-object v13, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v13}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/launcher3/statemanager/StateManager;->cancelStateElementAnimation(I)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isShown()Z

    move-result v13

    const-string/jumbo v14, "setRecentsAttachedToAppWindow: animate="

    const-string v15, ", attached="

    const-string v10, ", mIsAttachedToWindow="

    invoke-static {v14, v2, v15, v1, v10}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v14, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    const-string v15, ", isRecentsViewShown="

    const-string v4, ", runningTaskIds="

    invoke-static {v10, v14, v15, v13, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", from="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", to="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", currentTranslationFraction="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    invoke-virtual {v4, v3}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v7, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_c2

    if-eqz v2, :cond_c2

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_cc

    :cond_c2
    invoke-virtual {v4, v3}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    :goto_cc
    if-nez v2, :cond_d7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :goto_d5
    const/4 v6, 0x1

    goto :goto_fa

    :cond_d7
    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v5

    if-ne v5, v6, :cond_e5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_d5

    :cond_e5
    iget-object v4, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v12, v5, v11

    const/4 v6, 0x1

    aput v9, v5, v6

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    :goto_fa
    instance-of v4, v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v4, :cond_110

    iget-object v4, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher3/statemanager/StateManager;->getStateElementAnimation(I)Landroid/animation/Animator;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-boolean v6, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    invoke-virtual {v5, v6, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onRecentAttachedToAppWindow(ZLandroid/animation/Animator;)V

    :cond_110
    iget-object v0, v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/statemanager/StateManager;->getStateElementAnimation(I)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_129

    if-nez v1, :cond_128

    sget-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_128
    return-void

    :cond_129
    if-eqz v1, :cond_12e

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_130

    :cond_12e
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    :goto_130
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v2, :cond_138

    const-wide/16 v1, 0x12c

    goto :goto_13a

    :cond_138
    const-wide/16 v1, 0x0

    :goto_13a
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
