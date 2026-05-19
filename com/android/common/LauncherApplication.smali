.class public Lcom/android/common/LauncherApplication;
.super Landroid/app/Application;
.source ""


# static fields
.field private static final PREF_ICON_DARK_FLAG:Ljava/lang/String; = "icon_dark_flag"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/LauncherApplication;->lambda$onAppConfigChange$1(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/common/LauncherApplication;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherApplication;->lambda$onCreate$0()V

    return-void
.end method

.method public static getAppConfig()Landroid/content/res/Configuration;
    .registers 1

    sget-object v0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCoverageService()V
    .registers 8

    const-string v0, "LauncherApplication"

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCoverageBuildType()Z

    move-result v1

    if-eqz v1, :cond_76

    :try_start_8
    const-string v1, "initService start"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.oplus.autotest.coverageLib.CoverageService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "initService done"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_34} :catch_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_34} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_34} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_34} :catch_35

    goto :goto_76

    :catch_35
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :catch_4b
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InvocationTargetException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :catch_61
    move-exception p0

    const-string v1, "initService exception caught : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void
.end method

.method private static synthetic lambda$onAppConfigChange$1(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 3

    const-string/jumbo v0, "onAppConfigChange"

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->onLauncherConfigChange(Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->checkedException(Landroid/content/Context;)V

    return-void
.end method

.method private onAppConfigChange(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->startConfigCache()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/common/a;

    invoke-direct {v1, p1}, Lcom/android/common/a;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->checkAndClearLastExpandItems(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "LauncherApplication"

    if-eqz v0, :cond_33

    const-string/jumbo v0, "onConfigurationChanged: newConfig="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/config/ContextFetcher;->onAppConfigChange(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/config/ContextFetcher;->isLauncherStarted()Z

    move-result v0

    if-nez v0, :cond_51

    sget-boolean v0, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    if-nez v0, :cond_51

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->updateIdpIfNeeded()V

    :cond_51
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v0

    if-nez v0, :cond_5e

    const-string/jumbo p0, "onConfigurationChanged: Icon config don`t loaded"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5e
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v0

    if-nez v0, :cond_71

    return-void

    :cond_71
    const-string v2, "icon_dark_flag"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz p1, :cond_83

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->isDarkModeIcon()Z

    move-result p1

    if-eqz p1, :cond_83

    move p1, v4

    goto :goto_84

    :cond_83
    move p1, v3

    :goto_84
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, " prevDarkIconFlag="

    aput-object v5, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "; currentDarkIconFlag="

    aput-object v5, v0, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p1, v2, :cond_c7

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    const-string/jumbo p1, "onConfigurationChanged: isInteractive="

    invoke-static {p1, p0, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherAppState;

    if-eqz p1, :cond_c7

    if-nez p0, :cond_c7

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_c7
    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-nez p0, :cond_d5

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_da

    :cond_d5
    sget-object p0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {p0, v4}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFolderConfigurationChange(Z)V

    :cond_da
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    sget-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->startTemporaryCache()V

    sput-object p0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/ext/core/ExtLoader;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-wide/16 v0, 0x8

    const-string v2, "LauncherApp#configChange"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/common/LauncherApplication;->onAppConfigChange(Landroid/content/res/Configuration;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onCreate()V
    .registers 6

    const-class v0, Lcom/android/launcher/settings/LauncherTaskbarSettingActivity;

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Landroidx/recyclerview/widget/a;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/common/LauncherApplication;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/android/launcher/layout/LayoutUtilsManager;->initLayoutArrangementType(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->initLayoutDirection(I)V

    invoke-static {p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->init(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    invoke-virtual {v1}, Lcom/oplus/launcher/overlay/RROverlayManager;->initOverlayState()V

    invoke-static {}, Lcom/android/common/util/LaterInitHelper;->initOnWorker()V

    sget-object v1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUxImFlag()V

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    sget-object v1, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v1}, Lcom/oplus/util/OplusExecutors;->setPermanentUx(Lcom/android/launcher3/util/LooperExecutor;)V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v1, :cond_5f

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_5a

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initBranchStatus(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initBranchManager(Landroid/content/Context;)V

    :cond_5a
    sget-object v1, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

    invoke-virtual {v1, p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->init(Landroid/content/Context;)V

    :cond_5f
    invoke-static {p0}, Lcom/android/launcher/effect/EffectSetting;->initLauncherEffect(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/oplus/compat/utils/util/AdapterHelper;->init(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/card/di/DI;->INSTANCE:Lcom/oplus/card/di/DI;

    invoke-virtual {v1}, Lcom/oplus/card/di/DI;->load()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/card/CardPermissionManager;->initPermissionState(Landroid/content/Context;)V

    :cond_81
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v2

    if-nez v2, :cond_8e

    sget-object v2, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->setup(Landroid/app/Application;)V

    :cond_8e
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->sIsSupportDynamicDeepShortcut:Z

    if-eqz v2, :cond_97

    sget-object v2, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->initHeytapMarketShortcut()V

    :cond_97
    sget-object v2, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/SmallAppUtils;->registerObserverOnUIThread()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v2

    const-string v4, "com.android.launcher"

    if-eqz v2, :cond_d4

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_c3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/launcher/settings/LauncherTabletTaskbarSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->enableTaskbarSettingActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    goto :goto_eb

    :cond_c3
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->enableTaskbarSettingActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    goto :goto_eb

    :cond_d4
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_eb

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->enableTaskbarSettingActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    :cond_eb
    :goto_eb
    invoke-direct {p0}, Lcom/android/common/LauncherApplication;->initCoverageService()V

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->initAsync()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->initCardGroupSDK()V

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method public onTerminate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-static {p0}, Lcom/android/common/util/FoldStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/util/FoldStateMonitor;->destroy()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportTTSatelliteDevice()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->getInstance()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/model/SatelliteStateManage;->unregisterSatelliteCallback()V

    :cond_17
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherApplication#onTrimMemory("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LauncherApplication#onTrimMemory, level="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherApplication"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
