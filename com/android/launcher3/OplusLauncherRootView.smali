.class public Lcom/android/launcher3/OplusLauncherRootView;
.super Lcom/android/launcher3/LauncherRootView;
.source ""


# static fields
.field private static final FOLD_CHANGE_TIMEOUT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "OplusLauncherRootView"


# instance fields
.field private mBackgroundRender:Lcom/android/launcher3/RootViewBackgroundRenderer;

.field private mIsBracketSpaceRunning:Z

.field private mIsFirstUpdate:Z

.field private mLastBackGestureRect:Landroid/graphics/Rect;

.field private mLastBackGestureState:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNavBarHeight:I

.field private mOldInsets:Landroid/view/WindowInsets;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStatusHeight:I

.field private final mWindowInsets:Landroid/graphics/Rect;

.field private final mWorkspaceInset:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWindowInsets:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLastBackGestureRect:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mIsFirstUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mIsBracketSpaceRunning:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mOldInsets:Landroid/view/WindowInsets;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    invoke-static {p1, p2}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mNavBarHeight:I

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p1, Lcom/android/launcher3/RootViewBackgroundRenderer;

    invoke-direct {p1, p0}, Lcom/android/launcher3/RootViewBackgroundRenderer;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mBackgroundRender:Lcom/android/launcher3/RootViewBackgroundRenderer;

    return-void
.end method

.method public static dispatchSystemWidowInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchSystemWidowInsets, inset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherRootView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2d

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/SystemWindowInsettable;

    if-eqz v3, :cond_2a

    check-cast v2, Lcom/android/launcher3/SystemWindowInsettable;

    invoke-interface {v2, p1}, Lcom/android/launcher3/SystemWindowInsettable;->setWindowInsets(Landroid/graphics/Rect;)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2d
    return-void
.end method

.method private getNarBarHeight()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    goto :goto_10

    :cond_e
    iget p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mNavBarHeight:I

    :goto_10
    return p0
.end method

