.class public final Lio/requery/android/database/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;,
        Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    }
.end annotation


# instance fields
.field public final mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lio/requery/android/database/sqlite/SQLiteConnection;",
            "Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

.field public final mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

.field public final mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

.field public final mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mConnectionWaiterPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field public mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field public mIsOpen:Z

.field public final mLock:Ljava/lang/Object;

.field public mMaxConnectionPoolSize:I

.field public mNextConnectionId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    return-void
.end method

.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/requery/android/database/sqlite/CloseGuard;->get()Lio/requery/android/database/sqlite/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    return-void
.end method

.method public static synthetic access$000(Lio/requery/android/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lio/requery/android/database/sqlite/SQLiteConnectionPool;Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    return-void
.end method

.method public static getPriority(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static open(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)Lio/requery/android/database/sqlite/SQLiteConnectionPool;
    .registers 2

    if-eqz p0, :cond_b

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->open()V

    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "configuration must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public acquireConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)Lio/requery/android/database/sqlite/SQLiteConnection;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method

.method public final cancelConnectionWaiterLocked(Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 5

    iget-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_2e

    iget-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_9

    goto :goto_2e

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    :goto_c
    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    if-eq v0, p1, :cond_14

    iget-object v1, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_c

    :cond_14
    if-eqz v1, :cond_1b

    iget-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_1f

    :cond_1b
    iget-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    :goto_1f
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    iget-object p1, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->dispose(Z)V

    return-void
.end method

.method public final closeAvailableConnectionsAndLogExceptionsLocked()V
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    :cond_d
    return-void
.end method

.method public final closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p0, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    goto :goto_6

    :cond_16
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SQLiteConnectionPool"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public final closeExcessConnectionsAndLogExceptionsLocked()V
    .registers 4

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1b

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    move v0, v1

    goto :goto_6

    :cond_1b
    return-void
.end method

.method public collectDbStats(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    :cond_a
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_10

    :cond_20
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v1, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    goto :goto_2a

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final discardAcquiredConnectionsLocked()V
    .registers 2

    sget-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    return-void
.end method

.method public final dispose(Z)V
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/CloseGuard;->warnIfOpen()V

    :cond_9
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/CloseGuard;->close()V

    :cond_e
    if-nez p1, :cond_53

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_13
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-eqz v0, :cond_4b

    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The connection pool for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been closed but there are still "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " connections in use.  They will be closed as they are released back to the pool."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    monitor-exit p1

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit p1
    :try_end_52
    .catchall {:try_start_13 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    :goto_53
    return-void
.end method

.method public dump(Landroid/util/Printer;Z)V
    .registers 9

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection pool for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string v1, "  Available primary connection:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_59

    invoke-virtual {v1, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    goto :goto_5e

    :cond_59
    const-string v1, "<none>"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_5e
    const-string v1, "  Available non-primary connections:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    goto :goto_71

    :cond_81
    const-string v1, "<none>"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_86
    const-string v1, "  Acquired connections:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cb

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v3, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_9d

    :cond_cb
    const-string p2, "<none>"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_d0
    const-string p2, "  Connection waiters:"

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-eqz p2, :cond_12a

    const/4 p2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    :goto_e0
    if-eqz p0, :cond_12f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": waited for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const v5, 0x3a83126f  # 0.001f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ms - thread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sql=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_e0

    :cond_12a
    const-string p0, "<none>"

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_12f
    monitor-exit v0

    return-void

    :catchall_131
    move-exception p0

    monitor-exit v0
    :try_end_133
    .catchall {:try_start_3 .. :try_end_133} :catchall_131

    throw p0
.end method

.method public enableLocalizedCollators()V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->enableLocalizedCollators()V

    monitor-exit v0

    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enable localized collators while database is in use"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final finishAcquireConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;I)V
    .registers 6

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    :try_start_7
    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare acquired connection for session, closing it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", connectionFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SQLiteConnectionPool"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    throw v0
.end method

.method public final isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .registers 4

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-eqz p0, :cond_1b

    invoke-static {p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result p2

    :cond_8
    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le p2, v0, :cond_d

    goto :goto_1b

    :cond_d
    if-nez p1, :cond_19

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-nez p0, :cond_8

    goto :goto_1b

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final logConnectionPoolBusyLocked(JI)V
    .registers 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "The connection pool for database \'"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' has been unable to grant a connection to thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "with flags 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float p1, p1

    const p2, 0x3a83126f  # 0.001f

    mul-float/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " seconds.\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_80

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, p3

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_7d
    add-int/lit8 p3, p3, 0x1

    goto :goto_65

    :cond_80
    move v0, p3

    :cond_81
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-eqz p0, :cond_8d

    add-int/lit8 p2, p2, 0x1

    :cond_8d
    const-string p0, "Connections: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " active, "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " idle, "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " available.\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_cd

    const-string p0, "\nRequests in progress:\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_cd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "  "

    const-string p3, "\n"

    invoke-static {v1, p2, p1, p3}, Landroidx/concurrent/futures/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    :cond_cd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SQLiteConnectionPool"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final markAcquiredConnectionsLocked(Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .registers 7

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq p1, v3, :cond_1d

    sget-object v4, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq v3, v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteConnection;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    :cond_53
    return-void
.end method

.method public final obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .registers 11

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v1, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_11

    :cond_c
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool$1;)V

    :goto_11
    iput-object p1, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    iput-wide p2, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    iput p4, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    iput-boolean p5, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    iput-object p6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iput p7, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    return-object v0
.end method

.method public onConnectionLeaked()V
    .registers 3

    const-string v0, "A SQLiteConnection object for database \'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteConnectionPool"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final open()V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Z)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    iput-boolean v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public final openConnectionLocked(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Z)Lio/requery/android/database/sqlite/SQLiteConnection;
    .registers 5

    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    invoke-static {p0, p1, v0, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->open(Lio/requery/android/database/sqlite/SQLiteConnectionPool;Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;IZ)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method

.method public reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    if-eqz p1, :cond_81

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    iget v1, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    if-eqz v1, :cond_2f

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    goto :goto_2f

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    iget-boolean v4, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v5, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v5, v5, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eq v4, v5, :cond_38

    move v2, v3

    :cond_38
    if-eqz v2, :cond_4b

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_4b

    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    :goto_4b
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v5, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    if-eq v4, v5, :cond_6d

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    :cond_58
    invoke-virtual {p0, p1, v3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Z)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, p1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    goto :goto_79

    :cond_6d
    invoke-virtual {v2, p1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V

    :goto_79
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    monitor-exit v0

    return-void

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_7e

    throw p0

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configuration must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reconfigureAllConnectionsLocked()V
    .registers 8

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const-string v1, "SQLiteConnectionPool"

    if-eqz v0, :cond_27

    :try_start_6
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception v0

    const-string v2, "Failed to reconfigure available primary connection, closing it: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    :cond_27
    :goto_27
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v0, :cond_63

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/requery/android/database/sqlite/SQLiteConnection;

    :try_start_38
    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_60

    :catch_3e
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reconfigure available non-primary connection, closing it: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_63
    sget-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    return-void
.end method

.method public final recycleConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .registers 5

    sget-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_23

    :try_start_4
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_23

    :catch_a
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to reconfigure released connection, closing it: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteConnectionPool"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    :cond_23
    :goto_23
    sget-object v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_2c

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    const/4 p0, 0x0

    return p0

    :cond_2c
    const/4 p0, 0x1

    return p0
.end method

.method public final recycleConnectionWaiterLocked(Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    const/4 v0, 0x0

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    iget v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    return-void
.end method

.method public releaseConnection(Lio/requery/android/database/sqlite/SQLiteConnection;)V
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eqz v1, :cond_47

    iget-boolean v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v2, :cond_15

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    goto :goto_45

    :cond_15
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_23

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    :cond_23
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_45

    :cond_27
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_37

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lio/requery/android/database/sqlite/SQLiteConnection;)V

    goto :goto_45

    :cond_37
    invoke-virtual {p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;Lio/requery/android/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    :goto_45
    monitor-exit v0

    return-void

    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final setMaxConnectionPoolSizeLocked()V
    .registers 3

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->hasCodec()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    move-result v0

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    goto :goto_19

    :cond_16
    const/4 v0, 0x1

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    :goto_19
    return-void
.end method

.method public shouldYieldConnection(Lio/requery/android/database/sqlite/SQLiteConnection;I)Z
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_12

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_12
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final throwIfClosedLocked()V
    .registers 2

    iget-boolean p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot perform this operation because the connection pool has been closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SQLiteConnectionPool: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteConnection;
    .registers 9

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_29

    if-eqz p1, :cond_29

    move v3, v1

    :goto_d
    if-ge v3, v0, :cond_29

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v4, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v4, p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;I)V

    return-object v4

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_29
    if-lez v0, :cond_38

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;I)V

    return-object p1

    :cond_38
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_44

    add-int/lit8 p1, p1, 0x1

    :cond_44
    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-lt p1, v0, :cond_4a

    const/4 p0, 0x0

    return-object p0

    :cond_4a
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Z)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;I)V

    return-object p1
.end method

.method public final tryAcquirePrimaryConnectionLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection;
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {p0, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;I)V

    return-object v0

    :cond_b
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v1

    :cond_28
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Z)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lio/requery/android/database/sqlite/SQLiteConnection;I)V

    return-object v0
.end method

.method public final waitForConnection(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;)Lio/requery/android/database/sqlite/SQLiteConnection;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    and-int/lit8 v1, v9, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_e

    move v6, v11

    goto :goto_f

    :cond_e
    move v6, v12

    :goto_f
    iget-object v13, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    if-eqz v10, :cond_1a

    invoke-virtual/range {p3 .. p3}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    :cond_1a
    const/4 v14, 0x0

    if-nez v6, :cond_22

    invoke-virtual/range {p0 .. p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object v1

    goto :goto_23

    :cond_22
    move-object v1, v14

    :goto_23
    if-nez v1, :cond_29

    invoke-virtual {v0, v9}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object v1

    :cond_29
    if-eqz v1, :cond_2d

    monitor-exit v13

    return-object v1

    :cond_2d
    invoke-static/range {p2 .. p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v1, p0

    move v5, v15

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-result-object v1

    iget-object v2, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object v3, v14

    :goto_47
    if-eqz v2, :cond_58

    iget v4, v2, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v15, v4, :cond_50

    iput-object v2, v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_58

    :cond_50
    iget-object v3, v2, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto :goto_47

    :cond_58
    :goto_58
    if-eqz v3, :cond_5d

    iput-object v1, v3, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_5f

    :cond_5d
    iput-object v1, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    :goto_5f
    iget v2, v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    monitor-exit v13
    :try_end_62
    .catchall {:try_start_12 .. :try_end_62} :catchall_cc

    if-eqz v10, :cond_6c

    new-instance v3, Lio/requery/android/database/sqlite/SQLiteConnectionPool$1;

    invoke-direct {v3, v0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool$1;-><init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool;Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V

    invoke-virtual {v10, v3}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    :cond_6c
    :try_start_6c
    iget-wide v2, v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    move-wide v6, v4

    :goto_72
    iget-object v8, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_85

    iget-object v8, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_7d
    .catchall {:try_start_6c .. :try_end_7d} :catchall_c5

    :try_start_7d
    invoke-virtual/range {p0 .. p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    monitor-exit v8

    goto :goto_85

    :catchall_82
    move-exception v0

    monitor-exit v8
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_82

    :try_start_84
    throw v0

    :cond_85
    :goto_85
    const-wide/32 v15, 0xf4240

    mul-long/2addr v6, v15

    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-object v6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_c5

    :try_start_92
    invoke-virtual/range {p0 .. p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    iget-object v7, v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lio/requery/android/database/sqlite/SQLiteConnection;

    iget-object v8, v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-nez v7, :cond_b5

    if-eqz v8, :cond_9e

    goto :goto_b5

    :cond_9e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v13, v7, v2

    if-gez v13, :cond_a8

    sub-long/2addr v7, v2

    goto :goto_b2

    :cond_a8
    iget-wide v2, v1, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v2, v7, v2

    invoke-virtual {v0, v2, v3, v9}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V

    add-long/2addr v7, v4

    move-wide v2, v7

    move-wide v7, v4

    :goto_b2
    monitor-exit v6

    move-wide v6, v7

    goto :goto_72

    :cond_b5
    :goto_b5
    invoke-virtual {v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    if-eqz v7, :cond_c1

    monitor-exit v6
    :try_end_bb
    .catchall {:try_start_92 .. :try_end_bb} :catchall_c2

    if-eqz v10, :cond_c0

    invoke-virtual {v10, v14}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    :cond_c0
    return-object v7

    :cond_c1
    :try_start_c1
    throw v8

    :catchall_c2
    move-exception v0

    monitor-exit v6
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v0

    if-eqz v10, :cond_cb

    invoke-virtual {v10, v14}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    :cond_cb
    throw v0

    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit v13
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v0
.end method

.method public final wakeConnectionWaitersLocked()V
    .registers 10

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v5, v3

    move-object v4, v2

    :goto_7
    if-eqz v0, :cond_54

    iget-boolean v6, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    const/4 v7, 0x1

    if-nez v6, :cond_f

    goto :goto_3e

    :cond_f
    :try_start_f
    iget-boolean v6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v6, :cond_21

    if-nez v3, :cond_21

    iget-object v6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iget v8, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-virtual {p0, v6, v8}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object v6

    if-nez v6, :cond_22

    move v3, v7

    goto :goto_22

    :cond_21
    move-object v6, v2

    :cond_22
    :goto_22
    if-nez v6, :cond_2f

    if-nez v5, :cond_2f

    iget v6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-virtual {p0, v6}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lio/requery/android/database/sqlite/SQLiteConnection;

    move-result-object v6

    if-nez v6, :cond_2f

    move v5, v7

    :cond_2f
    if-eqz v6, :cond_34

    iput-object v6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lio/requery/android/database/sqlite/SQLiteConnection;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_33} :catch_3b

    goto :goto_3e

    :cond_34
    if-eqz v3, :cond_39

    if-eqz v5, :cond_39

    goto :goto_54

    :cond_39
    move v7, v1

    goto :goto_3e

    :catch_3b
    move-exception v6

    iput-object v6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    :goto_3e
    iget-object v6, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-eqz v7, :cond_51

    if-eqz v4, :cond_47

    iput-object v6, v4, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_49

    :cond_47
    iput-object v6, p0, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    :goto_49
    iput-object v2, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_52

    :cond_51
    move-object v4, v0

    :goto_52
    move-object v0, v6

    goto :goto_7

    :cond_54
    :goto_54
    return-void
.end method
