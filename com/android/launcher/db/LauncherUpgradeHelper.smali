.class public final Lcom/android/launcher/db/LauncherUpgradeHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherUpgradeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherUpgradeHelper.kt\ncom/android/launcher/db/LauncherUpgradeHelper\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,1345:1\n1313#2,2:1346\n*S KotlinDebug\n*F\n+ 1 LauncherUpgradeHelper.kt\ncom/android/launcher/db/LauncherUpgradeHelper\n*L\n929#1:1346,2\n*E\n"
    }
.end annotation


# static fields
.field private static final INSTALLED_LOCATION:Ljava/lang/String;

.field public static final INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

.field public static final ITEM_TYPE_AUTO_INSTALL:I = 0x66

.field private static final ITEM_TYPE_NEW_INSTALLING_APP:I = 0x64

.field private static final ITEM_TYPE_UPDATING_APP:I = 0x65

.field public static final LAUNCHER_SHARED_PREFS:Ljava/lang/String; = "com.android.launcher_unique_shared_prefs"

.field public static final SHORTCUT_SHARED_PREFS:Ljava/lang/String; = "com.android.launcher_shortcut_setting_prefs"

.field private static final TAG:Ljava/lang/String; = "LauncherUpgradeHelper"

.field public static final WALLPAPERS:Ljava/lang/String; = "wallpapers_share_pref"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v0}, Lcom/android/launcher/db/LauncherUpgradeHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string/jumbo v0, "modelState"

    sput-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTALLED_LOCATION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addCardHostColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const-string p0, "OplusLauncherProvider"

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string v0, "card_host_id"

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ADD COLUMN card_host_id INTEGER;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCardHostColumn: successful. tableName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_4a

    goto :goto_4f

    :catchall_4a
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_4f
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    :try_start_5c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_62

    goto :goto_67

    :catchall_62
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_67
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_72

    const-string p2, "addCardHostColumn e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_72
    return v1
.end method

.method private final addCardTypeColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const-string p0, "OplusLauncherProvider"

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string v0, "card_type"

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ADD COLUMN card_type INTEGER;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCardTypeColumn: addCardTypeColumn successful. tableName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_4a

    goto :goto_4f

    :catchall_4a
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_4f
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    :try_start_5c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_62

    goto :goto_67

    :catchall_62
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_67
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_72

    const-string p2, "addCardTypeColumn e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_72
    return v1
.end method

.method private final addCategoryColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const-string p0, "OplusLauncherProvider"

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string v0, "card_category"

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ADD COLUMN card_category INTEGER DEFAULT -1;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCategoryColumn: addCategoryColumn successful. tableName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_4a

    goto :goto_4f

    :catchall_4a
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_4f
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    :try_start_5c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_62

    goto :goto_67

    :catchall_62
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_67
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_72

    const-string p2, "addCategoryColumn e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_72
    return v1
.end method

