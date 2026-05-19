.class Lcom/android/quickstep/LauncherActivityInterface$1;
.super Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/BaseActivityInterface<",
        "Lcom/android/launcher3/LauncherState;",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        ">.DefaultAnimationFactory;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/LauncherActivityInterface;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/util/function/Consumer;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/LauncherActivityInterface$1;->this$0:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;-><init>(Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public createBackgroundToOverviewAnim(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 15

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v5

    iget-object v1, p0, Lcom/android/quickstep/LauncherActivityInterface$1;->this$0:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/LauncherActivityInterface;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    if-eqz v2, :cond_5f

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->ignoreBackgroundState()Z

    move-result p0

    if-nez p0, :cond_36

    new-instance v3, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedZoomOutProperty;-><init>(FF)V

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v1, p2

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_36
    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result p0

    const-string v1, "createBackgroundToOverviewAnim; isSwipeSideGesture: "

    const-string v2, "LauncherActivityInterface"

    invoke-static {v1, p0, v2}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p0, :cond_4c

    return-void

    :cond_4c
    invoke-virtual {v7}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    move-result v9

    invoke-virtual {v0, p1}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v10

    new-instance v8, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedBlurProperty;

    invoke-direct {v8, v9, v10}, Lcom/android/launcher3/uioverrides/states/OplusDepthController$ClampedBlurProperty;-><init>(FF)V

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_5f
    return-void
.end method

.method public bridge synthetic createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface$1;->createBackgroundToOverviewAnim(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
