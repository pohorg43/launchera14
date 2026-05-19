.class public final Lio/branch/search/j2;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lio/branch/search/i2;Ljava/util/List;Lio/branch/search/g2;Ljava/util/List;Lio/branch/search/f2;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/branch/search/i2;",
            "Ljava/util/List<",
            "Lio/branch/search/v2;",
            ">;",
            "Lio/branch/search/g2;",
            "Ljava/util/List<",
            "Lio/branch/search/v2;",
            ">;",
            "Lio/branch/search/f2<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "$this$doSetupTeardownQuery"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "main"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "teardown"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accum"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string v1, "mHelper"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :try_start_29
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_8f
    .catchall {:try_start_29 .. :try_end_34} :catchall_8d

    const-string v2, "database"

    if-eqz v1, :cond_45

    :try_start_38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/v2;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lio/branch/search/v2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    goto :goto_30

    :cond_45
    invoke-virtual {p2}, Lio/branch/search/g2;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/branch/search/g2;->a()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_50

    goto :goto_53

    :cond_50
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    :goto_53
    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_57} :catch_8f
    .catchall {:try_start_38 .. :try_end_57} :catchall_8d

    const/4 p2, 0x0

    :cond_58
    :goto_58
    :try_start_58
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p4, p1}, Lio/branch/search/f2;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_86

    goto :goto_58

    :cond_68
    :try_start_68
    invoke-static {p1, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/branch/search/v2;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lio/branch/search/v2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    goto :goto_6f

    :cond_82
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_85} :catch_8f
    .catchall {:try_start_68 .. :try_end_85} :catchall_8d

    goto :goto_95

    :catchall_86
    move-exception p2

    :try_start_87
    throw p2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception p3

    :try_start_89
    invoke-static {p1, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8d} :catch_8f
    .catchall {:try_start_89 .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p1

    goto :goto_9d

    :catch_8f
    move-exception p1

    const-string p2, "RawSQLiteDB.doSetupTeardownQuery"

    :try_start_92
    invoke-static {p2, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_8d

    :goto_95
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-interface {p4, v0}, Lio/branch/search/f2;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_9d
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public static final a(Lio/branch/search/i2;)Z
    .registers 7

    const-string v0, "Exception: "

    const-string v1, ".isDatabaseIntegrityOk"

    const-string v2, "$this$isDatabaseIntegrityOk"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_a
    iget-object v3, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string v4, "mHelper"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM sqlite_master"

    invoke-virtual {v3, v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_a .. :try_end_1b} :catch_36
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_a .. :try_end_1b} :catch_2f

    const/4 v4, 0x0

    :goto_1c
    :try_start_1c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_28

    if-eqz v5, :cond_23

    goto :goto_1c

    :cond_23
    :try_start_23
    invoke-static {v3, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_23 .. :try_end_26} :catch_36
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_23 .. :try_end_26} :catch_2f

    const/4 v2, 0x1

    goto :goto_4b

    :catchall_28
    move-exception v4

    :try_start_29
    throw v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v5

    :try_start_2b
    invoke-static {v3, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2b .. :try_end_2f} :catch_36
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2b .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3c

    :catch_36
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3c
    iget-object p0, p0, Lio/branch/search/i2;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v3}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4b
    return v2
.end method
