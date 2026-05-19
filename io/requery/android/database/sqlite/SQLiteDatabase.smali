.class public final Lio/requery/android/database/sqlite/SQLiteDatabase;
.super Lio/requery/android/database/sqlite/SQLiteClosable;
.source ""

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ShiftFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/SQLiteDatabase$Function;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;,
        Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x6

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final LIBRARY_NAME:Ljava/lang/String; = "sqlite3x"

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final OPEN_CREATE:I = 0x4

.field public static final OPEN_FULLMUTEX:I = 0x10000

.field public static final OPEN_NOMUTEX:I = 0x8000

.field public static final OPEN_PRIVATECACHE:I = 0x40000

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x2

.field public static final OPEN_SHAREDCACHE:I = 0x20000

.field public static final OPEN_URI:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static final sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

.field private final mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

.field private final mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/requery/android/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-class v0, Lio/requery/android/database/sqlite/SQLiteDatabase;

    const-string v0, "sqlite3x"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const-string v1, ""

    const-string v2, " OR ROLLBACK "

    const-string v3, " OR ABORT "

    const-string v4, " OR FAIL "

    const-string v5, " OR IGNORE "

    const-string v6, " OR REPLACE "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V
    .registers 5

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;-><init>()V

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase$1;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    invoke-static {}, Lio/requery/android/database/sqlite/CloseGuard;->get()Lio/requery/android/database/sqlite/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    if-eqz p3, :cond_1c

    goto :goto_21

    :cond_1c
    new-instance p3, Lio/requery/android/database/DefaultDatabaseErrorHandler;

    invoke-direct {p3}, Lio/requery/android/database/DefaultDatabaseErrorHandler;-><init>()V

    :goto_21
    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    return-void
.end method

