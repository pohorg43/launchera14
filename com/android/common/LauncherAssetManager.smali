.class public final Lcom/android/common/LauncherAssetManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;


# static fields
.field private static final ASSETS_DEFAULT_BADGE_SUPPORT_LIST_NAME:Ljava/lang/String; = "default_badge_support_list"

.field public static final ASSETS_MAIN_APP_CATEGORY_NAME:Ljava/lang/String; = "app_category"

.field public static final FILE_EXTRA_APP_CATEGORY_NAME:Ljava/lang/String; = "extra_app_category"

.field private static final FORMAT_US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final FORMAT_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "LauncherAssetManager"

.field private static final UTF8_FILE_HEAD_LENGTH:I = 0x3

.field private static final VERSION_BADGE_SUPPORT_LIST:Ljava/lang/String; = "badge_support_list_version"

.field public static final VERSION_SHORTCUT_BLACKLIST:Ljava/lang/String; = "shortcut_blacklist_version"

.field public static final VERSION_SHORTCUT_WHITELIST:Ljava/lang/String; = "shortcut_whitelist_version"

.field private static volatile sInstance:Lcom/android/common/LauncherAssetManager;


# instance fields
.field private final mBadgeSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryMapCleared:Z

.field private mContext:Landroid/content/Context;

.field private final mExtraAppCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsBadgeSupportListLoadedFromAsset:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMainAppCategoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mBadgeSupportList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mMainAppCategoryMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mExtraAppCategoryMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mIsBadgeSupportListLoadedFromAsset:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Landroidx/core/app/a;

    invoke-direct {v0, p0}, Landroidx/core/app/a;-><init>(Lcom/android/common/LauncherAssetManager;)V

    const-string v1, "launcher_initAssetData"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/android/common/rus/ExtraAppCategoryManager;->getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/rusconfig/RusBaseConfigManager;->registerRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/common/LauncherAssetManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/common/LauncherAssetManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->lambda$reloadCategoryMapIfNeeded$1()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;
    .registers 3

    sget-object v0, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/common/LauncherAssetManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/common/LauncherAssetManager;

    invoke-direct {v1, p0}, Lcom/android/common/LauncherAssetManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/common/LauncherAssetManager;->sInstance:Lcom/android/common/LauncherAssetManager;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/LauncherAssetManager;->loadBadgeSupportListFromAssets()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadLauncherConfigListFromRusOrAssets()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadExtraAppCategoryDataFromRusOrFile()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadHideTaskbarAppListData()V

    return-void
.end method

.method private synthetic lambda$reloadCategoryMapIfNeeded$1()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadMainAppCategoryDataFromAssets()V

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->loadExtraAppCategoryDataFromRusOrFile()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo p0, "reloadCategoryMap: cost: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherAssetManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadExtraAppCategoryDataFromRusOrFile()V
    .registers 3

    invoke-static {}, Lcom/android/common/rus/ExtraAppCategoryManager;->getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->loadAndParserLocalConfigData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->updateExtraAppCategoryData()V

    :cond_f
    return-void
.end method

.method private loadHideTaskbarAppListData()V
    .registers 1

    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/taskbarfilter/HideTaskbarAppListManager;->loadHideTaskbarNewestList(Landroid/content/Context;)V

    return-void
.end method

.method private loadLauncherConfigListFromRusOrAssets()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->getInstance()Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher/uninstall/ForbiddenUninstallAppManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    invoke-static {}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->getInstance()Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/deepshortcutfilter/ForbiddenDeepShortcutLabelManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    invoke-static {}, Lcom/android/common/rus/LauncherCommonConfigManager;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    invoke-static {}, Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;->getInstance()Lcom/android/launcher/backup/rus/DynamicShortcutSupportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    invoke-static {}, Lcom/android/launcher3/widget/WidgetControlConfigManager;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/rusconfig/RusBaseXmlConfigManager;->loadAndParserRusConfigData(Landroid/content/Context;)Z

    return-void
.end method

