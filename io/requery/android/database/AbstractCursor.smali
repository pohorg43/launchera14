.class public abstract Lio/requery/android/database/AbstractCursor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field public mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field public mContentResolver:Landroid/content/ContentResolver;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field public mPos:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lio/requery/android/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return-void
.end method


# virtual methods
.method public checkPosition()V
    .registers 3

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_e

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_e

    return-void

    :cond_e
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->onDeactivateOrClose()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 6

    invoke-virtual {p0, p1}, Lio/requery/android/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_28

    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v0, :cond_1b

    array-length v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    goto :goto_1b

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0, p1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_21

    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p2, Landroid/database/CharArrayBuffer;->data:[C

    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    iput p0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_2a

    :cond_28
    iput p1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :goto_2a
    return-void
.end method

.method public deactivate()V
    .registers 1

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->onDeactivateOrClose()V

    return-void
.end method

.method public finalize()V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    :try_start_d
    iget-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method

.method public getBlob(I)[B
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getBlob is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getColumnCount()I
    .registers 1

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 7

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requesting column name with table name -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cursor"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2a
    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v0, :cond_3e

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    return v2

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3e
    return v1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0, p1}, Lio/requery/android/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_7

    return p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "column \'"

    const-string v1, "\' does not exist"

    invoke-static {v0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getPosition()I
    .registers 1

    iget p0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return p0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getType(I)I
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isAfterLast()Z
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result p0

    if-ne v0, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final isBeforeFirst()Z
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_e

    iget p0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public isClosed()Z
    .registers 1

    iget-boolean p0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    return p0
.end method

.method public final isFirst()Z
    .registers 2

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isLast()Z
    .registers 3

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    iget p0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/lit8 v1, v0, -0x1

    if-ne p0, v1, :cond_e

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .registers 3

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public final moveToFirst()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public final moveToLast()Z
    .registers 2

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public final moveToNext()Z
    .registers 2

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public final moveToPosition(I)Z
    .registers 4

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_a

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return v1

    :cond_a
    const/4 v0, -0x1

    if-gez p1, :cond_10

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    return v1

    :cond_10
    iget v1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    if-ne p1, v1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    invoke-virtual {p0, v1, p1}, Lio/requery/android/database/AbstractCursor;->onMove(II)Z

    move-result v1

    if-nez v1, :cond_1f

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    goto :goto_21

    :cond_1f
    iput p1, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    :goto_21
    return v1
.end method

.method public final moveToPrevious()Z
    .registers 2

    iget v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/requery/android/database/AbstractCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public onChange(Z)V
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    iget-object p1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    throw p0

    :catchall_1a
    move-exception p0

    goto :goto_18
.end method

.method public onDeactivateOrClose()V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    :cond_c
    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public abstract onMove(II)Z
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {p0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public requery()Z
    .registers 5

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-boolean v2, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    :cond_12
    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_4
    iput-object p1, p0, Lio/requery/android/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p2, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iput-object p1, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz p2, :cond_e

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_e
    new-instance p1, Lio/requery/android/database/AbstractCursor$SelfContentObserver;

    invoke-direct {p1, p0}, Lio/requery/android/database/AbstractCursor$SelfContentObserver;-><init>(Lio/requery/android/database/AbstractCursor;)V

    iput-object p1, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    iget-object p2, p0, Lio/requery/android/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lio/requery/android/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v2, p0, Lio/requery/android/database/AbstractCursor;->mSelfObserverRegistered:Z

    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3

    iget-boolean v0, p0, Lio/requery/android/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_9

    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {p0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
