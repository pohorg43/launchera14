.class public abstract Lcom/android/launcher3/model/OplusBaseLoaderTask;
.super Lcom/android/launcher3/model/LoaderTask;
.source ""


# static fields
.field public static final DEFAULT_THEME_UUID:Ljava/lang/String; = "-1"

.field private static final LOAD_BIND_WORKSPACE_TAG:Ljava/lang/String; = "loadAndBindWorkspace"

.field private static final LOG_CONSTANT_CONTAINER:Ljava/lang/String; = " container:"

.field private static final LOG_CONSTANT_ITEM:Ljava/lang/String; = " item:"

.field private static final LOG_CONSTANT_LOAD_SPECIFIC:Ljava/lang/String; = "loadSpecificScreenItems update "

.field private static final LOG_CONSTANT_SCREEN_ID:Ljava/lang/String; = ",screenId:"

.field public static final PACKAGE_CLASS_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREF_DEVELOPMENT_MODE_FLAG:Ljava/lang/String; = "development_mode_flag"

.field public static final PREF_ICON_DARK_FLAG:Ljava/lang/String; = "icon_dark_flag"

.field public static final PREF_ICON_PKG_NAME:Ljava/lang/String; = "icon_pkg_name"

.field public static final PREF_ICON_STYLE_FLAG:Ljava/lang/String; = "icon_style_flag"

.field public static final PREF_THEME_CHANGE_FLAG:Ljava/lang/String; = "theme_change_flag"

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final THEME_UUID_KEY:Ljava/lang/String;

.field private static final sCollator:Ljava/text/Collator;

.field private static sFirstLoad:Z


# instance fields
.field private final mAllUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppFilter:Lcom/android/launcher3/AppFilter;

.field public mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

.field private mInstallingPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIconThemeChanged:Z

.field private mIsSafeMode:Z

.field private mIsSdCardReady:Z

.field private final mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

.field public mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

.field private mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

.field private final mPendingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

.field private final mQuietMode:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutKeyToPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnlockedUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 26

    const v0, 0x7f12003a

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string v3, "intent"

    const-string v4, "container"

    const-string/jumbo v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string/jumbo v8, "spanX"

    const-string/jumbo v9, "spanY"

    const-string v10, "itemType"

    const-string v11, "appWidgetId"

    const-string v12, "appWidgetProvider"

    const-string v13, "iconPackage"

    const-string v14, "iconResource"

    const-string/jumbo v15, "restored"

    const-string/jumbo v16, "profileId"

    const-string/jumbo v17, "rank"

    const-string/jumbo v18, "options"

    const-string/jumbo v19, "user_id"

    const-string v20, "card_type"

    const-string v21, "card_host_id"

    const-string/jumbo v22, "service_id"

    const-string v23, "card_category"

    const-string v24, "editable_attributes"

    const-string/jumbo v25, "theme_card_identification"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sCollator:Ljava/text/Collator;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sFirstLoad:Z

    new-instance v0, Lcom/android/launcher3/model/OplusBaseLoaderTask$1;

    invoke-direct {v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->PACKAGE_CLASS_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    const-string p3, "Base"

    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/LoaderTask;->setTag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAppFilter:Lcom/android/launcher3/AppFilter;

    check-cast p5, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    iput-object p5, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    return-void
.end method

.method public static synthetic access$000()Ljava/text/Collator;
    .registers 1

    sget-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private bindExtraWorkspaceItemList(Landroid/content/Context;ZI)V
    .registers 18

    move-object v0, p0

    new-instance v10, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v10}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v11, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v11}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v13

    :try_start_13
    iget-object v1, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v4, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v6, v4, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    const/4 v7, 0x1

    move-object v4, v10

    move-object v5, v11

    move-object v8, v12

    move/from16 v9, p3

    invoke-static/range {v1 .. v9}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;ZLjava/util/List;I)Ljava/util/List;

    monitor-exit v13
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_a9

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "added extra screens "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    invoke-static {p1, v10}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    iget-object v1, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceScreen(Lcom/android/launcher3/util/IntArray;)V

    :cond_4c
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_74

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "added extra ItemInfo "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    const/4 v2, 0x0

    move/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    :cond_74
    iget-object v1, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_77
    iget-object v2, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "still exist extra item list, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v0, v0, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    monitor-exit v1

    return-void

    :catchall_a6
    move-exception v0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_77 .. :try_end_a8} :catchall_a6

    throw v0

    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v13
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0
.end method

