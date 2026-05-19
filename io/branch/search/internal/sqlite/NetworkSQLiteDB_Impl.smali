.class public Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;
.super Lio/branch/search/internal/sqlite/NetworkSQLiteDB;
.source ""


# instance fields
.field public volatile a:Lio/branch/search/i3;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lio/branch/search/i3;
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/i3;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/i3;

    return-object p0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/i3;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/j3;

    invoke-direct {v0, p0}, Lio/branch/search/j3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/i3;

    :cond_13
    iget-object v0, p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;->a:Lio/branch/search/i3;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public clearAllTables()V
    .registers 5

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    :try_start_f
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `data_usage`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_2e

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v3

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_42

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_42
    throw v3
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .registers 3

    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "data_usage"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .registers 5

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl$a;-><init>(Lio/branch/search/internal/sqlite/NetworkSQLiteDB_Impl;I)V

    const-string p0, "d06293dca33f06a48d8f8079e016bed6"

    const-string v2, "64a5811d0582d0ce2cce915f424cf7c0"

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method
