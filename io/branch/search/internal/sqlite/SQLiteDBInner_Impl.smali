.class public Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;
.super Lio/branch/search/internal/sqlite/SQLiteDBInner;
.source ""


# instance fields
.field public volatile a:Lio/branch/search/m3;

.field public volatile b:Lio/branch/search/p3;

.field public volatile c:Lio/branch/search/c4;

.field public volatile d:Lio/branch/search/a4;

.field public volatile e:Lio/branch/search/k4;

.field public volatile f:Lio/branch/search/n4;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lio/branch/search/c4;
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/c4;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/c4;

    return-object p0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/c4;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/d4;

    invoke-direct {v0, p0}, Lio/branch/search/d4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/c4;

    :cond_13
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->c:Lio/branch/search/c4;

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

    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `local_packages`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `local_entities`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `app_clicks`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `search_clicks`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `app_usage_event`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `app_usage_stats`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `unified_virtual_requests`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `unified_entities`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `unified_impressions`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `tracking_status_history`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_60

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_5f

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5f
    return-void

    :catchall_60
    move-exception v3

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_74

    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_74
    throw v3
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .registers 12

    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "local_packages"

    const-string v2, "local_entities"

    const-string v3, "app_clicks"

    const-string v4, "search_clicks"

    const-string v5, "app_usage_event"

    const-string v6, "app_usage_stats"

    const-string v7, "unified_virtual_requests"

    const-string v8, "unified_entities"

    const-string v9, "unified_impressions"

    const-string v10, "tracking_status_history"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .registers 5

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl$a;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v2}, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl$a;-><init>(Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;I)V

    const-string p0, "cbfb6953a359e26423beb2c791cb81c2"

    const-string v2, "afa1805974ed37acf2cd3054e76ea220"

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

.method public d()Lio/branch/search/k4;
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/k4;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/k4;

    return-object p0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/k4;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/l4;

    invoke-direct {v0, p0}, Lio/branch/search/l4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/k4;

    :cond_13
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->e:Lio/branch/search/k4;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public e()Lio/branch/search/n4;
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/n4;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/n4;

    return-object p0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/n4;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/o4;

    invoke-direct {v0, p0}, Lio/branch/search/o4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/n4;

    :cond_13
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->f:Lio/branch/search/n4;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public f()Lio/branch/search/m3;
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/m3;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/m3;

    return-object p0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/m3;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/n3;

    invoke-direct {v0, p0}, Lio/branch/search/n3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/m3;

    :cond_13
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->a:Lio/branch/search/m3;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public g()Lio/branch/search/p3;
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/p3;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/p3;

    return-object p0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/p3;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/q3;

    invoke-direct {v0, p0}, Lio/branch/search/q3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/p3;

    :cond_13
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->b:Lio/branch/search/p3;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public h()Lio/branch/search/a4;
    .registers 2

    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/a4;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/a4;

    return-object p0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/a4;

    if-nez v0, :cond_13

    new-instance v0, Lio/branch/search/b4;

    invoke-direct {v0, p0}, Lio/branch/search/b4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/a4;

    :cond_13
    iget-object v0, p0, Lio/branch/search/internal/sqlite/SQLiteDBInner_Impl;->d:Lio/branch/search/a4;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method