.method public static clearIconDbIfThemeChanged(Landroid/content/Context;Lcom/android/launcher3/icons/IconCache;Z)Z
    .registers 36

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "-1"

    if-eqz v4, :cond_21

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "clearIconDbIfThemeChanged currentTheme = "

    invoke-static {v6, v0, v4}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_22

    :cond_21
    move-object v4, v0

    :goto_22
    const/4 v6, 0x0

    :try_start_23
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v6
    :try_end_27
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_23 .. :try_end_27} :catch_28

    goto :goto_43

    :catch_28
    move-exception v0

    move-object v7, v0

    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v8, "getConfiguration e:"

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    invoke-static {v6}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    const-string v8, "icon_style_flag"

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_6e

    invoke-static {v1, v8, v9, v10}, Lcom/android/common/util/LauncherSharedPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v12

    :try_start_55
    invoke-static {v6}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v9
    :try_end_59
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_55 .. :try_end_59} :catch_5a

    goto :goto_5f

    :catch_5a
    move-exception v0

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    cmp-long v0, v9, v12

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_68

    :cond_66
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_68
    move-wide/from16 v31, v9

    move-wide v9, v12

    move-wide/from16 v12, v31

    goto :goto_71

    :cond_6e
    move-wide v12, v9

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_71
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v15

    const-string v11, "icon_dark_flag"

    if-eqz v6, :cond_94

    if-eqz v15, :cond_94

    invoke-virtual {v6}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v15

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDarkModeIcon()Z

    move-result v17

    move-wide/from16 v18, v2

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v15, :cond_8f

    if-eqz v17, :cond_8f

    const/4 v2, 0x1

    :cond_8f
    if-eq v2, v3, :cond_98

    const/4 v0, 0x1

    const/4 v15, 0x1

    goto :goto_99

    :cond_94
    move-wide/from16 v18, v2

    const/4 v3, 0x0

    const/4 v2, 0x1

    :cond_98
    const/4 v15, 0x0

    :goto_99
    move-object/from16 v17, v8

    move/from16 v16, v15

    move v15, v3

    move v3, v2

    move v2, v0

    const-string/jumbo v8, "theme_change_flag"

    if-nez v2, :cond_d2

    const/4 v0, 0x1

    move/from16 v20, v2

    invoke-static {v1, v8, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :try_start_ac
    invoke-static {v6}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChanged(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_b0
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_ac .. :try_end_b0} :catch_b1

    goto :goto_b8

    :catch_b1
    move-exception v0

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    :goto_b8
    if-eq v0, v2, :cond_c5

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v22, v8

    move/from16 v31, v21

    move/from16 v21, v2

    goto :goto_df

    :cond_c5
    const/16 v21, 0x0

    move-object/from16 v22, v8

    move/from16 v31, v21

    move/from16 v21, v2

    move/from16 v2, v20

    move/from16 v20, v31

    goto :goto_e1

    :cond_d2
    move/from16 v20, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v21, 0x0

    move-object/from16 v22, v8

    move/from16 v31, v20

    move/from16 v20, v0

    move v0, v2

    :goto_df
    move/from16 v2, v31

    :goto_e1
    const-string v8, ""

    move/from16 v23, v2

    if-nez v2, :cond_fd

    sget-object v2, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_fd

    invoke-static {v1, v2, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fe

    const/4 v5, 0x1

    const/16 v23, 0x1

    goto :goto_ff

    :cond_fd
    move-object v2, v8

    :cond_fe
    const/4 v5, 0x0

    :goto_ff
    move-object/from16 v24, v11

    move/from16 v31, v5

    move-object v5, v2

    move/from16 v2, v23

    move/from16 v23, v31

    const-string v11, "icon_pkg_name"

    if-nez v2, :cond_11a

    invoke-static {v1, v11, v8}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11a

    const/4 v2, 0x1

    const/16 v25, 0x1

    goto :goto_11c

    :cond_11a
    const/16 v25, 0x0

    :goto_11c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v26

    const/16 v27, 0x3

    const/16 v28, 0x2

    if-eqz v26, :cond_204

    move-object/from16 v26, v11

    sget-object v11, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/16 v1, 0x21

    new-array v1, v1, [Ljava/lang/Object;

    const-string v29, "CheckThemeStyle:"

    const/16 v30, 0x0

    aput-object v29, v1, v30

    const-string v29, " prevDarkIconFlag: "

    const/16 v30, 0x1

    aput-object v29, v1, v30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v28

    const-string v15, ", currentDarkIconFlag: "

    aput-object v15, v1, v27

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v15, 0x4

    aput-object v3, v1, v15

    const/4 v3, 0x5

    const-string v15, " prevThemeFlag: "

    aput-object v15, v1, v3

    const/4 v3, 0x6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v3

    const/4 v3, 0x7

    const-string v15, ", currentThemeFlag: "

    aput-object v15, v1, v3

    const/16 v3, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v1, v3

    const/16 v3, 0x9

    const-string v15, ", prevIconStyleFlag: "

    aput-object v15, v1, v3

    const/16 v3, 0xa

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v3

    const/16 v3, 0xb

    const-string v9, ", curIconStyleFlag: "

    aput-object v9, v1, v3

    const/16 v3, 0xc

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v3

    const/16 v3, 0xd

    const-string v9, ", prevThemeUuid: "

    aput-object v9, v1, v3

    const/16 v3, 0xe

    aput-object v5, v1, v3

    const/16 v3, 0xf

    const-string v5, ", currentThemeUuid: "

    aput-object v5, v1, v3

    const/16 v3, 0x10

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v5, ", styleChanged: "

    aput-object v5, v1, v3

    const/16 v3, 0x12

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x13

    const-string v5, ", themeFlagChanged: "

    aput-object v5, v1, v3

    const/16 v3, 0x14

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x15

    const-string v5, ", themeUuidChanged: "

    aput-object v5, v1, v3

    const/16 v3, 0x16

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x17

    const-string v5, ",prevPkgName = "

    aput-object v5, v1, v3

    const/16 v3, 0x18

    aput-object v8, v1, v3

    const/16 v3, 0x19

    const-string v5, " ,currentPkgName = "

    aput-object v5, v1, v3

    const/16 v3, 0x1a

    aput-object v7, v1, v3

    const/16 v3, 0x1b

    const-string v5, ", clear: "

    aput-object v5, v1, v3

    const/16 v3, 0x1c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    const-string v5, ", configuration: "

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    if-eqz v6, :cond_1ed

    iget-object v5, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    goto :goto_1f0

    :cond_1ed
    const-string/jumbo v5, "null"

    :goto_1f0
    aput-object v5, v1, v3

    const/16 v3, 0x1f

    const-string v5, ", update:"

    aput-object v5, v1, v3

    const/16 v3, 0x20

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_206

    :cond_204
    move-object/from16 v26, v11

    :goto_206
    if-eqz v2, :cond_243

    if-eqz p2, :cond_243

    if-eqz p1, :cond_20f

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->clearIconsCacheAndDb()V

    :cond_20f
    if-eqz v16, :cond_21a

    const/4 v1, -0x1

    move-object/from16 v3, p0

    move-object/from16 v5, v24

    invoke-static {v3, v5, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_21c

    :cond_21a
    move-object/from16 v3, p0

    :goto_21c
    if-eqz v14, :cond_223

    move-object/from16 v1, v17

    invoke-static {v3, v1, v12, v13}, Lcom/android/common/util/LauncherSharedPrefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_223
    if-eqz v20, :cond_22a

    move-object/from16 v1, v22

    invoke-static {v3, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_22a
    if-nez v20, :cond_22e

    if-eqz v23, :cond_239

    :cond_22e
    sget-object v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->THEME_UUID_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_239

    invoke-static {v3, v0, v4}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_239
    if-nez v14, :cond_23d

    if-eqz v25, :cond_245

    :cond_23d
    move-object/from16 v0, v26

    invoke-static {v3, v0, v7}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_245

    :cond_243
    move-object/from16 v3, p0

    :cond_245
    :goto_245
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v0

    if-eqz v0, :cond_25e

    sget-boolean v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sFirstLoad:Z

    if-eqz v0, :cond_25e

    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v1, " when OTA version update, clear IconDB anyway"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_25e

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->clearIconsCacheAndDb()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->sFirstLoad:Z

    :cond_25e
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_269

    if-eqz p1, :cond_269

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->clearIconsCacheAndDb()V

    :cond_269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "clearIconDbIfThemeChanged cost: "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sub-long v0, v0, v18

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, ", changed = "

    aput-object v0, v4, v28

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v27

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private finishLoadWorkspace(Landroid/content/Context;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSdCardReady:Z

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Ljava/util/Set;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Handler;

    sget-object v5, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v5}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2e
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->clone()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x64

    if-ne v3, v5, :cond_40

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    goto :goto_40

    :cond_5e
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    if-eqz v2, :cond_90

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishLoadWorkspace: remove empty screens size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->removeAllValues(Lcom/android/launcher3/util/IntArray;)V

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-static {p1, p0}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    :cond_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_99

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->resetSimpleModeIconChangingFlag()V

    return-void

    :catchall_99
    move-exception p0

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0
.end method

.method private static fixAppName(Landroid/content/Context;Lcom/android/launcher3/model/OplusLoaderCursor;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/android/launcher3/model/OplusLoaderCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_4e

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4e

    :cond_b
    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLoadShortcutFromRestore()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-static {p0, v0}, Lcom/android/launcher3/util/ShortcutUtil;->isCloneAppName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4e

    iget-object p0, p1, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/16 v1, 0x3e7

    if-eq p0, v1, :cond_4e

    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderCursor;->getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderCursor;->getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_41

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_41
    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "fixAppName, title error, new title = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private inspectSwitch(Landroid/content/Context;)V
    .registers 6

    iget-boolean p0, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz p0, :cond_45

    const/4 p0, 0x0

    :try_start_5
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object p0
    :try_end_9
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_24

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "getConfiguration e:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isIconConfigLoaded()Z

    move-result v0

    if-eqz p0, :cond_45

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDarkModeIcon()Z

    move-result v0

    const-string v1, "icon_dark_flag"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz p0, :cond_40

    if-eqz v0, :cond_40

    const/4 v2, 0x1

    :cond_40
    if-eq v2, v3, :cond_45

    invoke-static {p1, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_45
    return-void
.end method

.method public static loadAllAppsInner(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/launcher3/OplusAppFilter;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher/NewUpdatedAppsManager;Lcom/android/launcher3/icons/IconCache;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserManager;",
            "Lcom/android/launcher3/OplusAppFilter;",
            "Lcom/android/launcher/OplusLauncherAppsCompat;",
            "Lcom/android/launcher/filter/DeepProtectedAppsManager;",
            "Lcom/android/launcher/NewUpdatedAppsManager;",
            "Lcom/android/launcher3/icons/IconCache;",
            ")",
            "Ljava/util/List<",
            "Lh4/o<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_150

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v9, p3

    invoke-virtual {v9, v8, v5}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v11, "loadAllApps apps.size()= "

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v8, :cond_3c

    const/4 v12, 0x0

    goto :goto_40

    :cond_3c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    :goto_40
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_14a

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_53

    goto :goto_13

    :cond_53
    move-object/from16 v10, p1

    invoke-virtual {v10, v5}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v11

    const/4 v12, 0x0

    :goto_5a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_13a

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_94

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeIconBannedInLauncher(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_94

    sget-object v13, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v15, "loadAllApps Filter, company customize icon banned in launcher package = "

    invoke-static {v15}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, p2

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    goto/16 :goto_130

    :cond_94
    move-object/from16 v15, p2

    invoke-virtual {v15, v14, v5}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v16

    if-nez v16, :cond_ff

    if-eqz v14, :cond_a3

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    goto :goto_a4

    :cond_a3
    const/4 v14, 0x0

    :goto_a4
    if-eqz v0, :cond_e4

    invoke-virtual {v0, v14, v5}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v16

    if-eqz v16, :cond_e4

    move-object/from16 v16, v4

    new-instance v4, Lcom/android/launcher3/model/data/AppInfo;

    move-object/from16 v17, v8

    move-object/from16 v8, p0

    invoke-direct {v4, v8, v13, v5}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-static {v13}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->getActivityLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iget-object v9, v4, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    iput-object v9, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v9, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v5, v8, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_d7

    invoke-virtual {v1, v14}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    :cond_d7
    const/4 v9, 0x0

    if-eqz v2, :cond_dd

    invoke-virtual {v2, v8, v13, v9}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    :cond_dd
    invoke-virtual {v0, v8}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addAppItemFromLoaderTask(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_e8

    :cond_e4
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    :goto_e8
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAllApps Filter, not shouldShowApp package = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_130

    :cond_ff
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    new-instance v4, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v4, v13, v5, v11}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    if-eqz v1, :cond_116

    if-eqz v14, :cond_116

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    :cond_116
    const-string v8, ""

    iput-object v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v8

    if-eqz v8, :cond_12a

    invoke-static {v13}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->getActivityLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_12a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_130
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, p3

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    goto/16 :goto_5a

    :cond_13a
    move-object/from16 v15, p2

    move-object/from16 v16, v4

    new-instance v4, Lh4/o;

    invoke-direct {v4, v5, v6, v7}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    goto/16 :goto_13

    :cond_14a
    move-object/from16 v10, p1

    move-object/from16 v15, p2

    goto/16 :goto_13

    :cond_150
    return-object v3
.end method

.method private loadAndBindExtraPinnedShortcut(Landroid/content/Context;Z)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    :try_start_22
    iget-object v3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v5, v5, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    if-eqz v5, :cond_4a

    iget v5, v5, Landroid/util/MutableInt;->value:I

    if-nez v5, :cond_2c

    :cond_4a
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAndBindExtraPinnedShortcut: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_22 .. :try_end_73} :catchall_d9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v3, v2, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_a0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_a3
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v2, v2, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindExtraPinnedShortcut: extra workspace size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v3, v3, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_a3 .. :try_end_cd} :catchall_d5

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->bindExtraWorkspaceItemList(Landroid/content/Context;ZI)V

    goto :goto_d8

    :catchall_d5
    move-exception p0

    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw p0

    :cond_d8
    :goto_d8
    return-void

    :catchall_d9
    move-exception p0

    :try_start_da
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw p0
.end method

.method private loadAndBindExtraSpecialItems(Landroid/content/Context;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {p1, v0}, Lcom/android/launcher3/ota/AddCardManager;->makeSpaceForBreenoUsCardFromClockInWorkspace(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->rebindWidgets(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/launcher3/ota/AddCardManager;->getExtraAddItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_aa

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "preferScreenIndexAndExtraAddItems size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    :try_start_4c
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v3, v3, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAndBindExtraSpecialItems: extra workspace size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v5, v5, Lcom/android/launcher/model/BgDataModelHelper;->mExtraWorkspaceItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", preferScreenIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", extraAddItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_98
    .catchall {:try_start_4c .. :try_end_98} :catchall_a7

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->bindExtraWorkspaceItemList(Landroid/content/Context;ZI)V

    goto :goto_3d

    :catchall_a7
    move-exception p0

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p0

    :cond_aa
    return-void
.end method

.method private loadAndBindWorkspace(Landroid/content/Context;)V
    .registers 15

    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "loadAndBindWorkspace"

    const-string v2, "loadAndBindWorkspace"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadWorkspaceScreens(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v3, "get orderedScreenIds: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "step[1]: load all workspace screens"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->startBinding()V

    const-string/jumbo v2, "step[2]: start bind"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/download/DownloadAppsManager;->init()V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    invoke-static {p1, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->init(Landroid/content/Context;Lcom/android/launcher/folder/download/model/MarketRecommendModel;)V

    const-string/jumbo v2, "step[3]: init download apps"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceScreen(Lcom/android/launcher3/util/IntArray;)V

    const-string/jumbo v2, "step[4]: bind all workspace screens"

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "table name = "

    invoke-static {v4, v2, v3}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getCurrentScreenIds(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_86

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    if-eq v3, v4, :cond_86

    move v3, v5

    goto :goto_87

    :cond_86
    move v3, v6

    :goto_87
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const/16 v7, -0x65

    invoke-direct {p0, p1, v7, v4}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    const-string/jumbo v4, "step[5]: load hot seat items"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadHotseatSubscribeItems()V

    const-string/jumbo v4, "step[5pro]: load hot seat subscribe items"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadHotseatExpandItems()V

    const-string/jumbo v4, "step[5plus]: load hot seat expand items"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyItemCellXIfNecessary(Lcom/android/launcher3/model/BgDataModel;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v4, v6, v5, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(IZZZ)V

    const-string/jumbo v4, "step[6]: bind hot seat items"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v4}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->finishBindHotSeat()V

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validFirstPage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", currentScreenIds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_eb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, -0x64

    if-eqz v7, :cond_11b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, p1, v8, v7}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "step[7]: load current screen["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] items"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_eb

    :cond_11b
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_122
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_138

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v9, v7, v6, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(IZZZ)V

    goto :goto_122

    :cond_138
    const-string/jumbo v4, "step[8]: bind current screen items"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v4}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->finishBindCurrentScreens()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    move v7, v6

    :goto_14b
    if-ge v7, v4, :cond_1a2

    invoke-virtual {v1, v7}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v9

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v11, "loadAndBindWorkspace, i = "

    const-string v12, ", screenId = "

    invoke-static {v11, v7, v12, v9, v10}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v10

    if-nez v10, :cond_19f

    invoke-direct {p0, p1, v8, v9}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "step[10]: load screen["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] items"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v10, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v10, v9, v6, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(IZZZ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "step[10]: bind screen["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] items"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :cond_19f
    add-int/lit8 v7, v7, 0x1

    goto :goto_14b

    :cond_1a2
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-nez v1, :cond_1b2

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindExtraPinnedShortcut(Landroid/content/Context;Z)V

    :cond_1b2
    const-string/jumbo v4, "step[11]: load and bind pinned shortcuts"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v5, p1, v4}, Lcom/android/launcher3/model/AllAppsList;->addExtraPromissAppInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v5

    :try_start_1c5
    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v6, v6, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAndBindWorkspace: no position size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v7, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5
    :try_end_1ef
    .catchall {:try_start_1c5 .. :try_end_1ef} :catchall_2f3

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onWorkspaceScreenBindCompleted(Z)V

    const-string/jumbo v4, "step[12]: bind no position items"

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    if-eqz v1, :cond_203

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindExtraPinnedShortcut(Landroid/content/Context;Z)V

    :cond_203
    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindExtraSpecialItems(Landroid/content/Context;Z)V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isDisableFillEmptySpaceOnFirstScreenTail()Z

    move-result v1

    if-nez v1, :cond_21f

    invoke-static {}, Lcom/android/launcher3/OplusLauncherProvider;->isLoadingFromDefaultXml()Z

    move-result v1

    if-eqz v1, :cond_21f

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLoaderTaskWillEndFromRestore()Z

    move-result v1

    if-nez v1, :cond_21f

    iget-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->rebindForEmptySpaceOnFirstScreen()V

    :cond_21f
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_234

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v6, Lcom/android/launcher3/model/BgDataModel;->marketRecommendModel:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static/range {v4 .. v9}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->updateItemInfoByMarketInfo(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/folder/download/model/MarketRecommendModel;ZI)V

    :cond_234
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->finishLoadWorkspace(Landroid/content/Context;)V

    const-string/jumbo v1, "step[13]: finish load workspace"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/model/ModelDelegate;->loadStringCache(Lcom/android/launcher3/model/StringCache;)V

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/model/ItemInstallQueue;->getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v4

    :try_start_269
    iget-object v5, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_273
    :goto_273
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v7, v7, Lcom/android/launcher/model/BgDataModelHelper;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/MutableInt;

    if-eqz v7, :cond_291

    iget v7, v7, Landroid/util/MutableInt;->value:I

    if-nez v7, :cond_273

    :cond_291
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_273

    sget-object v7, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unpin the shortcut, key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;)V

    goto :goto_273

    :cond_2b4
    monitor-exit v4
    :try_end_2b5
    .catchall {:try_start_269 .. :try_end_2b5} :catchall_2f0

    iget-boolean v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v1, :cond_2ce

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2ce
    const-string/jumbo v1, "step[14]: unpin shortcuts"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->inspectSwitch(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->finishBindWorkspace(ZLcom/android/launcher3/util/IntSet;)V

    const-string/jumbo p0, "step[15]: finish bind workspace"

    invoke-virtual {v0, p0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->onFinishBindWorkspace()V

    return-void

    :catchall_2f0
    move-exception p0

    :try_start_2f1
    monitor-exit v4
    :try_end_2f2
    .catchall {:try_start_2f1 .. :try_end_2f2} :catchall_2f0

    throw p0

    :catchall_2f3
    move-exception p0

    :try_start_2f4
    monitor-exit v5
    :try_end_2f5
    .catchall {:try_start_2f4 .. :try_end_2f5} :catchall_2f3

    throw p0
.end method

.method private loadExtraLayoutIfNeeded(Landroid/content/Context;)V
    .registers 9

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->setFilterLauncherIcon()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p0

    if-eqz p0, :cond_18

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "don\'t load extra_workspace.xml because in smple mode."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setOtaBootStatus(Landroid/content/Context;Z)V

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "OTA first boot, do not load extra_workspace.xml."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {p1}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getOtaBootStatus(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_39

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "this device has got an ota update, do not load extra_workspace.xml."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_39
    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getPreferredExtraLayoutFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_4e

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "can not find extra file."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraWorkspacePathChangedListener()V

    return-void

    :cond_4e
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getExtraLayoutFlag(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Z

    move-result v3

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", loaded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pai@"

    const-string/jumbo v5, "parse_extra_layout"

    if-eqz v3, :cond_ce

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher/layout/CustomLayoutHelper;->needUpdateLayoutAfterCota(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v3

    if-nez v3, :cond_a3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    goto :goto_ce

    :cond_a3
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b1

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string p1, "already have extra_workspace.xml from pai."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "pref exrta path not equal to the current one. Reload it."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_c6
    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraWorkspacePathChangedListener()V

    goto :goto_f9

    :cond_ce
    :goto_ce
    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare: try loading extra favorites "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/launcher/layout/LayoutPrefsUtils;->getLoadedExtraLayoutPath(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f9

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraWorkspacePathChangedListener()V

    :cond_f9
    :goto_f9
    return-void
.end method

.method private loadHotseatExpandItems()V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->buildLoadProcessHotseatExpandItems(Lcom/android/launcher/Launcher;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "loadHotseatExpandItems size:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hotseat_expand"

    invoke-static {v3, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    return-void

    :cond_41
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private loadHotseatSubscribeItems()V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_45

    :cond_f
    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getValidSubscribeItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v2, "loadHotseatSubscribeItems size:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Taskbar"

    invoke-static {v3, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    return-void

    :cond_38
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_45
    :goto_45
    return-void
.end method

.method private loadSpecificScreenItems(Landroid/content/Context;II)V
    .registers 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v7

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1380

    const/16 v13, -0x65

    if-eq v3, v13, :cond_46

    if-lez v3, :cond_1f

    goto :goto_46

    :cond_1f
    :try_start_1f
    const-string/jumbo v8, "screen"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " AND "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "container"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_40

    goto :goto_53

    :catchall_40
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v7

    goto/16 :goto_1384

    :cond_46
    :goto_46
    :try_start_46
    const-string v8, "container"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_1380

    :goto_53
    if-lez v3, :cond_5b

    :try_start_55
    const-string/jumbo v8, "rank"

    :goto_58
    move-object/from16 v16, v8

    goto :goto_64

    :cond_5b
    if-ne v3, v13, :cond_61

    const-string/jumbo v8, "screen"
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_40

    goto :goto_58

    :cond_61
    :try_start_61
    const-string v8, "cellY, cellX"

    goto :goto_58

    :goto_64
    sget-object v9, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/launcher3/model/OplusBaseLoaderTask;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    move-object v8, v14

    move-object v10, v12

    move-wide/from16 v18, v5

    move-object v5, v12

    move-object/from16 v12, v17

    move v6, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRecommendApp()Z

    move-result v8
    :try_end_80
    .catchall {:try_start_61 .. :try_end_80} :catchall_1380

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_cb

    :try_start_84
    array-length v8, v5

    add-int/2addr v8, v12

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, [Ljava/lang/String;

    array-length v5, v5

    const-string/jumbo v8, "recommendId"

    aput-object v8, v10, v5
    :try_end_93
    .catchall {:try_start_84 .. :try_end_93} :catchall_40

    :try_start_93
    sget-object v9, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_99} :catch_a7
    .catchall {:try_start_93 .. :try_end_99} :catchall_40

    const/4 v5, 0x0

    move-object v8, v14

    move v15, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v16

    :try_start_a0
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a4} :catch_a5
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_40

    goto :goto_c6

    :catch_a5
    move-exception v0

    goto :goto_aa

    :catch_a7
    move-exception v0

    move v15, v12

    move-object v5, v13

    :goto_aa
    move-object v8, v0

    :try_start_ab
    sget-object v9, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSpecificScreenItems: query e: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_ab .. :try_end_c5} :catchall_40

    move-object v13, v5

    :goto_c6
    if-eqz v13, :cond_d4

    move-object/from16 v17, v13

    goto :goto_d4

    :cond_cb
    move v15, v12

    move-object v5, v13

    :try_start_cd
    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v9, "loadSpecificScreenItems: is not SupportRecommendApp"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    :goto_d4
    move-object/from16 v8, v17

    new-instance v9, Lcom/android/launcher3/model/OplusLoaderCursor;

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v9, v8, v10, v11}, Lcom/android/launcher3/model/OplusLoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;)V

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "loadSpecificScreenItems ------ begin ------ , container: "

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v15

    const-string v12, ", screen: "

    const/4 v6, 0x2

    aput-object v12, v11, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x3

    aput-object v12, v11, v10

    const-string v12, ", count: "

    const/4 v10, 0x4

    aput-object v12, v11, v10

    invoke-virtual {v9}, Landroid/database/CursorWrapper;->getCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x5

    aput-object v12, v11, v10

    invoke-static {v8, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v8

    move v11, v13

    :goto_115
    if-ge v11, v8, :cond_133

    iget-object v12, v9, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;
    :try_end_11b
    .catchall {:try_start_cd .. :try_end_11b} :catchall_1380

    move-object/from16 v23, v7

    :try_start_11d
    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    invoke-virtual {v12, v6, v7, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v23

    const/4 v6, 0x2

    const/4 v10, 0x5

    goto :goto_115

    :cond_133
    move-object/from16 v23, v7

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v7
    :try_end_141
    .catchall {:try_start_11d .. :try_end_141} :catchall_1386

    :try_start_141
    new-instance v8, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v8, v5, v5}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v10, v5

    :goto_147
    iget-boolean v11, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v11, :cond_1236

    invoke-virtual {v9}, Lcom/android/launcher3/model/OplusLoaderCursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1236

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25
    :try_end_155
    .catchall {:try_start_141 .. :try_end_155} :catchall_137a

    :try_start_155
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_159} :catch_1200
    .catchall {:try_start_155 .. :try_end_159} :catchall_137a

    const/16 v27, 0xb

    const/16 v28, 0x9

    const/16 v29, 0x7

    const/16 v5, 0x8

    if-eqz v11, :cond_22b

    :try_start_163
    sget-object v11, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/16 v12, 0x16

    new-array v12, v12, [Ljava/lang/Object;

    const-string v32, "loadSpecificScreenItems: title = "

    aput-object v32, v12, v13

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v12, v15

    const-string v32, ", intent = "

    const/16 v24, 0x2

    aput-object v32, v12, v24

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x3

    aput-object v13, v12, v20

    const-string v13, ", cellX = "

    const/16 v21, 0x4

    aput-object v13, v12, v21

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v22, 0x5

    aput-object v13, v12, v22

    const-string v13, ", cellY = "

    const/16 v17, 0x6

    aput-object v13, v12, v17

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v29

    const-string v13, ", screenId = "

    aput-object v13, v12, v5

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v28

    const-string v13, ", container = "

    const/16 v31, 0xa

    aput-object v13, v12, v31

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v27

    const-string v13, ", itemType = "

    const/16 v30, 0xc

    aput-object v13, v12, v30

    const/16 v13, 0xd

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v13

    const/16 v5, 0xe

    const-string v13, ", id = "

    aput-object v13, v12, v5

    const/16 v5, 0xf

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    const/16 v5, 0x10

    const-string v13, ", user = "

    aput-object v13, v12, v5

    const/16 v5, 0x11

    iget-object v13, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    aput-object v13, v12, v5

    const/16 v5, 0x12

    const-string v13, ", restore = "

    aput-object v13, v12, v5

    const/16 v5, 0x13

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    const/16 v5, 0x14

    const-string v13, ", count = "

    aput-object v13, v12, v5

    const/16 v5, 0x15

    invoke-virtual {v9}, Landroid/database/CursorWrapper;->getCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v11, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_21c} :catch_21d
    .catchall {:try_start_163 .. :try_end_21c} :catchall_137a

    goto :goto_22b

    :catch_21d
    move-exception v0

    move v11, v3

    move v12, v4

    move-object/from16 v27, v10

    move-object/from16 v34, v14

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v3, v0

    :goto_227
    move-object v10, v2

    move-object v2, v6

    goto/16 :goto_120c

    :cond_22b
    :goto_22b
    :try_start_22b
    iget-object v5, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_22d} :catch_1200
    .catchall {:try_start_22b .. :try_end_22d} :catchall_137a

    if-nez v5, :cond_240

    :try_start_22f
    const-string v5, "User has been deleted"

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_234} :catch_21d
    .catchall {:try_start_22f .. :try_end_234} :catchall_137a

    :goto_234
    move v11, v3

    move v12, v4

    move-object/from16 v27, v10

    move-object/from16 v34, v14

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v2

    move-object v2, v6

    goto/16 :goto_1123

    :cond_240
    :try_start_240
    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_242} :catch_1200
    .catchall {:try_start_240 .. :try_end_242} :catchall_137a

    if-eqz v5, :cond_2e6

    if-eq v5, v15, :cond_2e6

    const/4 v13, 0x3

    if-eq v5, v13, :cond_759

    const/16 v13, 0x63

    const/4 v12, 0x5

    if-eq v5, v12, :cond_2ef

    const/4 v12, 0x6

    if-eq v5, v12, :cond_2e6

    if-eq v5, v13, :cond_2ef

    const/16 v11, 0x64

    if-eq v5, v11, :cond_271

    :try_start_257
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unknown itemType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_291

    :cond_271
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v5

    if-nez v5, :cond_29d

    invoke-direct {v1, v9, v7, v3, v4}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->queryCardInfo(Lcom/android/launcher3/model/OplusLoaderCursor;Lcom/android/launcher/mode/LauncherMode;II)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    if-eqz v5, :cond_291

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NotSupportCard, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    :cond_291
    :goto_291
    move v11, v3

    move v12, v4

    move-object/from16 v27, v10

    move-object/from16 v34, v14

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v2

    move-object v2, v6

    goto/16 :goto_1213

    :cond_29d
    invoke-direct {v1, v9, v7, v3, v4}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->queryCardInfo(Lcom/android/launcher3/model/OplusLoaderCursor;Lcom/android/launcher/mode/LauncherMode;II)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    sget-object v11, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v11}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v11

    if-eqz v11, :cond_2c6

    iget v11, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v12, 0xd3ecf26

    if-ne v11, v12, :cond_2c6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SeedlingContainerCardDisabled, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_234

    :cond_2c6
    sget-object v11, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "load CARD--"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v5, v11}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_2e5} :catch_21d
    .catchall {:try_start_257 .. :try_end_2e5} :catchall_137a

    goto :goto_291

    :cond_2e6
    move v11, v3

    move v12, v4

    move-object/from16 v35, v6

    move-object/from16 v34, v14

    move-object v4, v2

    goto/16 :goto_927

    :cond_2ef
    if-ne v5, v13, :cond_2f3

    move v12, v15

    goto :goto_2f4

    :cond_2f3
    const/4 v12, 0x0

    :goto_2f4
    :try_start_2f4
    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    invoke-virtual {v9, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v13, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetIdIndex:I

    invoke-virtual {v9, v13}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    iget v11, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetProviderIndex:I

    invoke-virtual {v9, v11}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_30a} :catch_74d
    .catchall {:try_start_2f4 .. :try_end_30a} :catchall_137a

    if-eqz v33, :cond_32e

    :try_start_30c
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadSpecificScreenItems savedProvider is empty! appWidgetId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32c
    .catch Ljava/lang/Exception; {:try_start_30c .. :try_end_32c} :catch_21d
    .catchall {:try_start_30c .. :try_end_32c} :catchall_137a

    goto/16 :goto_234

    :cond_32e
    :try_start_32e
    sget-object v15, Lcom/android/common/config/Constants$Packages;->OLD_OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34
    :try_end_334
    .catch Ljava/lang/Exception; {:try_start_32e .. :try_end_334} :catch_74d
    .catchall {:try_start_32e .. :try_end_334} :catchall_137a

    if-nez v34, :cond_3a3

    move-object/from16 v34, v14

    :try_start_338
    sget-object v14, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_33e} :catch_39c
    .catchall {:try_start_338 .. :try_end_33e} :catchall_137a

    if-nez v35, :cond_399

    move-object/from16 v35, v6

    :try_start_342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a7

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust old oplus weather widget info savedProvider ="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->adjustOplusWeatherWidgets(Landroid/content/Context;)V

    goto :goto_3a7

    :cond_399
    move-object/from16 v35, v6

    goto :goto_3a7

    :catch_39c
    move-exception v0

    move/from16 v11, p2

    move/from16 v12, p3

    goto/16 :goto_752

    :cond_3a3
    move-object/from16 v35, v6

    move-object/from16 v34, v14

    :cond_3a7
    :goto_3a7
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_3cf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unflatten component name error: savedProvider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_3c2
    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v27, v10

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v2

    move-object/from16 v2, v35

    goto/16 :goto_1123

    :cond_3cf
    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v4, :cond_3f8

    sget-object v4, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v4}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v6

    if-eqz v6, :cond_3f8

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v3, v6}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->needDeleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Z)Z

    move-result v4

    if-eqz v4, :cond_3f8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "need show this widget in bottom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_3c2

    :cond_3f8
    if-nez v12, :cond_40c

    iget-object v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v14, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v4, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_40c

    const/4 v4, 0x1

    goto :goto_40d

    :cond_40c
    const/4 v4, 0x0

    :goto_40d
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v14

    if-nez v14, :cond_416

    move v14, v6

    goto :goto_417

    :cond_416
    const/4 v14, 0x0

    :goto_417
    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v33

    xor-int/lit8 v15, v33, 0x1

    if-nez v10, :cond_425

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProvidersMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6
    :try_end_424
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_424} :catch_73e
    .catchall {:try_start_342 .. :try_end_424} :catchall_137a

    move-object v10, v6

    :cond_425
    :try_start_425
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_425 .. :try_end_429} :catch_72f
    .catchall {:try_start_425 .. :try_end_429} :catchall_137a

    :try_start_429
    new-instance v2, Lcom/android/launcher3/util/ComponentKey;
    :try_end_42b
    .catch Ljava/lang/Exception; {:try_start_429 .. :try_end_42b} :catch_724
    .catchall {:try_start_429 .. :try_end_42b} :catchall_137a

    move-object/from16 v36, v7

    :try_start_42d
    iget-object v7, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v6, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v2}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v6

    sget-object v7, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_43e
    .catch Ljava/lang/Exception; {:try_start_42d .. :try_end_43e} :catch_71a
    .catchall {:try_start_42d .. :try_end_43e} :catchall_137a

    move-object/from16 v37, v10

    const/16 v10, 0xc

    :try_start_442
    new-array v10, v10, [Ljava/lang/Object;

    const-string v30, "loadSpecificScreenItems --- WIDGET, provider = "

    const/16 v32, 0x0

    aput-object v30, v10, v32

    const/16 v30, 0x1

    aput-object v2, v10, v30

    const-string v30, ", isProviderReady = "

    const/16 v24, 0x2

    aput-object v30, v10, v24

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    const/16 v20, 0x3

    aput-object v30, v10, v20

    const-string v30, ", wasProviderReady = "

    const/16 v21, 0x4

    aput-object v30, v10, v21

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    const/16 v22, 0x5

    aput-object v30, v10, v22

    const-string v30, ", customWidget = "

    const/16 v17, 0x6

    aput-object v30, v10, v17

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    aput-object v30, v10, v29

    const-string v29, ", widgetUserLocked = "

    const/16 v30, 0x8

    aput-object v29, v10, v30

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    aput-object v29, v10, v28

    const-string v28, ", savedProvider = "

    const/16 v29, 0xa

    aput-object v28, v10, v29

    aput-object v11, v10, v27

    invoke-static {v7, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v7, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z
    :try_end_48f
    .catch Ljava/lang/Exception; {:try_start_442 .. :try_end_48f} :catch_714
    .catchall {:try_start_442 .. :try_end_48f} :catchall_137a

    if-nez v7, :cond_4b7

    if-nez v12, :cond_4b7

    if-eqz v15, :cond_4b7

    if-nez v6, :cond_4b7

    if-nez v4, :cond_4b7

    :try_start_499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting widget that isn\'t installed anymore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object/from16 v4, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v7, v36

    goto/16 :goto_6d1

    :cond_4b7
    if-eqz v6, :cond_4e2

    new-instance v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v3, v13, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v4, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v4, v4, -0x9

    and-int/lit8 v4, v4, -0x3

    if-nez v15, :cond_4cc

    if-eqz v14, :cond_4cc

    or-int/lit8 v4, v4, 0x4

    :cond_4cc
    iput v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iput-object v2, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :try_end_4d0
    .catch Ljava/lang/Exception; {:try_start_499 .. :try_end_4d0} :catch_4d4
    .catchall {:try_start_499 .. :try_end_4d0} :catchall_137a

    :goto_4d0
    const/16 v4, 0x20

    goto/16 :goto_5b8

    :catch_4d4
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object v3, v0

    move-object/from16 v2, v35

    move-object/from16 v7, v36

    goto/16 :goto_73a

    :cond_4e2
    :try_start_4e2
    sget-object v6, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget restore pending id="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " appWidgetId="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " status ="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v6, v13, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V
    :try_end_511
    .catch Ljava/lang/Exception; {:try_start_4e2 .. :try_end_511} :catch_714
    .catchall {:try_start_4e2 .. :try_end_511} :catchall_137a

    if-eqz v4, :cond_519

    :try_start_513
    iget v7, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I

    const/4 v10, 0x1

    or-int/2addr v7, v10

    iput v7, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->runtimeStatusFlags:I
    :try_end_519
    .catch Ljava/lang/Exception; {:try_start_513 .. :try_end_519} :catch_4d4
    .catchall {:try_start_513 .. :try_end_519} :catchall_137a

    :cond_519
    :try_start_519
    iget v7, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v7, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v10}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v7, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v7, :cond_534

    const/16 v7, 0x8

    const/4 v13, 0x0

    goto :goto_542

    :cond_534
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v7

    const/high16 v10, 0x42c80000  # 100.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v7, 0x8

    :goto_542
    invoke-virtual {v9, v7}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10
    :try_end_546
    .catch Ljava/lang/Exception; {:try_start_519 .. :try_end_546} :catch_714
    .catchall {:try_start_519 .. :try_end_546} :catchall_137a

    if-eqz v10, :cond_549

    goto :goto_5ab

    :cond_549
    if-eqz v13, :cond_551

    :try_start_54b
    iget v3, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v3, v7

    iput v3, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_5ab

    :cond_551
    if-eqz v4, :cond_573

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "widget user locked! "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", cn = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_572
    .catch Ljava/lang/Exception; {:try_start_54b .. :try_end_572} :catch_4d4
    .catchall {:try_start_54b .. :try_end_572} :catchall_137a

    goto :goto_5ab

    :cond_573
    const/16 v4, 0x23

    :try_start_575
    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v4
    :try_end_579
    .catch Ljava/lang/Exception; {:try_start_575 .. :try_end_579} :catch_714
    .catchall {:try_start_575 .. :try_end_579} :catchall_137a

    if-eqz v4, :cond_592

    :try_start_57b
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "auto install widget cn = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_591
    .catch Ljava/lang/Exception; {:try_start_57b .. :try_end_591} :catch_4d4
    .catchall {:try_start_57b .. :try_end_591} :catchall_137a

    goto :goto_5ab

    :cond_592
    :try_start_592
    iget-boolean v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z
    :try_end_594
    .catch Ljava/lang/Exception; {:try_start_592 .. :try_end_594} :catch_714
    .catchall {:try_start_592 .. :try_end_594} :catchall_137a

    if-nez v4, :cond_5ab

    :try_start_596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrestored widget removed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_5aa
    .catch Ljava/lang/Exception; {:try_start_596 .. :try_end_5aa} :catch_4d4
    .catchall {:try_start_596 .. :try_end_5aa} :catchall_137a

    goto :goto_600

    :cond_5ab
    :goto_5ab
    if-nez v13, :cond_5af

    const/4 v3, 0x0

    goto :goto_5b3

    :cond_5af
    :try_start_5af
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_5b3
    iput v3, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    move-object v3, v6

    goto/16 :goto_4d0

    :goto_5b8
    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4
    :try_end_5bc
    .catch Ljava/lang/Exception; {:try_start_5af .. :try_end_5bc} :catch_714
    .catchall {:try_start_5af .. :try_end_5bc} :catchall_137a

    if-eqz v4, :cond_5c4

    :try_start_5be
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;
    :try_end_5c4
    .catch Ljava/lang/Exception; {:try_start_5be .. :try_end_5c4} :catch_4d4
    .catchall {:try_start_5be .. :try_end_5c4} :catchall_137a

    :cond_5c4
    :try_start_5c4
    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget v4, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanXIndex:I

    invoke-virtual {v9, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanYIndex:I

    invoke-virtual {v9, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v4, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v4, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mCardTypeIndex:I

    invoke-virtual {v9, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5e7
    .catch Ljava/lang/Exception; {:try_start_5c4 .. :try_end_5e7} :catch_714
    .catchall {:try_start_5c4 .. :try_end_5e7} :catchall_137a

    if-nez v4, :cond_5eb

    :try_start_5e9
    iput-object v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mIconRes:Ljava/lang/String;
    :try_end_5eb
    .catch Ljava/lang/Exception; {:try_start_5e9 .. :try_end_5eb} :catch_4d4
    .catchall {:try_start_5e9 .. :try_end_5eb} :catchall_137a

    :cond_5eb
    :try_start_5eb
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-lez v4, :cond_6dc

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-gtz v4, :cond_5f5

    goto/16 :goto_6dc

    :cond_5f5
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v4
    :try_end_5f9
    .catch Ljava/lang/Exception; {:try_start_5eb .. :try_end_5f9} :catch_714
    .catchall {:try_start_5eb .. :try_end_5f9} :catchall_137a

    if-nez v4, :cond_60a

    :try_start_5fb
    const-string v2, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_600
    .catch Ljava/lang/Exception; {:try_start_5fb .. :try_end_600} :catch_4d4
    .catchall {:try_start_5fb .. :try_end_600} :catchall_137a

    :goto_600
    move-object/from16 v4, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v7, v36

    goto/16 :goto_705

    :cond_60a
    if-nez v12, :cond_68a

    :try_start_60c
    iget-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_616
    .catch Ljava/lang/Exception; {:try_start_60c .. :try_end_616} :catch_714
    .catchall {:try_start_60c .. :try_end_616} :catchall_137a

    if-eqz v5, :cond_61e

    :try_start_618
    iget v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iget v6, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_61c
    .catch Ljava/lang/Exception; {:try_start_618 .. :try_end_61c} :catch_4d4
    .catchall {:try_start_618 .. :try_end_61c} :catchall_137a

    if-eq v5, v6, :cond_68a

    :cond_61e
    :try_start_61e
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSpecificScreenItems update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62a
    .catch Ljava/lang/Exception; {:try_start_61e .. :try_end_62a} :catch_714
    .catchall {:try_start_61e .. :try_end_62a} :catchall_137a

    move-object/from16 v7, v36

    :try_start_62c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " container:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_634
    .catch Ljava/lang/Exception; {:try_start_62c .. :try_end_634} :catch_683
    .catchall {:try_start_62c .. :try_end_634} :catchall_137a

    move/from16 v11, p2

    :try_start_636
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",screenId:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_63e
    .catch Ljava/lang/Exception; {:try_start_636 .. :try_end_63e} :catch_681
    .catchall {:try_start_636 .. :try_end_63e} :catchall_137a

    move/from16 v12, p3

    :try_start_640
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " item:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Updater: restoreStatus and providerName "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0xa

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    const-string v6, "appWidgetProvider"

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    const-string/jumbo v5, "restored"

    iget v6, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_690

    :catch_681
    move-exception v0

    goto :goto_686

    :catch_683
    move-exception v0

    move/from16 v11, p2

    :goto_686
    move/from16 v12, p3

    goto/16 :goto_72b

    :cond_68a
    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v7, v36

    :goto_690
    iget v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v4, :cond_6af

    iget-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    :cond_6af
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--loadSpecificScreenItems: widget info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v3, v4}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    sget-object v3, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;
    :try_end_6cc
    .catch Ljava/lang/Exception; {:try_start_640 .. :try_end_6cc} :catch_6da
    .catchall {:try_start_640 .. :try_end_6cc} :catchall_137a

    move-object/from16 v4, p1

    :try_start_6ce
    invoke-virtual {v3, v4, v2}, Lcom/android/common/util/WidgetUtils;->updateCqsbWidgetInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)V

    :goto_6d1
    move-object v10, v4

    move-object/from16 v2, v35

    move-object/from16 v27, v37

    const/4 v5, 0x5

    const/4 v15, 0x4

    goto/16 :goto_1213

    :catch_6da
    move-exception v0

    goto :goto_72b

    :cond_6dc
    :goto_6dc
    move-object/from16 v4, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v7, v36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Widget has invalid size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_705
    .catch Ljava/lang/Exception; {:try_start_6ce .. :try_end_705} :catch_710
    .catchall {:try_start_6ce .. :try_end_705} :catchall_137a

    :goto_705
    move-object v2, v4

    move v3, v11

    move v4, v12

    move-object/from16 v14, v34

    move-object/from16 v6, v35

    move-object/from16 v10, v37

    goto/16 :goto_112b

    :catch_710
    move-exception v0

    move-object v3, v0

    move-object v10, v4

    goto :goto_738

    :catch_714
    move-exception v0

    move/from16 v11, p2

    move/from16 v12, p3

    goto :goto_721

    :catch_71a
    move-exception v0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v37, v10

    :goto_721
    move-object/from16 v7, v36

    goto :goto_72b

    :catch_724
    move-exception v0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v37, v10

    :goto_72b
    move-object/from16 v10, p1

    move-object v3, v0

    goto :goto_738

    :catch_72f
    move-exception v0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v37, v10

    move-object v3, v0

    move-object v10, v2

    :goto_738
    move-object/from16 v2, v35

    :goto_73a
    move-object/from16 v27, v37

    goto/16 :goto_9e5

    :catch_73e
    move-exception v0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object v3, v0

    move-object/from16 v27, v10

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v2

    move-object/from16 v2, v35

    goto/16 :goto_120c

    :catch_74d
    move-exception v0

    move v11, v3

    move v12, v4

    move-object/from16 v34, v14

    :goto_752
    move-object v3, v0

    move-object/from16 v27, v10

    const/4 v5, 0x5

    const/4 v15, 0x4

    goto/16 :goto_227

    :cond_759
    move v11, v3

    move v12, v4

    move-object/from16 v35, v6

    move-object/from16 v34, v14

    move-object v4, v2

    :try_start_760
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v3, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanXIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanYIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result v3

    if-nez v3, :cond_78e

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :cond_78e
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_790
    .catch Ljava/lang/Exception; {:try_start_760 .. :try_end_790} :catch_91c
    .catchall {:try_start_760 .. :try_end_790} :catchall_137a

    const/4 v5, 0x4

    :try_start_791
    new-array v6, v5, [Ljava/lang/Object;
    :try_end_793
    .catch Ljava/lang/Exception; {:try_start_791 .. :try_end_793} :catch_913
    .catchall {:try_start_791 .. :try_end_793} :catchall_137a

    :try_start_793
    const-string v5, "loadSpecificScreenItems: folderInfo.title = "

    const/4 v13, 0x0

    aput-object v5, v6, v13

    iget-object v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v13, 0x1

    aput-object v5, v6, v13

    const-string v5, ", spanX = "

    const/4 v13, 0x2

    aput-object v5, v6, v13

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x3

    aput-object v5, v6, v13

    invoke-static {v3, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v3, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mOptionsIndex:I

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRecommendApp()Z

    move-result v3

    if-eqz v3, :cond_899

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v5, "loadSpecificScreenItems: isSupportRecommendApp"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7cb
    .catch Ljava/lang/Exception; {:try_start_793 .. :try_end_7cb} :catch_91c
    .catchall {:try_start_793 .. :try_end_7cb} :catchall_137a

    :try_start_7cb
    const-string/jumbo v3, "recommendId"

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I
    :try_end_7d8
    .catch Ljava/lang/Exception; {:try_start_7cb .. :try_end_7d8} :catch_7d9
    .catchall {:try_start_7cb .. :try_end_7d8} :catchall_137a

    goto :goto_7e2

    :catch_7d9
    move-exception v0

    move-object v3, v0

    :try_start_7db
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "loadSpecificScreenItems: isSupportRecommendApp"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7e2
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSpecificScreenItems: recommendId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-gez v3, :cond_8a0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v3

    if-eqz v3, :cond_8a0

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->getInitRecommendId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_80e
    .catch Ljava/lang/Exception; {:try_start_7db .. :try_end_80e} :catch_91c
    .catchall {:try_start_7db .. :try_end_80e} :catchall_137a

    const/4 v6, 0x4

    :try_start_80f
    new-array v13, v6, [Ljava/lang/Object;
    :try_end_811
    .catch Ljava/lang/Exception; {:try_start_80f .. :try_end_811} :catch_894
    .catchall {:try_start_80f .. :try_end_811} :catchall_137a

    :try_start_811
    const-string v6, "RecommendApp folder title = "

    const/4 v14, 0x0

    aput-object v6, v13, v14

    iget-object v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v14, 0x1

    aput-object v6, v13, v14

    const-string v6, ", mRecommendId = "

    const/4 v14, 0x2

    aput-object v6, v13, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v13, v6

    invoke-static {v5, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v3, :cond_8a0

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSpecificScreenItems update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " container:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",screenId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Updater: updateRecommendId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when support"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    const-string/jumbo v5, "recommendId"

    iget v6, v2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_8a0

    :catch_894
    move-exception v0

    move-object v3, v0

    move v15, v6

    goto/16 :goto_916

    :cond_899
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v5, "loadSpecificScreenItems: is not SupportRecommendApp"

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a0
    :goto_8a0
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored: [3]folder enable, mark folderInfo, cn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", c.user = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadSpecificScreenItems(Landroid/content/Context;II)V

    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8df

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    :goto_8d6
    move-object/from16 v27, v10

    move-object/from16 v2, v35

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v4

    goto/16 :goto_1213

    :cond_8df
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty folder! id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", title = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", folderInfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_912
    .catch Ljava/lang/Exception; {:try_start_811 .. :try_end_912} :catch_91c
    .catchall {:try_start_811 .. :try_end_912} :catchall_137a

    goto :goto_8d6

    :catch_913
    move-exception v0

    move-object v3, v0

    move v15, v5

    :goto_916
    move-object/from16 v27, v10

    :goto_918
    move-object/from16 v2, v35

    const/4 v5, 0x5

    goto :goto_924

    :catch_91c
    move-exception v0

    move-object v3, v0

    move-object/from16 v27, v10

    move-object/from16 v2, v35

    const/4 v5, 0x5

    const/4 v15, 0x4

    :goto_924
    move-object v10, v4

    goto/16 :goto_120c

    :goto_927
    :try_start_927
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_92b
    .catch Ljava/lang/Exception; {:try_start_927 .. :try_end_92b} :catch_11f7
    .catchall {:try_start_927 .. :try_end_92b} :catchall_137a

    if-nez v2, :cond_93b

    :try_start_92d
    const-string v2, "Invalid or null intent"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_932
    .catch Ljava/lang/Exception; {:try_start_92d .. :try_end_932} :catch_91c
    .catchall {:try_start_92d .. :try_end_932} :catchall_137a

    move-object/from16 v27, v10

    move-object/from16 v2, v35

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v4

    goto/16 :goto_1123

    :cond_93b
    :try_start_93b
    iget-object v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    iget-wide v5, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3
    :try_end_943
    .catch Ljava/lang/Exception; {:try_start_93b .. :try_end_943} :catch_11f7
    .catchall {:try_start_93b .. :try_end_943} :catchall_137a

    if-eqz v3, :cond_958

    :try_start_945
    iget-object v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    iget-wide v5, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_953
    .catch Ljava/lang/Exception; {:try_start_945 .. :try_end_953} :catch_91c
    .catchall {:try_start_945 .. :try_end_953} :catchall_137a

    if-eqz v3, :cond_970

    const/16 v3, 0x8

    goto :goto_971

    :cond_958
    :try_start_958
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No user in mQuietMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_970
    const/4 v3, 0x0

    :goto_971
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5
    :try_end_975
    .catch Ljava/lang/Exception; {:try_start_958 .. :try_end_975} :catch_11f7
    .catchall {:try_start_958 .. :try_end_975} :catchall_137a

    if-nez v5, :cond_97c

    :try_start_977
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6
    :try_end_97b
    .catch Ljava/lang/Exception; {:try_start_977 .. :try_end_97b} :catch_91c
    .catchall {:try_start_977 .. :try_end_97b} :catchall_137a

    goto :goto_980

    :cond_97c
    :try_start_97c
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_980
    if-nez v5, :cond_984

    const/4 v13, 0x0

    goto :goto_988

    :cond_984
    invoke-virtual {v5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v13

    :goto_988
    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    iget-object v15, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v14, v15}, Landroid/util/LongSparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v14
    :try_end_990
    .catch Ljava/lang/Exception; {:try_start_97c .. :try_end_990} :catch_11f7
    .catchall {:try_start_97c .. :try_end_990} :catchall_137a

    if-gez v14, :cond_9e9

    :try_start_992
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_9c5

    sget-object v14, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v15, "filter components by user.pkg:%s,cls:%s,user:%s,caller:%s"
    :try_end_99c
    .catch Ljava/lang/Exception; {:try_start_992 .. :try_end_99c} :catch_9de
    .catchall {:try_start_992 .. :try_end_99c} :catchall_137a

    move/from16 v28, v3

    move-object/from16 v27, v10

    const/4 v10, 0x4

    :try_start_9a1
    new-array v3, v10, [Ljava/lang/Object;
    :try_end_9a3
    .catch Ljava/lang/Exception; {:try_start_9a1 .. :try_end_9a3} :catch_9c0
    .catchall {:try_start_9a1 .. :try_end_9a3} :catchall_137a

    const/4 v10, 0x0

    :try_start_9a4
    aput-object v6, v3, v10

    const/4 v10, 0x1

    aput-object v13, v3, v10

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const/16 v24, 0x2

    aput-object v10, v3, v24

    const/16 v10, 0xa

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v29

    const/4 v10, 0x3

    aput-object v29, v3, v10

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c9

    :catch_9c0
    move-exception v0

    move-object v3, v0

    move v15, v10

    goto/16 :goto_918

    :cond_9c5
    move/from16 v28, v3

    move-object/from16 v27, v10

    :goto_9c9
    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x6

    if-ne v3, v10, :cond_9d4

    const-string v2, "Legacy shortcuts are only allowed for current users"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_9fd

    :cond_9d4
    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v3, :cond_9ed

    const-string v2, "Restore from other profiles not supported"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_9dd
    .catch Ljava/lang/Exception; {:try_start_9a4 .. :try_end_9dd} :catch_a04
    .catchall {:try_start_9a4 .. :try_end_9dd} :catchall_137a

    goto :goto_9fd

    :catch_9de
    move-exception v0

    move-object/from16 v27, v10

    :goto_9e1
    move-object v3, v0

    move-object v10, v4

    :goto_9e3
    move-object/from16 v2, v35

    :goto_9e5
    const/4 v5, 0x5

    const/4 v15, 0x4

    goto/16 :goto_120c

    :cond_9e9
    move/from16 v28, v3

    move-object/from16 v27, v10

    :cond_9ed
    :try_start_9ed
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_9f1
    .catch Ljava/lang/Exception; {:try_start_9ed .. :try_end_9f1} :catch_11f0
    .catchall {:try_start_9ed .. :try_end_9f1} :catchall_137a

    if-eqz v3, :cond_a06

    :try_start_9f3
    iget v3, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x6

    if-eq v3, v10, :cond_a06

    const-string v2, "Only legacy shortcuts can have null package"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_9fd
    .catch Ljava/lang/Exception; {:try_start_9f3 .. :try_end_9fd} :catch_a04
    .catchall {:try_start_9f3 .. :try_end_9fd} :catchall_137a

    :goto_9fd
    move-object v10, v4

    :goto_9fe
    move-object/from16 v2, v35

    :goto_a00
    const/4 v5, 0x5

    const/4 v15, 0x4

    goto/16 :goto_1123

    :catch_a04
    move-exception v0

    goto :goto_9e1

    :cond_a06
    :try_start_a06
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_a0a
    .catch Ljava/lang/Exception; {:try_start_a06 .. :try_end_a0a} :catch_11f0
    .catchall {:try_start_a06 .. :try_end_a0a} :catchall_137a

    if-nez v3, :cond_a19

    :try_start_a0c
    iget-object v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v10}, Lcom/android/launcher/OplusLauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_a17

    goto :goto_a19

    :cond_a17
    const/4 v3, 0x0

    goto :goto_a1a

    :cond_a19
    :goto_a19
    const/4 v3, 0x1

    :goto_a1a
    if-nez v3, :cond_a49

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/Object;

    const-string/jumbo v17, "validTarget: "

    const/16 v29, 0x0

    aput-object v17, v15, v29

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v29, 0x1

    aput-object v17, v15, v29

    const-string v17, ", package: "

    const/16 v24, 0x2

    aput-object v17, v15, v24

    const/16 v17, 0x3

    aput-object v6, v15, v17

    const-string v17, ", user: "

    const/16 v21, 0x4

    aput-object v17, v15, v21

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const/16 v22, 0x5

    aput-object v14, v15, v22

    invoke-static {v10, v15}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a49
    .catch Ljava/lang/Exception; {:try_start_a0c .. :try_end_a49} :catch_a04
    .catchall {:try_start_a0c .. :try_end_a49} :catchall_137a

    :cond_a49
    if-eqz v5, :cond_b48

    if-eqz v3, :cond_b48

    :try_start_a4d
    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v10, v5, v14}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v10
    :try_end_a55
    .catch Ljava/lang/Exception; {:try_start_a4d .. :try_end_a55} :catch_b42
    .catchall {:try_start_a4d .. :try_end_a55} :catchall_137a

    if-eqz v10, :cond_a5c

    :try_start_a57
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_a5a
    .catch Ljava/lang/Exception; {:try_start_a57 .. :try_end_a5a} :catch_a04
    .catchall {:try_start_a57 .. :try_end_a5a} :catchall_137a

    goto/16 :goto_b48

    :cond_a5c
    :try_start_a5c
    invoke-static {v4, v6}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    const-string v14, "downloadAppClassName"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    sget-object v15, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_a68
    .catch Ljava/lang/Exception; {:try_start_a5c .. :try_end_a68} :catch_b42
    .catchall {:try_start_a5c .. :try_end_a68} :catchall_137a

    move-object/from16 v29, v13

    const/4 v4, 0x4

    :try_start_a6b
    new-array v13, v4, [Ljava/lang/Object;
    :try_end_a6d
    .catch Ljava/lang/Exception; {:try_start_a6b .. :try_end_a6d} :catch_b38
    .catchall {:try_start_a6b .. :try_end_a6d} :catchall_137a

    :try_start_a6d
    const-string v4, "launcherIntentChanged: "

    const/16 v30, 0x0

    aput-object v4, v13, v30

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v30, 0x1

    aput-object v4, v13, v30

    const-string v4, ", isDownloadClsName: "

    const/16 v24, 0x2

    aput-object v4, v13, v24

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v20, 0x3

    aput-object v4, v13, v20

    invoke-static {v15, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v10, :cond_ab1

    if-eqz v14, :cond_a91

    goto :goto_ab1

    :cond_a91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity disabled, delete it! cn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", c.user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_d22

    :cond_ab1
    :goto_ab1
    iget-object v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v6, v10}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_b22

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadSpecificScreenItems update "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " container:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",screenId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " item:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Updater: intent when launcherIntentChanged or isDownloadClsName"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0xa

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput v5, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_b0a

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_b0b

    :cond_b0a
    move-object v2, v4

    :goto_b0b
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    const-string v5, "intent"

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v5, v13}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_b4a

    :cond_b22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find a launch target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_b36
    .catch Ljava/lang/Exception; {:try_start_a6d .. :try_end_b36} :catch_b42
    .catchall {:try_start_a6d .. :try_end_b36} :catchall_137a

    goto/16 :goto_d22

    :catch_b38
    move-exception v0

    move-object/from16 v10, p1

    move-object v3, v0

    move v15, v4

    move-object/from16 v2, v35

    const/4 v5, 0x5

    goto/16 :goto_120c

    :catch_b42
    move-exception v0

    move-object/from16 v10, p1

    :goto_b45
    move-object v3, v0

    goto/16 :goto_9e3

    :cond_b48
    :goto_b48
    move-object/from16 v29, v13

    :goto_b4a
    :try_start_b4a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_b4e
    .catch Ljava/lang/Exception; {:try_start_b4a .. :try_end_b4e} :catch_11ec
    .catchall {:try_start_b4a .. :try_end_b4e} :catchall_137a

    if-nez v4, :cond_ba4

    if-nez v3, :cond_ba4

    :try_start_b52
    iget v4, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v4, :cond_c7a

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "package not yet restored: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v4}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_b92

    iget-object v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b92

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v4, v8, v10}, Lcom/android/launcher3/icons/IconCache;->updateSessionCache(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    :try_end_b92
    .catch Ljava/lang/Exception; {:try_start_b52 .. :try_end_b92} :catch_b42
    .catchall {:try_start_b52 .. :try_end_b92} :catchall_137a

    :cond_b92
    const/4 v4, 0x4

    :try_start_b93
    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10
    :try_end_b97
    .catch Ljava/lang/Exception; {:try_start_b93 .. :try_end_b97} :catch_b38
    .catchall {:try_start_b93 .. :try_end_b97} :catchall_137a

    if-eqz v10, :cond_ba8

    const/4 v4, 0x2

    :try_start_b9a
    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_ba4

    or-int/lit8 v4, v28, 0x2

    :goto_ba2
    move/from16 v28, v4

    :cond_ba4
    :goto_ba4
    move-object/from16 v13, v29

    goto/16 :goto_cd0

    :cond_ba8
    iget-object v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c18

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_bbb

    or-int/lit8 v4, v28, 0x2

    move/from16 v28, v4

    :cond_bbb
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadSpecificScreenItems update "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " container:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",screenId:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " item:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Updater: restoreFlag when installing pkg = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0xa

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/4 v10, 0x4

    or-int/2addr v4, v10

    iput v4, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    const-string/jumbo v10, "restored"

    iget v13, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v10, v13}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_ba4

    :cond_c18
    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v4, :cond_c22

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isRussianVersion()Z

    move-result v4

    if-eqz v4, :cond_c43

    :cond_c22
    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-eqz v10, :cond_c43

    or-int/lit8 v4, v28, 0x2

    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "auto install app targetPkg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ba2

    :cond_c43
    const-string v4, "MarketRecommendAppClassName"

    move-object/from16 v13, v29

    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c64

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "folder content recommend app targetPkg = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd0

    :cond_c64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrestored app removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_d22

    :cond_c7a
    move-object/from16 v13, v29

    iget-object v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v6, v10}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_c8c

    or-int/lit8 v4, v28, 0x2

    move/from16 v28, v4

    :goto_c8a
    const/4 v4, 0x1

    goto :goto_cd1

    :cond_c8c
    iget-boolean v4, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSdCardReady:Z

    if-nez v4, :cond_cb3

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing pkg, will check later: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v10, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v6, v10}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v10, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c8a

    :cond_cb3
    sget-object v4, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {v4, v6}, Lcom/android/launcher/operators/GeneralCustomizer;->needToastApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cd0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_ccf
    .catch Ljava/lang/Exception; {:try_start_b9a .. :try_end_ccf} :catch_b42
    .catchall {:try_start_b9a .. :try_end_ccf} :catchall_137a

    goto :goto_d22

    :cond_cd0
    :goto_cd0
    const/4 v4, 0x0

    :goto_cd1
    :try_start_cd1
    iget v10, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_cd3
    .catch Ljava/lang/Exception; {:try_start_cd1 .. :try_end_cd3} :catch_11ec
    .catchall {:try_start_cd1 .. :try_end_cd3} :catchall_137a

    const/16 v14, 0x8

    and-int/2addr v10, v14

    if-eqz v10, :cond_cd9

    const/4 v3, 0x0

    :cond_cd9
    if-eqz v3, :cond_cdf

    :try_start_cdb
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_cde
    .catch Ljava/lang/Exception; {:try_start_cdb .. :try_end_cde} :catch_b42
    .catchall {:try_start_cdb .. :try_end_cde} :catchall_137a

    goto :goto_cff

    :cond_cdf
    :try_start_cdf
    sget-object v10, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored: [2]activity disable, cn = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", c.user = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cff
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v10

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iget v15, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-virtual {v10, v6, v14, v15}, Lcom/android/launcher3/OplusAppFilter;->shouldShowAppByItemType(Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v10
    :try_end_d0b
    .catch Ljava/lang/Exception; {:try_start_cdf .. :try_end_d0b} :catch_11ec
    .catchall {:try_start_cdf .. :try_end_d0b} :catchall_137a

    if-nez v10, :cond_d26

    :try_start_d0d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should hide app, pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_d22
    .catch Ljava/lang/Exception; {:try_start_d0d .. :try_end_d22} :catch_b42
    .catchall {:try_start_d0d .. :try_end_d22} :catchall_137a

    :goto_d22
    move-object/from16 v10, p1

    goto/16 :goto_9fe

    :cond_d26
    :try_start_d26
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v10

    if-nez v10, :cond_d2e

    const/4 v10, 0x1

    goto :goto_d2f

    :cond_d2e
    const/4 v10, 0x0

    :goto_d2f
    iget v14, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_d31
    .catch Ljava/lang/Exception; {:try_start_d26 .. :try_end_d31} :catch_11ec
    .catchall {:try_start_d26 .. :try_end_d31} :catchall_137a

    if-eqz v14, :cond_e03

    :try_start_d33
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getRestoredItemInfo: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;Z)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/OplusLauncherProvider;->isLoadingFromDefaultXml()Z

    move-result v10

    if-eqz v10, :cond_d5b

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v10

    if-nez v10, :cond_d5b

    const/4 v10, 0x1

    goto :goto_d5c

    :cond_d5b
    const/4 v10, 0x0

    :goto_d5c
    invoke-static {}, Lcom/android/launcher3/OplusLauncherProvider;->isLoadingFromDefaultXml()Z

    move-result v14

    if-nez v14, :cond_d6a

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v14

    if-nez v14, :cond_d6a

    const/4 v14, 0x1

    goto :goto_d6b

    :cond_d6a
    const/4 v14, 0x0

    :goto_d6b
    iget v15, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/high16 v29, 0x20000000

    and-int v15, v15, v29

    if-eqz v15, :cond_dfd

    const-string v15, "MarketRecommendAppClassName"

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_dfd

    iget-object v15, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v15, :cond_d89

    move-object/from16 v30, v5

    sget-object v5, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-eq v15, v5, :cond_d89

    if-nez v10, :cond_d89

    if-eqz v14, :cond_dff

    :cond_d89
    const/4 v2, 0x1

    invoke-static {v6, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "condition1 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int v5, v5, v29

    if-eqz v5, :cond_da1

    const/4 v5, 0x1

    goto :goto_da2

    :cond_da1
    const/4 v5, 0x0

    :goto_da2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", condition2 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MarketRecommendAppClassName"

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", condition3 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v5, :cond_dbe

    const/4 v5, 0x1

    goto :goto_dbf

    :cond_dbe
    const/4 v5, 0x0

    :goto_dbf
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", condition4 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    sget-object v5, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-ne v4, v5, :cond_dcf

    const/4 v4, 0x1

    goto :goto_dd0

    :cond_dcf
    const/4 v4, 0x0

    :goto_dd0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", condition5 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recommendInfo icon load fail!!! targetPkg ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_dfb
    .catch Ljava/lang/Exception; {:try_start_d33 .. :try_end_dfb} :catch_b42
    .catchall {:try_start_d33 .. :try_end_dfb} :catchall_137a

    goto/16 :goto_d22

    :cond_dfd
    move-object/from16 v30, v5

    :cond_dff
    move-object/from16 v10, p1

    goto/16 :goto_f5d

    :cond_e03
    move-object/from16 v30, v5

    :try_start_e05
    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_e07
    .catch Ljava/lang/Exception; {:try_start_e05 .. :try_end_e07} :catch_11ec
    .catchall {:try_start_e05 .. :try_end_e07} :catchall_137a

    if-nez v5, :cond_e59

    :try_start_e09
    invoke-virtual {v9, v2, v4, v10}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    if-eqz v5, :cond_e31

    iget v4, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "c.getAppShortcutInfo, info.title = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e2b
    .catch Ljava/lang/Exception; {:try_start_e09 .. :try_end_e2b} :catch_b42
    .catchall {:try_start_e09 .. :try_end_e2b} :catchall_137a

    move-object/from16 v10, p1

    :try_start_e2d
    invoke-static {v10, v9, v5}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->fixAppName(Landroid/content/Context;Lcom/android/launcher3/model/OplusLoaderCursor;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_e56

    :cond_e31
    move-object/from16 v10, p1

    sget-object v13, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "c.getAppShortcutInfo: intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", allowMissingTarget: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", result info is null "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e56
    move-object v4, v5

    goto/16 :goto_f5d

    :cond_e59
    move-object/from16 v10, p1

    const/4 v4, 0x1

    if-ne v5, v4, :cond_f1e

    iget-object v4, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v2, v4}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v13, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v5, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f0f

    iget-object v2, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    if-nez v2, :cond_e85

    const-string v2, "Pinned shortcut not found"

    invoke-virtual {v9, v2}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_9fe

    :cond_e85
    new-instance v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v4, v2, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    new-instance v13, Lcom/android/launcher/badge/h;

    invoke-direct {v13, v9}, Lcom/android/launcher/badge/h;-><init>(Lcom/android/launcher3/model/OplusLoaderCursor;)V

    invoke-virtual {v5, v4, v2, v13}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    iget-boolean v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v5, :cond_ec2

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    iget-object v13, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v13, v14}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updater: bitmap of info = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " when icon theme change"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec2
    const-string v5, "icon"

    invoke-virtual {v9, v5}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_ef8

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    iget-object v13, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v13, v14}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updater: bitmap of info = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " when icon isNull in db"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ef8
    iget-object v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v13, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v13}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_f0c

    iget v2, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v5, 0x4

    or-int/2addr v2, v5

    iput v2, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_f0c
    iget-object v2, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    goto :goto_f5d

    :cond_f0f
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v13, 0x20

    or-int/2addr v5, v13

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_f1a
    .catch Ljava/lang/Exception; {:try_start_e2d .. :try_end_f1a} :catch_f1b
    .catchall {:try_start_e2d .. :try_end_f1a} :catchall_137a

    goto :goto_f5d

    :catch_f1b
    move-exception v0

    goto/16 :goto_b45

    :cond_f1e
    :try_start_f1e
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_f26
    .catch Ljava/lang/Exception; {:try_start_f1e .. :try_end_f26} :catch_11ea
    .catchall {:try_start_f1e .. :try_end_f26} :catchall_137a

    if-nez v5, :cond_f34

    :try_start_f28
    iget-object v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v13, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v13}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5
    :try_end_f30
    .catch Ljava/lang/Exception; {:try_start_f28 .. :try_end_f30} :catch_f1b
    .catchall {:try_start_f28 .. :try_end_f30} :catchall_137a

    if-eqz v5, :cond_f34

    or-int/lit8 v28, v28, 0x4

    :cond_f34
    :try_start_f34
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5
    :try_end_f38
    .catch Ljava/lang/Exception; {:try_start_f34 .. :try_end_f38} :catch_11ea
    .catchall {:try_start_f34 .. :try_end_f38} :catchall_137a

    if-eqz v5, :cond_f5d

    :try_start_f3a
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_f5d

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5d

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5d

    const/high16 v5, 0x10200000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_f5d
    .catch Ljava/lang/Exception; {:try_start_f3a .. :try_end_f5d} :catch_f1b
    .catchall {:try_start_f3a .. :try_end_f5d} :catchall_137a

    :cond_f5d
    :goto_f5d
    if-eqz v4, :cond_11cb

    :try_start_f5f
    iget v5, v9, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_f61
    .catch Ljava/lang/Exception; {:try_start_f5f .. :try_end_f61} :catch_11ea
    .catchall {:try_start_f5f .. :try_end_f61} :catchall_137a

    if-nez v5, :cond_f6b

    :try_start_f63
    iget-object v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {v5, v6}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z
    :try_end_f6b
    .catch Ljava/lang/Exception; {:try_start_f63 .. :try_end_f6b} :catch_f1b
    .catchall {:try_start_f63 .. :try_end_f6b} :catchall_137a

    :cond_f6b
    :try_start_f6b
    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object v2, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget v5, v9, Lcom/android/launcher3/model/OplusLoaderCursor;->mRankIndex:I

    invoke-virtual {v9, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int v5, v5, v28

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget-boolean v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z
    :try_end_f85
    .catch Ljava/lang/Exception; {:try_start_f6b .. :try_end_f85} :catch_11ea
    .catchall {:try_start_f6b .. :try_end_f85} :catchall_137a

    if-eqz v5, :cond_fab

    :try_start_f87
    invoke-static {v10, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_fab

    iget v2, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v5, 0x1

    or-int/2addr v2, v5

    iput v2, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "info.runtimeStatusFlags: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fab
    .catch Ljava/lang/Exception; {:try_start_f87 .. :try_end_fab} :catch_f1b
    .catchall {:try_start_f87 .. :try_end_fab} :catchall_137a

    :cond_fab
    :try_start_fab
    iget v2, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_fad
    .catch Ljava/lang/Exception; {:try_start_fab .. :try_end_fad} :catch_11ea
    .catchall {:try_start_fab .. :try_end_fad} :catchall_137a

    if-eqz v2, :cond_fd6

    :try_start_faf
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fd6

    iget-object v2, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v2, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v2, :cond_fcb

    iget v2, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto :goto_fd6

    :cond_fcb
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v2

    const/high16 v5, 0x42c80000  # 100.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setInstallProgress(I)V
    :try_end_fd6
    .catch Ljava/lang/Exception; {:try_start_faf .. :try_end_fd6} :catch_f1b
    .catchall {:try_start_faf .. :try_end_fd6} :catchall_137a

    :cond_fd6
    :goto_fd6
    :try_start_fd6
    iget-object v2, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v13, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v2, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2
    :try_end_fde
    .catch Ljava/lang/Exception; {:try_start_fd6 .. :try_end_fde} :catch_11ea
    .catchall {:try_start_fd6 .. :try_end_fde} :catchall_137a

    if-nez v2, :cond_fec

    move-object/from16 v2, v35

    const/4 v5, 0x0

    :try_start_fe3
    invoke-virtual {v2, v6, v4, v5}, Lcom/android/launcher/download/DownloadAppsManager;->initInstallState(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v13
    :try_end_fe7
    .catch Ljava/lang/Exception; {:try_start_fe3 .. :try_end_fe7} :catch_fe8
    .catchall {:try_start_fe3 .. :try_end_fe7} :catchall_137a

    goto :goto_1000

    :catch_fe8
    move-exception v0

    move-object v3, v0

    goto/16 :goto_9e5

    :cond_fec
    move-object/from16 v2, v35

    :try_start_fee
    iget-object v5, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-wide v13, v9, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v5, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/launcher/download/DownloadAppsManager;->initInstallState(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v13
    :try_end_1000
    .catch Ljava/lang/Exception; {:try_start_fee .. :try_end_1000} :catch_11c9
    .catchall {:try_start_fee .. :try_end_1000} :catchall_137a

    :goto_1000
    if-nez v13, :cond_1018

    :try_start_1002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid isNewInstallType targetPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_1016
    .catch Ljava/lang/Exception; {:try_start_1002 .. :try_end_1016} :catch_fe8
    .catchall {:try_start_1002 .. :try_end_1016} :catchall_137a

    goto/16 :goto_a00

    :cond_1018
    :try_start_1018
    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v5}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v5

    if-eqz v5, :cond_10c4

    invoke-virtual {v2}, Lcom/android/launcher/download/DownloadAppsManager;->isDownloadProgressSupported()Z

    move-result v5
    :try_end_1024
    .catch Ljava/lang/Exception; {:try_start_1018 .. :try_end_1024} :catch_11c9
    .catchall {:try_start_1018 .. :try_end_1024} :catchall_137a

    if-nez v5, :cond_102d

    :try_start_1026
    const-string v3, "Invalid or new install app for not support"

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_102b
    .catch Ljava/lang/Exception; {:try_start_1026 .. :try_end_102b} :catch_fe8
    .catchall {:try_start_1026 .. :try_end_102b} :catchall_137a

    goto/16 :goto_a00

    :cond_102d
    if-eqz v3, :cond_10c4

    :try_start_102f
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;
    :try_end_1031
    .catch Ljava/lang/Exception; {:try_start_102f .. :try_end_1031} :catch_11c9
    .catchall {:try_start_102f .. :try_end_1031} :catchall_137a

    const/4 v5, 0x5

    :try_start_1032
    new-array v13, v5, [Ljava/lang/Object;

    const-string v14, "New installed app: "

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v6, v13, v14

    const-string v14, " has illegal install state: "

    const/4 v15, 0x2

    aput-object v14, v13, v15

    iget-object v14, v4, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v14}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string v14, ", verify it."
    :try_end_1050
    .catch Ljava/lang/Exception; {:try_start_1032 .. :try_end_1050} :catch_10c1
    .catchall {:try_start_1032 .. :try_end_1050} :catchall_137a

    const/4 v15, 0x4

    :try_start_1051
    aput-object v14, v13, v15

    invoke-static {v3, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadSpecificScreenItems update "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " container:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",screenId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " item:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " Updater: restoreFlag of info = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " when validTarget"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa

    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput v3, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    const-string/jumbo v13, "restored"

    iget v14, v9, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    iget-object v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->markInstalled()V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    goto :goto_10c6

    :catch_10c1
    move-exception v0

    goto/16 :goto_11f5

    :cond_10c4
    const/4 v5, 0x5

    const/4 v15, 0x4

    :goto_10c6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->allowDuplicatedAppIcons()Z

    move-result v3

    if-nez v3, :cond_1130

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v3, v3, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v13, 0x0

    invoke-virtual {v1, v4, v3, v13, v6}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v3

    if-nez v3, :cond_10e3

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v3, :cond_10e3

    const/4 v3, 0x1

    goto :goto_10e4

    :cond_10e3
    const/4 v3, 0x0

    :goto_10e4
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v6

    if-eqz v6, :cond_10f3

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v13

    if-eqz v13, :cond_10f3

    const/4 v6, 0x1

    goto :goto_10f4

    :cond_10f3
    const/4 v6, 0x0

    :goto_10f4
    if-eqz v3, :cond_110c

    if-nez v6, :cond_110c

    iget-boolean v3, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z

    if-nez v3, :cond_110c

    iget-object v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v3

    if-nez v3, :cond_110c

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isAutoInstallApp()Z

    move-result v3

    if-nez v3, :cond_110c

    const/4 v3, 0x1

    goto :goto_110d

    :cond_110c
    const/4 v3, 0x0

    :goto_110d
    if-eqz v3, :cond_1130

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-exist package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/OplusLoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_1123
    move-object v6, v2

    move-object v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v10, v27

    move-object/from16 v14, v34

    :goto_112b
    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto/16 :goto_147

    :cond_1130
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v9, v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItemResult(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)Z

    move-result v3

    if-eqz v3, :cond_11b2

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-lez v3, :cond_1154

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v3, :cond_1154

    iget-object v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v3

    if-nez v3, :cond_1154

    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v6

    if-nez v6, :cond_1154

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v6, v4, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    :cond_1154
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v3

    if-eqz v3, :cond_11ad

    invoke-static {v10, v4}, Lcom/android/launcher/model/data/PromiseAppInfo;->from(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher/model/data/PromiseAppInfo;

    move-result-object v3

    iget-object v6, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-boolean v6, v1, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v6, :cond_1198

    iget-object v6, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v6

    if-nez v6, :cond_1198

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    iget-object v13, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v14, v9, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v13, v14}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    sget-object v6, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updater: bitmap of info = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " when icon theme change and is not nullOrLow in db"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1198
    iget-object v6, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v6, :cond_119e

    iput-object v6, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :cond_119e
    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v13, v13, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v13, v13, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->comparatorForAllApps()Ljava/util/Comparator;

    move-result-object v14

    invoke-virtual {v6, v3, v13, v14}, Lcom/android/launcher3/model/AllAppsList;->tryToReplaceAppInfoWithPromiseAppInfo(Lcom/android/launcher/model/data/PromiseAppInfo;Ljava/util/List;Ljava/util/Comparator;)V

    :cond_11ad
    invoke-virtual {v1, v4}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onAppOrShortInfoLoaded(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    goto/16 :goto_1213

    :cond_11b2
    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "c.checkAndAddItemResult failed! item: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1213

    :catch_11c9
    move-exception v0

    goto :goto_11f4

    :cond_11cb
    move-object/from16 v2, v35

    const/4 v5, 0x5

    const/4 v15, 0x4

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected null WorkspaceItemInfo, cn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_11e8
    .catch Ljava/lang/Exception; {:try_start_1051 .. :try_end_11e8} :catch_11e8
    .catchall {:try_start_1051 .. :try_end_11e8} :catchall_137a

    :catch_11e8
    move-exception v0

    goto :goto_120b

    :catch_11ea
    move-exception v0

    goto :goto_11f2

    :catch_11ec
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_11f2

    :catch_11f0
    move-exception v0

    move-object v10, v4

    :goto_11f2
    move-object/from16 v2, v35

    :goto_11f4
    const/4 v5, 0x5

    :goto_11f5
    const/4 v15, 0x4

    goto :goto_120b

    :catch_11f7
    move-exception v0

    move-object/from16 v27, v10

    move-object/from16 v2, v35

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v4

    goto :goto_120b

    :catch_1200
    move-exception v0

    move v11, v3

    move v12, v4

    move-object/from16 v27, v10

    move-object/from16 v34, v14

    const/4 v5, 0x5

    const/4 v15, 0x4

    move-object v10, v2

    move-object v2, v6

    :goto_120b
    move-object v3, v0

    :goto_120c
    :try_start_120c
    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "loadSpecificScreenItems loading interrupted"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v25

    sget-object v6, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--loadSpecificScreenItems: load one item cost: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms."

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1234
    .catchall {:try_start_120c .. :try_end_1234} :catchall_137a

    goto/16 :goto_1123

    :cond_1236
    move v11, v3

    move v12, v4

    move-object/from16 v34, v14

    :try_start_123a
    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iget-boolean v2, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v2, :cond_1266

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSpecificScreenItems mStopped! container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", screenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    monitor-exit v23

    return-void

    :cond_1266
    invoke-virtual {v9}, Lcom/android/launcher3/model/OplusLoaderCursor;->hasItemsToRemove()Z

    move-result v2

    if-eqz v2, :cond_12a1

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSpecificScreenItems delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " container:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",screenId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " deadItems"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12a1
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v2

    if-eqz v2, :cond_1312

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "screen_id"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "only_hot_seat"

    const/16 v4, -0x65

    if-ne v11, v4, :cond_12bb

    const/4 v4, 0x1

    goto :goto_12bc

    :cond_12bb
    const/4 v4, 0x0

    :goto_12bc
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "delete_specific_screen_empty_folders"

    move-object/from16 v4, v34

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_12d2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    goto :goto_12d3

    :cond_12d2
    move-object v13, v5

    :goto_12d3
    if-eqz v13, :cond_1312

    array-length v2, v13

    if-lez v2, :cond_1312

    array-length v2, v13

    const/4 v3, 0x0

    :goto_12da
    if-ge v3, v2, :cond_1312

    aget v4, v13, v3

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadSpecificScreenItems remove folderId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12da

    :cond_1312
    invoke-virtual {v9}, Lcom/android/launcher3/model/OplusLoaderCursor;->hasRestoredRows()Z

    move-result v1

    if-nez v1, :cond_131e

    invoke-virtual {v9}, Lcom/android/launcher3/model/OplusLoaderCursor;->hasUpdateItem()Z

    move-result v1

    if-eqz v1, :cond_1353

    :cond_131e
    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSpecificScreenItems update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " container:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",screenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items:all restore or cellXY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1353
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    invoke-virtual {v9}, Lcom/android/launcher3/model/OplusLoaderCursor;->commitUpdate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    sget-object v3, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "--loadSpecificScreenItems: ----- end ----- cost: "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, " ms."

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v23

    return-void

    :catchall_137a
    move-exception v0

    move-object v1, v0

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    :catchall_1380
    move-exception v0

    move-object/from16 v23, v7

    :goto_1383
    move-object v1, v0

    :goto_1384
    monitor-exit v23
    :try_end_1385
    .catchall {:try_start_123a .. :try_end_1385} :catchall_1386

    throw v1

    :catchall_1386
    move-exception v0

    goto :goto_1383
.end method

.method private loadWorkspaceScreens(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;
    .registers 3

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_8
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private queryCardInfo(Lcom/android/launcher3/model/OplusLoaderCursor;Lcom/android/launcher/mode/LauncherMode;II)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 8

    new-instance p0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {p0}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanXIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mSpanYIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v0, p1, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v0, p1, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mCardTypeIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mServiceIdIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mIsEditableIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6d

    move v0, v2

    goto :goto_6e

    :cond_6d
    move v0, v1

    :goto_6e
    iput-boolean v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mIsCardIdentificationIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_79

    move v1, v2

    :cond_79
    iput-boolean v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mCategoryIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iget v0, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetIdIndex:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e6

    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSpecificScreenItems update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " container:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",screenId:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " item:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/launcher3/model/LoaderCursor;->id:I

    const-string p3, " allocateCardId when id is -1"

    invoke-static {v1, p2, p3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p2, p3}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "appWidgetId"

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    :cond_e6
    iget p2, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mCardHostIndex:I

    invoke-virtual {p1, p2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    iget p2, p1, Lcom/android/launcher3/model/OplusLoaderCursor;->mAppWidgetProviderIndex:I

    invoke-virtual {p1, p2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_100

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    :cond_100
    iget-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez p1, :cond_10a

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    :cond_10a
    return-object p0
.end method


# virtual methods
.method public abstract allowDuplicatedAppIcons()Z
.end method

.method public abstract comparatorForAllApps()Ljava/util/Comparator;
.end method

.method public findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;II)",
            "Lcom/android/launcher3/model/data/ItemInfo;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "Loader"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_62

    if-ltz p3, :cond_62

    if-ltz p4, :cond_62

    if-gt p3, p4, :cond_62

    iget-boolean v7, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v7, :cond_1d

    goto :goto_62

    :cond_1d
    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v7, :cond_35

    new-array p0, v0, [Ljava/lang/Object;

    sget-object p2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    aput-object p2, p0, v5

    const-string p2, "findShortcutInfo. Not app: "

    aput-object p2, p0, v6

    aput-object p1, p0, v2

    const-string p1, ", return null."

    aput-object p1, p0, v1

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_40

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v6

    :cond_40
    add-int v0, p3, p4

    shr-int/2addr v0, v6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->comparatorForAllApps()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_54

    return-object v1

    :cond_54
    if-lez v2, :cond_5c

    add-int/2addr v0, v6

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    return-object p0

    :cond_5c
    sub-int/2addr v0, v6

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->findShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/List;II)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    return-object p0

    :cond_62
    :goto_62
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_b9

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    aput-object v8, v7, v5

    const-string v8, "findShortcutInfo. The shortcutInfo is not found. "

    aput-object v8, v7, v6

    const-string v6, ", allAppsInfo.size = "

    aput-object v6, v7, v2

    if-nez p2, :cond_7b

    goto :goto_7f

    :cond_7b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_7f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v1

    const-string p2, ", shortcutInfo = "

    aput-object p2, v7, v0

    const/4 p2, 0x5

    aput-object p1, v7, p2

    const/4 p1, 0x6

    const-string p2, ", from = "

    aput-object p2, v7, p1

    const/4 p1, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, p1

    const/16 p1, 0x8

    const-string p2, ", to = "

    aput-object p2, v7, p1

    const/16 p1, 0x9

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, p1

    const/16 p1, 0xa

    const-string p2, ", mStopped = "

    aput-object p2, v7, p1

    const/16 p1, 0xb

    iget-boolean p0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v7, p1

    invoke-static {v3, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b9
    return-object v4
.end method

.method public loadAllApps()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    iget-object v7, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAppFilter:Lcom/android/launcher3/AppFilter;

    check-cast v7, Lcom/android/launcher3/OplusAppFilter;

    iget-object v8, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mLauncherAppsCompat:Lcom/android/launcher/OplusLauncherAppsCompat;

    iget-object v10, v0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    iget-object v11, v0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAllAppsInner(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/launcher3/OplusAppFilter;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher/NewUpdatedAppsManager;Lcom/android/launcher3/icons/IconCache;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    :cond_33
    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh4/o;

    iget-object v12, v9, Lh4/o;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v9, v9, Lh4/o;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    move v13, v10

    :goto_49
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_7d

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-object v11, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    check-cast v11, Lcom/android/launcher3/model/OplusAllAppsList;

    invoke-virtual {v11, v14, v10, v15}, Lcom/android/launcher3/model/OplusAllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;ZLandroid/content/pm/LauncherActivityInfo;)V

    invoke-virtual {v0, v14}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onAddAppWhileLoad(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    cmp-long v11, v18, v7

    if-lez v11, :cond_7a

    iget-object v6, v14, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    move-wide/from16 v7, v18

    :cond_7a
    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    :cond_7d
    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isSupportFastEnterPrivate()Z

    move-result v9

    if-eqz v9, :cond_33

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->addPrivateSafeShortcutIfNeed(Z)V

    goto :goto_33

    :cond_88
    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v5}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v5

    const/4 v9, 0x2

    invoke-virtual {v4, v9, v5}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v5

    const/4 v11, 0x1

    invoke-virtual {v4, v11, v5}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v11, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {v5, v11}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b6

    const/4 v5, 0x1

    goto :goto_b7

    :cond_b6
    move v5, v10

    :goto_b7
    const/4 v11, 0x4

    invoke-virtual {v4, v11, v5}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->onAllAppsLoaded()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d4

    const/4 v0, 0x1

    goto :goto_d8

    :cond_d4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d8
    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    const-string v12, "[cost]loadAllApps: count: "

    aput-object v12, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v3, v12

    const-string v10, ", cost: "

    aput-object v10, v3, v9

    const/4 v9, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    const-string v9, ", average: "

    aput-object v9, v3, v11

    const/4 v9, 0x5

    int-to-long v10, v0

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    const/4 v0, 0x6

    const-string v4, ", max: "

    aput-object v4, v3, v0

    const/4 v0, 0x7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, " ["

    aput-object v4, v3, v0

    const/16 v0, 0x9

    aput-object v6, v3, v0

    const/16 v0, 0xa

    const-string v4, "]"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public loadAndBindNoPositionItem(Landroid/content/Context;Z)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAndBindNoPositionItem, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v4, v4, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", grid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_159

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v1, v1, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    instance-of v4, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v4, :cond_53

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v4, :cond_53

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_53

    :cond_73
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isSellMode:Z

    if-eqz v4, :cond_ac

    invoke-static {p1}, Lcom/android/launcher/sellmode/SaleModeWidgetController;->isSaleMode2020(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_ac

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v4, v4, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    if-nez v4, :cond_96

    move v11, v3

    goto :goto_9b

    :cond_96
    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    move v11, v4

    :goto_9b
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v7, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v9, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    move-object v7, v1

    move-object v8, v2

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    goto :goto_d6

    :cond_ac
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->getPreferSecondScreen()Z

    move-result v4

    if-eqz v4, :cond_c6

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v7, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v9, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    const/4 v11, 0x1

    move-object v7, v1

    move-object v8, v2

    move-object v10, v12

    invoke-static/range {v4 .. v11}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    goto :goto_d6

    :cond_c6
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mModelWrite:Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v7, v5, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v9, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    move-object v7, v1

    move-object v8, v2

    move-object v10, v12

    invoke-static/range {v4 .. v10}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    :goto_d6
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_101

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAndBindNoPositionItem, added screenIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {p1, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    iget-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceScreen(Lcom/android/launcher3/util/IntArray;)V

    :cond_101
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12d

    sget-object p1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindNoPositionItem, added itemInfos count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {p1, p2, v3}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->getDeferredExecutor(ZZ)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, v12, p2}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    :cond_12d
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p1, p1, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_159

    sget-object p1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAndBindNoPositionItem, still exist no position item list, count: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object p0, p0, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_159
    monitor-exit v0

    return-void

    :catchall_15b
    move-exception p0

    monitor-exit v0
    :try_end_15d
    .catchall {:try_start_3 .. :try_end_15d} :catchall_15b

    throw p0
.end method

.method public onAddAppWhileLoad(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    return-void
.end method

.method public abstract onAllAppsLoaded()V
.end method

.method public abstract onAppOrShortInfoLoaded(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
.end method

.method public abstract onWorkspaceScreenBindCompleted(Z)V
.end method

.method public prepare(Landroid/content/Context;)V
    .registers 15

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/model/AllAppsList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mPmHelper:Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSafeMode:Z

    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsSdCardReady:Z

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/model/z0;

    invoke-direct {v4, v3}, Lcom/android/launcher3/model/z0;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v2, Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lcom/android/launcher3/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_13 .. :try_end_6c} :catchall_10e

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherModel;->getNewUpdatedAppsManager()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {v1}, Lcom/android/launcher/NewUpdatedAppsManager;->loadNewUpdatedAppPkgNames()V

    :cond_7d
    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare: doMigrate"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/model/OplusUnionGridCompatHelper;->doMigrate(Landroid/content/Context;)V

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare: switchCellsLayoutIfNeeded"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v1}, Lcom/android/launcher/backup/backrestore/restore/OplusLayoutCompatManager;->switchCellsLayoutIfNeededForOta(Lcom/android/launcher3/LauncherAppState;)V

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepare: loading default favorites"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "load_default_favorites"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadExtraLayoutIfNeeded(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher3/ota/AddCardManager;->shouldAddWeatherStepCard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b9

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ota add cards"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ota_add_cards"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_b9
    invoke-static {p1}, Lcom/android/launcher3/ota/AddCardManager;->onOtaPrepareStart(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher/LaunchComponentAliasVerifier;->verify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {p1, v0}, Lcom/android/launcher3/aer/AerWorkIconManager;->AppAddAERBage(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_c7
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    sget-object v4, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mUnlockedUsers:Landroid/util/LongSparseArray;

    iget-object v11, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mAllUsers:Landroid/util/LongSparseArray;

    iget-object v12, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mQuietMode:Landroid/util/LongSparseArray;

    move-object v5, p1

    invoke-static/range {v4 .. v12}, Lcom/android/launcher/backup/util/ShortcutUtils;->initAllUserPinnedShortcutsAndUnlockedUsers(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserManager;ZLjava/util/Map;ZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_c7 .. :try_end_e3} :catchall_10b

    invoke-static {p1}, Lcom/android/launcher/theme/LauncherIconConfig;->update(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-eqz v0, :cond_fb

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {p1, v0}, Lcom/android/launcher/theme/LauncherIconConfig;->updateContainerScaler(Landroid/content/res/Resources;I)V

    :cond_fb
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->clearIconDbIfThemeChanged(Landroid/content/Context;Lcom/android/launcher3/icons/IconCache;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    return-void

    :catchall_10b
    move-exception p0

    :try_start_10c
    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw p0

    :catchall_10e
    move-exception p0

    :try_start_10f
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw p0
.end method

.method public run()V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLayoutRestore()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_265

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isCloudRestore()Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_265

    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_280

    invoke-static {}, Lcom/android/launcher3/model/LoaderStateHelper;->setStartLayoutLoad()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->stopTemporaryCache()V

    invoke-virtual {v0}, Lcom/android/common/util/TemporaryCacheHelper;->startTemporaryCache()V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/multiapp/MultiAppManager;->resetAddedMultiApp()V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "\nLoad for mode: "

    aput-object v9, v8, v4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, ", user: "

    aput-object v9, v8, v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v1, 0x4

    const-string v2, "; user unlocked = "

    aput-object v2, v8, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/aer/ProvisionManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/aer/ProvisionManager;->checkManagedStatus(Lcom/android/launcher3/OplusAppFilter;)V

    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    sget-object v7, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    new-instance v7, Landroid/util/TimingLogger;

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "run"

    invoke-direct {v7, v8, v9}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9e
    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/launcher3/OplusLauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object v8
    :try_end_a8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9e .. :try_end_a8} :catch_229
    .catchall {:try_start_9e .. :try_end_a8} :catchall_227

    :try_start_a8
    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher/AppLimitedStartUpManager;->initLimitAppList()V

    invoke-virtual {v1}, Lcom/android/launcher3/OplusAppFilter;->initFilteredAppsList()V

    const-string/jumbo v1, "step[1.1]: init list"

    invoke-virtual {v7, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->prepare(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->createVirtualFolder()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string/jumbo v9, "step[1.2]: prepare"

    invoke-virtual {v7, v9}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAllApps()Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->notifyBubbleRefresh(I)V

    const-string/jumbo v10, "step[1.3]: load all apps"

    invoke-virtual {v7, v10}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->loadAndBindWorkspace(Landroid/content/Context;)V

    const-string/jumbo v10, "step[1.4]: load and bind workspace"

    invoke-virtual {v7, v10}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v10}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->loadAndBindSuggestedFolder()V

    invoke-static {v4}, Lcom/android/launcher3/OplusLauncherProvider;->setLoadingFromDefaultXml(Z)V

    const-string/jumbo v4, "step[1.4.1]: loadAndBindSuggestedFolder"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->sendFirstScreenActiveInstallsBroadcast()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v4, "step 1 completed, wait for idle"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v4}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->preBindAllApps()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v4}, Lcom/android/launcher3/model/BaseLoaderResults;->bindAllApps()V

    const-string/jumbo v4, "step[2.1]: bind all apps"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mColorLoaderResults:Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->bindVirtualFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    const-string/jumbo v1, "step[2.2]: bind virtual folder"

    invoke-virtual {v7, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderTask;->setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V

    new-instance v4, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;

    invoke-direct {v4}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;-><init>()V

    iget-object v10, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v11, v10}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/OplusLauncherModel;)V

    invoke-virtual {v1, v9, v4, v11}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string/jumbo v4, "step[2.3]: update icon cache"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v4, "step 2 completed, wait for idle"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()Ljava/util/List;

    const-string/jumbo v4, "step[3.1]: load deep shortcuts"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    const-string/jumbo v4, "step[3.2]: bind deep shortcuts"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v4, "step 3 completed, wait for idle"

    invoke-virtual {v7, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v9, "step[4.1]: update widgets"

    invoke-virtual {v7, v9}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    const-string/jumbo v9, "step[4.2]: bind widgets"

    invoke-virtual {v7, v9}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    new-instance v9, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;

    iget-object v10, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;-><init>(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/model/l;

    invoke-direct {v10, v3}, Lcom/android/launcher3/model/l;-><init>(Lcom/android/launcher3/OplusLauncherModel;)V

    invoke-virtual {v1, v4, v9, v10}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string/jumbo v3, "step[4.3]: update widget icon cache"

    invoke-virtual {v7, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isNeedUpdateIconInLoaderTask()Z

    move-result v3

    if-eqz v3, :cond_1e8

    iget-boolean v3, p0, Lcom/android/launcher3/model/OplusBaseLoaderTask;->mIsIconThemeChanged:Z

    if-eqz v3, :cond_1e8

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateIcons()V

    :cond_1e8
    const-string/jumbo v3, "step[4.4]: update protected icon cache"

    invoke-virtual {v7, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->finish()V

    const-string/jumbo v1, "step 4: finish icon cache update"

    invoke-virtual {v7, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-static {}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->getInstance()Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->startOrCreatePendingStaticShortcuts(Lcom/android/launcher/Launcher;Landroid/content/Context;)V

    const-string/jumbo v0, "step 4.5: pending static shortcuts"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V
    :try_end_217
    .catchall {:try_start_a8 .. :try_end_217} :catchall_21b

    :try_start_217
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_21a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_217 .. :try_end_21a} :catch_229
    .catchall {:try_start_217 .. :try_end_21a} :catchall_227

    goto :goto_232

    :catchall_21b
    move-exception v0

    if-eqz v8, :cond_226

    :try_start_21e
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_221
    .catchall {:try_start_21e .. :try_end_221} :catchall_222

    goto :goto_226

    :catchall_222
    move-exception v1

    :try_start_223
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_226
    :goto_226
    throw v0
    :try_end_227
    .catch Ljava/util/concurrent/CancellationException; {:try_start_223 .. :try_end_227} :catch_229
    .catchall {:try_start_223 .. :try_end_227} :catchall_227

    :catchall_227
    move-exception v0

    goto :goto_25c

    :catch_229
    move-exception v0

    :try_start_22a
    invoke-virtual {v0}, Ljava/util/concurrent/CancellationException;->printStackTrace()V

    const-string v0, "Cancelled"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V
    :try_end_232
    .catchall {:try_start_22a .. :try_end_232} :catchall_227

    :goto_232
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {p0}, Lcom/android/launcher3/model/LoaderStateHelper;->setEndOrCancelLayoutLoad(Lcom/android/launcher3/model/BgDataModel;)V

    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    invoke-virtual {p0}, Lcom/android/common/util/TemporaryCacheHelper;->stopTemporaryCache()V

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v0, "cost time OplusBaseLoaderTask#run: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_25c
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {p0}, Lcom/android/launcher3/model/LoaderStateHelper;->setEndOrCancelLayoutLoad(Lcom/android/launcher3/model/BgDataModel;)V

    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v0

    :cond_265
    :goto_265
    :try_start_265
    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "\nLoad for"

    aput-object v5, v2, v4

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, " failed! when restoring"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_280
    move-exception v0

    monitor-exit p0
    :try_end_282
    .catchall {:try_start_265 .. :try_end_282} :catchall_280

    throw v0
.end method
