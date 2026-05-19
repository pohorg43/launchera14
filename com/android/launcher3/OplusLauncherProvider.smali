.class public Lcom/android/launcher3/OplusLauncherProvider;
.super Lcom/android/launcher3/LauncherProvider;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Range"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;
    }
.end annotation


# static fields
.field private static final ADD_DATABASE_DELAY:J = 0x64L

.field public static final EMPTY_DRAWER_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DRAWER_DATABASE_CREATED"

.field public static final EMPTY_SIMPLE_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_SIMPLE_DATABASE_CREATED"

.field private static final EXTRA_FOLDER_DATA:Ljava/lang/String; = "folder_data"

.field private static final EXTRA_IS_REQUEST_SUCCESS:Ljava/lang/String; = "is_request_success"

.field public static final EXTRA_IS_TABLE_EXIST:Ljava/lang/String; = "is_table_exist"

.field public static final EXTRA_LAUNCHER_MODE_VAULE:Ljava/lang/String; = "launcher_mode_vaule"

.field private static final EXTRA_PACKAGE_NAME_LIST:Ljava/lang/String; = "package_name_list"

.field public static final EXTRA_RESTORE_RESULT:Ljava/lang/String; = "restore_result"

.field public static final EXTRA_RESTORE_STARTED:Ljava/lang/String; = "restore_started"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final EXTRA_SHORTCUT_INTENT_LIST:Ljava/lang/String; = "shortcut_intent_list"

.field private static final EXTRA_WIDGET_IS_ADDED:Ljava/lang/String; = "widget_is_added"

.field public static final FULL_SEARCH_WIDGET_PROVIDER_NAME:Ljava/lang/String; = "com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

.field public static final GLOBAL_SEARCH_WIDGET_INTENT:Ljava/lang/String; = "com.heytap.quicksearchbox/com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

.field public static final HEYTAP_WIDGET_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.heytap"

.field private static final IS_IN_SIMPLE_MODE:Ljava/lang/String; = "is_in_simple_mode"

.field public static final MARKET_HEYDEMO_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.market.heydemo"

.field public static final METHOD_ADD_GLOBAL_SEARCH_APPWIDGET:Ljava/lang/String; = "METHOD_ADD_GLOBAL_SEARCH_APPWIDGET"

.field public static final METHOD_CALL_APP_EDIT_MAX_ID:Ljava/lang/String; = "app_edit_max_id"

.field public static final METHOD_CALL_RECOMMEND_MARKET_INFO_ID:Ljava/lang/String; = "recommend_market_info_id"

.field public static final METHOD_CHECK_AFTER_RESTORE:Ljava/lang/String; = "checkAfterRestore"

.field public static final METHOD_CLEAR_SPECIFIC_EMPTY_TABLE_FLAG_IF_NECESSARY:Ljava/lang/String; = "clear_specific_empty_table_flag"

.field public static final METHOD_CLOUD_RECOVERY_STATUS_CHANGED:Ljava/lang/String; = "cloudRecoveryStatusChanged"

.field public static final METHOD_CREATE_SPECIFIC_TABLE_IF_NOT_EXIST:Ljava/lang/String; = "create_specific_table"

.field public static final METHOD_IS_TABLE_EXIST:Ljava/lang/String; = "isTableExist"

.field private static final METHOD_IS_WIDGET_ADDED_IN_LAUNCHER:Ljava/lang/String; = "isWidgetAddedInLauncher"

.field private static final METHOD_NOTIFY_LIMIT_APP:Ljava/lang/String; = "notify_launcher_limit_app"

.field public static final METHOD_OTA_ADD_CARDS:Ljava/lang/String; = "ota_add_cards"

.field public static final METHOD_PARSE_EXTRA_LAYOUT:Ljava/lang/String; = "parse_extra_layout"

.field private static final METHOD_QUERY_FOLDER_DATA:Ljava/lang/String; = "query_folder_data"

.field public static final METHOD_REQUEST_ADD_WIDGET:Ljava/lang/String; = "requestAddWidget"

.field private static final METHOD_REQUEST_DELETE_WIDGET:Ljava/lang/String; = "requestDeleteWidget"

.field private static final METHOD_REQUEST_GET_SHORTCUT_INTENT:Ljava/lang/String; = "requestGetShortCutIntent"

.field private static final METHOD_REQUEST_GET_WIDGET_PKG_NAME:Ljava/lang/String; = "requestGetWidgetPackageName"

.field private static final METHOD_START_LAUNCHER_SELF:Ljava/lang/String; = "startLauncherSelf"

.field public static final NEARME_WIDGET_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.nearme"

.field public static final NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String; = "com.coloros.widget.smallweather.OppoWeather"

.field public static final NEW_WEATHER_WIDGET_INTENT:Ljava/lang/String; = "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeather"

