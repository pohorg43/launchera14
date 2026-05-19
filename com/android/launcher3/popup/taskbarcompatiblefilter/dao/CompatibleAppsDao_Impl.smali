.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfCompatibleAppInfo:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateApp:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$1;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__insertionAdapterOfCompatibleAppInfo:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$2;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl$3;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfUpdateApp:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllApps()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_10
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_23

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_23
    move-exception v1

    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfDeleteAllApps:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public insertALlApps(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_a
    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__insertionAdapterOfCompatibleAppInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1b

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_1b
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public queryAll()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM taskbar_compatible_apps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_13
    const-string/jumbo v1, "packageName"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "activityName"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "selfDisplayTimes"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_36
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_44

    move-object v7, v2

    goto :goto_48

    :cond_44
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_48
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_50

    move-object v8, v2

    goto :goto_54

    :cond_50
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_54
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_60

    move-object v10, v2

    goto :goto_64

    :cond_60
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_64
    new-instance v11, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-direct {v11, v7, v8, v9, v10}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_13 .. :try_end_6c} :catchall_74

    goto :goto_36

    :cond_6d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_74
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public updateAllApps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_5
    invoke-static {p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao$DefaultImpls;->updateAllApps(Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_13
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateApp(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfUpdateApp:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    invoke-interface {v0, p2, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_17

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1a

    :cond_17
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1a
    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_1f
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_32

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfUpdateApp:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_32
    move-exception p1

    iget-object p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao_Impl;->__preparedStmtOfUpdateApp:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method
