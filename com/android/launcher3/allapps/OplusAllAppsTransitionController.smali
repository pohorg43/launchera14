.class public Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;
.super Lcom/android/launcher3/allapps/AllAppsTransitionController;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusAllAppsTransitionController"


# instance fields
.field private mAllAppsBg:Landroid/view/View;

.field private mAllAppsContent:Landroid/view/View;

.field public mIsNightMode:Z

.field private mPlugin:Lcom/android/systemui/plugins/AllAppsSearchPlugin;

.field private mPluginContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mIsNightMode:Z

    return-void
.end method

.method private createAnimator(Lcom/android/launcher3/states/StateAnimationConfig;FFLandroid/view/View;I)Landroid/animation/ObjectAnimator;
    .registers 7

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p2, "alpha"

    invoke-static {p4, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    iget-wide p2, p1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p5, p2}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getNavigationBarColor(FI)I
    .registers 4

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    mul-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic getProgressAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController$1;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;Landroid/content/Context;)V

    return-object v1
.end method

.method public isAllAppsExpanded()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public onProgressAnimationEnd()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/high16 v0, 0x3f800000  # 1.0f

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_3e

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/DrawerGuideManager;->resumeAllAnim()V

    goto :goto_3e

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->isAllAppsExpanded()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    instance-of v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_3e

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->onScrollUpEnd()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setAllAppsBg(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    instance-of v1, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->updateGlobalColor()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsBg:Landroid/view/View;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_12
    return-void
.end method

.method public setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V
    .registers 4

    return-void
.end method

.method public setProgress(F)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsBg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2a

    :cond_15
    cmpl-float v2, p1, v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsBg:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsContent:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher/guide/DrawerGuideManager;->startGuideCount(Landroid/content/Context;)V

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v2, 0x0

    if-nez v1, :cond_31

    const/4 v1, 0x4

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mPlugin:Lcom/android/systemui/plugins/AllAppsSearchPlugin;

    if-eqz v1, :cond_3f

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/AllAppsSearchPlugin;->setProgress(F)V

    :cond_3f
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    invoke-virtual {v1}, Lcom/android/launcher3/views/ScrimView;->getVisualTop()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gtz v0, :cond_60

    move v0, v1

    goto :goto_61

    :cond_60
    move v0, v2

    :goto_61
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f0604fd

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/common/util/ColorUtils;->isColorDark(I)Z

    move-result v3

    if-eqz v0, :cond_88

    sget-object v0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->TAG:Ljava/lang/String;

    const-string v4, "isDarkBackground: "

    invoke-static {v4, v3, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v3, :cond_7e

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mIsNightMode:Z

    if-nez v0, :cond_7e

    move v2, v1

    :cond_7e
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_9f

    :cond_88
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isStatusBarWpBright()Z

    move-result v2

    :cond_96
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    :goto_9f
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->showKeyboard(F)V

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->setUpArrowAlpha(F)V

    :cond_b9
    return-void
.end method

.method public setShiftRange(F)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setShiftRange(F)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIsNarBarShowingInNavMode:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_33

    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    goto :goto_81

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_58

    if-eqz p1, :cond_58

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_58

    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mNavBarHeight:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    goto :goto_81

    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_81

    if-nez p1, :cond_81

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p1, :cond_81

    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    :cond_81
    :goto_81
    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1a

    :cond_b
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    sget-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_12

    return-void

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result p1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez p1, :cond_2e

    goto :goto_31

    :cond_2e
    move v8, v1

    move v1, v0

    move v0, v8

    :goto_31
    iget-object v6, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsContent:Landroid/view/View;

    const/16 v7, 0xa

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->createAnimator(Lcom/android/launcher3/states/StateAnimationConfig;FFLandroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsBg:Landroid/view/View;

    const/16 v7, 0x11

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->createAnimator(Lcom/android/launcher3/states/StateAnimationConfig;FFLandroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/ScrimView;",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0093

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsBg:Landroid/view/View;

    const p1, 0x7f0a0095

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsTransitionController;->mAllAppsContent:Landroid/view/View;

    return-void
.end method
