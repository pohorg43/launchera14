.class public Lio/requery/android/database/sqlite/SQLiteCursor;
.super Lio/requery/android/database/AbstractWindowedCursor;
.source ""


# static fields
.field public static final NO_COUNT:I = -0x1

.field public static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private final mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

.field private mColumnNameArray:Landroid/util/SparseIntArray;

.field private mColumnNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorWindowCapacity:I

.field private final mDriver:Lio/requery/android/database/sqlite/SQLiteCursorDriver;

.field private final mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;


# direct methods
.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteQuery;)V
    .registers 4

    invoke-direct {p0}, Lio/requery/android/database/AbstractWindowedCursor;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    if-eqz p3, :cond_19

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mDriver:Lio/requery/android/database/sqlite/SQLiteCursorDriver;

    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    invoke-static {}, Lio/requery/android/database/sqlite/CloseGuard;->get()Lio/requery/android/database/sqlite/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    invoke-virtual {p3}, Lio/requery/android/database/sqlite/SQLiteProgram;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "query object cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cursorPickFillWindowStartPosition(II)I
    .registers 2

    div-int/lit8 p1, p1, 0x3

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private fillWindow(I)V
    .registers 7

    const-string v0, "SQLiteCursor"

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteCursor;->getDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/requery/android/database/AbstractWindowedCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    :try_start_d
    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_48

    invoke-static {p1, v3}, Lio/requery/android/database/sqlite/SQLiteCursor;->cursorPickFillWindowStartPosition(II)I

    move-result v1

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    iget-object v3, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, p1, v4}, Lio/requery/android/database/sqlite/SQLiteQuery;->fillWindow(Lio/requery/android/database/CursorWindow;IIZ)I

    move-result p1

    iput p1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    iget-object p1, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    invoke-virtual {p1}, Lio/requery/android/database/CursorWindow;->getNumRows()I

    move-result p1

    iput p1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    const/4 p1, 0x3

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_55

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received count(*) from native_fill_window: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_48
    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    invoke-static {p1, v0}, Lio/requery/android/database/sqlite/SQLiteCursor;->cursorPickFillWindowStartPosition(II)I

    move-result v0

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    iget-object v2, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    invoke-virtual {v1, v2, v0, p1, v3}, Lio/requery/android/database/sqlite/SQLiteQuery;->fillWindow(Lio/requery/android/database/CursorWindow;IIZ)I
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    return-void

    :catch_56
    move-exception p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteCursor;->setWindow(Lio/requery/android/database/CursorWindow;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-super {p0}, Lio/requery/android/database/AbstractCursor;->close()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mDriver:Lio/requery/android/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Lio/requery/android/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public deactivate()V
    .registers 1

    invoke-super {p0}, Lio/requery/android/database/AbstractCursor;->deactivate()V

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mDriver:Lio/requery/android/database/sqlite/SQLiteCursorDriver;

    invoke-interface {p0}, Lio/requery/android/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    return-void
.end method

.method public finalize()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteCursor;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    :cond_c
    invoke-super {p0}, Lio/requery/android/database/AbstractCursor;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Lio/requery/android/database/AbstractCursor;->finalize()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 11

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumnNameArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_46

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/HashMap;

    if-nez v0, :cond_46

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    array-length v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_14
    if-ge v6, v3, :cond_2a

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v4, v7, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eq v8, v2, :cond_24

    move v6, v1

    goto :goto_2b

    :cond_24
    invoke-virtual {v4, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_2a
    move v6, v5

    :goto_2b
    if-eqz v6, :cond_44

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/HashMap;

    :goto_34
    if-ge v5, v3, :cond_46

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/HashMap;

    aget-object v6, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_44
    iput-object v4, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumnNameArray:Landroid/util/SparseIntArray;

    :cond_46
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_6e

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requesting column name with table name -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SQLiteCursor"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_6e
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_80

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_7b

    goto :goto_7f

    :cond_7b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_7f
    return v2

    :cond_80
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumnNameArray:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .registers 3

    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_9
    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    return p0
.end method

.method public getDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public onMove(II)Z
    .registers 4

    iget-object p1, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lio/requery/android/database/CursorWindow;->getStartPosition()I

    move-result p1

    if-lt p2, p1, :cond_19

    iget-object p1, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    invoke-virtual {p1}, Lio/requery/android/database/CursorWindow;->getStartPosition()I

    move-result p1

    iget-object v0, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    invoke-virtual {v0}, Lio/requery/android/database/CursorWindow;->getNumRows()I

    move-result v0

    add-int/2addr v0, p1

    if-lt p2, v0, :cond_1c

    :cond_19
    invoke-direct {p0, p2}, Lio/requery/android/database/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public requery()Z
    .registers 5

    invoke-virtual {p0}, Lio/requery/android/database/AbstractCursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteProgram;->getDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_17

    monitor-exit p0

    return v1

    :cond_17
    iget-object v0, p0, Lio/requery/android/database/AbstractWindowedCursor;->mWindow:Lio/requery/android/database/CursorWindow;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lio/requery/android/database/CursorWindow;->clear()V

    :cond_1e
    const/4 v0, -0x1

    iput v0, p0, Lio/requery/android/database/AbstractCursor;->mPos:I

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mDriver:Lio/requery/android/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p0}, Lio/requery/android/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_46

    :try_start_29
    invoke-super {p0}, Lio/requery/android/database/AbstractCursor;->requery()Z

    move-result p0
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    move-exception p0

    const-string v0, "SQLiteCursor"

    const-string v2, "requery() failed "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mDriver:Lio/requery/android/database/sqlite/SQLiteCursorDriver;

    invoke-interface {p0, p1}, Lio/requery/android/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    return-void
.end method

.method public setWindow(Lio/requery/android/database/CursorWindow;)V
    .registers 2

    invoke-super {p0, p1}, Lio/requery/android/database/AbstractWindowedCursor;->setWindow(Lio/requery/android/database/CursorWindow;)V

    const/4 p1, -0x1

    iput p1, p0, Lio/requery/android/database/sqlite/SQLiteCursor;->mCount:I

    return-void
.end method
