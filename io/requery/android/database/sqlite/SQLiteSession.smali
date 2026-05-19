.class public final Lio/requery/android/database/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Assert"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# instance fields
.field public mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

.field public mConnectionFlags:I

.field public final mConnectionPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

.field public mConnectionUseCount:I

.field public mTransactionPool:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

.field public mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionPool must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object p1

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    iput p2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionFlags:I

    :cond_e
    iget p1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    return-void
.end method

.method public beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V
    .registers 5

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V

    return-void
.end method

.method public final beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V
    .registers 7

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_5
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-virtual {p0, v1, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :cond_d
    :try_start_d
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-nez p3, :cond_2e

    const/4 p3, 0x1

    if-eq p1, p3, :cond_27

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1f

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const-string v0, "BEGIN;"

    invoke-virtual {p3, v0, v1, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    goto :goto_2e

    :cond_1f
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const-string v0, "BEGIN EXCLUSIVE;"

    invoke-virtual {p3, v0, v1, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    goto :goto_2e

    :cond_27
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const-string v0, "BEGIN IMMEDIATE;"

    invoke-virtual {p3, v0, v1, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_4c

    :cond_2e
    :goto_2e
    if-eqz p2, :cond_41

    :try_start_30
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_4c

    goto :goto_41

    :catch_34
    move-exception p1

    :try_start_35
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-nez p2, :cond_40

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const-string p3, "ROLLBACK;"

    invoke-virtual {p2, p3, v1, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    :cond_40
    throw p1

    :cond_41
    :goto_41
    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    move-result-object p1

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iput-object p2, p1, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mParent:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_4c

    return-void

    :catchall_4c
    move-exception p1

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-nez p2, :cond_54

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    :cond_54
    throw p1
.end method

.method public endTransaction(Landroidx/core/os/CancellationSignal;)V
    .registers 3

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroidx/core/os/CancellationSignal;Z)V

    return-void
.end method

.method public final endTransactionUnchecked(Landroidx/core/os/CancellationSignal;Z)V
    .registers 8

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_5
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_f

    if-eqz p2, :cond_15

    :cond_f
    iget-boolean p2, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez p2, :cond_15

    move p2, v2

    goto :goto_16

    :cond_15
    move p2, v3

    :goto_16
    iget-object v1, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    const/4 v4, 0x0

    if-eqz v1, :cond_27

    if-eqz p2, :cond_21

    :try_start_1d
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    goto :goto_27

    :cond_21
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_27

    :catch_25
    move-exception p2

    goto :goto_29

    :cond_27
    :goto_27
    move v3, p2

    move-object p2, v4

    :goto_29
    iget-object v1, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mParent:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteSession;->recycleTransaction(Lio/requery/android/database/sqlite/SQLiteSession$Transaction;)V

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_39

    if-nez v3, :cond_4d

    iput-boolean v2, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_4d

    :cond_39
    if-eqz v3, :cond_43

    :try_start_3b
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const-string v1, "COMMIT;"

    invoke-virtual {v0, v1, v4, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    goto :goto_4a

    :cond_43
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const-string v1, "ROLLBACK;"

    invoke-virtual {v0, v1, v4, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_51

    :goto_4a
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    :cond_4d
    :goto_4d
    if-nez p2, :cond_50

    return-void

    :cond_50
    throw p2

    :catchall_51
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)V
    .registers 6

    if-eqz p1, :cond_1a

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, p1, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_c
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p3, p1, p2, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_15

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return-void

    :catchall_15
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0, p1, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_d
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p3, p1, p2, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return-object p1

    :catchall_17
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)I
    .registers 6

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0, p1, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_d
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p3, p1, p2, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)I

    move-result p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return p1

    :catchall_17
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lio/requery/android/database/CursorWindow;IIZILandroidx/core/os/CancellationSignal;)I
    .registers 19

    move-object v1, p0

    move-object v0, p1

    move/from16 v2, p7

    move-object/from16 v9, p8

    if-eqz v0, :cond_39

    if-eqz p3, :cond_31

    move-object v4, p2

    invoke-virtual {p0, p1, p2, v2, v9}, Lio/requery/android/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p3}, Lio/requery/android/database/CursorWindow;->clear()V

    const/4 v0, 0x0

    return v0

    :cond_16
    invoke-virtual {p0, p1, v2, v9}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_19
    iget-object v2, v1, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lio/requery/android/database/CursorWindow;IIZLandroidx/core/os/CancellationSignal;)I

    move-result v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_2c
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "window must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)J
    .registers 6

    if-eqz p1, :cond_1d

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_b
    invoke-virtual {p0, p1, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_e
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p3, p1, p2, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide p1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return-wide p1

    :catchall_18
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)J
    .registers 6

    if-eqz p1, :cond_1d

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_b
    invoke-virtual {p0, p1, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_e
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p3, p1, p2, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide p1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return-wide p1

    :catchall_18
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0, p1, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_d
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p3, p1, p2, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return-object p1

    :catchall_17
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroidx/core/os/CancellationSignal;)Z
    .registers 6

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_5
    invoke-static {p1}, Lio/requery/android/database/sqlite/SQLiteStatementType;->getSqlStatementType(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x1

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p2, 0x6

    if-eq p1, p2, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    invoke-virtual {p0, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->endTransaction(Landroidx/core/os/CancellationSignal;)V

    return v0

    :cond_19
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    invoke-virtual {p0, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->endTransaction(Landroidx/core/os/CancellationSignal;)V

    return v0

    :cond_20
    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V

    return v0
.end method

.method public hasConnection()Z
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasNestedTransaction()Z
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mParent:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasTransaction()Z
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Lio/requery/android/database/sqlite/SQLiteSession$Transaction;
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionPool:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v2, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mParent:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionPool:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mParent:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    iput-boolean p0, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_16

    :cond_11
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;-><init>(Lio/requery/android/database/sqlite/SQLiteSession$1;)V

    :goto_16
    iput p1, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mMode:I

    iput-object p2, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    return-object v0
.end method

.method public prepare(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V
    .registers 5

    if-eqz p1, :cond_18

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lio/requery/android/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)V

    :try_start_a
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p2, p1, p4}, Lio/requery/android/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    return-void

    :catchall_13
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->releaseConnection()V

    throw p1

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final recycleTransaction(Lio/requery/android/database/sqlite/SQLiteSession$Transaction;)V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionPool:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mParent:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    const/4 v0, 0x0

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionPool:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    return-void
.end method

.method public final releaseConnection()V
    .registers 4

    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_17

    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->releaseConnection(Lio/requery/android/database/sqlite/SQLiteConnection;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_13

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    goto :goto_17

    :catchall_13
    move-exception v1

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    throw v1

    :cond_17
    :goto_17
    return-void
.end method

.method public setTransactionSuccessful()V
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    return-void
.end method

.method public final throwIfNestedTransaction()V
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final throwIfNoTransaction()V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot perform this operation because there is no current transaction."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final throwIfTransactionMarkedSuccessful()V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz p0, :cond_11

    iget-boolean p0, p0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez p0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    return-void
.end method

.method public yieldTransaction(JZLandroidx/core/os/CancellationSignal;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    goto :goto_1a

    :cond_d
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz p3, :cond_26

    iget-boolean v1, p3, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_26

    iget-object p3, p3, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mParent:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    if-eqz p3, :cond_1a

    goto :goto_26

    :cond_1a
    :goto_1a
    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iget-boolean p3, p3, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-eqz p3, :cond_21

    return v0

    :cond_21
    invoke-virtual {p0, p1, p2, p4}, Lio/requery/android/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroidx/core/os/CancellationSignal;)Z

    move-result p0

    return p0

    :cond_26
    :goto_26
    return v0
.end method

.method public final yieldTransactionUnchecked(JLandroidx/core/os/CancellationSignal;)Z
    .registers 10

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_5
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Lio/requery/android/database/sqlite/SQLiteConnection;I)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mTransactionStack:Lio/requery/android/database/sqlite/SQLiteSession$Transaction;

    iget v1, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mMode:I

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteSession;->mConnectionFlags:I

    const/4 v3, 0x1

    invoke-virtual {p0, p3, v3}, Lio/requery/android/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroidx/core/os/CancellationSignal;Z)V

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_28

    :try_start_25
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_28

    :catch_28
    :cond_28
    invoke-virtual {p0, v1, v0, v2, p3}, Lio/requery/android/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V

    return v3
.end method
