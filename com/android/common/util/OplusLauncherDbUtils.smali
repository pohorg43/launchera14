.class public Lcom/android/common/util/OplusLauncherDbUtils;
.super Lcom/android/launcher3/provider/LauncherDbUtils;
.source ""


# static fields
.field public static final DATABASE_NAME_4x4:Ljava/lang/String; = "launcher_4x4.db"

.field public static final DATABASE_NAME_5x4:Ljava/lang/String; = "launcher.db"

.field public static final OPLUS_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field public static final TABLE_NEWINSTALL:Ljava/lang/String; = "newinstall"

.field public static final TABLE_SINGLEDESKTOP_SHORTCUT_BLACKLIST:Ljava/lang/String; = "shortcutblacklist"

.field public static final TABLE_SINGLEDESKTOP_SHORTCUT_WHITELIST:Ljava/lang/String; = "shortcutwhitelist"

.field public static final TAG:Ljava/lang/String; = "DbUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/provider/LauncherDbUtils;-><init>()V

    return-void
.end method

.method public static addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JZ)V
    .registers 7

    if-eqz p4, :cond_5

    const-string p4, " IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p4, ""

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,iconPackage TEXT,iconResource TEXT,icon BLOB,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",rank INTEGER NOT NULL DEFAULT 0,options INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "appWidgetSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",user_id INTEGER NOT NULL DEFAULT 0,iconType INTEGER,card_type INTEGER NOT NULL DEFAULT -1,card_host_id INTEGER NOT NULL DEFAULT 1,service_id TEXT,card_category INTEGER NOT NULL DEFAULT -1,editable_attributes INTEGER DEFAULT 0,theme_card_identification INTEGER DEFAULT 0);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    .registers 6

    if-eqz p2, :cond_5

    const-string p2, " IF NOT EXISTS "

    goto :goto_7

    :cond_5
    const-string p2, ""

    :goto_7
    const-string v0, "CREATE TABLE "

    const-string v1, " ("

    const-string v2, "_id"

    invoke-static {v0, p2, p1, v1, v2}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " INTEGER PRIMARY KEY,"

    const-string/jumbo v0, "screenRank"

    const-string v1, " INTEGER,"

    const-string/jumbo v2, "modified"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, " INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    move-exception p0

    const/4 p1, 0x0

    const-string p2, "applyBatch exception: "

    const-string v0, "DbUtils"

    invoke-static {p2, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    :goto_19
    return p1
.end method

.method public static applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "com.android.launcher.settings"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static checkLauncherLockedAndToast(Landroid/content/Context;Landroid/view/View;)Z
    .registers 4

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_30

    if-nez p1, :cond_20

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p1, p0}, Lcom/android/common/util/ToastUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static clearWhiteListVersionData(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "shortcut_whitelist_version"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SELECT * FROM "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static createTableSingleDeskTopShortcutWhiteList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE shortcutwhitelist (_id INTEGER PRIMARY KEY,itemName TEXT,itemType INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/OplusLauncherDbUtils;->clearWhiteListVersionData(Landroid/content/Context;)V

    return-void
.end method

.method public static deleteEmptyFolders(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;IZ)Lcom/android/launcher3/util/IntArray;
    .registers 21

    move/from16 v0, p2

    const-string v1, "DbUtils"

    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    :try_start_d
    new-instance v13, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v13, v12}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_12} :catch_147

    :try_start_12
    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_136

    const-string v4, ")"

    const-string v5, " FROM "

    const-string v6, "SELECT "

    const-string v7, "("

    const-string v8, " NOT IN "

    const-string v10, "itemType"

    const-string v11, "container"

    const-string v15, "_id"

    const-string v9, " AND "

    move-object/from16 v16, v13

    const-string v13, " = "

    if-eqz v0, :cond_6d

    :try_start_33
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, -0x65

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catchall {:try_start_33 .. :try_end_66} :catchall_69

    move-object/from16 v17, v1

    goto :goto_a7

    :catchall_69
    move-exception v0

    move-object v3, v1

    goto/16 :goto_13a

    :cond_6d
    move-object/from16 v17, v1

    :try_start_6f
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "screen"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a7
    const-string v1, "DbUtils"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    move-object v4, v12

    move-object v5, v14

    invoke-static/range {v3 .. v11}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_bc
    .catchall {:try_start_6f .. :try_end_bc} :catchall_132

    const/4 v3, 0x0

    :try_start_bd
    invoke-static {v1, v3, v2}, Lcom/android/common/util/OplusLauncherDbUtils;->iterateCursor(Landroid/database/Cursor;ILcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntArray;
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_120

    if-eqz v1, :cond_cc

    :try_start_c2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    goto :goto_cc

    :catchall_c6
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v17

    goto/16 :goto_13b

    :cond_cc
    :goto_cc
    :try_start_cc
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_117

    const-string v3, "DbUtils"

    invoke-static {v15, v2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "METHOD_DELETE_SPECIFIC_SCREEN_EMPTY_FOLDERS"

    const/4 v9, 0x0

    move-object v4, v12

    move-object v5, v14

    invoke-static/range {v3 .. v9}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteEmptyFolders, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",id = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hotSeat = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ids = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_111
    .catchall {:try_start_cc .. :try_end_111} :catchall_132

    move-object/from16 v3, v17

    :try_start_113
    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    :cond_117
    move-object/from16 v3, v17

    :goto_119
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_11c
    .catchall {:try_start_113 .. :try_end_11c} :catchall_130

    :try_start_11c
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_11f
    .catch Landroid/database/SQLException; {:try_start_11c .. :try_end_11f} :catch_145

    goto :goto_153

    :catchall_120
    move-exception v0

    move-object/from16 v3, v17

    move-object v4, v0

    if-eqz v1, :cond_12f

    :try_start_126
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_12a

    goto :goto_12f

    :catchall_12a
    move-exception v0

    move-object v1, v0

    :try_start_12c
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12f
    :goto_12f
    throw v4
    :try_end_130
    .catchall {:try_start_12c .. :try_end_130} :catchall_130

    :catchall_130
    move-exception v0

    goto :goto_13a

    :catchall_132
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_13a

    :catchall_136
    move-exception v0

    move-object v3, v1

    move-object/from16 v16, v13

    :goto_13a
    move-object v1, v0

    :goto_13b
    :try_start_13b
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_13f

    goto :goto_144

    :catchall_13f
    move-exception v0

    move-object v4, v0

    :try_start_141
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_144
    throw v1
    :try_end_145
    .catch Landroid/database/SQLException; {:try_start_141 .. :try_end_145} :catch_145

    :catch_145
    move-exception v0

    goto :goto_149

    :catch_147
    move-exception v0

    move-object v3, v1

    :goto_149
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->clear()V

    :goto_153
    return-object v2
.end method

.method public static deleteLauncherDB(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, "launcher.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "launcher_4x4.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_14

    :cond_d
    const-string p0, "DbUtils"

    const-string v0, "deleteLauncherDB context = null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method public static dumpDataBase(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/backup/statistics/BRShortStatistics;->INSTANCE:Lcom/android/launcher/backup/statistics/BRShortStatistics;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/backup/statistics/BRShortStatistics;->recordDbGridData(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    const-string p1, "getApplicationEnabledSetting Exception: "

    const-string v0, "DbUtils"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static getCurrentAppEditTable()Ljava/lang/String;
    .registers 1

    const-string v0, "desktopappedit"

    return-object v0
.end method

.method public static getCurrentItemTable()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getItemTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentItemTableContentUri(J)Landroid/net/Uri;
    .registers 4

    const-string v0, "content://com.android.launcher.settings/"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentScreenTable()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getScreenTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemTable(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getItemTableUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;
    .registers 3

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    const-string p1, "content://com.android.launcher.settings/"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->itemTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenIdsFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;
    .registers 10

    if-eqz p0, :cond_5b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p2

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2b

    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/android/common/util/OplusLauncherDbUtils;->iterateCursor(Landroid/database/Cursor;ILcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntArray;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_33
    .catchall {:try_start_12 .. :try_end_27} :catchall_31

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_2b
    if-eqz p0, :cond_5b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_5b

    :catchall_31
    move-exception p1

    goto :goto_55

    :catch_33
    move-exception p1

    :try_start_34
    const-string p2, "DbUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenIdsFromUri -- e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntArray;-><init>()V
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_31

    if-eqz p0, :cond_54

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_54
    return-object p1

    :goto_55
    if-eqz p0, :cond_5a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw p1

    :cond_5b
    :goto_5b
    new-instance p0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    return-object p0
.end method

.method public static getScreenTable(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    invoke-direct {v0, p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->mode(Lcom/android/launcher/mode/LauncherMode;)Lcom/android/launcher/mode/AbsLauncherMode$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode$Builder;->build()Lcom/android/launcher/mode/AbsLauncherMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->screenTableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initializeMaxId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 12

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT MAX(_id) FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_3e
    .catchall {:try_start_3 .. :try_end_25} :catchall_3c

    goto :goto_27

    :cond_26
    move-wide v3, v0

    :goto_27
    cmp-long v0, v3, v0

    if-eqz v0, :cond_2f

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5c

    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: could not query favorites max id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3c

    :catch_37
    move-exception v0

    move-wide v7, v3

    move-object v3, v0

    move-wide v0, v7

    goto :goto_3f

    :catchall_3c
    move-exception p0

    goto :goto_5d

    :catch_3e
    move-exception v3

    :goto_3f
    :try_start_3f
    const-string v4, "DbUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeMaxId --- e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/common/util/OplusLauncherDbUtils;->resetDatabaseIfTableNotExist(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_3c

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-wide v3, v0

    :goto_5c
    return-wide v3

    :goto_5d
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isColumnExist. tableName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , columnName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DbUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_27

    const-string p0, "isColumnExist. The db is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_27
    const/4 v2, 0x0

    :try_start_28
    const-string v3, "DbUtils"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "1"

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v3 .. v12}, Lcom/android/launcher/db/DbTracker;->query(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3e} :catch_49
    .catchall {:try_start_28 .. :try_end_3e} :catchall_47

    const/4 p1, -0x1

    if-eq p0, p1, :cond_43

    const/4 p0, 0x1

    move v0, p0

    :cond_43
    :goto_43
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5f

    :catchall_47
    move-exception p0

    goto :goto_60

    :catch_49
    move-exception p0

    :try_start_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isColumnExist. e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_47

    goto :goto_43

    :goto_5f
    return v0

    :goto_60
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static isTableExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    invoke-static {p0}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "isTableExist"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_21

    const-string v0, "is_table_exist"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p1, 0x1

    :cond_21
    return p1
.end method

.method public static iterateCursor(Landroid/database/Cursor;ILcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntArray;
    .registers 4

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    goto :goto_0

    :cond_e
    return-object p2
.end method

.method public static removeNewInstallTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "DROP TABLE IF EXISTS newinstall"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static removeTableSingleDeskTopShortcutBlackList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS shortcutblacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz p0, :cond_18

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "shortcut_blacklist_version"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_18
    return-void
.end method

.method public static removeTableSingleDeskTopShortcutWhiteList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS shortcutwhitelist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz p0, :cond_18

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "shortcut_whitelist_version"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_18
    return-void
.end method

.method private static resetDatabaseIfTableNotExist(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {p0}, Lcom/android/common/util/OplusLauncherDbUtils;->deleteLauncherDB(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_10
    return-void
.end method

.method public static updateFavoritesContentUri()V
    .registers 2

    const-string v0, "content://com.android.launcher.settings/"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static updateScreenContentUri()V
    .registers 2

    const-string v0, "content://com.android.launcher.settings/"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentScreenTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
