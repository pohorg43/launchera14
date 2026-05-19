.class public final Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_2_to_3$1;
.super Landroidx/room/migration/Migration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"
    }
    d2 = {
        "com/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_2_to_3$1",
        "Landroidx/room/migration/Migration;",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 10

    const-string p0, "database"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "SeedlingDatabase"

    const-string v0, "Database migrate from 2 to 3"

    invoke-static {p0, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    const-string v0, "ALTER TABLE `UpkEntity` ADD COLUMN `use_template` INTEGER NOT NULL DEFAULT -1"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SELECT _id,files_directory_path FROM UpkEntity"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_b5

    :try_start_17
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "files_directory_path"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cursor count = "

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a5

    const-string v3, "cursor"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_48

    move-object v3, v4

    goto :goto_50

    :cond_48
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_50
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_57

    goto :goto_5b

    :cond_57
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", upkFilesPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_7f

    const-string v3, "id is null, abandon this record, continue"

    invoke-static {p0, v3}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_7f
    sget-object v5, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->Companion:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;

    invoke-static {v5, v4}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;->b(Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;Ljava/lang/String;)I

    move-result v4

    const-string v5, "useTemplate: "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "UPDATE `UpkEntity` SET `use_template` = ?  WHERE `_id` = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v3, v6, v4

    invoke-interface {p1, v5, v6}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a4
    .catchall {:try_start_17 .. :try_end_a4} :catchall_ae

    goto :goto_34

    :cond_a5
    :try_start_a5
    invoke-static {v0, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "Database migrate from 2 to 3 success"

    invoke-static {p0, p1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_b5

    goto :goto_bb

    :catchall_ae
    move-exception p1

    :try_start_af
    throw p1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception v1

    :try_start_b1
    invoke-static {v0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception p1

    const-string v0, "Database migrate from 2 to 3 error"

    invoke-static {p0, v0, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_bb
    return-void
.end method