.method public static synthetic access$000(Lio/requery/android/database/sqlite/SQLiteDatabase;)Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lio/requery/android/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroidx/core/os/CancellationSignal;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_14
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public static blobFileDescriptorForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindAllArgsAsStrings([Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static create(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 3

    const-string v0, ":memory:"

    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_96

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_95

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-mj"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lio/requery/android/database/sqlite/SQLiteDatabase$2;

    invoke-direct {v2, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_89
    if-ge v2, v1, :cond_95

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_95
    return v0

    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dispose(Z)V
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    if-eqz v1, :cond_11

    if-eqz p1, :cond_c

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/CloseGuard;->warnIfOpen()V

    :cond_c
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/CloseGuard;->close()V

    :cond_11
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2a

    if-nez p1, :cond_29

    sget-object p1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter p1

    :try_start_1c
    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_26

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->close()V

    goto :goto_29

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0

    :cond_29
    :goto_29
    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private dump(Landroid/util/Printer;Z)V
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v1, :cond_11

    const-string v1, ""

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;Z)V

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static dumpAll(Landroid/util/Printer;Z)V
    .registers 4

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dump(Landroid/util/Printer;Z)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static ensureFile(Ljava/lang/String;)V
    .registers 5

    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_65

    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_35

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_35

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t mkdirs "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_65

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_4f} :catch_50

    goto :goto_65

    :catch_50
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t ensure file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    :goto_65
    return-void
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-direct {v0, p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    :try_start_8
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_13

    :try_start_c
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_13
    move-exception p1

    :try_start_14
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_1e

    if-lt v0, v1, :cond_19

    if-gez v1, :cond_1e

    :cond_19
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    if-lez v1, :cond_28

    if-lt v1, v0, :cond_24

    if-gez v0, :cond_28

    :cond_24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_28
    return-object p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid tables"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_8
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public static getDbStats()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method public static hasCodec()Z
    .registers 1

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->hasCodec()Z

    move-result v0

    return v0
.end method

.method private static isMainThread()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isReadOnlyLocked()Z
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static longForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .registers 2

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindAllArgsAsStrings([Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private open()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_15

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->ensureFile(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_15} :catch_20

    :cond_15
    :try_start_15
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_18} :catch_20

    goto :goto_1f

    :catch_19
    :try_start_19
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->onCorruption()V

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v1, "Failed to open database \'"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteDatabase"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw v0
.end method

.method public static openDatabase(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 4

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V

    invoke-direct {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->open()V

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 5

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    new-instance p0, Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)V

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->open()V

    return-object p0
.end method

.method private openInner()V
    .registers 4

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->open(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    move-result-object v1

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Lio/requery/android/database/sqlite/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/CloseGuard;->open(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_21

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_17
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw p0

    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_21

    throw p0

    :catchall_21
    move-exception p0

    goto :goto_1f
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 4

    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static releaseMemory()I
    .registers 1

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method public static stringForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindAllArgsAsStrings([Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private throwIfNotOpenLocked()V
    .registers 4

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The database \'"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    const-string v2, "\' is not open."

    invoke-static {v1, p0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .registers 6

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroidx/core/os/CancellationSignal;)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_10
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteCustomFunction;

    invoke-direct {v0, p1, p2, p3}, Lio/requery/android/database/sqlite/SQLiteCustomFunction;-><init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;)V

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p2, p2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_24

    :try_start_12
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1b
    .catchall {:try_start_12 .. :try_end_19} :catchall_24

    :try_start_19
    monitor-exit p1

    return-void

    :catch_1b
    move-exception p2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p2

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V

    return-void
.end method

.method public addFunction(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V
    .registers 6

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/requery/android/database/sqlite/SQLiteFunction;-><init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$Function;I)V

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p2, p2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_24

    :try_start_12
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    iget-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_19} :catch_1b
    .catchall {:try_start_12 .. :try_end_19} :catchall_24

    :try_start_19
    monitor-exit p1

    return-void

    :catch_1b
    move-exception p2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p2

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public beginTransaction()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionDeferred()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionNonExclusive()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListenerDeferred(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;I)V

    return-void
.end method

.method public blobFileDescriptorForQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    :try_start_4
    invoke-static {p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->blobFileDescriptorForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    return-object p1

    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p1
.end method

.method public bridge synthetic compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .registers 2

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object v0

    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public createSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteSession;

    invoke-direct {v0, p0}, Lio/requery/android/database/sqlite/SQLiteSession;-><init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool;)V

    return-object v0

    :catchall_f
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 7

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_2a
    const-string p1, ""

    :goto_2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_46

    :try_start_36
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_41

    :try_start_3a
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_46

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_41
    move-exception p1

    :try_start_42
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_2a
    const-string p1, ""

    :goto_2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_46

    :try_start_36
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_41

    :try_start_3a
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_46

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_41
    move-exception p1

    :try_start_42
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public disableWriteAheadLogging()V
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v3, 0x20000000

    and-int v4, v2, v3

    if-nez v4, :cond_12

    monitor-exit v0

    return-void

    :cond_12
    const v4, -0x20000001

    and-int/2addr v2, v4

    iput v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_28

    :try_start_18
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1d} :catch_1f
    .catchall {:try_start_18 .. :try_end_1d} :catchall_28

    :try_start_1d
    monitor-exit v0

    return-void

    :catch_1f
    move-exception v1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    throw v1

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public enableLocalizedCollators()V
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->enableLocalizedCollators()V

    return-void
.end method

.method public enableWriteAheadLogging()Z
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    monitor-exit v0

    return v3

    :cond_12
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    monitor-exit v0

    return v4

    :cond_1b
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string p0, "SQLiteDatabase"

    const-string v1, "can\'t enable WAL for memory databases."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v4

    :cond_2c
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v2, v4

    iput v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_46

    :try_start_33
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_38} :catch_3a
    .catchall {:try_start_33 .. :try_end_38} :catchall_46

    :try_start_38
    monitor-exit v0

    return v3

    :catch_3a
    move-exception v1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v3, -0x20000001

    and-int/2addr v2, v3

    iput v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    throw v1

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public endTransaction()V
    .registers 3

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->endTransaction(Landroidx/core/os/CancellationSignal;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty bindArgs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    monitor-exit v1

    return-object v3

    :cond_f
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_45

    :try_start_13
    const-string v1, "pragma database_list;"

    invoke-virtual {p0, v1, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_39

    goto :goto_19

    :cond_32
    :try_start_32
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object v0

    :catchall_39
    move-exception v0

    if-eqz v3, :cond_3f

    :try_start_3c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getMaximumSize()J
    .registers 5

    const-string v0, "PRAGMA max_page_count;"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .registers 3

    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getThreadDefaultConnectionFlags(Z)I
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x2

    :goto_5
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_d

    or-int/lit8 p0, p0, 0x4

    :cond_d
    return p0
.end method

.method public getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/requery/android/database/sqlite/SQLiteSession;

    return-object p0
.end method

.method public getVersion()I
    .registers 3

    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0
.end method

.method public inTransaction()Z
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->hasTransaction()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_5} :catch_6

    return-wide p0

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error inserting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SQLiteDatabase"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 10

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object p4, v1, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " INTO "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/4 p4, 0x0

    if-eqz p3, :cond_30

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_30

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v1

    goto :goto_31

    :cond_30
    move v1, p4

    :goto_31
    const/16 v2, 0x29

    if-lez v1, :cond_80

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, p4

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez p3, :cond_51

    const-string v4, ","

    goto :goto_53

    :cond_51
    const-string v4, ""

    :goto_53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p3, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, p3

    move p3, v4

    goto :goto_40

    :cond_69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " VALUES ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_71
    if-ge p4, v1, :cond_94

    if-lez p4, :cond_78

    const-string p2, ",?"

    goto :goto_7a

    :cond_78
    const-string p2, "?"

    :goto_7a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_71

    :cond_80
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") VALUES (NULL"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p2, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_b0

    :try_start_a0
    invoke-virtual {p2}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide p3
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_ab

    :try_start_a4
    invoke-virtual {p2}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_b0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide p3

    :catchall_ab
    move-exception p1

    :try_start_ac
    invoke-virtual {p2}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p1
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public isDatabaseIntegrityOk()Z
    .registers 7

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_40

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "databaselist for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " couldn\'t be retrieved. probably because the database is closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_2a} :catch_2d
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    goto/16 :goto_b5

    :catch_2d
    :try_start_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "main"

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_50
    .catchall {:try_start_2d .. :try_end_50} :catchall_2a

    const/4 v2, 0x0

    :try_start_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PRAGMA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".integrity_check(1);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a5

    const-string v0, "SQLiteDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA integrity_check on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " returned: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_51 .. :try_end_9d} :catchall_a9

    const/4 v0, 0x0

    :try_start_9e
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_2a

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :cond_a5
    :try_start_a5
    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    goto :goto_44

    :catchall_a9
    move-exception v0

    if-eqz v2, :cond_af

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    :cond_af
    throw v0
    :try_end_b0
    .catchall {:try_start_a5 .. :try_end_b0} :catchall_2a

    :cond_b0
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    const/4 p0, 0x1

    return p0

    :goto_b5
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public isDbLockedByCurrentThread()Z
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->hasConnection()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public isInMemoryDatabase()Z
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isOpen()Z
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isReadOnly()Z
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public longForQuery(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 3

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    :try_start_4
    invoke-static {p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    return-wide p1

    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p1
.end method

.method public needUpgrade(I)Z
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p0

    if-le p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onAllReferencesReleased()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->dispose(Z)V

    return-void
.end method

.method public onCorruption()V
    .registers 3

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v0

    const v1, 0x124fc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Lio/requery/android/database/DatabaseErrorHandler;->onCorruption(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    if-eqz p2, :cond_14

    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    new-instance v1, Lio/requery/android/database/sqlite/SQLiteDatabase$3;

    invoke-direct {v1, p0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase$3;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {p2, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    invoke-virtual {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9

    new-instance v1, Lio/requery/android/database/sqlite/SQLiteDatabase$4;

    invoke-direct {v1, p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase$4;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x0

    new-array v3, p1, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lio/requery/android/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 23

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryNumEntries(Ljava/lang/String;)J
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryNumEntries(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryNumEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, " where "

    invoke-static {v0, p2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    :cond_d
    const-string p2, ""

    :goto_f
    const-string v0, "select count(*) from "

    invoke-static {v0, p1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lio/requery/android/database/sqlite/SQLiteDatabase;->queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 21

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    :try_start_f
    invoke-static/range {v1 .. v8}, Lio/requery/android/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v5, p6

    move-object/from16 v7, p11

    invoke-virtual/range {v2 .. v7}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object v0

    :catchall_24
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public rawQueryWithFactory(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 7

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)V

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mCursorFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    :goto_d
    invoke-interface {v0, p1, p3}, Lio/requery/android/database/sqlite/SQLiteCursorDriver;->query(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object p1

    :catchall_15
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public reopenReadWrite()V
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z

    move-result v1

    if-nez v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v3, v2, -0x2

    iput v3, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    :try_start_16
    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v3, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1b} :catch_1d
    .catchall {:try_start_16 .. :try_end_1b} :catchall_23

    :try_start_1b
    monitor-exit v0

    return-void

    :catch_1d
    move-exception v1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    throw v1

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_5} :catch_6

    return-wide p0

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error inserting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SQLiteDatabase"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-ne v2, p1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iput-boolean p1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    :try_start_10
    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_17
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    :try_start_15
    monitor-exit v0

    return-void

    :catch_17
    move-exception v1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    iput-boolean p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    throw v1

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 5

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iput-object p1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1b

    :try_start_e
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_15
    .catchall {:try_start_e .. :try_end_13} :catchall_1b

    :try_start_13
    monitor-exit v0

    return-void

    :catch_15
    move-exception p1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    throw p1

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "locale must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxSqlCacheSize(I)V
    .registers 5

    const/16 v0, 0x64

    if-gt p1, v0, :cond_22

    if-ltz p1, :cond_22

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    iput p1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f

    :try_start_12
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_19
    .catchall {:try_start_12 .. :try_end_17} :catchall_1f

    :try_start_17
    monitor-exit v0

    return-void

    :catch_19
    move-exception p1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput v2, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    throw p1

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "expected value between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaximumSize(J)J
    .registers 9

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    div-long v2, p1, v0

    rem-long/2addr p1, v0

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-eqz p1, :cond_10

    const-wide/16 p1, 0x1

    add-long/2addr v2, p1

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PRAGMA max_page_count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->longForQuery(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public setPageSize(J)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_3
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public setVersion(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public stringForQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteStatement;

    move-result-object p0

    :try_start_4
    invoke-static {p0, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->stringForQuery(Lio/requery/android/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    return-object p1

    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SQLiteDatabase: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 11

    if-eqz p3, :cond_a3

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-nez p5, :cond_2e

    move p2, p1

    goto :goto_30

    :cond_2e
    array-length p2, p5

    add-int/2addr p2, p1

    :goto_30
    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_4c

    const-string v4, ","

    goto :goto_4e

    :cond_4c
    const-string v4, ""

    :goto_4e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_3b

    :cond_69
    if-eqz p5, :cond_77

    move p3, p1

    :goto_6c
    if-ge p3, p2, :cond_77

    sub-int v2, p3, p1

    aget-object v2, p5, v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_6c

    :cond_77
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_85

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_b .. :try_end_8e} :catchall_9e

    :try_start_8e
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p2
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_99

    :try_start_92
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9e

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return p2

    :catchall_99
    move-exception p2

    :try_start_9a
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p2
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1

    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 11

    if-eqz p2, :cond_a3

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object p5, v1, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-nez p4, :cond_2e

    move p5, p1

    goto :goto_30

    :cond_2e
    array-length p5, p4

    add-int/2addr p5, p1

    :goto_30
    new-array v1, p5, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-lez v2, :cond_4c

    const-string v4, ","

    goto :goto_4e

    :cond_4c
    const-string v4, ""

    :goto_4e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_3b

    :cond_69
    if-eqz p4, :cond_77

    move p2, p1

    :goto_6c
    if-ge p2, p5, :cond_77

    sub-int v2, p2, p1

    aget-object v2, p4, v2

    aput-object v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6c

    :cond_77
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_85

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_b .. :try_end_8e} :catchall_9e

    :try_start_8e
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p2
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_99

    :try_start_92
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9e

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return p2

    :catchall_99
    move-exception p2

    :try_start_9a
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p2
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw p1

    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public validateSql(Ljava/lang/String;Landroidx/core/os/CancellationSignal;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lio/requery/android/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V

    return-void
.end method

.method public yieldIfContendedSafely()Z
    .registers 4

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result p0

    return p0
.end method

.method public yieldIfContendedSafely(J)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result p0

    return p0
.end method
