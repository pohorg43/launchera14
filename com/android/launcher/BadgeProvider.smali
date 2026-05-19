.class public Lcom/android/launcher/BadgeProvider;
.super Landroid/content/ContentProvider;
.source ""

# interfaces
.implements Lcom/android/launcher/badge/BadgeDataProviderCompat$BadgeDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/BadgeProvider$BadgeItems;,
        Lcom/android/launcher/BadgeProvider$BadgeHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.badge"

.field private static final BADGES:I = 0x0

.field private static final BADGE_ID:I = 0x1

.field public static final DATABASE_NAME:Ljava/lang/String; = "badge.db"

.field private static final DOWNLOAD_ACTION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DOWNLOAD_INFO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLE_GET_DEEP_SHORT_CUT_BADGE_INTERFACE:Ljava/lang/String; = "enable_deep_shortcut_badge_interface"

.field private static final ERROR:I = -0x1

.field private static final EXTRA_APP_BADGE_COUNT:Ljava/lang/String; = "app_badge_count"

.field private static final EXTRA_APP_BADGE_PACKAGENAME:Ljava/lang/String; = "app_badge_packageName"

.field private static final EXTRA_APP_SHORTCUT_CUSTOM_ID:Ljava/lang/String; = "app_shortcut_custom_id"

.field private static final EXTRA_APP_USER_ID:Ljava/lang/String; = "app_user_id"

.field private static final EXTRA_DEEP_SHORT_CUT_BADGE_COUNT:Ljava/lang/String; = "deep_shortcut_badge_count"

.field private static final EXTRA_DEEP_SHORT_ID:Ljava/lang/String; = "deep_shortcut_id"

.field private static final METHOD_ENSURE_DEEP_SHORT_CUT_BADGE_INTERFACE:Ljava/lang/String; = "interfaceForShortcutEnable"

.field private static final METHOD_GET_APP_BADGE_COUNT:Ljava/lang/String; = "getAppBadgeCount"

.field private static final METHOD_GET_DEEP_SHORT_CUT_BADGE_COUNT:Ljava/lang/String; = "getDeepShortcutBadgeCount"

.field private static final METHOD_SET_APP_BADGE_COUNT:Ljava/lang/String; = "setAppBadgeCount"

.field private static final METHOD_SET_APP_RECOMMEND_PRE_ENABLE:Ljava/lang/String; = "setAppRecommendPreEnable"

.field private static final METHOD_SET_DEEP_SHORT_CUT_BADGE_COUNT:Ljava/lang/String; = "setDeepShortcutBadgeCount"

.field private static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field private static final PARAMETER_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final REQUEST_FEED_BACK:Ljava/lang/String; = "request_feed_back"

.field private static final SQL_WHERE_ID:Ljava/lang/String; = "_id=?"

.field public static final TABLE_NAME:Ljava/lang/String; = "badge"

.field private static final TAG:Ljava/lang/String; = "BadgeProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

.field private mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

.field private mDownloadStateProvider:Landroid/content/ContentProviderClient;

.field private mIsLauncherChannel:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.badge"

    const-string v2, "badge"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "badge/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloadinfos"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloadInstallApps"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    return-void
.end method

