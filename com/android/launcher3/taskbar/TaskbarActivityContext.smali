.class public Lcom/android/launcher3/taskbar/TaskbarActivityContext;
.super Lcom/android/launcher3/taskbar/BaseTaskbarContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;
    }
.end annotation


# static fields
.field private static final ENABLE_THREE_BUTTON_TASKBAR:Z

.field private static final IME_DRAWS_IME_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_imeDrawsImeNavBar"

.field private static final PRESS_ANIMATOR_RESET_DELAY:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "TaskbarActivityContext"

.field private static final WINDOW_TITLE:Ljava/lang/String; = "Taskbar"


# instance fields
.field private final mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

.field private mAddedWindow:Z

.field public mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

.field private mBindingItems:Z

.field private final mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

.field private final mHandler:Landroid/os/Handler;

.field private mIconUpAnimatorRunnable:Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;

.field private final mImeDrawsImeNavBar:Z

.field private mIsDestroyed:Z

.field private mIsExcludeFromMagnificationRegion:Z

.field private mIsFullscreen:Z

.field private final mIsNavBarForceVisible:Z

.field private final mIsNavBarKidsMode:Z

.field private final mIsSafeModeEnabled:Z

.field private final mIsUserSetupComplete:Z

.field private mLastRequestedNonFullscreenHeight:I

.field private final mLeftCorner:Landroid/view/RoundedCorner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private mNavbuttons:Landroid/widget/LinearLayout;

.field private mPendingOpenFolder:Z

.field private final mRightCorner:Landroid/view/RoundedCorner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mShouldUpdateWindowNext:Z

.field private mSystemUiStateFlags:I

.field private mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

.field private final mTaskbarWindowHelper:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

