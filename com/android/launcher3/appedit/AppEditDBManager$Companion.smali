.class public final Lcom/android/launcher3/appedit/AppEditDBManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppEditDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;-><init>()V

    return-void
.end method

.method private final dbGenMaxId(Landroid/content/Context;)I
    .registers 5

    const-string v0, " dbGenMaxId pre mMaxId "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMMaxId$cp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppEditDBManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbMaxId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$setMMaxId$cp(I)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMMaxId$cp()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$setMMaxId$cp(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " dbGenMaxId mMaxId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMMaxId$cp()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMMaxId$cp()I

    move-result p0

    return p0
.end method

.method private final getSInstance()Lcom/android/launcher3/appedit/AppEditDBManager;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getSInstance$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/appedit/AppEditDBManager;

    return-object p0
.end method


# virtual methods
.method public final dbCountAppEditTable(Landroid/content/Context;)I
    .registers 11

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " dbCountAppEditTable context "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppEdit"

    const-string v1, "AppEditDBManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    :try_start_24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p1, "context.getContentResolver()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v4

    const-string p1, "count(*) AS count"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " dbCountAppEditTable count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_5b} :catch_61
    .catchall {:try_start_24 .. :try_end_5b} :catchall_5f

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p1

    :catchall_5f
    move-exception p0

    goto :goto_6b

    :catch_61
    move-exception p1

    :try_start_62
    const-string v3, " dbCountAppEditTable SQLiteException "

    invoke-static {v0, v1, v3, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_5f

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :goto_6b
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final dbCountAppEditTable(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 6

    const-string p0, "db"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT COUNT(*) FROM "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentAppEditTable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {p1, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_20} :catch_42
    .catchall {:try_start_1c .. :try_end_20} :catchall_40

    :try_start_20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_33

    goto :goto_2c

    :cond_2b
    move p1, v0

    :goto_2c
    :try_start_2c
    invoke-static {p0, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_2f} :catch_3d
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p1

    :catchall_33
    move-exception p1

    :try_start_34
    throw p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v1

    :try_start_36
    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_3a} :catch_3d
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    move-object v1, p0

    goto :goto_50

    :catch_3d
    move-exception p1

    move-object v1, p0

    goto :goto_43

    :catchall_40
    move-exception p1

    goto :goto_50

    :catch_42
    move-exception p1

    :goto_43
    :try_start_43
    const-string p0, "AppEdit"

    const-string v2, "AppEditDBManager"

    const-string v3, " dbCountAppEditTable SQLiteException "

    invoke-static {p0, v2, v3, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_40

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :goto_50
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final dbCreateAppEditTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 6

    const-string p0, "db"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "AppEditDBManager"

    const-string v0, "AppEdit"

    if-eqz p2, :cond_e

    :try_start_b
    const-string p2, " IF NOT EXISTS "

    goto :goto_10

    :cond_e
    const-string p2, ""

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentAppEditTable()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (_id INTEGER PRIMARY KEY,componentName TEXT,ex TEXT,profileId INTEGER NOT NULL DEFAULT 0,modified INTEGER NOT NULL DEFAULT 0,title TEXT,icon_status INTEGER NOT NULL DEFAULT 0,tittle_status INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_65

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate, sql = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentAppEditTable()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    const-string v1, "OplusLauncherProvider"

    invoke-direct {p2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception p1

    const-string p2, " dbCreateAppEditTable SQLiteException "

    invoke-static {v0, p0, p2, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public final dbDeleteTitle(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "componentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " dbDeleteTitle context "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " componentName "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppEdit"

    const-string v1, "AppEditDBManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :try_start_30
    const-string v2, " componentName = ?"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "context.getContentResolver()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-virtual {v3}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {p1, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_55

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMDbCount$cp()I

    move-result p2

    add-int/2addr p2, p0

    invoke-static {p2}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$setMDbCount$cp(I)V

    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dbDeleteTitle result "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mDbCount "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMDbCount$cp()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_75} :catch_76

    return p1

    :catch_76
    move-exception p1

    const-string p2, " dbDeleteTitle SQLiteException "

    invoke-static {v0, v1, p2, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method

.method public final dbMaxId(Landroid/content/Context;)I
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "app_edit_max_id"

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final dbQueryEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;
    .registers 16

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "componentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " dbQueryTitle context "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " componentName "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppEdit"

    const-string v2, "AppEditDBManager"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_30
    const-string v6, " componentName = ?"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p1, "context.getContentResolver()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getPROJECTION()[Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x1

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v7, p1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "contentResolver.query(\n …   null\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher3/appedit/AppEditLoaderCursor;

    invoke-direct {p2, p1}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_5a} :catch_d1
    .catchall {:try_start_30 .. :try_end_5a} :catchall_cd

    move-object p1, p0

    :goto_5b
    :try_start_5b
    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    new-instance p1, Lcom/android/launcher3/appedit/AppEditInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMIdIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMComponentNameIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMExIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMProfileIdIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v8

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMModifiedIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v9

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMTitleIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMIconStatusIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMTittleStatusIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher3/appedit/AppEditInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_5b

    :cond_b0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " dbQueryTitle title "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_c7} :catch_cb
    .catchall {:try_start_5b .. :try_end_c7} :catchall_dc

    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catch_cb
    move-exception p1

    goto :goto_d3

    :catchall_cd
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    goto :goto_dd

    :catch_d1
    move-exception p1

    move-object p2, p0

    :goto_d3
    :try_start_d3
    const-string v0, " dbQueryTitle SQLiteException "

    invoke-static {v1, v2, v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d8
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_dc

    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_dc
    move-exception p0

    :goto_dd
    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final dbQueryId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 12

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "componentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " dbQueryId context "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " componentName "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppEdit"

    const-string v2, "AppEditDBManager"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_30
    const-string v6, " componentName = ?"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p1, "context.getContentResolver()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getPROJECTION()[Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x1

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v7, p1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string v3, "contentResolver.query(\n …   null\n                )"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/appedit/AppEditLoaderCursor;

    invoke-direct {v3, p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_5a} :catch_8a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_86

    :goto_5a
    :try_start_5a
    invoke-virtual {v3}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_69

    invoke-virtual {v3}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMIdIndex()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p1

    goto :goto_5a

    :cond_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " dbQueryId id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_80} :catch_84
    .catchall {:try_start_5a .. :try_end_80} :catchall_97

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p1

    :catch_84
    move-exception p0

    goto :goto_8d

    :catchall_86
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto :goto_98

    :catch_8a
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    :goto_8d
    :try_start_8d
    const-string p1, " dbQueryId SQLiteException "

    invoke-static {v1, v2, p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_97

    const/4 p0, -0x1

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :catchall_97
    move-exception p0

    :goto_98
    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final dbQueryList(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/appedit/AppEditInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbQueryListLimit(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final dbQueryListLimit(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/appedit/AppEditInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "from"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " dbQueryList from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " context "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " limitCount "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppEdit"

    const-string v1, "AppEditDBManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_38
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p2, "context.contentResolver"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getPROJECTION()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez p3, :cond_65

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " _id DESC limit "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_66

    :cond_65
    move-object v7, p0

    :goto_66
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "contentResolver.query(\n …      }\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher3/appedit/AppEditLoaderCursor;

    invoke-direct {p2, p1}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_74} :catch_ed
    .catchall {:try_start_38 .. :try_end_74} :catchall_eb

    :try_start_74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_79
    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_d1

    new-instance p3, Lcom/android/launcher3/appedit/AppEditInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMIdIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMComponentNameIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMExIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMProfileIdIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMModifiedIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMTitleIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMIconStatusIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2}, Lcom/android/launcher3/appedit/AppEditLoaderCursor;->getMTittleStatusIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v2, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/appedit/AppEditInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_d1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dbQueryList editInfo "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_e5} :catch_e9
    .catchall {:try_start_74 .. :try_end_e5} :catchall_f8

    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catch_e9
    move-exception p1

    goto :goto_ef

    :catchall_eb
    move-exception p1

    goto :goto_fa

    :catch_ed
    move-exception p1

    move-object p2, p0

    :goto_ef
    :try_start_ef
    const-string p3, " dbQueryList SQLiteException "

    invoke-static {v0, v1, p3, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_f8

    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_f8
    move-exception p1

    move-object p0, p2

    :goto_fa
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final dbTableCount(Landroid/content/Context;)I
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMDbCount$cp()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbCountAppEditTable(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$setMDbCount$cp(I)V

    :cond_13
    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMDbCount$cp()I

    move-result p0

    return p0
.end method

.method public final dbUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;
    .registers 15

    const-string v0, "AppEditDBManager"

    const-string v1, "AppEdit"

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "componentName"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "title"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbQueryId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " dbUpdateTitle query id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " componentName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " title "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ex"

    const-string v2, ""

    invoke-virtual {v5, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "icon_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "tittle_status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-lez v6, :cond_8e

    sget-object p0, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "_id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    goto :goto_a5

    :cond_8e
    const-string p2, "_id"

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbGenMaxId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditInfo;->Companion:Lcom/android/launcher3/appedit/AppEditInfo$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    :goto_a5
    invoke-virtual {p0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " dbUpdateTitle operations "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_d7

    if-gtz v6, :cond_d7

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMDbCount$cp()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$setMDbCount$cp(I)V

    :cond_d7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " dbUpdateTitle result "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mDbCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditDBManager;->access$getMDbCount$cp()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_fb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_fb} :catch_fc

    return-object p0

    :catch_fc
    move-exception p0

    const-string p1, " dbUpdateTitle SQLiteException "

    invoke-static {v1, v0, p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getInstance()Lcom/android/launcher3/appedit/AppEditDBManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->getSInstance()Lcom/android/launcher3/appedit/AppEditDBManager;

    move-result-object p0

    return-object p0
.end method
