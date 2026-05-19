.class public final Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

.field private static final TAG:Ljava/lang/String; = "ExpandSwitchHelper"

.field private static foldedScreenSwitchStateChanged:Z

.field private static final mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private static final mTaskbarSettingsConfig$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper$mTaskbarSettingsConfig$2;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper$mTaskbarSettingsConfig$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mTaskbarSettingsConfig$delegate:Lh4/f;

    sget-object v0, Lcom/android/launcher3/hotseat/expand/i;->a:Lcom/android/launcher3/hotseat/expand/i;

    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener$lambda$0(Z)V

    return-void
.end method

.method public static final expandSwitchOffAndRemoveDirtyData(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v2, [Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p0, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_28
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_32
    return v2

    :cond_33
    return v1
.end method

.method private static synthetic getFoldedScreenSwitchStateChanged$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mTaskbarSettingsConfig$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    return-object p0
.end method

.method public static final isSwitchOn()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v0

    return v0
.end method

.method private static final mOnSettingsChangeListener$lambda$0(Z)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result p0

    const-string v0, "ExpandSwitchHelper"

    const-string v1, "Hotseat_expand"

    if-nez p0, :cond_18

    const-string p0, "expand switch off to clear lastFinalShownExpandDataList"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLastFinalShownExpandDataList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_18
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_28

    const-string/jumbo p0, "mark to switch expand dock on/off when back to large screen mode"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->foldedScreenSwitchStateChanged:Z

    goto :goto_2b

    :cond_28
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->onExpandSwitchStateChange()V

    :goto_2b
    return-void
.end method

.method public static final onExpandSwitchStateChange()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    const-string/jumbo v1, "onChange->dock expand switch change,switchOn:"

    const-string v2, "Hotseat_expand"

    const-string v3, "ExpandSwitchHelper"

    invoke-static {v1, v0, v2, v3}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    const-string v5, "getAppContext()"

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    goto :goto_6a

    :cond_27
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    goto :goto_6a

    :cond_32
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-eqz v0, :cond_64

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v5

    if-eqz v5, :cond_5b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v5, v4}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->refreshExapandBgData(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v5, v4}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    goto :goto_6a

    :cond_5b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v5, v4}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    goto :goto_6a

    :cond_64
    const-string/jumbo v0, "switch off failed, get launcher is null"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    sput-boolean v1, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->foldedScreenSwitchStateChanged:Z

    const-string/jumbo v0, "reset isNeedUpdateSwitch to false"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final registerSpChangeListener()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public static final switchExpandHotseatIfNeeded()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->foldedScreenSwitchStateChanged:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isLauncherMatchFoldingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Hotseat_expand"

    const-string/jumbo v1, "start to switch expand dock on/off when back to large screen mode"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->onExpandSwitchStateChange()V

    :cond_1b
    return-void
.end method

.method public static final unregisterSpChangeListener()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method