.field private final mViewCache:Lcom/android/launcher3/util/ViewCache;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.debug.taskbar_three_button"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->ENABLE_THREE_BUTTON_TASKBAR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V
    .registers 11

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-direct {v3, p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher3/taskbar/TaskbarProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher3/taskbar/TaskbarProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V
    .registers 38

    move-object/from16 v14, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/android/launcher3/util/ViewCache;

    invoke-direct {v13}, Lcom/android/launcher3/util/ViewCache;-><init>()V

    iput-object v13, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    iput-boolean v0, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    iput-boolean v0, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    iput-boolean v0, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    iput-boolean v0, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mShouldUpdateWindowNext:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p3

    iput-object v1, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-object/from16 v1, p2

    iput-object v1, v14, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static/range {p0 .. p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v2

    iput-object v2, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const-string v2, "config_imeDrawsImeNavBar"

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/ResourceUtils;->getBoolByName(Ljava/lang/String;Landroid/content/res/Resources;Z)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    new-instance v2, Lcom/android/launcher3/q1;

    invoke-direct {v2, v14}, Lcom/android/launcher3/q1;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    const-string v3, "isSafeMode"

    invoke-static {v3, v2}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsSafeModeEnabled:Z

    sget-object v2, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v14}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/SettingsCache;

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    sget-object v2, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v14}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/SettingsCache;

    const-string/jumbo v3, "nav_bar_force_visible"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarForceVisible:Z

    iput-boolean v0, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarKidsMode:Z

    invoke-direct {v14, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateIconSize(Landroid/content/res/Resources;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_90

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_98

    :cond_90
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_98
    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/view/WindowManager;

    iput-object v12, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    iput-object v3, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLeftCorner:Landroid/view/RoundedCorner;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v1

    iput-object v1, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mRightCorner:Landroid/view/RoundedCorner;

    iget-object v1, v14, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d025a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iput-object v10, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    const v1, 0x7f0a0607

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/taskbar/TaskbarView;

    const v1, 0x7f0a0605

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/taskbar/TaskbarScrimView;

    const v1, 0x7f0a0415

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v3, 0x7f0a05b6

    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/launcher3/taskbar/StashedHandleView;

    const v3, 0x7f0a0280

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavbuttons:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    invoke-direct {v3, v14}, Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iput-object v3, v14, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v5, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {v5, v14}, Lcom/android/launcher3/taskbar/TaskbarDragController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.pc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_112

    new-instance v3, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;

    invoke-direct {v3, v14, v1}, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    goto :goto_117

    :cond_112
    new-instance v3, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    invoke-direct {v3, v14, v1}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    :goto_117
    move-object/from16 v29, v3

    new-instance v1, Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    move-object v15, v1

    const v3, 0x7f060822

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v4, 0x7f060821

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const/4 v11, 0x4

    new-array v0, v11, [I

    fill-array-data v0, :array_200

    move-object/from16 p2, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_20c

    new-array v11, v11, [I

    fill-array-data v11, :array_218

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v17

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v18, v0

    const-string/jumbo v0, "taskbar_region_is_dark"

    move-object/from16 p3, v6

    const/4 v6, 0x0

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    new-instance v6, Lcom/android/launcher/layout/a;

    invoke-direct {v6, v14}, Lcom/android/launcher/layout/a;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object v0, v1

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move-object/from16 v4, v18

    move-object/from16 v30, p2

    move-object/from16 p2, p3

    move-object/from16 v18, v6

    move-object v6, v11

    move-object v11, v7

    move/from16 v7, v17

    move-object/from16 v31, v13

    move-object v13, v8

    move/from16 v8, v16

    move-object/from16 p3, v15

    move-object v15, v9

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;-><init>(Landroid/content/Context;II[I[I[IZZLjava/util/function/Supplier;)V

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    move-object/from16 v16, v0

    invoke-direct {v0, v14, v10}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-object/from16 v17, v0

    invoke-direct {v0, v14, v15}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    move-object/from16 v18, v0

    invoke-direct {v0, v14, v13}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarScrimView;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-direct {v0, v14, v2, v12, v1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Landroid/view/WindowManager;Landroid/view/IWindowManager;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    move-object/from16 v20, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    move-object/from16 v21, v0

    invoke-direct {v0, v14, v11}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V

    new-instance v0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;

    move-object/from16 v22, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    move-object/from16 v23, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    move-object/from16 v24, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarPopupController;

    move-object/from16 v25, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/TaskbarPopupController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    move-object/from16 v26, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-object/from16 v27, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    move-object/from16 v28, v0

    invoke-direct {v0, v14}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object/from16 v10, p2

    const/4 v0, 0x3

    move-object/from16 v11, p0

    move-object v3, v12

    move-object/from16 v12, v30

    move-object/from16 v1, v31

    move-object/from16 v13, p4

    move-object v2, v14

    move-object/from16 v14, v29

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v28}, Lcom/android/launcher3/taskbar/TaskbarControllers;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/OplusRotationButtonController;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Lcom/android/launcher3/taskbar/TaskbarScrimViewController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    move-object/from16 v4, p2

    iput-object v4, v2, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v4, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    invoke-direct {v4, v3}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;-><init>(Landroid/view/WindowManager;)V

    iput-object v4, v2, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarWindowHelper:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    const v2, 0x7f0d01d8

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    const v2, 0x7f0d01d9

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    return-void

    :array_200
    .array-data 4
        0x7f08076b
        0x7f08076f
        0x7f080773
        0x7f080777
    .end array-data

    :array_20c
    .array-data 4
        0x7f08076d
        0x7f080771
        0x7f080775
        0x7f080779
    .end array-data

    :array_218
    .array-data 4
        0x7f08076c
        0x7f080770
        0x7f080774
        0x7f080778
    .end array-data
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$createLauncherStartFromSuwAnim$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$showPopupMenuForIcon$7(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$4(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$2()V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$3(Lcom/android/launcher3/folder/Folder;I)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$new$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createLauncherStartFromSuwAnim$6(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getAllAppsButtonView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/Boolean;
    .registers 1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1()Ljava/lang/Integer;
    .registers 1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onTaskbarIconClicked$2()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusableForIme(Z)V

    return-void
.end method

.method private synthetic lambda$onTaskbarIconClicked$3(Lcom/android/launcher3/folder/Folder;I)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusableForIme(Z)V

    goto :goto_1a

    :cond_8
    if-nez p2, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/taskbar/l;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic lambda$onTaskbarIconClicked$4(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onTaskbarIconClicked$5(Lcom/android/launcher3/folder/Folder;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mPendingOpenFolder:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_OPEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    new-instance v0, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v0, p0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method private synthetic lambda$showPopupMenuForIcon$7(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$5(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method private onDialogShowingChanged(ZZ)V
    .registers 7

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_6
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->updateFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_37
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p2, :cond_3f

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_3f
    return-void
.end method

.method private onNotificationShadeExpandChanged(ZZ)V
    .registers 6

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getNotificationShadeBgTaskbar()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_34
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p2, :cond_3c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3c
    return-void
.end method

.method private resetBubbleTextViewStatus(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIconUpAnimatorRunnable:Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIconUpAnimatorRunnable:Lcom/android/launcher3/taskbar/TaskbarActivityContext$IconUpAnimatorResetRunnable;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 14

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "TaskbarActivityContext"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_7d

    sget-object v5, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2a

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2b

    :cond_2a
    move-object v6, v3

    :goto_2b
    const/4 v7, -0x1

    if-eqz v5, :cond_37

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_38

    :cond_37
    move-object v5, v3

    :goto_38
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_48

    iget-object v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v7, v8, :cond_48

    move v8, v1

    goto :goto_49

    :cond_48
    move v8, v4

    :goto_49
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_7e

    const-string/jumbo v9, "topActivityPackageName = "

    const-string v10, ", packageName = "

    const-string v11, ", ItemInfo userId = "

    invoke-static {v9, v5, v10, v6, v11}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", topTask userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", startTaskbarAnim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Taskbar"

    invoke-static {v6, v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :cond_7d
    move v8, v4

    :cond_7e
    :goto_7e
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    :try_start_8d
    const-string v6, "Main"

    const-string/jumbo v7, "start: taskbarAppIcon"

    invoke-static {v6, v7}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_b1

    const v3, 0x7f010014

    invoke-static {v0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "start_task_bar_anim"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->setExtraBundle(Landroid/app/ActivityOptions;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    :cond_b1
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-virtual {p0, v5, v3}, Landroid/view/ContextThemeWrapper;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_fe

    :cond_c1
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7, v3}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_d6
    .catch Ljava/lang/NullPointerException; {:try_start_8d .. :try_end_d6} :catch_d7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8d .. :try_end_d6} :catch_d7
    .catch Ljava/lang/SecurityException; {:try_start_8d .. :try_end_d6} :catch_d7

    goto :goto_fe

    :catch_d7
    move-exception v0

    const v1, 0x7f1200b5

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch. tag="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " intent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fe
    return-void
.end method

.method private updateIconSize(Landroid/content/res/Resources;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v0, p1, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/OplusDeviceProfile;->updateTaskbarAllAppsIconSize(FLandroid/content/Context;)V

    :cond_12
    iget-object p1, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->mDotRendererTaskbar:Lcom/android/launcher3/icons/OplusDotRenderer;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->updateDotSizeInTaskBar(Landroid/content/Context;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public addWindowView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->hasContainerInfo()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictedHotseatContainer()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->hasCardinality()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getCardinality()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_33
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto/16 :goto_f0

    :cond_40
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasHotseat()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->hasIndex()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_5b
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto/16 :goto_f0

    :cond_68
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasFolder()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasHotseat()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->hasIndex()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    :cond_97
    invoke-virtual {p0, v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->clearHotseat()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto :goto_f0

    :cond_a9
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasAllAppsContainer()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    goto :goto_f0

    :cond_cd
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasPredictionContainer()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    :cond_f0
    :goto_f0
    return-void
.end method

.method public createDefaultWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    const/4 v1, -0x1

    const/16 v3, 0x7e8

    const v4, 0x20000008

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v0, "Taskbar"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p0, 0x50

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 p0, 0x1

    iput-boolean p0, v6, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    const/16 p0, 0x30

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 p0, 0x3

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 p0, 0x40

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method public createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    instance-of v4, v3, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v4, :cond_16

    check-cast v3, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->addLauncherResumeAnimation(Landroid/animation/AnimatorSet;I)V

    :cond_16
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->addUnstashToHotseatAnimation(Landroid/animation/AnimatorSet;I)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_3d

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_42

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/keyguardservice/b;

    invoke-direct {v3, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3d
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0

    :array_42
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public createTaskbarTransYAnim(Ljava/lang/Boolean;)Landroid/animation/AnimatorSet;
    .registers 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->createIconTransYAnimForEnableChange(ZFF)Landroid/animation/Animator;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStashedHandleController()Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->createHandleViewTransYAnim(ZFF)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_3e

    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getNavbarButtonsViewController()Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->createNavTransYAnimForEnableChange(ZFF)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p0, :cond_46

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_46
    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public disableNavBarElements(IIIZ)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getDisplayId()I

    move-result p2

    if-eq p1, p2, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {p0, p3}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onDisable2FlagChanged(I)V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->INSTANCE:Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarActivityContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmNavMode=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmImeDrawsImeNavBar=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmIsUserSetupComplete=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmWindowLayoutParams.height=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmBindInProgress=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    aput-object v1, v0, v4

    const-string v1, "%s\tmTaskbarProfile=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarControllers;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public excludeFromMagnificationRegion(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsExcludeFromMagnificationRegion:Z

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1d

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1d
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result v0

    const-string v1, "TaskbarActivityContext"

    if-eqz v0, :cond_2d

    const-string p0, "excludeFromMagnificationRegion ignore in small screen. exclude: "

    invoke-static {p0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_2d
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mShouldUpdateWindowNext:Z

    if-eqz v0, :cond_37

    const-string p0, "excludeFromMagnificationRegion ignore. exclude: "

    invoke-static {p0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "excludeFromMagnificationRegion#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    return-void
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAccessibilityDelegate:Lcom/android/launcher3/taskbar/TaskbarShortcutMenuAccessibilityDelegate;

    return-object p0
.end method

.method public getAllAppsController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    return-object p0
.end method

.method public getDefaultTaskbarWindowHeight()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLeftCornerRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getRightCornerRadius()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPopupDataProviderInjector()Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPopupDataProviderInjector()Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForShortCutItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPopupDataProviderInjector()Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p0

    return-object p0
.end method

.method public getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    return-object p0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getDragLayerController()Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    return-object p0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/side/b;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/b;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    return-object v0
.end method

.method public getLeftCornerRadius()I
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableWindowRoundCorner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLeftCorner:Landroid/view/RoundedCorner;

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    :goto_11
    return v1
.end method

.method public getNavbarButtonsViewController()Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    instance-of v0, p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public getPopupDataProviderInjector()Lcom/android/launcher/badge/BadgeDataProviderCompat;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->getPopupDataProviderInjector()Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    return-object p0
.end method

.method public getRightCornerRadius()I
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableWindowRoundCorner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mRightCorner:Landroid/view/RoundedCorner;

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    :goto_11
    return v1
.end method

.method public getStashedHandleController()Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    return-object p0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    return-object p0
.end method

.method public getSystemUiStateFlags()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mSystemUiStateFlags:I

    return p0
.end method

.method public getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    return-object p0
.end method

.method public getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    return-object p0
.end method

.method public getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    return-object p0
.end method

.method public getTaskbarWindowHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_7

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return p0

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result p0

    return p0
.end method

.method public getViewCache()Lcom/android/launcher3/util/ViewCache;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    return-object p0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public imeDrawsImeNavBar()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mImeDrawsImeNavBar:Z

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .registers 8
    .param p1  # Lcom/android/launcher3/taskbar/TaskbarSharedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarWindowUseSpecHeight()Z

    move-result v0

    const-string v1, "TaskbarActivityContext"

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getTaskbarWindowSpecHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    const-string v0, "init mLastRequestedNonFullscreenHeight: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dp height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createDefaultWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "init mControllers start"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init mControllers over, cost "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->INSTANCE:Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->initRegionSamplingHelper(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    iget p1, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarWindowHelper:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->addTaskbar(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;)V

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    goto :goto_8b

    :cond_86
    const-string p1, "init"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    :goto_8b
    return-void
.end method

.method public isAddedWindow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    return p0
.end method

.method public isBindingItems()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    return p0
.end method

.method public isGestureNav()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isNavBarForceVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarForceVisible:Z

    return p0
.end method

.method public isNavBarKidsModeActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsNavBarKidsMode:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isTaskbarWindowFullscreen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    return p0
.end method

.method public isThreeButtonNav()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isUserSetupComplete()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsUserSetupComplete:Z

    return p0
.end method

.method public maybeSetTaskbarWindowNotFullscreen()V
    .registers 2

    const v0, 0x7fffff

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mPendingOpenFolder:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    :cond_1b
    return-void
.end method

.method public notifyUpdateLayoutParams()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    return-void
.end method

.method public onConfigurationChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->onConfigurationChanged(I)V

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_14

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_14
    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDestroy(Z)V

    return-void
.end method

.method public onDestroy(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    const/4 v1, 0x0

    const-string v2, "TaskbarActivityContext"

    if-eqz v0, :cond_1a

    const-string v0, "already destroyed"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarWindowHelper:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->removeTaskbar()V

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->onDestroy()V

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->INSTANCE:Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->onDestroy()V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->cacheWindowOnDestroy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_35

    goto :goto_3c

    :cond_35
    const-string/jumbo p0, "onDestroy cache window"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarWindowHelper:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->removeTaskbar()V

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mAddedWindow:Z

    :goto_43
    return-void
.end method

.method public onDragEnd()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->maybeSetTaskbarWindowNotFullscreen()V

    return-void
.end method

.method public onDragStart()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    return-void
.end method

.method public onFoldStateChange(ZLcom/android/launcher3/taskbar/TaskbarProfile;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result v0

    const-string v1, "TaskbarActivityContext"

    if-ne p1, v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onFoldStateChange ignore. isFold: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    const-string/jumbo v0, "onFoldStateChange isFold: "

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mShouldUpdateWindowNext:Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->onFoldStateChange(Z)V

    return-void
.end method

.method public onLongPressToUnstashTaskbar()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onLongPressToUnstashTaskbar()Z

    move-result p0

    return p0
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "TaskbarActivityContext"

    const-string/jumbo p1, "onNavButtonsDarkIntensityChanged ---->!isUserSetupComplete()"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonDarkIntensity()Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public onPopupVisibilityChanged(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onRotationProposal(IZ)V

    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onBehaviorChanged(II)V

    return-void
.end method

.method public onTaskbarIconClicked(Landroid/view/View;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_15

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    goto :goto_16

    :cond_15
    move v5, v4

    :goto_16
    if-nez v5, :cond_1b

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->resetBubbleTextViewStatus(Landroid/view/View;)V

    :cond_1b
    const-string v6, "TaskbarActivityContext"

    if-nez v5, :cond_2e

    sget-object v7, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v7}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result v7

    if-nez v7, :cond_2e

    const-string/jumbo v0, "onTaskbarIconClicked return when click time is short than 250ms!"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isIconAlignmentAnimRunning()Z

    move-result v7

    if-eqz v7, :cond_3b

    const-string/jumbo v0, "onTaskbarIconClicked return when icon alignment running."

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarStashController()Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x0

    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5d

    const-string/jumbo v0, "onTaskbarIconClicked return when stashAnimator isRunning!"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_5c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v8, v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;->openOrCloseFileManagerCallBack(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    invoke-static {v4, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    :cond_5c
    return-void

    :cond_5d
    instance-of v7, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_71

    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v9, -0x65

    if-ne v7, v9, :cond_71

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    :cond_71
    instance-of v7, v2, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v9, 0x1

    if-eqz v7, :cond_81

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/model/data/AppInfo;

    iget v10, v10, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v11, -0x68

    if-ne v10, v11, :cond_81

    move v10, v9

    goto :goto_82

    :cond_81
    move v10, v4

    :goto_82
    instance-of v11, v2, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v11, :cond_97

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_2fe

    :cond_97
    instance-of v11, v2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v11, :cond_ca

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getState()I

    move-result v2

    if-ne v2, v9, :cond_ac

    iget-boolean v2, v0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v2, :cond_ac

    move v4, v9

    :cond_ac
    if-eqz v4, :cond_af

    return-void

    :cond_af
    new-instance v2, Lcom/android/launcher/w;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    invoke-virtual {v1, v9}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    iput-boolean v9, v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mPendingOpenFolder:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/s;

    invoke-direct {v3, v1, v0}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2fe

    :cond_ca
    if-eqz v3, :cond_2c0

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_e6

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_d9

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    :cond_d9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/statistics/LauncherStatistics;->statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto/16 :goto_2fe

    :cond_e6
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/touch/ItemClickHandler;->handleDisabledItemClicked(Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/Context;)Z

    goto/16 :goto_2fe

    :cond_f1
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v7, 0x4

    const/high16 v11, 0x10000000

    const/16 v13, 0xca

    if-ne v3, v13, :cond_10c

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10c

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10c

    move-object v3, v8

    goto :goto_125

    :cond_10c
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_118

    const-string v0, "getIntent is null !!"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_118
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    :goto_125
    :try_start_125
    iget-boolean v14, v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsSafeModeEnabled:Z

    if-eqz v14, :cond_13d

    if-eqz v3, :cond_13d

    invoke-static {v1, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v14

    if-nez v14, :cond_13d

    const v0, 0x7f120515

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_290

    :cond_13d
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v14
    :try_end_141
    .catch Ljava/lang/NullPointerException; {:try_start_125 .. :try_end_141} :catch_298
    .catch Landroid/content/ActivityNotFoundException; {:try_start_125 .. :try_end_141} :catch_298
    .catch Ljava/lang/SecurityException; {:try_start_125 .. :try_end_141} :catch_298

    const-string v15, "Main"

    if-eqz v14, :cond_16f

    :try_start_145
    const-string/jumbo v7, "start: taskbarPromiseIcon"

    invoke-static {v15, v7}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v7, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ContextThemeWrapper;->startActivity(Landroid/content/Intent;)V

    invoke-static {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updatePredictionAndFrequencyUsage(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/statistics/LauncherStatistics;->statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto/16 :goto_290

    :cond_16f
    iget v11, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v11, v9, :cond_1ae

    const-string/jumbo v7, "start: taskbarDeepShortcut"

    invoke-static {v15, v7}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v18

    if-nez v3, :cond_185

    const-string v0, "ITEM_TYPE_DEEP_SHORTCUT intent is null !!"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_185
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    const-class v7, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroid/content/pm/LauncherApps;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-static {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updatePredictionAndFrequencyUsage(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/statistics/LauncherStatistics;->statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto/16 :goto_290

    :cond_1ae
    if-ne v11, v13, :cond_26e

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_26e

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->findExpandItemByExpandType(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_26e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IsMultipleTasks? "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "; IsPocketStudioVersion? "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "; isSupportPocketStudioLocal? "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isSupport()Z

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "; TaskID is : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mPkgNamesForExpandItem:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsMultipleTasks:Z

    if-eqz v7, :cond_241

    invoke-static {}, Landroidx/core/app/ActivityOptionsCompat;->makeBasic()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v7

    const/4 v11, 0x2

    new-array v15, v11, [I

    iget-object v13, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v13, v13, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v14, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v14, v15, v4

    iget-object v14, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v14, v14, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v12, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v12, v15, v9

    new-array v11, v11, [I

    iget v12, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v12, v11, v4

    iget v12, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v12, v11, v9

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const/16 v17, 0x0

    invoke-virtual {v7}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v16, v11

    invoke-static/range {v13 .. v18}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->start(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;)Z

    :cond_241
    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_290

    iget-boolean v0, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->mIsPocketStudioVersion:Z

    if-eqz v0, :cond_290

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivityFromRecents for split item: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v7, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v7, v8}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    goto :goto_290

    :cond_26e
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->injectExpandItemClicked(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_27f

    const-string/jumbo v0, "onTaskbarIconClicked start app connect"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_290

    :cond_27f
    invoke-direct {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updatePredictionAndFrequencyUsage(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/statistics/LauncherStatistics;->statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_290
    :goto_290
    iget-object v0, v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V
    :try_end_297
    .catch Ljava/lang/NullPointerException; {:try_start_145 .. :try_end_297} :catch_298
    .catch Landroid/content/ActivityNotFoundException; {:try_start_145 .. :try_end_297} :catch_298
    .catch Ljava/lang/SecurityException; {:try_start_145 .. :try_end_297} :catch_298

    goto :goto_2fe

    :catch_298
    move-exception v0

    const v7, 0x7f1200b5

    invoke-static {v1, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to launch. tag="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2fe

    :cond_2c0
    if-eqz v7, :cond_2ea

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->startItemInfoActivity(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updatePredictionAndFrequencyUsage(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    const/high16 v3, 0x20000

    invoke-static {v1, v3}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v0

    if-eqz v0, :cond_2dd

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/statistics/LauncherStatistics;->statsClickTaskbar(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_2dd
    iget-object v0, v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz v10, :cond_2fe

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->hideAllAppsWhenStartApp(Lcom/android/launcher3/views/ActivityContext;)V

    goto :goto_2fe

    :cond_2ea
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type clicked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2fe
    :goto_2fe
    if-eqz v5, :cond_307

    const v0, 0x20001

    invoke-static {v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;I)V

    goto :goto_319

    :cond_307
    if-eqz v10, :cond_30f

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;I)V

    goto :goto_319

    :cond_30f
    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManager()V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    :goto_319
    return-void
.end method

.method public removeWindowView(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public setAutohideSuspendFlag(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    return-void
.end method

.method public setBindingItems(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mBindingItems:Z

    return-void
.end method

.method public setSetupUIVisible(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->setSetupUIVisible(Z)V

    return-void
.end method

.method public setTaskbarWindowFocusable(Z)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_13

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTaskbarWindowFocusable updateViewLayout focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskbarActivityContext"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "setTaskbarWindowFocusable"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    return-void
.end method

.method public setTaskbarWindowFocusableForIme(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTaskbarWindowFocusableForIme focusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",folder name edit is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarActivityContext"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFocusable(Z)V

    return-void
.end method

.method public setTaskbarWindowFullscreen(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    if-eqz p1, :cond_e

    const/4 p1, -0x1

    goto :goto_10

    :cond_e
    iget p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    :goto_10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    return-void
.end method

.method public setTaskbarWindowHeight(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v0, p1, :cond_37

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsDestroyed:Z

    if-eqz v0, :cond_b

    goto :goto_37

    :cond_b
    const/4 v0, -0x1

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result p1

    goto :goto_1c

    :cond_15
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    :goto_1c
    const-string/jumbo v0, "setTaskbarWindowHeight updateViewLayout height: "

    const-string v1, "Taskbar"

    const-string v2, "TaskbarActivityContext"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    const-string/jumbo p1, "setTaskbarWindowHeight"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V
    .registers 3
    .param p1  # Lcom/android/launcher3/taskbar/TaskbarUIController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    return-void
.end method

.method public shouldUpdateWindowNext()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mShouldUpdateWindowNext:Z

    return p0
.end method

.method public showPopupMenuForIcon(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    new-instance v0, Lcom/android/launcher3/model/s;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startTaskbarUnstashHint(Z)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableTaskbarLongClickToStash()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->startUnstashHint(Z)V

    return-void
.end method

.method public startUpTaskbarHandleViewHint(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->startUpstashHandleView(Z)V

    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarProfile;)V
    .registers 5
    .param p2  # Lcom/android/launcher3/taskbar/TaskbarProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const-string/jumbo v0, "updateDeviceProfile mNavMode: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarActivityContext"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isTaskbarPresent()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/DeviceProfile;->updateTaskbarPresent(Landroid/content/Context;Z)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateTaskbarProfile(Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateIconSize(Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    const p2, 0x4da274

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mIsFullscreen:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    invoke-interface {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->dispatchDeviceProfileChanged()V

    return-void
.end method

.method public updateInsetRoundedCornerFrame(Z)V
    .registers 4

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isDisableWindowRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-ne v0, p1, :cond_16

    goto :goto_28

    :cond_16
    const-string/jumbo v0, "updateInsetRoundedCornerFrame updateViewLayout shouldInsetsRoundedCorner: "

    const-string v1, "TaskbarActivityContext"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    const-string/jumbo p1, "updateInsetRoundedCornerFrame"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public updateSampleRegion()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarProfile()Lcom/android/launcher3/taskbar/TaskbarProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->INSTANCE:Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mNavbuttons:Landroid/widget/LinearLayout;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->updateSampledRegion(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    :cond_11
    return-void
.end method

.method public updateSysuiStateFlags(IZ)V
    .registers 7

    const-string v0, " updateSysuiStateFlags: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarActivityContext"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mSystemUiStateFlags:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->updateStateForSysuiFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setImeIsVisible(Z)V

    and-int/lit16 v0, p1, 0x804

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onNotificationShadeExpandChanged(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isRecentsDisabled()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_4f

    :cond_4d
    move v0, v2

    goto :goto_50

    :cond_4f
    :goto_4f
    move v0, v1

    :goto_50
    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setRecentsButtonDisabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isHomeDisabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->setIsHomeButtonDisabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->updateStateForSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->updateStateForSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-nez p2, :cond_7d

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_7b

    goto :goto_7d

    :cond_7b
    move v3, v2

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v3, v1

    :goto_7e
    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForSysuiFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->updateStateForSysuiFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->updateSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->updateSysuiFlags(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->updateSysuiFlags(I)V

    const v0, 0x8000

    and-int/2addr p1, v0

    if-eqz p1, :cond_a4

    goto :goto_a5

    :cond_a4
    move v1, v2

    :goto_a5
    invoke-direct {p0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDialogShowingChanged(ZZ)V

    return-void
.end method

.method public updateTaskbarProfile(Lcom/android/launcher3/taskbar/TaskbarProfile;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarProfile:Lcom/android/launcher3/taskbar/TaskbarProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getWindowHeight()I

    move-result v2

    const-string/jumbo v3, "updateTaskbarProfile "

    const-string/jumbo v4, "x"

    const-string v5, "TaskbarActivityContext"

    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarWindowUseSpecHeight()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarProfile;->getTaskbarWindowSpecHeight(Landroid/content/Context;)I

    move-result v1

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    if-eq v1, v4, :cond_3d

    const-string/jumbo v0, "updateTaskbarProfile newHeight: "

    invoke-static {v0, v1, v5}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mLastRequestedNonFullscreenHeight:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3e

    :cond_3d
    move v2, v0

    :goto_3e
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onTaskbarProfileChange(Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->onTaskbarProfileChange(Lcom/android/launcher3/taskbar/TaskbarProfile;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->onFoldChange(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v4, "taskbar_region_is_dark"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->updateResources(ZZ)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarProfile;->isSmallScreen()Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->stop()V

    goto :goto_76

    :cond_73
    invoke-static {}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->start()V

    :goto_76
    if-nez v2, :cond_7c

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mShouldUpdateWindowNext:Z

    if-eqz p1, :cond_89

    :cond_7c
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    const-string/jumbo p1, "updateTaskbarProfile"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateWindowLayout(Ljava/lang/String;)V

    :cond_89
    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mShouldUpdateWindowNext:Z

    return-void
.end method

.method public updateWindowLayout(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mTaskbarWindowHelper:Lcom/android/launcher3/taskbar/TaskbarWindowHelper;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->updateWindowLayout(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