.method private loadListData([BLjava/util/ArrayList;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "LauncherAssetManager"

    if-eqz p1, :cond_66

    array-length v1, p1

    if-nez v1, :cond_8

    goto :goto_66

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    const-string v2, "UTF-8"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    array-length v2, p1

    const/4 v3, 0x3

    if-le v2, v3, :cond_1f

    new-instance v1, Ljava/lang/String;

    array-length p3, p1

    sub-int/2addr p3, v3

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v3, p3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_2c

    :cond_1f
    const-string v2, "US-ASCII"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_65

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const-string p1, "line.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3e
    const/4 v3, 0x1

    if-ge v2, p3, :cond_57

    aget-object v4, p1, v2

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_54

    aget-object v5, v4, v1

    aget-object v3, v4, v3

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_57
    const-string p1, "loadListData From Asset successfully !!"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/common/LauncherAssetManager;->mIsBadgeSupportListLoadedFromAsset:Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception p0

    const-string p1, "loadListData e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_65
    :goto_65
    return-void

    :cond_66
    :goto_66
    const-string p0, "loadListData failed, data is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadMainAppCategoryDataFromAssets()V
    .registers 4

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isAutonameFolderDisabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "LauncherAssetManager"

    const-string v1, "loadMainAppCategoryDataFromAssets load data from assets"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    sget-object v0, Lcom/android/common/util/FileOperationUtils;->INSTANCE:Lcom/android/common/util/FileOperationUtils;

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    const-string v1, "app_category"

    invoke-static {v0, v1}, Lcom/android/common/util/FileOperationUtils;->getAssetBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mMainAppCategoryMap:Ljava/util/HashMap;

    const-string v2, "US-ASCII"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/LauncherAssetManager;->loadMapData([BLjava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method private loadMapData([BLjava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "LauncherAssetManager"

    if-eqz p1, :cond_55

    array-length v0, p1

    if-nez v0, :cond_8

    goto :goto_55

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    const-string v1, "UTF-8"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    array-length v1, p1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1f

    new-instance v0, Ljava/lang/String;

    array-length p3, p1

    sub-int/2addr p3, v2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_2c

    :cond_1f
    const-string v1, "US-ASCII"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_2c
    :goto_2c
    if-eqz v0, :cond_54

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    :goto_35
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_54

    aget-object v0, p1, p3

    add-int/lit8 v1, p3, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4b} :catch_4e

    add-int/lit8 p3, p3, 0x2

    goto :goto_35

    :catch_4e
    move-exception p1

    const-string p2, "loadMapData e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_54
    return-void

    :cond_55
    :goto_55
    const-string p1, "loadMapData failed, data is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateExtraAppCategoryData()V
    .registers 6

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mExtraAppCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/android/common/rus/ExtraAppCategoryManager;->getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->getItemArrays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;

    iget-object v3, p0, Lcom/android/common/LauncherAssetManager;->mExtraAppCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseTxtConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method


# virtual methods
.method public clearCategoryMap()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mMainAppCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mExtraAppCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/android/common/rus/ExtraAppCategoryManager;->getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseTxtConfigManager;->clearData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    return-void
.end method

.method public getBadgeSupportList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mBadgeSupportList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRecommendFolderNameId(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mExtraAppCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-ne v1, v0, :cond_21

    iget-object p0, p0, Lcom/android/common/LauncherAssetManager;->mMainAppCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_21
    return v0
.end method

.method public isBadgeSupportListLoadedFromAsset()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/common/LauncherAssetManager;->mIsBadgeSupportListLoadedFromAsset:Z

    return p0
.end method

.method public loadBadgeSupportListFromAssets()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "LauncherAssetManager"

    const-string v1, "loadBadgeSupportListFromAssets load data from assets"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/android/common/LauncherAssetManager;->mContext:Landroid/content/Context;

    const-string v1, "default_badge_support_list"

    invoke-static {v0, v1}, Lcom/android/common/util/FileOperationUtils;->getAssetBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/LauncherAssetManager;->mBadgeSupportList:Ljava/util/ArrayList;

    const-string v2, "US-ASCII"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/common/LauncherAssetManager;->loadListData([BLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public onRusConfigChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/LauncherAssetManager;->updateExtraAppCategoryData()V

    return-void
.end method

.method public reloadCategoryMapIfNeeded()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/common/LauncherAssetManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/LauncherAssetManager;->mCategoryMapCleared:Z

    :cond_11
    return-void
.end method
