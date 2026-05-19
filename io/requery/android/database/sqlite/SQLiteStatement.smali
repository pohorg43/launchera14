.class public final Lio/requery/android/database/sqlite/SQLiteStatement;
.super Lio/requery/android/database/sqlite/SQLiteProgram;
.source ""

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteProgram;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->execute(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1d
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_1b
    move-exception v0

    goto :goto_22

    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->onCorruption()V

    throw v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1b

    :goto_22
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public executeInsert()J
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_18} :catch_1e
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide v0

    :catchall_1c
    move-exception v0

    goto :goto_23

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->onCorruption()V

    throw v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    :goto_23
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public executeUpdateDelete()I
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)I

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_18} :catch_1e
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_1c
    move-exception v0

    goto :goto_23

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->onCorruption()V

    throw v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    :goto_23
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_18} :catch_1e
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object v0

    :catchall_1c
    move-exception v0

    goto :goto_23

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->onCorruption()V

    throw v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    :goto_23
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public simpleQueryForLong()J
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)J

    move-result-wide v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_18} :catch_1e
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide v0

    :catchall_1c
    move-exception v0

    goto :goto_23

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->onCorruption()V

    throw v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    :goto_23
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_18} :catch_1e
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object v0

    :catchall_1c
    move-exception v0

    goto :goto_23

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->onCorruption()V

    throw v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    :goto_23
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SQLiteProgram: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