.method private dbInsertAndCheck(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "badge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-wide/16 v1, -0x1

    if-nez p3, :cond_13

    return-wide v1

    :cond_13
    iget-boolean v3, p0, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    if-nez v3, :cond_49

    const-string v3, "app_package_name"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    if-nez v4, :cond_49

    const-string p0, "Badge"

    const-string p1, "BadgeProvider"

    const-string p2, "in case security :bad guys may handle DB by illegal ways!"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_49
    const-string p0, "_id"

    invoke-virtual {p3, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_5a

    :cond_52
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error: attempting to add item without specifying an id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    :goto_5a
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getUserHandle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .registers 5

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "app_user_id"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x3e7

    if-ne p0, p1, :cond_22

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    :cond_22
    return-object v0
.end method

.method public static myUserSerialNumber(Landroid/content/Context;)J
    .registers 3

    if-nez p0, :cond_f

    const-string p0, "Badge"

    const-string v0, "BadgeProvider"

    const-string/jumbo v1, "myUserSerialNumber. The context is null!"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_f
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method private sendNotify(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string/jumbo v0, "notify"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_12
    if-eqz p2, :cond_24

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string/jumbo p1, "packageName"

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_24
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_46

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const v0, 0x8000

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_46
    return-void
.end method

.method private updateBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateAppBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;I)V

    goto :goto_12

    :cond_8
    const-string p0, "Badge"

    const-string p1, "BadgeProvider"

    const-string/jumbo p2, "updateAppBadgeNum -- mBadgeDataProviderCompat = null"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private updateBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateAppBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V

    goto :goto_12

    :cond_8
    const-string p0, "Badge"

    const-string p1, "BadgeProvider"

    const-string/jumbo p2, "updateBadgeNumForShortcut -- mBadgeDataProviderCompat = null"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private updateOrInsertBadgeCount(Ljava/lang/String;ILandroid/os/UserHandle;I)Z
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string/jumbo v5, "user_id"

    const-string v6, "Badge"

    const-string v7, "BadgeProvider"

    const/4 v8, 0x0

    if-gez v2, :cond_1b

    const-string/jumbo v0, "updateOrInsertBadgeCount badgeCount < 0"

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1b
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrInsertBadgeCount packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_37
    const/16 v9, 0x3e8

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v9, 0x0

    :try_start_3e
    iget-object v10, v1, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "app_package_name=\'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v12, "badge"

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_77} :catch_12c
    .catchall {:try_start_3e .. :try_end_77} :catchall_12a

    if-nez v10, :cond_85

    :try_start_79
    const-string/jumbo v0, "updateOrInsertBadgeCount query cursor = null"

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_127
    .catchall {:try_start_79 .. :try_end_7f} :catchall_124

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v8

    :cond_85
    const/4 v11, 0x1

    :try_start_86
    iput-boolean v11, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8c} :catch_127
    .catchall {:try_start_86 .. :try_end_8c} :catchall_124

    const-string v13, "app_package_name"

    const-string v14, "_id"

    const-string v15, "app_badge_count"

    if-lez v12, :cond_ef

    :try_start_94
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11e

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v2, v5, :cond_d7

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v12, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v12, v6, v5, v9}, Lcom/android/launcher/BadgeProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/launcher/BadgeProvider;->updateBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;I)V

    goto :goto_11e

    :cond_d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrInsertBadgeCount -- same badge count! dbBadgeCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    goto :goto_11e

    :cond_ef
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/BadgeProvider;->generateNewId()J

    move-result-wide v16

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v6, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher/BadgeProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/launcher/BadgeProvider;->updateBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_11e} :catch_127
    .catchall {:try_start_94 .. :try_end_11e} :catchall_124

    :cond_11e
    :goto_11e
    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v11

    :catchall_124
    move-exception v0

    move-object v9, v10

    goto :goto_148

    :catch_127
    move-exception v0

    move-object v9, v10

    goto :goto_12d

    :catchall_12a
    move-exception v0

    goto :goto_148

    :catch_12c
    move-exception v0

    :goto_12d
    :try_start_12d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOrInsertBadgeCount: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_142
    .catchall {:try_start_12d .. :try_end_142} :catchall_12a

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v8

    :goto_148
    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private updateOrInsertBadgeCountForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)Z
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string/jumbo v5, "user_id"

    const-string v6, "Badge"

    const-string v7, "BadgeProvider"

    const/4 v8, 0x0

    if-gez v2, :cond_1b

    const-string/jumbo v0, "updateOrInsertBadgeCountForShortcut badgeCount < 0"

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_1b
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrInsertBadgeCountForShortcut packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_37
    const/16 v9, 0x3e8

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v9, 0x0

    :try_start_3e
    iget-object v10, v1, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "app_package_name=\'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v12, "badge"

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_77} :catch_12c
    .catchall {:try_start_3e .. :try_end_77} :catchall_12a

    if-nez v10, :cond_85

    :try_start_79
    const-string/jumbo v0, "updateOrInsertBadgeCountForShortcut query cursor = null"

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_127
    .catchall {:try_start_79 .. :try_end_7f} :catchall_124

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v8

    :cond_85
    const/4 v11, 0x1

    :try_start_86
    iput-boolean v11, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8c} :catch_127
    .catchall {:try_start_86 .. :try_end_8c} :catchall_124

    const-string v13, "app_package_name"

    const-string v14, "_id"

    const-string v15, "app_badge_count"

    if-lez v12, :cond_ef

    :try_start_94
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11e

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v2, v5, :cond_d7

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v12, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v12, v6, v5, v9}, Lcom/android/launcher/BadgeProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/launcher/BadgeProvider;->updateBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V

    goto :goto_11e

    :cond_d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrInsertBadgeCountForShortcut -- same badge count! dbBadgeCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    goto :goto_11e

    :cond_ef
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/BadgeProvider;->generateNewId()J

    move-result-wide v16

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v6, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher/BadgeProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/launcher/BadgeProvider;->updateBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_11e} :catch_127
    .catchall {:try_start_94 .. :try_end_11e} :catchall_124

    :cond_11e
    :goto_11e
    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v10}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v11

    :catchall_124
    move-exception v0

    move-object v9, v10

    goto :goto_148

    :catch_127
    move-exception v0

    move-object v9, v10

    goto :goto_12d

    :catchall_12a
    move-exception v0

    goto :goto_148

    :catch_12c
    move-exception v0

    :goto_12d
    :try_start_12d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOrInsertBadgeCountForShortcut: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_142
    .catchall {:try_start_12d .. :try_end_142} :catchall_12a

    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v8

    :goto_148
    iput-boolean v8, v1, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 34
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", arg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BadgeProvider"

    invoke-static {v5, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "setAppBadgeCount"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "call packageName is not in badge support list, packageName = "

    const-string v7, "app_badge_packageName"

    const-string v8, ", badgeCount = "

    const-string v9, "call is shortcut, so return, extras: "

    const-string v10, "app_shortcut_custom_id"

    const-string v11, ", userHandle = "

    const-string v12, "call packageName = "

    const-string v13, "app_badge_count"

    const-string v14, "extras is null!"

    const-string v15, "Badge"

    if-eqz v4, :cond_c4

    if-eqz v3, :cond_c0

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e5

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher/BadgeProvider;->getUserHandle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7c

    move-object v1, v4

    :cond_7c
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v12, v1, v8, v4, v11}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/dot/DotUtils;->hasBadgeSupportPackagesUpdated()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-static {v1}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9f

    invoke-static {v6, v1, v15, v5}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e5

    :cond_9f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v0, v1, v4, v2, v6}, Lcom/android/launcher/BadgeProvider;->updateOrInsertBadgeCount(Ljava/lang/String;ILandroid/os/UserHandle;I)Z

    move-result v0

    if-nez v0, :cond_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call setAppBadgeCount failed, packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e5

    :cond_bf
    return-object v3

    :cond_c0
    invoke-static {v15, v5, v14}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    :cond_c4
    const-string/jumbo v4, "setAppRecommendPreEnable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_113

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_fe

    const-string v4, "enable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setAppStorePreEnable(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v8

    if-eqz v8, :cond_115

    sget-object v8, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v8, v4}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->enableFolderContentRecommend(Z)V

    goto :goto_115

    :cond_fe
    const-string v4, "Illegal calling package!"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v5, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115

    :cond_113
    :goto_113
    move-object/from16 v16, v8

    :cond_115
    :goto_115
    const-string v4, "getAppBadgeCount"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "="

    const-string/jumbo v2, "user_id"

    move-object/from16 v17, v5

    const-string v5, "\' AND "

    const-string v1, "getAppBadgeCount: exception: "

    move-object/from16 v18, v14

    const-string v14, "app_package_name=\'"

    move-object/from16 v19, v1

    const-string v1, "BadgeProvidergetAppBadgeCount"

    if-eqz v4, :cond_240

    if-eqz v3, :cond_234

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_14c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e5

    :cond_14c
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v9

    invoke-direct {v0, v4, v3}, Lcom/android/launcher/BadgeProvider;->getUserHandle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v9

    move-object/from16 v21, v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16d

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16d

    move-object v4, v7

    :cond_16d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/dot/DotUtils;->hasBadgeSupportPackagesUpdated()Z

    move-result v7

    if-eqz v7, :cond_1a5

    invoke-static {v4}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e5

    :cond_1a5
    :try_start_1a5
    iget-object v6, v0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v23, "badge"

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v22 .. v29}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1da} :catch_212
    .catchall {:try_start_1a5 .. :try_end_1da} :catchall_20f

    if-nez v4, :cond_1e3

    :try_start_1dc
    const-string/jumbo v0, "updateOrInsertBadgeCount query cursor = null"

    invoke-static {v15, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_229

    :cond_1e3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_203

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_209

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1ff} :catch_20d
    .catchall {:try_start_1dc .. :try_end_1ff} :catchall_22e

    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :cond_203
    :try_start_203
    const-string/jumbo v6, "there is no colums in DataBase --!  = "

    invoke-static {v1, v6}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_209} :catch_20d
    .catchall {:try_start_203 .. :try_end_209} :catchall_22e

    :cond_209
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_244

    :catch_20d
    move-exception v0

    goto :goto_215

    :catchall_20f
    move-exception v0

    const/4 v1, 0x0

    goto :goto_230

    :catch_212
    move-exception v0

    const/4 v2, 0x0

    move-object v4, v2

    :goto_215
    :try_start_215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v19

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_229
    .catchall {:try_start_215 .. :try_end_229} :catchall_22e

    :goto_229
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_3e5

    :catchall_22e
    move-exception v0

    move-object v1, v4

    :goto_230
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_234
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_248

    :cond_240
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    :goto_244
    move-object/from16 v4, v18

    move-object/from16 v6, v19

    :goto_248
    const-string/jumbo v7, "setDeepShortcutBadgeCount"

    move-object v9, v6

    move-object/from16 v6, p1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v10, "deep_shortcut_id"

    move-object/from16 v19, v9

    const-string v9, "deep_shortcut_badge_count"

    move-object/from16 v18, v13

    const-string v13, "BadgeProvidergetDeepShortcutBadgeCount"

    if-eqz v7, :cond_2e3

    if-eqz v3, :cond_2dd

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_279

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_279

    move-object v1, v2

    :cond_279
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v4, v16

    invoke-static {v12, v1, v4, v2, v11}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher/BadgeProvider;->updateOrInsertBadgeCountForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)Z

    move-result v0

    const-string/jumbo v2, "request_feed_back"

    if-nez v0, :cond_2ca

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call setDeepShortcutBadgeCount failed, packageName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v17

    invoke-static {v15, v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "false"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "setDeepShortcutBadgeCount failed!!"

    invoke-static {v15, v7, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2ca
    move-object/from16 v7, v17

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "setDeepShortcutBadgeCount successlly!!"

    invoke-static {v15, v7, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2dd
    move-object/from16 v7, v17

    invoke-static {v15, v7, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e5

    :cond_2e3
    move-object/from16 v7, v17

    :goto_2e5
    move-object/from16 v16, v4

    const-string v4, "getDeepShortcutBadgeCount"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f1

    if-eqz v3, :cond_3ec

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_30f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e5

    :cond_30f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_328

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_328

    move-object v4, v6

    :cond_328
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {v6, v10}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_349
    iget-object v1, v0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v21, "badge"

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v20 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_37e} :catch_3cc
    .catchall {:try_start_349 .. :try_end_37e} :catchall_3c9

    if-nez v1, :cond_387

    :try_start_380
    const-string/jumbo v0, "there is no colums in DataBase"

    invoke-static {v15, v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e2

    :cond_387
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3bd

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3c3

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeepShortcutBadgeCount value is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b9
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_3b9} :catch_3c7
    .catchall {:try_start_380 .. :try_end_3b9} :catchall_3e7

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :cond_3bd
    :try_start_3bd
    const-string/jumbo v2, "there is no colums in DataBase --!  = "

    invoke-static {v15, v13, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c3
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_3c3} :catch_3c7
    .catchall {:try_start_3bd .. :try_end_3c3} :catchall_3e7

    :cond_3c3
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3f1

    :catch_3c7
    move-exception v0

    goto :goto_3ce

    :catchall_3c9
    move-exception v0

    const/4 v1, 0x0

    goto :goto_3e8

    :catch_3cc
    move-exception v0

    const/4 v1, 0x0

    :goto_3ce
    :try_start_3ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e2
    .catchall {:try_start_3ce .. :try_end_3e2} :catchall_3e7

    :goto_3e2
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_3e5
    const/4 v0, 0x0

    return-object v0

    :catchall_3e7
    move-exception v0

    :goto_3e8
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_3ec
    move-object/from16 v2, v16

    invoke-static {v15, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f1
    :goto_3f1
    const-string v1, "interfaceForShortcutEnable"

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "enable_deep_shortcut_badge_interface"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "enable_deep_shortcut_badge_interface is enable"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_40c
    invoke-super/range {p0 .. p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "BadgeProvider"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5b

    if-eq v1, v4, :cond_5b

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1c

    goto/16 :goto_db

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_db

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_28
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v1, "oriCallingPackage"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_43} :catch_4b
    .catchall {:try_start_28 .. :try_end_43} :catchall_49

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, p0

    goto/16 :goto_db

    :catchall_49
    move-exception p0

    goto :goto_57

    :catch_4b
    move-exception p0

    :try_start_4c
    const-string/jumbo p1, "remote failed!"

    invoke-static {v2, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_49

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_db

    :goto_57
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5b
    if-ne v1, v4, :cond_6b

    new-array p3, v4, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v3

    const-string p2, "_id=?"

    :cond_6b
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    :try_start_72
    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher/BadgeProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_c6
    .catchall {:try_start_72 .. :try_end_76} :catchall_c4

    const/4 v6, -0x1

    if-nez v5, :cond_7f

    if-eqz v5, :cond_7e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7e
    return v6

    :cond_7f
    :try_start_7f
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_83} :catch_c2
    .catchall {:try_start_7f .. :try_end_83} :catchall_dc

    const-string v8, "Badge"

    if-lez v7, :cond_bb

    :try_start_87
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    const-string v7, "app_package_name"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a6

    move v3, v4

    :cond_a6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    if-nez v3, :cond_cd

    const-string v3, "in case security :bad guys may handle DB by illegal ways!"

    invoke-static {v8, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b7} :catch_c2
    .catchall {:try_start_87 .. :try_end_b7} :catchall_dc

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return v6

    :cond_bb
    :try_start_bb
    const-string/jumbo v3, "there is no colums in DataBase --!  = "

    invoke-static {v8, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c1} :catch_c2
    .catchall {:try_start_bb .. :try_end_c1} :catchall_dc

    goto :goto_cd

    :catch_c2
    move-exception v2

    goto :goto_c8

    :catchall_c4
    move-exception p0

    goto :goto_de

    :catch_c6
    move-exception v2

    move-object v5, v1

    :goto_c8
    :try_start_c8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_dc

    if-eqz v5, :cond_d0

    :cond_cd
    :goto_cd
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_d0
    const-string v2, "badge"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_db

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/BadgeProvider;->sendNotify(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_db
    :goto_db
    return v3

    :catchall_dc
    move-exception p0

    move-object v1, v5

    :goto_de
    if-eqz v1, :cond_e3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e3
    throw p0
.end method

.method public generateNewId()J
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {p0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    const-string/jumbo p0, "vnd.android.cursor.dir/downloadInstallApps"

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown URI: "

    invoke-static {v0, p1}, Landroidx/appcompat/widget/e;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const-string/jumbo p0, "vnd.android.cursor.dir/downloadinfos"

    return-object p0

    :cond_25
    const-string/jumbo p0, "vnd.android.cursor.item/badge"

    return-object p0

    :cond_29
    const-string/jumbo p0, "vnd.android.cursor.dir/badge"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "BadgeProvider"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal uri: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_3c
    iget-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_98

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_48
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v5, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v5, "oriCallingPackage"

    invoke-virtual {p1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_63} :catch_6a
    .catchall {:try_start_48 .. :try_end_63} :catchall_68

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p0

    goto :goto_99

    :catchall_68
    move-exception p0

    goto :goto_75

    :catch_6a
    move-exception p0

    :try_start_6b
    const-string/jumbo p1, "remote failed!"

    invoke-static {v2, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_68

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_98

    :goto_75
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_79
    const-string v0, "badge"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher/BadgeProvider;->dbInsertAndCheck(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_98

    const-string v0, "app_package_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_94
    invoke-direct {p0, p1, v1}, Lcom/android/launcher/BadgeProvider;->sendNotify(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_99

    :cond_98
    :goto_98
    move-object p1, v1

    :goto_99
    return-object p1
.end method

.method public onCreate()Z
    .registers 4

    const-string v0, "Badge"

    const-string v1, "BadgeProvider"

    const-string/jumbo v2, "onCreate badge database"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/BadgeProvider$BadgeHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/BadgeProvider$BadgeHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-static {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/BadgeProvider;->mBadgeDataProviderCompat:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Badge"

    const-string v6, "BadgeProvider"

    invoke-static {v5, v6, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_7f

    if-eq v2, v5, :cond_7f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a

    goto/16 :goto_b9

    :cond_3a
    iget-object v2, v0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v2, :cond_b9

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_46
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "oriCallingPackage"

    invoke-virtual {v1, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    iget-object v8, v0, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_69} :catch_70
    .catchall {:try_start_46 .. :try_end_69} :catchall_6e

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v7, v0

    goto :goto_b9

    :catchall_6e
    move-exception v0

    goto :goto_7b

    :catch_70
    move-exception v0

    :try_start_71
    const-string/jumbo v1, "remote failed!"

    invoke-static {v6, v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_6e

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b9

    :goto_7b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7f
    if-ne v2, v5, :cond_93

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "_id=?"

    move-object v7, v2

    move-object v6, v5

    goto :goto_97

    :cond_93
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    :goto_97
    const-string v2, "badge"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_b9

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b9

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_b9
    :goto_b9
    return-object v7
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 24
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/launcher/BadgeProvider;->mDbHelper:Lcom/android/launcher/BadgeProvider$BadgeHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "Badge"

    const-string v12, "BadgeProvider"

    invoke-static {v11, v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/BadgeProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v8}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_7b

    if-eq v0, v14, :cond_7b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    goto/16 :goto_136

    :cond_39
    iget-object v0, v7, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_136

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_45
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "com.android.launcher.download.DownloadStateProvider"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "oriCallingPackage"

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, v7, Lcom/android/launcher/BadgeProvider;->mDownloadStateProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v3, v0, v9, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_64} :catch_6b
    .catchall {:try_start_45 .. :try_end_64} :catchall_69

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_135

    :catchall_69
    move-exception v0

    goto :goto_77

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string/jumbo v3, "remote failed!"

    invoke-static {v12, v3, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_69

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_136

    :goto_77
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7b
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-ne v0, v14, :cond_92

    new-array v0, v14, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const-string v1, "_id=?"

    move-object v6, v0

    move-object v15, v1

    goto :goto_94

    :cond_92
    move-object v15, v4

    move-object v6, v5

    :goto_94
    const/4 v0, -0x1

    if-nez v9, :cond_98

    return v0

    :cond_98
    iget-boolean v1, v7, Lcom/android/launcher/BadgeProvider;->mIsLauncherChannel:Z

    const/16 v16, 0x0

    const-string v5, "app_package_name"

    if-nez v1, :cond_115

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v15

    move-object v13, v5

    move-object v5, v6

    move-object v14, v6

    move-object/from16 v6, v17

    :try_start_ad
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/BadgeProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b1} :catch_100
    .catchall {:try_start_ad .. :try_end_b1} :catchall_fe

    if-nez v1, :cond_b9

    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b8
    return v0

    :cond_b9
    :try_start_b9
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_f5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_108

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/util/PackageUtils;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_de

    const/16 v18, 0x1

    goto :goto_e0

    :cond_de
    const/16 v18, 0x0

    :goto_e0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    if-nez v18, :cond_108

    const-string v2, "in case security :bad guys may handle DB by illegal ways!"

    invoke-static {v11, v12, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_f1} :catch_fc
    .catchall {:try_start_b9 .. :try_end_f1} :catchall_10c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_f5
    :try_start_f5
    const-string/jumbo v0, "there is no colums in DataBase --!  = "

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fb} :catch_fc
    .catchall {:try_start_f5 .. :try_end_fb} :catchall_10c

    goto :goto_108

    :catch_fc
    move-exception v0

    goto :goto_103

    :catchall_fe
    move-exception v0

    goto :goto_10f

    :catch_100
    move-exception v0

    move-object/from16 v1, v16

    :goto_103
    :try_start_103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_10c

    if-eqz v1, :cond_117

    :cond_108
    :goto_108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_117

    :catchall_10c
    move-exception v0

    move-object/from16 v16, v1

    :goto_10f
    if-eqz v16, :cond_114

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_114
    throw v0

    :cond_115
    move-object v13, v5

    move-object v14, v6

    :cond_117
    :goto_117
    const-string v0, "badge"

    invoke-virtual {v10, v0, v9, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_135

    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_130

    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_130
    move-object/from16 v1, v16

    invoke-direct {v7, v8, v1}, Lcom/android/launcher/BadgeProvider;->sendNotify(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_135
    :goto_135
    move v13, v0

    :cond_136
    :goto_136
    return v13
.end method