.field public static final OLD_WEATHER_WIDGET_INTENT:Ljava/lang/String; = "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherVertical"

.field public static final OPLUSWEATHER_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String; = "com.coloros.widget.smallweather.RealmeWeather"

.field public static final OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

.field public static final OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field public static final OPLUS_WIDGET_PACKAGE_NAME_PREFIX:Ljava/lang/String; = "com.coloros"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PACKAGE_SEARCH:Ljava/lang/String; = "com.heytap.quicksearchbox"

.field private static final SPLIT_PACKAGE:Ljava/lang/String; = "component="

.field public static final TAG:Ljava/lang/String; = "OplusLauncherProvider"

.field public static final VERTICAL_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String; = "com.coloros.widget.smallweather.OppoWeatherVertical"

.field public static final WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.alarmclock"

.field private static final WSN_ANIMATION_DELAY_TIME:I = 0x320

.field private static sLoadingFromDefaultXml:Z


# instance fields
.field private mAddDataBaseTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f12003b

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/OplusLauncherProvider;->OPLUS_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    const v0, 0x7f12003c

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/OplusLauncherProvider;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/OplusLauncherProvider;->sLoadingFromDefaultXml:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;-><init>()V

    return-void
.end method

.method private createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I
    .registers 4

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result p0

    return p0
.end method