.method private updateInsetWithDeviceProfile(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    if-nez p2, :cond_7

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    if-nez p3, :cond_e

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_e
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p1

    if-eqz p1, :cond_29

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v2, p0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v2, p0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_a2

    :cond_29
    iget p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-virtual {p2, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-virtual {p3, v2, p0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a2

    :cond_34
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherRootView;->getNarBarHeight()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-virtual {p2, p1, v0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mNavBarHeight:I

    iget p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-virtual {p3, p1, p0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a2

    :cond_4b
    iget p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherRootView;->getNarBarHeight()I

    move-result v0

    invoke-virtual {p2, v2, p1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    iget p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mNavBarHeight:I

    invoke-virtual {p3, v2, p1, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a2

    :cond_5c
    if-eqz v0, :cond_92

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->isPhysicalLandscape:Z

    if-eqz p1, :cond_80

    :cond_6e
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_8b

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->isPhysicalLandscape:Z

    if-eqz p1, :cond_8b

    :cond_80
    iget p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-virtual {p2, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-virtual {p3, v2, p0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a2

    :cond_8b
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a2

    :cond_92
    iget p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherRootView;->getNarBarHeight()I

    move-result v0

    invoke-virtual {p2, v2, p1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    iget p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mNavBarHeight:I

    invoke-virtual {p3, v2, p1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_a2
    return-void
.end method

.method private updateInvWorkspaceExtraPaddingBottom(Lcom/android/launcher3/DeviceProfile;ZLandroid/graphics/Rect;)V
    .registers 4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    if-lez p3, :cond_a

    iget-object p0, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    goto :goto_18

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p3

    if-nez p3, :cond_18

    if-nez p2, :cond_18

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mNavBarHeight:I

    iput p0, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->mAdjustPaddingBottomForEnterMultiMode:I

    :cond_18
    :goto_18
    return-void
.end method

.method private updateNavAndStatusHeight(Landroid/graphics/Rect;)V
    .registers 2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mNavBarHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStatusHeight:I

    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p0, "OplusLauncherRootView"

    const-string p1, "error on dispatchConfigurationChanged()"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mBackgroundRender:Lcom/android/launcher3/RootViewBackgroundRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/RootViewBackgroundRenderer;->getBackgroundParams()Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->getAlpha()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mBackgroundRender:Lcom/android/launcher3/RootViewBackgroundRenderer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/RootViewBackgroundRenderer;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_11
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherRootView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchInsets()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mOldInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mOldInsets:Landroid/view/WindowInsets;

    iget-object v3, p0, Lcom/android/launcher3/LauncherRootView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusLauncherRootView;->handleSystemWindowInsets(Landroid/graphics/Rect;)V

    :cond_26
    sget-object v0, Lcom/oplus/quickstep/utils/OplusLayoutUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusLayoutUtils;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/OplusLayoutUtils;->updateDefaultContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/OplusLauncherRootView;->updateInsetWithDeviceProfile(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/OplusDeviceProfile;->updateColorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-super {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWindowInsets:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/android/launcher3/OplusLauncherRootView;->dispatchSystemWidowInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_44

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/common/util/OplusFoldStateHelper;->mFoldChangeElapseTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-lez v0, :cond_44

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "dispatchTouchEvent, make sure root view visible, current alpha = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusLauncherRootView"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusLauncherRootView;->setAlpha(F)V

    :cond_44
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBackgroundRender()Lcom/android/launcher3/RootViewBackgroundRenderer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mBackgroundRender:Lcom/android/launcher3/RootViewBackgroundRenderer;

    return-object p0
.end method

.method public handleSystemWindowInsets(Landroid/graphics/Rect;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSystemWindowInsets, insets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherRootView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherRootView;->updateNavAndStatusHeight(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-direct {p0, v2, v0, p1}, Lcom/android/launcher3/OplusLauncherRootView;->updateInvWorkspaceExtraPaddingBottom(Lcom/android/launcher3/DeviceProfile;ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/launcher3/OplusLauncherRootView;->updateInsetWithDeviceProfile(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/launcher3/OplusDeviceProfile;->updateColorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    if-eqz v3, :cond_7d

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    :cond_7d
    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v5, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/LauncherRootView;->setInsets(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherRootView;->setSystemWindowInsets(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_d5

    const-string v5, "handleSystemWindowInsets, resetState = "

    const-string v6, ", mWorkspaceInset = "

    invoke-static {v5, v3, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mStableInsets = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", insets = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mInsets = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", recentsViewDpInsetsBeforeUpdate="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", dp = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d5
    if-eqz v3, :cond_e0

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState(Z)V

    :cond_e0
    return-void
.end method

.method public isBackGestureDisallow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/LauncherRootView;->mDisallowBackGesture:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherRootView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mOldInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq p0, p1, :cond_1d

    invoke-static {}, Lcom/android/launcher/MessageQueneLog;->logMainThreadMessage()V

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "OplusLauncherRootView"

    const-string/jumbo p2, "onDescendantInvalidated: "

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/LauncherRootView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mBackgroundRender:Lcom/android/launcher3/RootViewBackgroundRenderer;

    invoke-virtual {p1}, Lcom/android/launcher3/RootViewBackgroundRenderer;->getBackgroundParams()Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/RootViewBackgroundRenderer$BackgroundParam;->getBackgroundRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mBackgroundRender:Lcom/android/launcher3/RootViewBackgroundRenderer;

    invoke-virtual {p0}, Lcom/android/launcher3/RootViewBackgroundRenderer;->onWallpaperBrightnessChanged()V

    return-void
.end method

.method public refreshSystemWindowInsets()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/OplusLauncherRootView;->updateInsetWithDeviceProfile(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWorkspaceInset:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/LauncherRootView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/OplusDeviceProfile;->updateColorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherRootView;->setInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusLauncherRootView;->setSystemWindowInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resetDisallowBackGestureState()V
    .registers 5

    const-string/jumbo v0, "resetDisallowBackGestureState: mPendingDisallowBackGesture = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherRootView;->mPendingDisallowBackGesture:Z

    const-string v2, "TaskView"

    const-string v3, "OplusLauncherRootView"

    invoke-static {v0, v1, v2, v3}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mPendingDisallowBackGesture:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusLauncherRootView;->setDisallowBackGesture(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_14

    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_24

    :cond_14
    const-string/jumbo p0, "setAlpha "

    const-string v0, "; caller = "

    invoke-static {p0, p1, v0}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    const-string v0, "OplusLauncherRootView"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "OplusLauncherRootView"

    const-string/jumbo v0, "setBackground is called."

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setBracketSpaceRunning(Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBracketSpaceRunning: running = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "OplusLauncherRootView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mIsBracketSpaceRunning:Z

    return-void
.end method

.method public setDisallowBackGesture(Z)V
    .registers 5

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_5c

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5c

    :cond_d
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherRootView;->mPendingDisallowBackGesture:Z

    iget-boolean v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mIsBracketSpaceRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move p1, v1

    :cond_15
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherRootView;->mDisallowBackGesture:Z

    iget-boolean v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLastBackGestureState:Z

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherRootView;->mForceHideBackArrow:Z

    if-nez v2, :cond_22

    if-eqz p1, :cond_20

    goto :goto_22

    :cond_20
    move p1, v1

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p1, 0x1

    :goto_23
    iput-boolean p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLastBackGestureState:Z

    iget-boolean v2, p0, Lcom/android/launcher3/OplusLauncherRootView;->mIsFirstUpdate:Z

    if-nez v2, :cond_3b

    if-ne v0, p1, :cond_3b

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLastBackGestureRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/launcher3/LauncherRootView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    :cond_3b
    iget-boolean p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLastBackGestureState:Z

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLastBackGestureRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/launcher3/LauncherRootView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4c
    iget-boolean p1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mLastBackGestureState:Z

    if-eqz p1, :cond_53

    sget-object p1, Lcom/android/launcher3/LauncherRootView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    goto :goto_57

    :cond_53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_57
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/android/launcher3/OplusLauncherRootView;->mIsFirstUpdate:Z

    :cond_5c
    :goto_5c
    return-void
.end method

.method public setForceHideBackArrow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherRootView;->mForceHideBackArrow:Z

    iget-boolean p1, p0, Lcom/android/launcher3/LauncherRootView;->mPendingDisallowBackGesture:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherRootView;->setDisallowBackGesture(Z)V

    return-void
.end method

.method public setSystemWindowInsets(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherRootView;->dispatchSystemWidowInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherRootView;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_10
    return-void
.end method
