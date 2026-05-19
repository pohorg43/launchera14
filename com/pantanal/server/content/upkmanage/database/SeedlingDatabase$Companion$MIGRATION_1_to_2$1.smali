.class public final Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_1_to_2$1;
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
        "com/pantanal/server/content/upkmanage/database/SeedlingDatabase$Companion$MIGRATION_1_to_2$1",
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

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 13

    const-string p0, "database"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "SeedlingDatabase"

    const-string v0, "Database migrate from 1 to 2"

    invoke-static {p0, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    const-string v0, "ALTER TABLE `UpkEntity` ADD COLUMN `host_package_name` TEXT"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `UpkEntity` ADD COLUMN `host_component_name` TEXT"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "SELECT _id,service_id,files_directory_path FROM UpkEntity"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_d7

    :try_start_1c
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "service_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "files_directory_path"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cursor count = "

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c7

    const-string v4, "cursor"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_53

    move-object v4, v5

    goto :goto_5b

    :cond_53
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5b
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_63

    move-object v6, v5

    goto :goto_67

    :cond_63
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_67
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_6f

    move-object v7, v5

    goto :goto_73

    :cond_6f
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", serviceId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", upkFilesPath:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_9f

    const-string v4, "id is null, abandon this record, continue"

    invoke-static {p0, v4}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_9f
    sget-object v6, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->Companion:Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;

    invoke-static {v6, v7}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;->a(Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase$a;Ljava/lang/String;)Lh4/j;

    move-result-object v6

    const-string v7, "UPDATE `UpkEntity` SET `host_package_name` = ?, `host_component_name` = ?  WHERE `_id` = ? "

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-nez v6, :cond_af

    move-object v10, v5

    goto :goto_b3

    :cond_af
    iget-object v10, v6, Lh4/j;->a:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    :goto_b3
    aput-object v10, v8, v9

    const/4 v9, 0x1

    if-nez v6, :cond_b9

    goto :goto_bd

    :cond_b9
    iget-object v5, v6, Lh4/j;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :goto_bd
    aput-object v5, v8, v9

    const/4 v5, 0x2

    aput-object v4, v8, v5

    invoke-interface {p1, v7, v8}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c5
    .catchall {:try_start_1c .. :try_end_c5} :catchall_d0

    goto/16 :goto_3f

    :cond_c7
    :try_start_c7
    invoke-static {v0, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "Database migrate from 1 to 2 success"

    invoke-static {p0, p1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_d7

    goto :goto_dd

    :catchall_d0
    move-exception p1

    :try_start_d1
    throw p1
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception v1

    :try_start_d3
    invoke-static {v0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_d7
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_d7

    :catchall_d7
    move-exception p1

    const-string v0, "Database migrate from 1 to 2 error"

    invoke-static {p0, v0, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_dd
    return-void
.end method
