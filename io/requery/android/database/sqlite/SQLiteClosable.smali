.class public abstract Lio/requery/android/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteClosable;->mReferenceCount:I

    return-void
.end method


# virtual methods
.method public acquireReference()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-lez v0, :cond_b

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteClosable;->mReferenceCount:I

    monitor-exit p0

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to re-open an already-closed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return-void
.end method

.method public abstract onAllReferencesReleased()V
.end method

.method public releaseReference()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method
