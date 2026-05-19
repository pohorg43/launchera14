.class public final Lio/requery/android/database/sqlite/SQLiteQuery;
.super Lio/requery/android/database/sqlite/SQLiteProgram;
.source ""


# instance fields
.field public final mCancellationSignal:Landroidx/core/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteProgram;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    iput-object p4, p0, Lio/requery/android/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public fillWindow(Lio/requery/android/database/CursorWindow;IIZ)I
    .registers 14

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5a

    :try_start_6
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getConnectionFlags()I

    move-result v7

    iget-object v8, p0, Lio/requery/android/database/sqlite/SQLiteQuery;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Lio/requery/android/database/sqlite/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lio/requery/android/database/CursorWindow;IIZILandroidx/core/os/CancellationSignal;)I

    move-result p2
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_20} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_20} :catch_29
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    :try_start_20
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_5a

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return p2

    :catchall_27
    move-exception p2

    goto :goto_56

    :catch_29
    move-exception p2

    :try_start_2a
    const-string p3, "SQLiteQuery"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; query: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p2

    :catch_51
    move-exception p2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->onCorruption()V

    throw p2
    :try_end_56
    .catchall {:try_start_2a .. :try_end_56} :catchall_27

    :goto_56
    :try_start_56
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p2
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SQLiteQuery: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