.method private final addCategoryColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ALTER TABLE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD COLUMN category INTEGER DEFAULT -1;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_27
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "DbUtils"

    if-eqz p0, :cond_36

    const/4 v0, 0x0

    const-string v1, "addCategoryColumns e = "

    invoke-static {v1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    const/4 v0, 0x1

    :goto_37
    :try_start_37
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_42

    :catchall_3d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_42
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4d

    const-string p1, "addCategoryColumns e1 = "

    invoke-static {p1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4d
    return v0
.end method

.method private final addDeleteColumnsForFavorite(Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 9

    const-string p0, "UPDATE "

    const-string v0, "LauncherUpgradeHelper"

    const-string v1, "_tmp"

    invoke-static {p3, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_b
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v3

    invoke-static {p2, v1, v3, v4, v2}, Lcom/android/common/util/OplusLauncherDbUtils;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JZ)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_b1

    :try_start_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SET intent = packageName || \'/\' || className WHERE (itemType =5);"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2c

    goto :goto_31

    :catchall_2c
    move-exception p1

    :try_start_2d
    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_31
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDeleteColumnsForFavorite, update widget intent fail! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (_id, title, intent, container, screen, cellX, cellY, spanX, spanY, itemType, appWidgetId, iconPackage, iconResource, icon, restored, rank, iconType, user_id) SELECT _id, title, intent, container, screenId, cellX, cellY, spanX, spanY, itemType, appWidgetId, iconPackage, iconResource, icon, restored, rank, iconType, user_id FROM "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " SET appWidgetProvider = intent, intent = null WHERE (itemType =5);"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DROP TABLE IF EXISTS "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ALTER TABLE "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rename to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_b0
    .catchall {:try_start_2d .. :try_end_b0} :catchall_b1

    goto :goto_b6

    :catchall_b1
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_b6
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c2

    const-string p1, "addDeleteColumnsForFavorite e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_c2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addDeleteColumnsForFavorite: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private final addDownloadAppColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    const-string p0, "ALTER TABLE "

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN installSource TEXT;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ADD COLUMN installState INTEGER DEFAULT -1;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "DbUtils"

    if-eqz p0, :cond_4d

    const/4 v0, 0x0

    const-string v1, "addDownloadColumns e = "

    invoke-static {v1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x1

    :goto_4e
    :try_start_4e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_54

    goto :goto_59

    :catchall_54
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_59
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_64

    const-string p1, "addDownloadAppColumns e1 = "

    invoke-static {p1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_64
    return v0
.end method

.method private final addEditableAttributesColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7

    const-string p0, "ALTER TABLE "

    const-string v0, "OplusLauncherProvider"

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    const-string v1, "editable_attributes"

    invoke-static {p1, p2, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    const-string/jumbo v1, "theme_card_identification"

    invoke-static {p1, p2, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_92

    :cond_1e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN editable_attributes INTEGER DEFAULT 0;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ADD COLUMN theme_card_identification INTEGER DEFAULT 0;"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEditableAttributesColumn: addEditableAttributesColumn successful. tableName = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_69
    .catchall {:try_start_21 .. :try_end_69} :catchall_6a

    goto :goto_6f

    :catchall_6a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_6f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7c

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7c
    :try_start_7c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_82

    goto :goto_87

    :catchall_82
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_87
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_92

    const-string p1, "addEditableAttributesColumn e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_92
    :goto_92
    return v2
.end method

.method private final addIconAndLabelEditedColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7

    const-string p0, "ALTER TABLE "

    const-string v0, "OplusLauncherProvider"

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    const-string v1, "icon_status"

    invoke-static {p1, p2, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    const-string/jumbo v1, "tittle_status"

    invoke-static {p1, p2, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_92

    :cond_1e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN icon_status INTEGER DEFAULT 0;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ADD COLUMN tittle_status INTEGER DEFAULT 0;"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addIconAndLabelEditedColumn:  successful. tableName = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_69
    .catchall {:try_start_21 .. :try_end_69} :catchall_6a

    goto :goto_6f

    :catchall_6a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_6f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7c

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7c
    :try_start_7c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_82

    goto :goto_87

    :catchall_82
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_87
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_92

    const-string p1, "addIconAndLabelEditedColumn e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_92
    :goto_92
    return v2
.end method

.method private final addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addIntegerColumn already exist "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherUpgradeHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    new-instance p0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {p0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD COLUMN "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x3b

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_53

    invoke-static {p0, v0}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_53
    move-exception p1

    :try_start_54
    throw p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p2

    invoke-static {p0, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final addProfileIdColumn(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 8

    const-string/jumbo p0, "updateFolderItemsRank e = "

    const-string v0, "DbUtils"

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_8
    invoke-static {p1}, Lcom/android/launcher/BadgeProvider;->myUserSerialNumber(Landroid/content/Context;)J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p3, 0x3b

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE newinstall ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_47} :catch_5f
    .catchall {:try_start_8 .. :try_end_47} :catchall_5d

    const/4 p1, 0x1

    :try_start_48
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_4e

    goto :goto_53

    :catchall_4e
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_53
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5c

    invoke-static {p0, p2, v0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5c
    return p1

    :catchall_5d
    move-exception p1

    goto :goto_7d

    :catch_5f
    move-exception p1

    :try_start_60
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_5d

    const/4 p1, 0x0

    :try_start_68
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_6e

    goto :goto_73

    :catchall_6e
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_73
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7c

    invoke-static {p0, p2, v0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7c
    return p1

    :goto_7d
    :try_start_7d
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_83

    goto :goto_88

    :catchall_83
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_88
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_91

    invoke-static {p0, p2, v0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_91
    throw p1
.end method

.method private final addRecommendFlagColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const-string/jumbo p0, "recommendId"

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    return v0

    :cond_12
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD COLUMN recommendId INTEGER DEFAULT -1;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/4 v0, 0x1

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_35

    goto :goto_3a

    :catchall_35
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "DbUtils"

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    :try_start_49
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4f

    goto :goto_54

    :catchall_4f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_54
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5f

    const-string p1, "addRecommendFlagColumn e = "

    invoke-static {p1, p0, p2}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5f
    return v0
.end method

.method private final addRestoredColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ALTER TABLE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD COLUMN restored INTEGER DEFAULT 0;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_27
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "DbUtils"

    if-eqz p0, :cond_36

    const/4 v0, 0x0

    const-string v1, "addRestoreColumns e = "

    invoke-static {v1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    const/4 v0, 0x1

    :goto_37
    :try_start_37
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_42

    :catchall_3d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_42
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4d

    const-string p1, "addRestoreColumns e1 = "

    invoke-static {p1, p0, p2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4d
    return v0
.end method

.method private final addServiceIdColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const-string p0, "OplusLauncherProvider"

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string/jumbo v0, "service_id"

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->isFieldExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ADD COLUMN service_id TEXT;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addServiceIdColumn: addServiceIdColumn successful. tableName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_50
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :try_start_5d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_63

    goto :goto_68

    :catchall_63
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_68
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_73

    const-string p2, "addServiceIdColumn e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_73
    return v1
.end method

.method private final addUserIdColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD COLUMN user_id INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE newinstall ADD COLUMN user_id INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/4 p0, 0x1

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_2e
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    const-string v0, "DbUtils"

    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :try_start_3d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    goto :goto_48

    :catchall_43
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_48
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_53

    const-string p2, "addUserIdColumn e = "

    invoke-static {p2, p1, v0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_53
    return p0
.end method

.method private final deleteNewInstallingApp(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    const-string/jumbo p0, "singledesktopitems"

    invoke-static {p1, p0}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x5

    if-eqz p0, :cond_1c

    const/4 v5, 0x0

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "LauncherUpgradeHelper"

    const-string/jumbo v3, "singledesktopitems"

    const-string v4, "itemType=100"

    const-string v6, "deleteNewInstallingApp singledesktopitems"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const-string/jumbo p0, "singledesktopitems_draw"

    invoke-static {p1, p0}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "LauncherUpgradeHelper"

    const-string/jumbo v3, "singledesktopitems_draw"

    const-string v4, "itemType=100"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method private final deleteUselessColumnsForSingleDesktopItems(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_tmp"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_id, title, intent, packageName, className, container, screenId, cellX, cellY, spanX, spanY, rank, itemType, appWidgetId, iconType, iconPackage, iconResource, icon, modelState, user_id, installSource, installState"

    sget-object v1, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-virtual {v1, p3, p0}, Lcom/android/launcher/db/LauncherUpgradeHelper;->createTmpTableSingleDeskTopItemsForUpgradeTo34(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " rename to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_6f

    goto :goto_74

    :catchall_6f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_74
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_96

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteUselessColumnsForSingleDesktopItems e = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p4, "DbUtils"

    invoke-static {p4, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/OplusLauncherDbUtils;->deleteLauncherDB(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_96
    return-void
.end method

.method private final getAppInstalledLocation(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_5
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p2, 0x40000

    and-int/2addr p0, p2

    if-eqz p0, :cond_11

    const/4 p1, 0x1

    :cond_11
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    goto :goto_19

    :catchall_14
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_19
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_26

    const-string p2, " Exception: "

    const-string v0, "LauncherUpgradeHelper"

    invoke-static {p2, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_26
    return p1
.end method

.method private static synthetic getINSTALLED_LOCATION$annotations()V
    .registers 0

    return-void
.end method

.method private final handleUpgradeForExp(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .registers 7

    const/16 v0, 0x1a

    if-ge p5, v0, :cond_11

    const-string/jumbo p5, "profileId"

    invoke-static {p3, p4, p5}, Lcom/android/common/util/OplusLauncherDbUtils;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_10

    invoke-direct {p0, p1, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addProfileIdColumn(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    :cond_10
    move p5, v0

    :cond_11
    const/16 p1, 0x1f

    if-ge p5, p1, :cond_1d

    const/4 p5, 0x1

    invoke-virtual {p2, p3, p5}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    invoke-direct {p0, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addUserIdColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move p5, p1

    :cond_1d
    return p5
.end method

.method private final varargs handleUpgradeToVersion39(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3d

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addCardTypeColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SET card_type = -1 where card_type is null;"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_28

    goto :goto_2d

    :catchall_28
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_2d
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3a

    const-string v3, "handleUpgradeToVersion39 e = "

    const-string v4, "OplusLauncherProvider"

    invoke-static {v3, v2, v4}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3d
    const/16 p0, 0x27

    return p0
.end method

.method private final varargs handleUpgradeToVersion40(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3d

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addCardHostColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SET card_host_id = 1 where card_host_id is null;"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_28

    goto :goto_2d

    :catchall_28
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_2d
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3a

    const-string v3, "handleUpgradeToVersion40 e = "

    const-string v4, "OplusLauncherProvider"

    invoke-static {v3, v2, v4}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3d
    const/16 p0, 0x28

    return p0
.end method

.method private final handleUpgradeToVersion50(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 9

    invoke-static {}, Lcom/android/launcher/mode/LauncherMode;->values()[Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-static {p0}, Li4/k;->n([Ljava/lang/Object;)Lj7/h;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/db/LauncherUpgradeHelper$handleUpgradeToVersion50$1;

    invoke-direct {v0, p1}, Lcom/android/launcher/db/LauncherUpgradeHelper$handleUpgradeToVersion50$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    new-instance p1, Lcom/android/launcher/db/LauncherUpgradeHelper$handleUpgradeToVersion50$2;

    invoke-direct {p1, p2}, Lcom/android/launcher/db/LauncherUpgradeHelper$handleUpgradeToVersion50$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p0, p1}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    check-cast p0, Lj7/e;

    new-instance p1, Lj7/e$a;

    invoke-direct {p1, p0}, Lj7/e$a;-><init>(Lj7/e;)V

    :goto_21
    invoke-virtual {p1}, Lj7/e$a;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_55

    invoke-virtual {p1}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string/jumbo v1, "tableName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    const-string v3, "appWidgetSource"

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db upgrade column added for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherUpgradeHelper"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_55
    const/16 p0, 0x32

    return p0
.end method

.method private final varargs handleUpgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I
    .registers 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addServiceIdColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    const/16 p0, 0x33

    return p0
.end method

.method private final handleUpgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 3

    sget-object p0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbCreateAppEditTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    const/16 p0, 0x34

    return p0
.end method

.method private final handleUpgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addIconAndLabelEditedColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    const/16 p0, 0x35

    return p0
.end method

.method private final varargs handleUpgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I
    .registers 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addCategoryColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    const/16 p0, 0x3c

    return p0
.end method

.method private final handleUpgradeToVersion76(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 3

    sget-object p0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {p0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->dbCreateMarketRecommendTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p0

    const-string p1, "handleUpgradeToVersion76 "

    const-string v0, "LauncherUpgradeHelper"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 p0, 0x4c

    return p0
.end method

.method private final varargs handleUpgradeToVersion77(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I
    .registers 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addEditableAttributesColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    const/16 p0, 0x4d

    return p0
.end method

.method private final modifyDockBarIconScreenId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDATE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SET screenId = cellX WHERE container =-101 AND screenId = 999;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_21

    :catchall_1c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_21
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2f

    const-string/jumbo p1, "modifyDockBarIconScreenId e = "

    const-string p2, "LauncherUpgradeHelper"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method private final modifySingleDesktopItemsScreenId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string/jumbo p0, "screenId"

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "screenNum"

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_41

    if-eqz v2, :cond_3c

    :try_start_18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v1, v4, [I

    move v4, v0

    :goto_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    goto :goto_2c

    :cond_3c
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_3f

    goto :goto_48

    :catchall_3f
    move-exception v3

    goto :goto_44

    :catchall_41
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_44
    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_48
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "LauncherUpgradeHelper"

    if-eqz v3, :cond_56

    const-string/jumbo v5, "modifySingleDesktopItemsScreenId e = "

    invoke-static {v5, v3, v4}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_56
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v1, :cond_ad

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modifySingleDesktopItemsScreenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length p3, v1

    :goto_79
    if-ge v0, p3, :cond_ad

    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "LauncherUpgradeHelper"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v9}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_ad
    return-void
.end method

.method private final processFavoriteTable(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processFavoriteTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DbUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->updateItemRestoredForAutoInstall(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->updateIconForAutoInstall(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->resetIntentAndItemtype(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/android/launcher/db/LauncherUpgradeHelper;->modifySingleDesktopItemsScreenId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->updateItemScreenIdInFolders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->modifyDockBarIconScreenId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addDeleteColumnsForFavorite(Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    return-void
.end method

.method private final processWorkspaceScreensTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const-string p0, "DROP TABLE IF EXISTS "

    const-string v0, "_tmp"

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE if not exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (_id INTEGER PRIMARY KEY,screenRank INTEGER,modified INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (_id, screenRank) SELECT screenNum, screenNum FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rename to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_85
    .catchall {:try_start_8 .. :try_end_85} :catchall_86

    goto :goto_8b

    :catchall_86
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_8b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "LauncherUpgradeHelper"

    if-eqz p0, :cond_99

    const-string/jumbo v0, "processWorkspaceScreensTable e = "

    invoke-static {v0, p0, p2}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_99
    :try_start_99
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_9f

    goto :goto_a4

    :catchall_9f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_a4
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_b0

    const-string/jumbo p1, "processWorkspaceScreensTable e1 = "

    invoke-static {p1, p0, p2}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b0
    const/4 p0, 0x1

    return p0
.end method

.method private final removeItemFromDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    if-eqz p3, :cond_b2

    const/4 p0, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "className=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p3}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    if-eqz p0, :cond_97

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "itemType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "container"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "screen"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cellX"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellY"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v1, p4, :cond_97

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int p4, v0

    iput p4, p3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    iput p4, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    iput p4, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    iput p4, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    iput p4, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "LauncherUpgradeHelper"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 p4, 0x5

    invoke-static {p4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_97

    sget-object p4, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/launcher/db/LauncherUpgradeHelper;->resetIconLocationWhenItemRemoved(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_97
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_99
    .catchall {:try_start_4 .. :try_end_99} :catchall_9a

    goto :goto_9f

    :catchall_9a
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_9f
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_ad

    const-string/jumbo p2, "removeItemFromDefaultWorkspace, e = "

    const-string p3, "LauncherUpgradeHelper"

    invoke-static {p2, p1, p3}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_ad
    if-eqz p0, :cond_b2

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :cond_b2
    return-void
.end method

.method private final resetIconLocationWhenItemRemoved(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 31

    move-object/from16 v0, p3

    if-eqz v0, :cond_1be

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v1, :cond_1be

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-gez v2, :cond_e

    goto/16 :goto_1be

    :cond_e
    const/16 v3, 0x3e7

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-eq v4, v3, :cond_1be

    const/4 v3, 0x0

    :try_start_15
    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v4

    const-string v12, "cellY, cellX"

    iget v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_19c

    const/16 v6, -0x64

    const-string v13, "_id="

    const/4 v7, 0x2

    const/4 v14, 0x5

    const-string v15, "cellY"

    const-string v11, "cellX"

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_5b

    const/4 v9, 0x0

    :try_start_2d
    const-string v10, "container=? and screen=?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v16

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v18, v7

    move-object v7, v9

    move-object v8, v10

    move-object/from16 v9, v18

    move-object v10, v0

    move-object v0, v11

    move-object/from16 v11, v17

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object/from16 v17, v3

    move-object/from16 v18, v17

    move-object v3, v5

    goto/16 :goto_124

    :cond_5b
    const/16 v19, 0x0

    const-string v20, "container=? "

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v16

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v21, v6

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17
    :try_end_77
    .catchall {:try_start_2d .. :try_end_77} :catchall_19c

    if-eqz v17, :cond_121

    :try_start_79
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_121

    const/16 v20, 0x0

    const-string v21, "_id=? "

    new-array v5, v8, [Ljava/lang/String;

    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v22, v5

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_9d
    .catchall {:try_start_79 .. :try_end_9d} :catchall_119

    if-eqz v10, :cond_115

    :try_start_9f
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_115

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v5, "container"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v18, "LauncherUpgradeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    invoke-static/range {v18 .. v24}, Lcom/android/launcher/db/DbTracker;->delete(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_115

    const/4 v9, 0x0

    const-string v18, "container=? and screen=?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v16

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8
    :try_end_f7
    .catchall {:try_start_9f .. :try_end_f7} :catchall_110

    const/4 v0, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v20, v7

    move-object v7, v9

    move-object/from16 v8, v18

    move-object/from16 v9, v20

    move-object/from16 v18, v10

    move-object v10, v0

    move-object v0, v11

    move-object/from16 v11, v19

    :try_start_10b
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_124

    :catchall_110
    move-exception v0

    move-object/from16 v18, v10

    :goto_113
    move-object v1, v3

    goto :goto_11d

    :cond_115
    move-object/from16 v18, v10

    move-object v0, v11

    goto :goto_124

    :catchall_119
    move-exception v0

    move-object v1, v3

    move-object/from16 v18, v1

    :goto_11d
    move-object/from16 v3, v17

    goto/16 :goto_1a0

    :cond_121
    move-object v0, v11

    move-object/from16 v18, v3

    :goto_124
    if-eqz v3, :cond_196

    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "itemType"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    :cond_13a
    :goto_13a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_196

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eq v9, v14, :cond_13a

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-gt v11, v2, :cond_158

    if-ne v11, v2, :cond_13a

    if-le v10, v1, :cond_13a

    :cond_158
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "LauncherUpgradeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, v10

    invoke-static/range {v19 .. v26}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_13a

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v16

    goto :goto_13a

    :cond_196
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_198
    .catchall {:try_start_10b .. :try_end_198} :catchall_199

    goto :goto_1a7

    :catchall_199
    move-exception v0

    goto/16 :goto_113

    :catchall_19c
    move-exception v0

    move-object v1, v3

    move-object/from16 v18, v1

    :goto_1a0
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v3

    move-object v3, v1

    :goto_1a7
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1b5

    const-string/jumbo v1, "resetIconLocationWhenAppIconRemoved --- e = "

    const-string v2, "LauncherUpgradeHelper"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1b5
    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :cond_1be
    :goto_1be
    return-void
.end method

.method private final resetIntentAndItemtype(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 18

    const-string v0, "itemType"

    const/4 v1, 0x0

    :try_start_3
    const-string v5, "itemType IN(0,100,101,102)"

    const-string v2, "_id"

    const-string/jumbo v3, "packageName"

    const-string v4, "className"

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_88

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "intent"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v6, :pswitch_data_a2

    goto :goto_66

    :pswitch_5f  #0x64, 0x65, 0x66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_66
    const-string v7, "LauncherUpgradeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v7 .. v14}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_88
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_8b

    goto :goto_90

    :catchall_8b
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_90
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9e

    const-string/jumbo v2, "resetIntentAndItemtype e = "

    const-string v3, "LauncherUpgradeHelper"

    invoke-static {v2, v0, v3}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_9e
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :pswitch_data_a2
    .packed-switch 0x64
        :pswitch_5f  #00000064
        :pswitch_5f  #00000065
        :pswitch_5f  #00000066
    .end packed-switch
.end method

.method private final updateIconForAutoInstall(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 14

    const/4 p0, 0x0

    :try_start_1
    const-string v3, "itemType = 102"

    const-string v0, "_id"

    const-string v1, "iconResource"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_78

    :cond_17
    :goto_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "context.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v2, "icon"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "LauncherUpgradeHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v9}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_78
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_7a
    .catchall {:try_start_1 .. :try_end_7a} :catchall_7b

    goto :goto_80

    :catchall_7b
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_80
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8e

    const-string/jumbo p2, "updateIconForAutoInstall e = "

    const-string p3, "LauncherUpgradeHelper"

    invoke-static {p2, p1, p3}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8e
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method private final updateItemRestoredForAutoInstall(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    const-string p0, "LauncherUpgradeHelper"

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateItemRestoredForAutoInstall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SET restored = 2 WHERE itemType = 102"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_33

    goto :goto_38

    :catchall_33
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_38
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_44

    const-string/jumbo p2, "updateItemRestoredForAutoInstall e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method private final updateItemScreenIdInFolders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    const-string p0, "LauncherUpgradeHelper"

    :try_start_2
    const-string/jumbo v0, "updateItemScreenIdInFolders: $favoriteTable"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SET screenId = 0 WHERE container > 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_24

    goto :goto_29

    :catchall_24
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_29
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_35

    const-string/jumbo p1, "updateItemScreenIdInFolders e = $e"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method private final updatePackageAndClass(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string p0, "DbUtils"

    if-nez p1, :cond_b

    const-string/jumbo p1, "updatePackageAndClass, db == null, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    :try_start_b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "packageName"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "className"

    invoke-virtual {v3, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "packageName=\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' AND className=\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x27

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "LauncherUpgradeHelper"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 p3, 0x5

    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_4e

    goto :goto_53

    :catchall_4e
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_53
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5f

    const-string/jumbo p2, "updatePackageAndClass, e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method private final updateToVersion16(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6

    const-string v0, "DbUtils"

    const-string/jumbo v1, "updateToVersion16--- entry"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTALLED_LOCATION:Ljava/lang/String;

    invoke-static {p2, p3, v1}, Lcom/android/common/util/OplusLauncherDbUtils;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string/jumbo v1, "updateToVersion16--- add column"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ADD COLUMN modelState INTEGER DEFAULT 0"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->initInstalledLocationToItems(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_32
    return-void
.end method

.method private final updateWidgetPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string p0, "DbUtils"

    if-nez p1, :cond_b

    const-string/jumbo p1, "updateWidgetPackageName, db == null, return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "intent"

    invoke-virtual {v4, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "className"

    invoke-virtual {v4, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent=\'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\' AND className=\'"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x27

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "LauncherUpgradeHelper"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 p3, 0x5

    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_50
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5c

    const-string/jumbo p2, "updateWidgetPackageName, e = "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateWidgetPackageName newClass = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". --- result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createTmpTableSingleDeskTopItemsForUpgradeTo34(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4

    const-string p0, "db"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "tmpTableName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CREATE TABLE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,packageName TEXT,className TEXT,container INTEGER,screenId INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER DEFAULT 1,spanY INTEGER DEFAULT 1,rank INTEGER NOT NULL DEFAULT 0,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,modelState INTEGER,user_id INTEGER NOT NULL DEFAULT 0,installSource TEXT,installState INTEGER DEFAULT -1);"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final handleUpgrade(Landroid/content/Context;IILcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v6, p5

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "databaseHelper"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "db"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgrade triggered oldVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LauncherUpgradeHelper"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    const-string/jumbo v4, "singledesktopitems"

    if-ge v1, v2, :cond_4b

    :try_start_3f
    sget-object v3, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v3, v0, v6, v4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->updateToVersion16(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move v1, v2

    goto :goto_4b

    :catchall_46
    move-exception v0

    move-object v13, v5

    move-object v11, v6

    goto/16 :goto_2a0

    :cond_4b
    :goto_4b
    const/16 v2, 0x11

    if-ge v1, v2, :cond_65

    iget v3, v8, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_64

    invoke-static {v0, v6, v4}, Lcom/android/common/util/OplusLauncherDbUtils;->initializeMaxId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v8, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:I

    :cond_64
    move v1, v2

    :cond_65
    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ge v1, v2, :cond_84

    const v9, 0x7f120031

    invoke-static {v9}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7c

    sget-object v10, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v10, v6, v4, v9, v3}, Lcom/android/launcher/db/LauncherUpgradeHelper;->removeItemFromDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7c
    sget-object v9, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string v10, "com.oplus.ota.activity.EntryActivity"

    invoke-direct {v9, v6, v4, v10, v3}, Lcom/android/launcher/db/LauncherUpgradeHelper;->removeItemFromDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    move v1, v2

    :cond_84
    const/16 v2, 0x16

    if-ge v1, v2, :cond_90

    sget-object v9, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string v10, "com.android.launcher.dynamicIcon.cleanup"

    invoke-direct {v9, v6, v4, v10, v3}, Lcom/android/launcher/db/LauncherUpgradeHelper;->removeItemFromDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    move v1, v2

    :cond_90
    const/16 v2, 0x18

    if-ge v1, v2, :cond_9c

    sget-object v9, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string v10, "com.nearme.ocloud.activity.MainActivity"

    invoke-direct {v9, v6, v4, v10, v3}, Lcom/android/launcher/db/LauncherUpgradeHelper;->removeItemFromDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    move v1, v2

    :cond_9c
    const/16 v2, 0x19

    if-ge v1, v2, :cond_11a

    sget-object v3, Lcom/android/common/config/Constants$Packages;->INSTANCE:Lcom/android/common/config/Constants$Packages;

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getNEW_WEATHER_WIDGET_INTENT()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ea

    sget-object v13, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ea

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getOLD_WEATHER_WIDGET_INTENT()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ea

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getOLD_WEATHER_WIDGET_CLASS_NAME()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ea

    sget-object v9, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string/jumbo v11, "singledesktopitems"

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getNEW_WEATHER_WIDGET_INTENT()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getOLD_WEATHER_WIDGET_INTENT()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getOLD_WEATHER_WIDGET_CLASS_NAME()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v10, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher/db/LauncherUpgradeHelper;->updateWidgetPackageName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    const v3, 0x7f120033

    invoke-static {v3}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v3, 0x7f120032

    invoke-static {v3}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_118

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_118

    sget-object v9, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string/jumbo v11, "singledesktopitems"

    const-string v12, "com.tencent.tvoem"

    const-string v13, "com.tencent.qqlive.ona.activity.WelcomeActivity"

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v10, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher/db/LauncherUpgradeHelper;->updatePackageAndClass(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_3f .. :try_end_118} :catchall_46

    :cond_118
    move v9, v2

    goto :goto_11b

    :cond_11a
    move v9, v1

    :goto_11b
    :try_start_11b
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z
    :try_end_11d
    .catchall {:try_start_11b .. :try_end_11d} :catchall_29c

    const/16 v2, 0x1f

    const-string/jumbo v10, "singledesktopitems_draw"

    if-eqz v1, :cond_13a

    :try_start_124
    sget-object v1, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string/jumbo v11, "singledesktopitems"
    :try_end_129
    .catchall {:try_start_124 .. :try_end_129} :catchall_29c

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v12, v4

    move-object/from16 v4, p5

    move-object v13, v5

    move-object v5, v11

    move-object v11, v6

    move v6, v9

    :try_start_134
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeForExp(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_1a3

    :cond_13a
    move-object v12, v4

    move-object v13, v5

    move-object v11, v6

    const/16 v1, 0x1a

    if-ge v9, v1, :cond_16d

    const v3, 0x7f120030

    invoke-static {v3}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x5

    if-nez v4, :cond_154

    sget-object v4, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v4, v11, v12, v3, v5}, Lcom/android/launcher/db/LauncherUpgradeHelper;->removeItemFromDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_154
    sget-object v3, Lcom/android/common/config/Constants$Packages;->INSTANCE:Lcom/android/common/config/Constants$Packages;

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getPRIVATE_MUSIC_PAGE_NAME()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16e

    sget-object v4, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-virtual {v3}, Lcom/android/common/config/Constants$Packages;->getPRIVATE_MUSIC_PAGE_NAME()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v11, v12, v3, v5}, Lcom/android/launcher/db/LauncherUpgradeHelper;->removeItemFromDefaultWorkspace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_169
    .catchall {:try_start_134 .. :try_end_169} :catchall_16a

    goto :goto_16e

    :catchall_16a
    move-exception v0

    goto/16 :goto_29f

    :cond_16d
    move v1, v9

    :cond_16e
    :goto_16e
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_17d

    :try_start_172
    invoke-static {v0, v11}, Lcom/android/common/util/OplusLauncherDbUtils;->removeTableSingleDeskTopShortcutBlackList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, v11}, Lcom/android/common/util/OplusLauncherDbUtils;->createTableSingleDeskTopShortcutWhiteList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v3

    goto :goto_17d

    :catchall_17a
    move-exception v0

    goto/16 :goto_2a0

    :cond_17d
    :goto_17d
    const/16 v3, 0x1c

    if-ge v1, v3, :cond_182

    move v1, v3

    :cond_182
    const/16 v3, 0x1d

    if-ge v1, v3, :cond_18b

    const/4 v4, 0x1

    invoke-virtual {v8, v11, v4}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move v1, v3

    :cond_18b
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_198

    sget-object v4, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v4, v11, v12}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addUserIdColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    invoke-direct {v4, v11, v10}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addUserIdColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move v1, v3

    :cond_198
    if-ge v1, v2, :cond_1a3

    sget-object v3, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v3, v0, v11, v12}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addProfileIdColumn(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    invoke-direct {v3, v0, v11, v10}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addProfileIdColumn(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move v1, v2

    :cond_1a3
    :goto_1a3
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1ad

    sget-object v3, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v3, v11, v12}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addDownloadAppColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move v1, v2

    :cond_1ad
    const/16 v2, 0x21

    if-ge v1, v2, :cond_1b5

    invoke-static {v0, v11}, Lcom/android/common/util/OplusLauncherDbUtils;->removeTableSingleDeskTopShortcutWhiteList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v2

    :cond_1b5
    const/16 v2, 0x22

    if-ge v1, v2, :cond_1c2

    invoke-static/range {p5 .. p5}, Lcom/android/common/util/OplusLauncherDbUtils;->removeNewInstallTable(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v3, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v3, v0, v8, v11, v12}, Lcom/android/launcher/db/LauncherUpgradeHelper;->deleteUselessColumnsForSingleDesktopItems(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move v1, v2

    :cond_1c2
    const/16 v2, 0x23

    if-ge v1, v2, :cond_1cc

    sget-object v3, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v3, v11, v12}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addCategoryColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move v1, v2

    :cond_1cc
    const/16 v2, 0x24

    if-ge v1, v2, :cond_1d7

    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v2, v11, v12}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addRestoredColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_1d5
    .catchall {:try_start_172 .. :try_end_1d5} :catchall_17a

    const/16 v1, 0x24

    :cond_1d7
    move v9, v1

    const/16 v1, 0x25

    if-ge v9, v1, :cond_210

    :try_start_1dc
    sget-object v14, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v14, v11}, Lcom/android/launcher/db/LauncherUpgradeHelper;->deleteNewInstallingApp(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v5, "singledesktopitems"

    const-string/jumbo v6, "singledesktopscreens"

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/db/LauncherUpgradeHelper;->processFavoriteTable(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "singledesktopscreens"

    invoke-direct {v14, v11, v1}, Lcom/android/launcher/db/LauncherUpgradeHelper;->processWorkspaceScreensTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    const-string/jumbo v5, "singledesktopitems_draw"

    const-string/jumbo v6, "singledesktopscreens_draw"

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/db/LauncherUpgradeHelper;->processFavoriteTable(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "singledesktopscreens_draw"

    invoke-direct {v14, v11, v1}, Lcom/android/launcher/db/LauncherUpgradeHelper;->processWorkspaceScreensTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_20d
    .catchall {:try_start_1dc .. :try_end_20d} :catchall_16a

    const/16 v1, 0x25

    goto :goto_211

    :cond_210
    move v1, v9

    :goto_211
    const/16 v2, 0x26

    if-ge v1, v2, :cond_21f

    :try_start_215
    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v2, v11, v12}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addRecommendFlagColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    invoke-direct {v2, v11, v10}, Lcom/android/launcher/db/LauncherUpgradeHelper;->addRecommendFlagColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_21d
    .catchall {:try_start_215 .. :try_end_21d} :catchall_17a

    const/16 v1, 0x26

    :cond_21f
    const/16 v2, 0x27

    const-string/jumbo v3, "singledesktopitems_simple"

    if-ge v1, v2, :cond_230

    :try_start_226
    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    filled-new-array {v12, v10, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v11, v4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion39(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v1

    :cond_230
    const/16 v2, 0x28

    if-ge v1, v2, :cond_23e

    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    filled-new-array {v12, v10, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v11, v4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion40(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v1

    :cond_23e
    const/16 v2, 0x32

    if-ge v1, v2, :cond_249

    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v2, v0, v11}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion50(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    move v1, v0

    :cond_249
    const/16 v0, 0x33

    if-ge v1, v0, :cond_258

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    filled-new-array {v12, v10, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :cond_258
    const/16 v0, 0x34

    if-ge v1, v0, :cond_263

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v0, v11}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    move v1, v0

    :cond_263
    const/16 v0, 0x35

    if-ge v1, v0, :cond_270

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    const-string v2, "desktopappedit"

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :cond_270
    const/16 v0, 0x3c

    if-ge v1, v0, :cond_27f

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    filled-new-array {v12, v10, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :cond_27f
    const/16 v0, 0x4c

    if-ge v1, v0, :cond_28a

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v0, v11}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion76(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    move v1, v0

    :cond_28a
    const/16 v0, 0x4d

    if-ge v1, v0, :cond_299

    sget-object v0, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    filled-new-array {v12, v10, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/db/LauncherUpgradeHelper;->handleUpgradeToVersion77(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :cond_299
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_29b
    .catchall {:try_start_226 .. :try_end_29b} :catchall_17a

    goto :goto_2a4

    :catchall_29c
    move-exception v0

    move-object v13, v5

    move-object v11, v6

    :goto_29f
    move v1, v9

    :goto_2a0
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2a4
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2cc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v7, :cond_2cc

    const-string v0, "Database upgrade failed, create an empty database."

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p5}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2cc
    return-void
.end method

.method public final initInstalledLocationToItems(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15

    const-string/jumbo p0, "packageName"

    const-string v0, "_id"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "db"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_10
    const-string/jumbo v3, "singledesktopitems"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "itemType=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_74

    :cond_25
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    :goto_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    sget-object v2, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTANCE:Lcom/android/launcher/db/LauncherUpgradeHelper;

    invoke-direct {v2, p1, v4}, Lcom/android/launcher/db/LauncherUpgradeHelper;->getAppInstalledLocation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :cond_44
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/android/launcher/db/LauncherUpgradeHelper;->INSTALLED_LOCATION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "LauncherUpgradeHelper"

    const-string/jumbo v6, "singledesktopitems"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, p2

    invoke-static/range {v4 .. v11}, Lcom/android/launcher/db/DbTracker;->update(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_74
    :goto_74
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_76
    .catchall {:try_start_10 .. :try_end_76} :catchall_77

    goto :goto_7c

    :catchall_77
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_7c
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_89

    const-string p1, "initInstalledLocationToItems -- e = "

    const-string p2, "LauncherUpgradeHelper"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_89
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method public final moveDataFromCredentialStorageToDeviceStorage(Landroid/content/Context;)V
    .registers 4

    const-string p0, "deviceStorageContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isFBEEnable()Z

    move-result p0

    if-nez p0, :cond_7f

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz p0, :cond_7f

    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "launcher.db"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DbUtils"

    if-nez v0, :cond_24

    const-string/jumbo v0, "move 5x4 fail!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_24
    const-string/jumbo v0, "move 5x4 success"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    const-string v0, "launcher_4x4.db"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "move 4x4 fail!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_39
    const-string/jumbo v0, "move 4x4 success"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    const-string v0, "com.android.launcher_unique_shared_prefs"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string/jumbo v0, "move LAUNCHER_SHARED_PREFS fail!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_4e
    const-string/jumbo v0, "move LAUNCHER_SHARED_PREFS success"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    const-string/jumbo v0, "wallpapers_share_pref"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    const-string/jumbo v0, "move WALLPAPERS fail!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_64
    const-string/jumbo v0, "move WALLPAPERS success"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    const-string v0, "com.android.launcher_shortcut_setting_prefs"

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_79

    const-string/jumbo p0, "move SHORTCUT_SHARED_PREFS fail!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_79
    const-string/jumbo p0, "move SHORTCUT_SHARED_PREFS success"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final onLayoutDatabaseRestored(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Z)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "openHelper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_19

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/mode/LauncherModeManager;->refreshMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_38

    :cond_19
    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object p0

    const/4 p2, 0x0

    aget p2, p0, p2

    const/4 p3, 0x1

    aget p0, p0, p3

    invoke-static {p1, p2, p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutInfo(Landroid/content/Context;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "create_empty_db"

    invoke-static {p0, p2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "load_default_favorites"

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :goto_38
    return-void
.end method

.method public final removeGhostWidgets(Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 18

    move/from16 v1, p3

    const-string v0, "databaseHelper"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/OplusLauncherProvider$OplusDatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v9

    const-string v0, "databaseHelper.newLauncherWidgetHost()"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_19
    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    :try_start_1d
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_20

    goto :goto_28

    :catchall_20
    move-exception v0

    goto :goto_24

    :catchall_22
    move-exception v0

    move-object v2, v10

    :goto_24
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_28
    move-object v11, v2

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v12, "LauncherUpgradeHelper"

    if-eqz v0, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetIds not supported, screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_46
    new-instance v13, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v13}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "screen"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_6f
    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object v2

    const-string v1, "appWidgetId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object v3, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_89
    .catch Landroid/database/SQLException; {:try_start_6f .. :try_end_89} :catch_df

    :goto_89
    :try_start_89
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_98

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V
    :try_end_97
    .catchall {:try_start_89 .. :try_end_97} :catchall_d6

    goto :goto_89

    :cond_98
    :try_start_98
    invoke-static {v1, v10}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9b
    .catch Landroid/database/SQLException; {:try_start_98 .. :try_end_9b} :catch_df

    if-eqz v11, :cond_d5

    array-length v1, v11

    :goto_9e
    if-ge v2, v1, :cond_d5

    aget v0, v11, v2

    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_d2

    :try_start_a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting invalid widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_c1
    .catchall {:try_start_a8 .. :try_end_c1} :catchall_c2

    goto :goto_c7

    :catchall_c2
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_c7
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d2

    const-string v3, "Delete app widget id"

    invoke-static {v12, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_d5
    return-void

    :catchall_d6
    move-exception v0

    move-object v2, v0

    :try_start_d8
    throw v2
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d9

    :catchall_d9
    move-exception v0

    move-object v3, v0

    :try_start_db
    invoke-static {v1, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_df
    .catch Landroid/database/SQLException; {:try_start_db .. :try_end_df} :catch_df

    :catch_df
    move-exception v0

    const-string v1, "Error getting widgets list"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
