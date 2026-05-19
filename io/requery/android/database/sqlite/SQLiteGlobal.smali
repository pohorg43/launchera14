.class public final Lio/requery/android/database/sqlite/SQLiteGlobal;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static sDefaultPageSize:I

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultJournalMode()Ljava/lang/String;
    .registers 1

    const-string v0, "TRUNCATE"

    return-object v0
.end method

.method public static getDefaultPageSize()I
    .registers 3

    sget-object v0, Lio/requery/android/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lio/requery/android/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    if-nez v1, :cond_14

    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    sput v1, Lio/requery/android/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    :cond_14
    const/16 v1, 0x400

    monitor-exit v0

    return v1

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static getDefaultSyncMode()Ljava/lang/String;
    .registers 1

    const-string v0, "FULL"

    return-object v0
.end method

.method public static getJournalSizeLimit()I
    .registers 1

    const/high16 v0, 0x80000

    return v0
.end method

.method public static getWALAutoCheckpoint()I
    .registers 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getWALConnectionPoolSize()I
    .registers 1

    const/16 v0, 0xa

    return v0
.end method

.method public static getWALSyncMode()Ljava/lang/String;
    .registers 1

    const-string v0, "normal"

    return-object v0
.end method

.method public static native nativeReleaseMemory()I
.end method

.method public static releaseMemory()I
    .registers 1

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->nativeReleaseMemory()I

    move-result v0

    return v0
.end method
