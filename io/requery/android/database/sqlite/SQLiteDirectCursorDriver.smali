.class public final Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/requery/android/database/sqlite/SQLiteCursorDriver;


# instance fields
.field public final mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field public final mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field public final mEditTable:Ljava/lang/String;

.field public mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

.field public final mSql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    iput-object p4, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .registers 1

    return-void
.end method

.method public cursorDeactivated()V
    .registers 1

    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .registers 2

    return-void
.end method

.method public query(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 7

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteQuery;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-direct {v0, v1, v2, p2, v3}, Lio/requery/android/database/sqlite/SQLiteQuery;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    if-nez p1, :cond_15

    :try_start_d
    new-instance p1, Lio/requery/android/database/sqlite/SQLiteCursor;

    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v0}, Lio/requery/android/database/sqlite/SQLiteCursor;-><init>(Lio/requery/android/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteQuery;)V

    goto :goto_1d

    :cond_15
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, p2, p0, v1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Lio/requery/android/database/sqlite/SQLiteDatabase;Lio/requery/android/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1d} :catch_20

    :goto_1d
    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    return-object p1

    :catch_20
    move-exception p0

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw p0
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Lio/requery/android/database/sqlite/SQLiteQuery;

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindAllArgsAsStrings([Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SQLiteDirectCursorDriver: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
