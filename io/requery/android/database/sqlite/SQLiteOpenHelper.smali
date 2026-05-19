.class public abstract Lio/requery/android/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# static fields
.field private static final DEBUG_STRICT_READONLY:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

.field private final mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    const-string v0, "SQLiteOpenHelper"

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p4, v0, :cond_11

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    iput p4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    iput-object p5, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Version must be >= 1, was "

    invoke-static {p1, p4}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCustomExtensions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/requery/android/database/sqlite/SQLiteCustomExtension;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteCustomExtension;

    const-string v1, "libsqlite3ext"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/requery/android/database/sqlite/SQLiteCustomExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getDatabaseLocked(Z)Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 8

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    goto :goto_1b

    :cond_e
    if-eqz p1, :cond_18

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_18
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    return-object p0

    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_133

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_23
    iput-boolean v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_95

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    goto :goto_95

    :cond_31
    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_3b

    invoke-static {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->create(Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_126

    :goto_39
    move-object v0, p1

    goto :goto_95

    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v4, :cond_4c

    const/high16 v4, 0x20000000

    goto :goto_4d

    :cond_4c
    move v4, v3

    :goto_4d
    or-int/lit8 v4, v4, 0x6

    invoke-virtual {p0, v1, v4}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object v1

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v5, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    invoke-static {v1, v4, v5}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_5b} :catch_5c
    .catchall {:try_start_3b .. :try_end_5b} :catchall_126

    goto :goto_39

    :catch_5c
    move-exception v1

    if-nez p1, :cond_125

    :try_start_5f
    sget-object p1, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object p1

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mFactory:Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mErrorHandler:Lio/requery/android/database/DatabaseErrorHandler;

    invoke-static {p1, v1, v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->openDatabase(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;Lio/requery/android/database/DatabaseErrorHandler;)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p1

    goto :goto_39

    :cond_95
    :goto_95
    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onConfigure(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p1

    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq p1, v1, :cond_fa

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_cb

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a9
    .catchall {:try_start_5f .. :try_end_a9} :catchall_126

    if-nez p1, :cond_af

    :try_start_ab
    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onCreate(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    goto :goto_ba

    :cond_af
    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le p1, v1, :cond_b7

    invoke-virtual {p0, v0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onDowngrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V

    goto :goto_ba

    :cond_b7
    invoke-virtual {p0, v0, p1, v1}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onUpgrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V

    :goto_ba
    iget p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c2
    .catchall {:try_start_ab .. :try_end_c2} :catchall_c6

    :try_start_c2
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_fa

    :catchall_c6
    move-exception p1

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :cond_cb
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t upgrade read-only database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fa
    :goto_fa
    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->onOpen(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_120

    sget-object p1, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in read-only mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_120
    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;
    :try_end_122
    .catchall {:try_start_c2 .. :try_end_122} :catchall_126

    iput-boolean v3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    return-object v0

    :cond_125
    :try_start_125
    throw v1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_126

    :catchall_126
    move-exception p1

    iput-boolean v3, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_132

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    if-eq v0, p0, :cond_132

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    :cond_132
    throw p1

    :cond_133
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getDatabase called recursively"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    :cond_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;
    .registers 10

    new-instance v6, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getCustomExtensions()Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .registers 1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public bridge synthetic getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .registers 1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getDatabaseLocked(Z)Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onConfigure(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public abstract onCreate(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "Can\'t downgrade database from version "

    const-string v0, " to "

    invoke-static {p1, p2, v0, p3}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOpen(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public abstract onUpgrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_26

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_24

    :cond_1f
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    :cond_24
    :goto_24
    iput-boolean p1, p0, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw p1
.end method