.method private deleteFromDB(Ljava/lang/String;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_d
    const/4 v1, 0x1

    if-ge v11, v9, :cond_48

    aget-object v2, v8, v11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/common/util/OplusLauncherDbUtils;->getItemTable(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    :try_start_20
    const-string v2, "OplusLauncherProvider"

    const-string v4, "appWidgetProvider=?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v10

    const-string v6, "METHOD_REQUEST_ADD_OR_REMOVE_WIDGET"

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v2

    move-object v2, v0

    move-object v3, v12

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_36

    goto :goto_45

    :catch_36
    move-exception p0

    const-string v0, "Error delete widgets , name = "

    const-string v1, ",table = "

    invoke-static {v0, p1, v1, v12}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusLauncherProvider"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v10

    :cond_45
    :goto_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_48
    return v1
.end method

.method public static synthetic f(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->lambda$requestAddOrDeleteAppWidget$2(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/OplusLauncherProvider;->lambda$requestAddOrDeleteAppWidget$1(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V

    return-void
.end method

.method private getAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "component="

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getBindWidgetAppList()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "OplusLauncherProvider"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "itemType = ?"

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v12, 0x0

    aput-object p0, v7, v12

    const-string p0, "appWidgetProvider"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x0

    :try_start_2d
    const-string v2, "OplusLauncherProvider"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "rank"

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_81
    .catchall {:try_start_2d .. :try_end_39} :catchall_7d

    if-eqz v2, :cond_79

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    move-object v3, p0

    goto :goto_51

    :cond_4d
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_51
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    const-string v4, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBindWidgetAppList find packageName =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_76} :catch_77
    .catchall {:try_start_3b .. :try_end_76} :catchall_9f

    goto :goto_3b

    :catch_77
    move-exception p0

    goto :goto_85

    :cond_79
    :goto_79
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_9e

    :catchall_7d
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_a0

    :catch_81
    move-exception v2

    move-object v13, v2

    move-object v2, p0

    move-object p0, v13

    :goto_85
    :try_start_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBindWidgetAppList failed error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_85 .. :try_end_9d} :catchall_9f

    goto :goto_79

    :goto_9e
    return-object v1

    :catchall_9f
    move-exception p0

    :goto_a0
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private getShortcutIntents(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-static {v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_36
    const-string v1, "getShortcutIntents -- shortcut for "

    const-string v2, ", intentList.size = "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Widget"

    const-string v1, "OplusLauncherProvider"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic h(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->isWidgetAdd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;ZZZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    move-result p0

    return p0
.end method

.method private initDrawerDateFromStandard()V
    .registers 7

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_c9

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "singledesktopitems"

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "singledesktopscreens"

    invoke-static {v0, v2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/layout/CustomLayoutHelper;->resetExtraLoadedFlag(Landroid/content/Context;)V

    const-string v0, "OplusLauncherProvider"

    const-string v3, "init drawer date from standard!!!"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_47
    new-instance v3, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_52} :catch_c3

    :try_start_52
    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "singledesktopitems_draw"

    invoke-static {v4, v1, v5}, Lcom/android/common/util/OplusLauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v4, "singledesktopscreens_draw"

    invoke-static {v1, v2, v4}, Lcom/android/common/util/OplusLauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "recommendmarketinfo"

    invoke-static {v1, v2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->copyStandardToDrawer()V

    :cond_86
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, v1, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getFlagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/mode/LauncherModeManager;->refreshMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0}, Lcom/android/launcher3/OplusLauncherProvider;->initModeLayoutSettingFromStandard()V

    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_b5
    .catchall {:try_start_52 .. :try_end_b5} :catchall_b9

    :try_start_b5
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_c3

    goto :goto_c9

    :catchall_b9
    move-exception p0

    :try_start_ba
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c2

    :catchall_be
    move-exception v1

    :try_start_bf
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c2
    throw p0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c3} :catch_c3

    :catch_c3
    move-exception p0

    const-string v1, "createEmptyDB e = "

    invoke-static {v1, p0, v0}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method private initModeLayoutSettingFromStandard()V
    .registers 1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->initModeLayoutSettingFromStandard()V

    return-void
.end method

.method public static isLoadingFromDefaultXml()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/OplusLauncherProvider;->sLoadingFromDefaultXml:Z

    return v0
.end method

.method private isQuicklyAddCards()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/OplusLauncherProvider;->mAddDataBaseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/OplusLauncherProvider;->mAddDataBaseTime:J

    const/4 p0, 0x0

    return p0
.end method

.method private isWidgetAdd(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    if-eqz v2, :cond_32

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->checkThisWidgetFromDB(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "call: EXTRA_WIDGET_IS_ADDED "

    const-string v0, "OplusLauncherProvider"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0

    :cond_32
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->findScreenIndexForWidget(Landroid/content/ComponentName;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_3e

    return v3

    :cond_3e
    return v1
.end method

.method public static synthetic j(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherProvider;->lambda$startLauncherSelf$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->deleteFromDB(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$requestAddOrDeleteAppWidget$1(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    const-string v0, "OplusLauncherProvider"

    const-string v1, "Widget"

    if-eqz p0, :cond_2d

    array-length v2, p0

    if-lez v2, :cond_2d

    array-length v2, p0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_32

    aget-object v4, p0, v3

    invoke-interface {v4, p1, p2, p3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetAdd(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddAppWidget success, widgetInfo =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2d
    const-string p0, "AddAppWidget fail! callback is null!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method private static synthetic lambda$requestAddOrDeleteAppWidget$2(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_1c

    array-length v0, p0

    if-lez v0, :cond_1c

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_c
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetRemove(Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p0, "Widget"

    const-string p1, "OplusLauncherProvider"

    const-string v0, "DeleteAppWidget fail! callback is null!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$startLauncherSelf$0(Landroid/content/Intent;)V
    .registers 8

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z
    .registers 23

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const-string v3, "OplusLauncherProvider"

    const-string v4, "Widget"

    if-nez v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAddOrDeleteAppWidget, unflatten provider name fail! provider = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2a
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    if-nez v5, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAddOrDeleteAppWidget, appState is null! provider = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_46
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAddOrDeleteAppWidget, context is null! provider = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_62
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v7

    if-nez v7, :cond_6f

    const-string/jumbo v0, "requestAddOrDeleteAppWidget: launcherModel is null"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6f
    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v8

    const/4 v11, 0x1

    if-eqz v8, :cond_7f

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v8

    goto :goto_80

    :cond_7f
    move v8, v11

    :goto_80
    if-eqz p2, :cond_f9

    :try_start_82
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusLauncherProvider;->isQuicklyAddCards()Z

    move-result v0

    if-eqz v0, :cond_93

    const-string/jumbo v0, "requestAddOrDeleteAppWidget: quicklyAddCards"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    :cond_93
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    new-instance v8, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v8, v6}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    move/from16 v9, p4

    invoke-virtual {v7, v1, v0, v8, v9}, Lcom/android/launcher3/OplusLauncherModel;->preAddWidgetProviderInWorkHandler(Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Z)Lcom/android/launcher/widget/AddWidgetProviderCallableResult;

    move-result-object v0

    if-eqz v0, :cond_f8

    iget-object v8, v0, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, v0, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWorkspaceScreensFinal:Lcom/android/launcher3/util/IntArray;

    iget-object v0, v0, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->allWorkspaceScreens:Lcom/android/launcher3/util/IntArray;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestAddOrDeleteAppWidget: widgetInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v3, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_ee

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v4}, Lcom/android/launcher3/OplusLauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v12

    iget v14, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v15, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v13, v8

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    invoke-static {v6, v0}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Lcom/android/launcher3/util/IntArray;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/j1;

    const/4 v10, 0x0

    move-object v5, v3

    move-object v6, v7

    move-object v7, v1

    move/from16 v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/j1;-><init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;ZI)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return v11

    :cond_ee
    const-string v0, "AddAppWidget, widgetInfo is null!"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_f3} :catch_f4

    return v2

    :catch_f4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f8
    return v2

    :cond_f9
    if-eqz v8, :cond_11c

    :try_start_fb
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/OplusLauncherProvider;->deleteFromDB(Ljava/lang/String;)Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestAddOrDeleteAppWidget: just deleteFromDB providerName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",isDeletedSuccessful = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11c
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/f;

    invoke-direct {v3, v7, v0}, Lcom/android/launcher/f;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_131} :catch_132

    return v0

    :catch_132
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static setLoadingFromDefaultXml(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/OplusLauncherProvider;->sLoadingFromDefaultXml:Z

    return-void
.end method

.method private startLauncherSelf(Landroid/content/Context;)V
    .registers 5

    const-string p0, "OplusLauncherProvider"

    if-nez p1, :cond_b

    const-string/jumbo p1, "startLauncherSelf context is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {}, Lcom/android/launcher3/Utilities;->createHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo p1, "startLauncherSelf startRecentsActivity"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/a3;

    invoke-direct {p1, v0}, Lcom/android/launcher3/a3;-><init>(Landroid/content/Intent;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applyBatch"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/LauncherProviderInjector;->printDbApplyBatchMessage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    return-object p0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bulkInsert"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/launcher3/LauncherProviderInjector;->printDbInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string/jumbo v10, "query folder data error"

    const-string/jumbo v1, "startLauncherSelf"

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/OplusLauncherProvider;->startLauncherSelf(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_21
    sget-object v1, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProviderInjector;->hasReadPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5f1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_5f1

    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "call"

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/LauncherProviderInjector;->printDbCallMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-super/range {p0 .. p3}, Lcom/android/launcher3/LauncherProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4f

    return-object v1

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "OplusLauncherProvider"

    if-nez v1, :cond_5e

    const-string v0, "call context is null!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v4, "app_edit_max_id"

    const-string/jumbo v5, "recommend_market_info_id"

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_5f8

    goto/16 :goto_17c

    :sswitch_78
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    goto/16 :goto_17c

    :cond_80
    const/16 v2, 0x13

    goto/16 :goto_17d

    :sswitch_84
    const-string/jumbo v2, "query_folder_data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto/16 :goto_17c

    :cond_8f
    const/16 v2, 0x12

    goto/16 :goto_17d

    :sswitch_93
    const-string/jumbo v2, "parse_extra_layout"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    goto/16 :goto_17c

    :cond_9e
    const/16 v2, 0x11

    goto/16 :goto_17d

    :sswitch_a2
    const-string v2, "cloudRecoveryStatusChanged"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    goto/16 :goto_17c

    :cond_ac
    const/16 v2, 0x10

    goto/16 :goto_17d

    :sswitch_b0
    const-string v2, "isTableExist"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    goto/16 :goto_17c

    :cond_ba
    const/16 v2, 0xf

    goto/16 :goto_17d

    :sswitch_be
    const-string v2, "isWidgetAddedInLauncher"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    goto/16 :goto_17c

    :cond_c8
    const/16 v2, 0xe

    goto/16 :goto_17d

    :sswitch_cc
    const-string/jumbo v2, "ota_add_cards"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d7

    goto/16 :goto_17c

    :cond_d7
    const/16 v2, 0xd

    goto/16 :goto_17d

    :sswitch_db
    const-string v2, "create_specific_table"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e5

    goto/16 :goto_17c

    :cond_e5
    const/16 v2, 0xc

    goto/16 :goto_17d

    :sswitch_e9
    const-string v2, "init_drawer_from_standard"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    goto/16 :goto_17c

    :cond_f3
    const/16 v2, 0xb

    goto/16 :goto_17d

    :sswitch_f7
    const-string/jumbo v2, "requestGetShortCutIntent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    goto/16 :goto_17c

    :cond_102
    const/16 v2, 0xa

    goto/16 :goto_17d

    :sswitch_106
    const-string/jumbo v2, "requestGetWidgetPackageName"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    goto/16 :goto_17c

    :cond_111
    const/16 v2, 0x9

    goto/16 :goto_17d

    :sswitch_115
    const-string/jumbo v2, "requestDeleteWidget"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_120

    goto/16 :goto_17c

    :cond_120
    const/16 v2, 0x8

    goto/16 :goto_17d

    :sswitch_124
    const-string/jumbo v2, "requestAddWidget"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e

    goto :goto_17c

    :cond_12e
    const/4 v2, 0x7

    goto :goto_17d

    :sswitch_130
    const-string v2, "checkAfterRestore"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_139

    goto :goto_17c

    :cond_139
    const/4 v2, 0x6

    goto :goto_17d

    :sswitch_13b
    const-string v2, "delete_specific_screen_empty_folders"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_144

    goto :goto_17c

    :cond_144
    const/4 v2, 0x5

    goto :goto_17d

    :sswitch_146
    const-string v2, "create_empty_db_all_mode"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    goto :goto_17c

    :cond_14f
    const/4 v2, 0x4

    goto :goto_17d

    :sswitch_151
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_158

    goto :goto_17c

    :cond_158
    const/4 v2, 0x3

    goto :goto_17d

    :sswitch_15a
    const-string v2, "METHOD_ADD_GLOBAL_SEARCH_APPWIDGET"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_163

    goto :goto_17c

    :cond_163
    const/4 v2, 0x2

    goto :goto_17d

    :sswitch_165
    const-string/jumbo v2, "notify_launcher_limit_app"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    goto :goto_17c

    :cond_16f
    const/4 v2, 0x1

    goto :goto_17d

    :sswitch_171
    const-string v2, "clear_specific_empty_table_flag"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17a

    goto :goto_17c

    :cond_17a
    move v2, v6

    goto :goto_17d

    :goto_17c
    const/4 v2, -0x1

    :goto_17d
    const-string v7, "launcher_mode_vaule"

    const-string/jumbo v12, "value"

    const-string v13, "is_request_success"

    const-string/jumbo v14, "result"

    const/high16 v15, -0x80000000

    packed-switch v2, :pswitch_data_64a

    goto/16 :goto_5f0

    :pswitch_18e  #0x13
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherProvider;->initializeMaxAppEditId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5f0

    :pswitch_19d  #0x12
    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v2

    const-string v4, "itemType = 3 AND _id IN (SELECT container FROM "

    const-string v5, ")"

    invoke-static {v4, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "container IN (SELECT _id FROM "

    invoke-static {v4, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_1b9
    const-string v12, "OplusLauncherProvider"

    iget-object v8, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v2

    invoke-static/range {v12 .. v22}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1d3} :catch_200
    .catchall {:try_start_1b9 .. :try_end_1d3} :catchall_1fc

    :try_start_1d3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_207

    :cond_1d9
    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "title"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/android/common/util/FolderNameHelper;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1f9} :catch_202
    .catchall {:try_start_1d3 .. :try_end_1f9} :catchall_2a4

    if-nez v9, :cond_1d9

    goto :goto_207

    :catchall_1fc
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_2a6

    :catch_200
    const/4 v1, 0x0

    move-object v8, v1

    :catch_202
    :try_start_202
    invoke-static {v3, v10}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_205
    .catchall {:try_start_202 .. :try_end_205} :catchall_2a4

    if-eqz v8, :cond_20a

    :cond_207
    :goto_207
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_20a
    :try_start_20a
    const-string v12, "OplusLauncherProvider"

    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v17, v4

    invoke-static/range {v12 .. v22}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_226} :catch_28c
    .catchall {:try_start_20a .. :try_end_226} :catchall_289

    :try_start_226
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_293

    :cond_22c
    const-string v2, "intent"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/OplusLauncherProvider;->getAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "container"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v8, v6

    move v9, v8

    :goto_246
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_269

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_266

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_266
    add-int/lit8 v8, v8, 0x1

    goto :goto_246

    :cond_269
    if-nez v9, :cond_282

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_282
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_286} :catch_28e
    .catchall {:try_start_226 .. :try_end_286} :catchall_29d

    if-nez v2, :cond_22c

    goto :goto_293

    :catchall_289
    move-exception v0

    const/4 v1, 0x0

    goto :goto_29e

    :catch_28c
    const/4 v0, 0x0

    move-object v1, v0

    :catch_28e
    :try_start_28e
    invoke-static {v3, v10}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_291
    .catchall {:try_start_28e .. :try_end_291} :catchall_29d

    if-eqz v1, :cond_296

    :cond_293
    :goto_293
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_296
    const-string v0, "folder_data"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5f0

    :catchall_29d
    move-exception v0

    :goto_29e
    if-eqz v1, :cond_2a3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2a3
    throw v0

    :catchall_2a4
    move-exception v0

    move-object v1, v8

    :goto_2a6
    if-eqz v1, :cond_2ab

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2ab
    throw v0

    :pswitch_2ac  #0x11
    const-string/jumbo v2, "trying to load extra workspace."

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/layout/CustomLayoutHelper;->loadExtraWorkspaceAfterEnterLauncherDisabled()Z

    move-result v2

    if-eqz v2, :cond_2c3

    const-string v0, "disable to load extra workspace."

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5f0

    :cond_2c3
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setExtraLayoutLoading(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    :try_start_2cf
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher/layout/CustomLayoutHelper;->getInstance()Lcom/android/launcher/layout/CustomLayoutHelper;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4, v5, v2, v7}, Lcom/android/launcher/layout/CustomLayoutHelper;->getExtraLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/ExtraLayoutParser;

    move-result-object v2

    if-eqz v2, :cond_304

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2ee} :catch_2ef

    goto :goto_304

    :catch_2ef
    move-exception v0

    const-string v2, "error parsing extra layout "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_304
    :goto_304
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setExtraLayoutLoadedFlag(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/android/launcher/layout/LayoutPrefsUtils;->setExtraLayoutLoading(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    goto/16 :goto_5f0

    :pswitch_31d  #0x10
    if-eqz v9, :cond_5f0

    const-string/jumbo v0, "restore_started"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f0

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call METHOD_CLOUD_RECOVERY_STATUS_CHANGED, isStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-nez v1, :cond_34d

    const-string v0, "METHOD_CLOUD_RECOVERY_STATUS_CHANGED -- appState is null!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5f0

    :cond_34d
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusLauncherModel;->setCloudRecoveryState(Z)V

    goto/16 :goto_5f0

    :pswitch_356  #0xf
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f0

    new-instance v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f0

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "is_table_exist"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5f0

    :pswitch_37f  #0xe
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_3a0

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v2

    if-eqz v2, :cond_3a0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/k1;

    invoke-direct {v5, v0}, Lcom/android/launcher3/k1;-><init>(Lcom/android/launcher3/OplusLauncherProvider;)V

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomWidgetAdded(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_3a4

    :cond_3a0
    invoke-direct {v0, v8}, Lcom/android/launcher3/OplusLauncherProvider;->isWidgetAdd(Ljava/lang/String;)Z

    move-result v0

    :goto_3a4
    const-string/jumbo v1, "widget_is_added"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5f0

    :pswitch_3ac  #0xd
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/ota/AddCardManager;->getWeatherStepCardResId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v7

    if-eqz v7, :cond_3da

    iget-object v9, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v12, Lcom/android/launcher3/ExtraLayoutParser;

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getNewScreenId()I

    move-result v8

    move-object v2, v12

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/ExtraLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;II)V

    invoke-virtual {v9, v10, v12}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    :cond_3da
    invoke-static {v1}, Lcom/android/launcher3/ota/AddCardManager;->markAddWeatherStepCardDone(Landroid/content/Context;)V

    goto/16 :goto_5f0

    :pswitch_3df  #0xc
    if-eqz v9, :cond_475

    invoke-virtual {v9, v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v15, :cond_3f1

    const-string/jumbo v0, "not set the launcher model for create table!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v11

    :cond_3f1
    new-instance v4, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v4, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(I)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->screenTableName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v5, v2, v6, v7, v8}, Lcom/android/common/util/OplusLauncherDbUtils;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JZ)V

    invoke-static {v5, v4, v8}, Lcom/android/common/util/OplusLauncherDbUtils;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "METHOD_CREATE_SPECIFIC_TABLE_IF_NOT_EXIST: launcherMode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    sget-object v6, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-eq v4, v6, :cond_441

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    sget-object v6, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v4, v6, :cond_444

    :cond_441
    invoke-static {v5, v2}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->addRecommendFlagColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    :cond_444
    const-string v2, "create table successful! mode = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->flagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v11, v14, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5f0

    :cond_475
    const-string v0, "METHOD_CREATE_SPECIFIC_TABLE_IF_NOT_EXIST, extra is null, ignore it!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5f0

    :pswitch_47c  #0xb
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusLauncherProvider;->initDrawerDateFromStandard()V

    goto/16 :goto_561

    :pswitch_481  #0xa
    invoke-direct {v0, v8}, Lcom/android/launcher3/OplusLauncherProvider;->getShortcutIntents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "shortcut_intent_list"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v11

    :pswitch_48c  #0x9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusLauncherProvider;->getBindWidgetAppList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "call METHOD_REQUEST_GET_WIDGET_PKG_NAME, appBindWidget.size = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "package_name_list"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_5f0

    :pswitch_4ac  #0x8
    const/4 v1, 0x1

    invoke-direct {v0, v8, v6, v1, v6}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    move-result v0

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5f0

    :pswitch_4b6  #0x7
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_4dd

    sget-object v1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v1}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v2

    if-eqz v2, :cond_4dd

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/android/launcher3/m1;

    invoke-direct {v6, v0}, Lcom/android/launcher3/m1;-><init>(Lcom/android/launcher3/OplusLauncherProvider;)V

    new-instance v7, Lcom/android/launcher3/l1;

    invoke-direct {v7, v0}, Lcom/android/launcher3/l1;-><init>(Lcom/android/launcher3/OplusLauncherProvider;)V

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->requestAddOrDeleteBottomWidget(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZZLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_4e2

    :cond_4dd
    const/4 v1, 0x1

    invoke-direct {v0, v8, v1, v1, v6}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    move-result v0

    :goto_4e2
    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_5f0

    :pswitch_4e7  #0x6
    const/4 v1, 0x1

    if-eqz v9, :cond_5f0

    const-string/jumbo v2, "restore_result"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f0

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher/db/LauncherUpgradeHelper;->onLayoutDatabaseRestored(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Z)V

    goto/16 :goto_5f0

    :pswitch_504  #0x5
    if-eqz v9, :cond_516

    const-string/jumbo v1, "only_hot_seat"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v1, "screen_id"

    const/4 v2, -0x1

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_517

    :cond_516
    const/4 v1, -0x1

    :goto_517
    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0, v1, v6}, Lcom/android/common/util/OplusLauncherDbUtils;->deleteEmptyFolders(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;IZ)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_5f0

    :pswitch_526  #0x4
    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDBAllMode(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_5f0

    :pswitch_531  #0x3
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_5f0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-nez v1, :cond_5f0

    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initIds()V

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()I

    move-result v0

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->generateNewItemId()I

    move-result v0

    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5f0

    :pswitch_55e  #0x2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusLauncherProvider;->checkAndAddGlobalSearch()V

    :goto_561
    const/4 v0, 0x0

    return-object v0

    :pswitch_563  #0x1
    const-string v1, "limit_use_list"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIFY_LIMIT_APP: list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher/AppLimitedStartUpManager;->updateLimitAppList(Ljava/util/List;)V

    goto :goto_5f0

    :pswitch_589  #0x0
    if-eqz v9, :cond_5eb

    invoke-virtual {v9, v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v15, :cond_59a

    const-string v0, "METHOD_CLEAR_SPECIFIC_EMPTY_TABLE_FLAG_IF_NECESSARY not set the launcher model for create table!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5f0

    :cond_59a
    new-instance v4, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v4, v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(I)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object v1

    const-string v4, "clear empty table flag, clear mode:"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->mode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", launcherModeValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flag:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->flagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher/mode/AbsLauncherMode;->flagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    invoke-virtual {v11, v14, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5f0

    :cond_5eb
    const-string v0, "METHOD_CLEAR_SPECIFIC_EMPTY_TABLE_FLAG_IF_NECESSARY, extra is null, ignore it!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f0
    :goto_5f0
    return-object v11

    :cond_5f1
    :goto_5f1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    nop

    :sswitch_data_5f8
    .sparse-switch
        -0x7eef0896 -> :sswitch_171
        -0x7a8ded8c -> :sswitch_165
        -0x66232d52 -> :sswitch_15a
        -0x6405ccd4 -> :sswitch_151
        -0x616a3c53 -> :sswitch_146
        -0x52531c67 -> :sswitch_13b
        -0x4f88bdc6 -> :sswitch_130
        -0x49e75f8a -> :sswitch_124
        -0x49ab7802 -> :sswitch_115
        -0x43b2a47a -> :sswitch_106
        -0x38f60377 -> :sswitch_f7
        -0x358c774d -> :sswitch_e9
        -0xb666fdc -> :sswitch_db
        0xcc77ce2 -> :sswitch_cc
        0x136a1717 -> :sswitch_be
        0x26526c93 -> :sswitch_b0
        0x40faf598 -> :sswitch_a2
        0x477d3c45 -> :sswitch_93
        0x5867abe4 -> :sswitch_84
        0x7f6e608d -> :sswitch_78
    .end sparse-switch

    :pswitch_data_64a
    .packed-switch 0x0
        :pswitch_589  #00000000
        :pswitch_563  #00000001
        :pswitch_55e  #00000002
        :pswitch_531  #00000003
        :pswitch_526  #00000004
        :pswitch_504  #00000005
        :pswitch_4e7  #00000006
        :pswitch_4b6  #00000007
        :pswitch_4ac  #00000008
        :pswitch_48c  #00000009
        :pswitch_481  #0000000a
        :pswitch_47c  #0000000b
        :pswitch_3df  #0000000c
        :pswitch_3ac  #0000000d
        :pswitch_37f  #0000000e
        :pswitch_356  #0000000f
        :pswitch_31d  #00000010
        :pswitch_2ac  #00000011
        :pswitch_19d  #00000012
        :pswitch_18e  #00000013
    .end packed-switch
.end method

.method public checkAndAddGlobalSearch()V
    .registers 8

    const-string v0, "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherVertical"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusLauncherProvider;->getAppwidgetInfoFromDB(Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    const-string v2, "com.heytap.quicksearchbox/com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusLauncherProvider;->checkThisWidgetFromDB(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndAddGlobalSearch: ,weatherVeticalInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",isAllSearchInDB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",LauncherMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusLauncherProvider"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_53

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_53

    :cond_51
    move v4, v5

    goto :goto_54

    :cond_53
    :goto_53
    move v4, v6

    :goto_54
    if-nez v3, :cond_6d

    if-eqz v4, :cond_6d

    if-eqz v1, :cond_6a

    const-string v3, "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeather"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/OplusLauncherProvider;->checkThisWidgetFromDB(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/launcher/widget/GlobalSearchWidgetHelper;->changeVeticalWeatherWidget(Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/content/Context;)V

    goto :goto_6d

    :cond_6a
    invoke-direct {p0, v2, v6, v5, v6}, Lcom/android/launcher3/OplusLauncherProvider;->requestAddOrDeleteAppWidget(Ljava/lang/String;ZZZ)Z

    :cond_6d
    :goto_6d
    return-void
.end method

.method public checkThisWidgetFromDB(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->getAppwidgetInfoFromDB(Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v6, -0x1

    if-nez v1, :cond_e

    return v6

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "delete"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherProviderInjector;->printDbDeleteMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_1a
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    move-exception p0

    const-string p1, "delete: Exception error occurs."

    const-string p2, "OplusLauncherProvider"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return v6
.end method

.method public getAppwidgetInfoFromDB(Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 11

    iget-object p0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    :try_start_10
    const-string v0, "OplusLauncherProvider"

    const-string v2, "appWidgetProvider"

    const-string/jumbo v3, "screen"

    const-string v4, "cellX"

    const-string v5, "cellY"

    const-string/jumbo v6, "spanX"

    const-string/jumbo v7, "spanY"

    const-string v8, "container"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemType=5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_32
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_32} :catch_a7

    :try_start_32
    const-string/jumbo v1, "screen"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cellX"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cellY"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "spanX"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "spanY"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "container"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    :cond_59
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_97

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    new-instance p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>()V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I
    :try_end_93
    .catchall {:try_start_32 .. :try_end_93} :catchall_9b

    :try_start_93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catch Landroid/database/SQLException; {:try_start_93 .. :try_end_9a} :catch_a7

    goto :goto_be

    :catchall_9b
    move-exception p1

    if-eqz v0, :cond_a6

    :try_start_9e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception v0

    :try_start_a3
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a6
    :goto_a6
    throw p1
    :try_end_a7
    .catch Landroid/database/SQLException; {:try_start_a3 .. :try_end_a7} :catch_a7

    :catch_a7
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting widgets list, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusLauncherProvider"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_be
    :goto_be
    const/4 p0, 0x0

    return-object p0
.end method

.method public initializeMaxAppEditId(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 4

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "desktopappedit"

    aput-object v1, p0, v0

    const-string v0, "SELECT MAX(%1$s) FROM %2$s"

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "insert"

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/launcher3/LauncherProviderInjector;->printDbInsertMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getFlagOfEmptyDatabaseCreated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_10c

    if-nez v0, :cond_20

    monitor-exit p0

    return-void

    :cond_20
    :try_start_20
    const-string v0, "Widget"

    const-string v1, "OplusLauncherProvider"

    const-string v3, "loading default workspace"

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3e
    invoke-static {v1}, Lcom/android/launcher3/OplusLauncherProvider;->setLoadingFromDefaultXml(Z)V

    :cond_41
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherProvider;->createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v3

    if-nez v3, :cond_63

    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isPaiLayoutDisabled()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v2, v0, v3}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_63
    if-eqz v3, :cond_67

    if-gtz v2, :cond_a1

    :cond_67
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-virtual {v2}, Lcom/android/launcher3/Partner;->hasDefaultLayout()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-virtual {v2}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v4, "partner_default_layout"

    const-string/jumbo v5, "xml"

    invoke-virtual {v2}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9d

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-object v3, v2

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    move-object v3, v2

    :cond_9d
    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_a1
    if-eqz v3, :cond_a5

    if-gtz v2, :cond_b5

    :cond_a5
    sget-object v2, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher3/LauncherProviderInjector;->getLoaderFromLauncherLayoutApp(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_b5
    if-eqz v3, :cond_b9

    if-gtz v2, :cond_c1

    :cond_b9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/OplusLauncherProvider;->createEmptyDbAndLoadFavorites(Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    :cond_c1
    const-string v0, "Widget"

    const-string v3, "OplusLauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading default workspace count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherProviderInjector;->addSaleWidgetToLauncher(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLayoutRestore()Z

    move-result v0

    if-nez v0, :cond_10a

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isCloudRestore()Z

    move-result v0

    if-nez v0, :cond_10a

    invoke-static {}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->getSInstance()Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;->loadPreMarketInfos(Landroid/content/Context;ZI)V
    :try_end_10a
    .catchall {:try_start_20 .. :try_end_10a} :catchall_10c

    :cond_10a
    monitor-exit p0

    return-void

    :catchall_10c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate() this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherProvider"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/launcher3/LauncherProvider;->onCreate()Z

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher/db/LauncherUpgradeHelper;->moveDataFromCredentialStorageToDeviceStorage(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasReadPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance p0, Landroid/database/MatrixCursor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0

    :cond_15
    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherProviderInjector;->checkContainsPackageOrClassName([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12

    sget-object v0, Lcom/android/launcher3/LauncherProviderInjector;->INSTANCE:Lcom/android/launcher3/LauncherProviderInjector;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProviderInjector;->hasWritePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v6, v2, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const-string/jumbo v2, "update"

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/LauncherProviderInjector;->printDbUpdateMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
