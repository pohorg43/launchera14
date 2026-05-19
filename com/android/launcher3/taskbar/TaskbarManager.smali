.class public Lcom/android/launcher3/taskbar/TaskbarManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHANGE_FLAGS:I = 0x14

.field public static final FLAG_HIDE_NAVBAR_WINDOW:Z

.field private static final NAV_BAR_KIDS_MODE:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "TaskbarManager"

.field private static final USER_SETUP_COMPLETE_URI:Landroid/net/Uri;


# instance fields
.field public mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private final mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field public final mContext:Landroid/content/Context;

.field private final mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

.field private final mDisplayController:Lcom/android/launcher3/util/DisplayController;

.field private final mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field public final mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field public mOriginDensityDpi:I

.field public final mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

.field public mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field private final mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field public mUserUnlocked:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.wm.debug.hide_navbar_window"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "nav_bar_kids_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/unfold/NonDestroyableScopedUnfoldTransitionProgressProvider;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/unfold/NonDestroyableScopedUnfoldTransitionProgressProvider;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarSharedState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const/16 v2, 0x7e8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/Service;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mOriginDensityDpi:I

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;-><init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/SystemUiProxy;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    new-instance p1, Lcom/android/launcher3/taskbar/d1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/d1;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    new-instance v2, Lcom/android/launcher/touch/c;

    invoke-direct {v2, p0}, Lcom/android/launcher/touch/c;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarManager$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/TaskbarManager$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    new-instance v3, Lcom/android/launcher3/taskbar/c1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/c1;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    sget-object v3, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object p1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    invoke-virtual {p1, v3}, Lcom/android/launcher3/util/SettingsCache;->removeCache(Landroid/net/Uri;)V

    sget-object p1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/SettingsCache;->removeCache(Landroid/net/Uri;)V

    const-string p1, "TaskbarManager construct"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$2(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$1(Z)V

    return-void
.end method

.method private getUnfoldTransitionProgressProviderForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
    .registers 2

    instance-of p0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz p0, :cond_b

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getUnfoldTransitionProgressProvider()Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z
    .registers 2

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    const-string p1, "isUserSetupComplete"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .registers 3

    const-string p1, "isNavBarKidsMode"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 4

    and-int/lit8 p2, p3, 0x14

    if-eqz p2, :cond_51

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isFoldStateMatchScreenSize(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4c

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/config/ScreenInfo;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    const-string p2, "fold state not match with screen size, ignore recreate. isFold: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/android/common/util/FoldStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/util/FoldStateMonitor;->isFold()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", screenSize: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget p1, p0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    aget p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", flags: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskbarManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4c
    const-string p1, "mDispInfoChangeListener"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;)V

    :cond_51
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_58

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSampleRegion()V

    :cond_58
    return-void
.end method


# virtual methods
.method public cacheContextWhenDestroy()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public clearActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 4
    .param p1  # Lcom/android/launcher3/statemanager/StatefulActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-ne v0, p1, :cond_15

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_10

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    :cond_10
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setSourceProvider(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    :cond_15
    return-void
.end method

.method public createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.pc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    new-instance p0, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    return-object p0

    :cond_1a
    new-instance p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    return-object p0

    :cond_22
    instance-of p0, p1, Lcom/android/quickstep/RecentsActivity;

    if-eqz p0, :cond_2e

    new-instance p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    return-object p0

    :cond_2e
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    return-object p0
.end method

.method public destroy()V
    .registers 4

    const-string v0, "destroy"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public destroyExistingTaskbar(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    return-void
.end method

.method public destroyExistingTaskbar(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyExistingTaskbar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", force: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskbarManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDestroy(Z)V

    if-nez p2, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->cacheContextWhenDestroy()Z

    move-result p1

    if-nez p1, :cond_32

    :cond_2f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    :cond_32
    return-void
.end method

.method public disableNavBarElements(IIIZ)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->disableNavBarElements(IIIZ)V

    :cond_7
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmOriginDensityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mOriginDensityDpi:I

    const-string v2, "\tSystemDensityDpi: "

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getSystemDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p0, :cond_41

    const-string p0, "\tTaskbarActivityContext: null"

    invoke-static {p1, p0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_55

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_55
    return-void
.end method

.method public getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public getOriginDensityDpi()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mOriginDensityDpi:I

    return p0
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onLongPressHomeEnabled(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->setAssistantLongPressEnabled(Z)V

    :cond_7
    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onNavButtonsDarkIntensityChanged(F)V

    :cond_7
    return-void
.end method

.method public onRotationProposal(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onRotationProposal(IZ)V

    :cond_7
    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSystemBarAttributesChanged(II)V

    :cond_7
    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    :cond_c
    return-void
.end method

.method public onTaskbarConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onUserUnlocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    const-string/jumbo v0, "onUserUnlocked"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;)V

    return-void
.end method

.method public recreateTaskbar(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;Z)V

    return-void
.end method

.method public recreateTaskbar(Ljava/lang/String;Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recreateTaskbar reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskbarManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    if-eqz p2, :cond_33

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    :goto_34
    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    iget-boolean v2, p2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    move v2, v0

    :goto_3e
    const-string v3, "Taskbar"

    if-nez v2, :cond_73

    const-string/jumbo p2, "recreateTaskbar -->disable, enable: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, v0, v0}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarStatus(ZZ)V

    return-void

    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recreateTaskbar -->enable, reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/OplusDeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p1, :cond_ab

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    :cond_ab
    return-void
.end method

.method public setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 3
    .param p1  # Lcom/android/launcher3/statemanager/StatefulActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->getUnfoldTransitionProgressProviderForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setSourceProvider(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    :cond_1d
    return-void
.end method

.method public setSetupUIVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput-boolean p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setSetupUIVisible(Z)V

    :cond_b
    return-void
.end method
