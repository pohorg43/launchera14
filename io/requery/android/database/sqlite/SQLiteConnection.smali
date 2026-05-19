.class public final Lio/requery/android/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/SQLiteConnection$Operation;,
        Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;,
        Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public mCancellationSignalAttachCount:I

.field public final mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

.field public final mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

.field public final mConnectionId:I

.field public mConnectionPtr:J

.field public final mIsPrimaryConnection:Z

.field public final mIsReadOnlyConnection:Z

.field public mOnlyAllowReadOnlyOperations:Z

.field public final mPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

.field public final mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field public mPreparedStatementPool:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

.field public final mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lio/requery/android/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v0, [B

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    const-string v0, "[\\s]*\\n+[\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool;Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/requery/android/database/sqlite/CloseGuard;->get()Lio/requery/android/database/sqlite/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    new-instance v1, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;-><init>(Lio/requery/android/database/sqlite/SQLiteConnection$1;)V

    iput-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    new-instance p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iput p3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionId:I

    iput-boolean p4, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    iget p2, p2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p3, 0x0

    :goto_26
    iput-boolean p3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    new-instance p2, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget p1, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {p2, p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Lio/requery/android/database/sqlite/SQLiteConnection;I)V

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    const-string p0, "close"

    invoke-virtual {v0, p0}, Lio/requery/android/database/sqlite/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lio/requery/android/database/sqlite/SQLiteConnection;Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 2

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method public static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500()[B
    .registers 1

    sget-object v0, Lio/requery/android/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_3a

    goto :goto_2c

    :pswitch_c  #0x32
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :pswitch_17  #0x31
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :pswitch_22  #0x30
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_44

    return-object p0

    :pswitch_30  #0x2
    const-string p0, "FULL"

    return-object p0

    :pswitch_33  #0x1
    const-string p0, "NORMAL"

    return-object p0

    :pswitch_36  #0x0
    const-string p0, "OFF"

    return-object p0

    nop

    :pswitch_data_3a
    .packed-switch 0x30
        :pswitch_22  #00000030
        :pswitch_17  #00000031
        :pswitch_c  #00000032
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_33  #00000001
        :pswitch_30  #00000002
    .end packed-switch
.end method

.method public static getTypeOfObject(Ljava/lang/Object;)I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    const/4 p0, 0x4

    return p0

    :cond_a
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_28

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_13

    goto :goto_28

    :cond_13
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_26

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x3

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x2

    return p0
.end method

.method public static hasCodec()Z
    .registers 1

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeHasCodec()Z

    move-result v0

    return v0
.end method

.method public static isCacheable(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static native nativeBindBlob(JJI[B)V
.end method

.method public static native nativeBindDouble(JJID)V
.end method

.method public static native nativeBindLong(JJIJ)V
.end method

.method public static native nativeBindNull(JJI)V
.end method

.method public static native nativeBindString(JJILjava/lang/String;)V
.end method

.method public static native nativeCancel(J)V
.end method

.method public static native nativeClose(J)V
.end method

.method public static native nativeExecute(JJ)V
.end method

.method public static native nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method public static native nativeExecuteForChangedRowCount(JJ)I
.end method

.method public static native nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method public static native nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method public static native nativeExecuteForLong(JJ)J
.end method

.method public static native nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method public static native nativeFinalizeStatement(JJ)V
.end method

.method public static native nativeGetColumnCount(JJ)I
.end method

.method public static native nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method public static native nativeGetDbLookaside(J)I
.end method

.method public static native nativeGetParameterCount(JJ)I
.end method

.method public static native nativeHasCodec()Z
.end method

.method public static native nativeIsReadOnly(JJ)Z
.end method

.method public static native nativeLoadExtension(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J
.end method

.method public static native nativePrepareStatement(JLjava/lang/String;)J
.end method

.method public static native nativeRegisterCustomFunction(JLio/requery/android/database/sqlite/SQLiteCustomFunction;)V
.end method

.method public static native nativeRegisterFunction(JLio/requery/android/database/sqlite/SQLiteFunction;)V
.end method

.method public static native nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method public static native nativeResetCancel(JZ)V
.end method

.method public static native nativeResetStatementAndClearBindings(JJ)V
.end method

.method public static open(Lio/requery/android/database/sqlite/SQLiteConnectionPool;Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;IZ)Lio/requery/android/database/sqlite/SQLiteConnection;
    .registers 5

    new-instance v0, Lio/requery/android/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;-><init>(Lio/requery/android/database/sqlite/SQLiteConnectionPool;Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    :try_start_5
    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->open()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->dispose(Z)V

    throw p0
.end method

.method public static trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lio/requery/android/database/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 15

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-boolean v2, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v2, :cond_10

    return-object v0

    :cond_10
    move v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v3

    :try_start_19
    iget-wide v5, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    move-result v9

    invoke-static {p1}, Lio/requery/android/database/sqlite/SQLiteStatementType;->getSqlStatementType(Ljava/lang/String;)I

    move-result v12

    iget-wide v5, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    move-result v11

    move-object v5, p0

    move-object v6, p1

    move-wide v7, v3

    move v10, v12

    invoke-virtual/range {v5 .. v11}, Lio/requery/android/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0

    if-nez v2, :cond_40

    invoke-static {v12}, Lio/requery/android/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_40} :catch_43

    :cond_40
    iput-boolean v1, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    return-object v0

    :catch_43
    move-exception p1

    if-eqz v0, :cond_4a

    iget-boolean v0, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v0, :cond_4f

    :cond_4a
    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    :cond_4f
    throw p1
.end method

.method public final applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 3

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result p0

    if-nez p0, :cond_27

    sget-boolean p0, Lio/requery/android/database/sqlite/SQLiteDebug;->DEBUG_SQL_LOG:Z

    if-eqz p0, :cond_27

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_27

    iget-boolean p0, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    const-string p1, "SQLiteConnection"

    if-eqz p0, :cond_22

    const-string p0, "Reading from disk on main thread"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_22
    const-string p0, "Writing to disk on main thread"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method

.method public final attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    .registers 6

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-ne v0, v1, :cond_15

    iget-wide v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    invoke-virtual {p1, p0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    :cond_15
    return-void
.end method

.method public final bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .registers 15

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    array-length v1, p2

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    iget v2, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-ne v1, v2, :cond_7f

    if-nez v1, :cond_d

    return-void

    :cond_d
    iget-wide v10, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    :goto_f
    if-ge v0, v1, :cond_7e

    aget-object p1, p2, v0

    invoke-static {p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_74

    const/4 v3, 0x1

    if-eq v2, v3, :cond_65

    const/4 v3, 0x2

    if-eq v2, v3, :cond_56

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4a

    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3d

    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v0, 0x1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_35

    const-wide/16 v5, 0x1

    goto :goto_37

    :cond_35
    const-wide/16 v5, 0x0

    :goto_37
    move-wide v8, v5

    move-wide v5, v10

    invoke-static/range {v3 .. v9}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_7b

    :cond_3d
    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-wide v5, v10

    invoke-static/range {v3 .. v8}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    goto :goto_7b

    :cond_4a
    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v0, 0x1

    move-object v8, p1

    check-cast v8, [B

    move-wide v5, v10

    invoke-static/range {v3 .. v8}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    goto :goto_7b

    :cond_56
    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v0, 0x1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    move-wide v5, v10

    invoke-static/range {v3 .. v9}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    goto :goto_7b

    :cond_65
    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v0, 0x1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    move-wide v5, v10

    invoke-static/range {v3 .. v9}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_7b

    :cond_74
    iget-wide v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 p1, v0, 0x1

    invoke-static {v2, v3, v10, v11, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_7e
    return-void

    :cond_7f
    const-string p0, "Expected "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bind arguments but "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " were provided."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    invoke-direct {p1, p0}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->dispose(Z)V

    return-void
.end method

.method public collectDbStats(Ljava/util/ArrayList;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const-string v10, "PRAGMA "

    iget-wide v1, v0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    move-result v2

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :try_start_f
    const-string v1, "PRAGMA page_count;"

    invoke-virtual {v0, v1, v13, v13}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v3
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_15} :catch_1c

    :try_start_15
    const-string v1, "PRAGMA page_size;"

    invoke-virtual {v0, v1, v13, v13}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_1b} :catch_1d

    goto :goto_1e

    :catch_1c
    move-wide v3, v11

    :catch_1d
    move-wide v5, v11

    :goto_1e
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/requery/android/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lio/requery/android/database/CursorWindow;

    const-string v1, "collectDbStats"

    invoke-direct {v14, v1}, Lio/requery/android/database/CursorWindow;-><init>(Ljava/lang/String;)V

    :try_start_2e
    const-string v2, "PRAGMA database_list;"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v4, v14

    invoke-virtual/range {v1 .. v8}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lio/requery/android/database/CursorWindow;IIZLandroidx/core/os/CancellationSignal;)I

    const/4 v1, 0x1

    move v2, v1

    :goto_3d
    invoke-virtual {v14}, Lio/requery/android/database/CursorWindow;->getNumRows()I

    move-result v3

    if-ge v2, v3, :cond_cd

    invoke-virtual {v14, v2, v1}, Lio/requery/android/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v14, v2, v4}, Lio/requery/android/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v4
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_4c} :catch_cd
    .catchall {:try_start_2e .. :try_end_4c} :catchall_c8

    :try_start_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".page_count;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v13, v13}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_64
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_64} :catch_81
    .catchall {:try_start_4c .. :try_end_64} :catchall_c8

    :try_start_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".page_size;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v13, v13}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v7
    :try_end_7c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_7c} :catch_82
    .catchall {:try_start_64 .. :try_end_7c} :catchall_c8

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    goto :goto_86

    :catch_81
    move-wide v5, v11

    :catch_82
    move-wide/from16 v17, v5

    move-wide/from16 v19, v11

    :goto_86
    :try_start_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  (attached) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b1
    move-object/from16 v16, v3

    new-instance v3, Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v3

    invoke-direct/range {v15 .. v24}, Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_c4} :catch_cd
    .catchall {:try_start_86 .. :try_end_c4} :catchall_c8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3d

    :catchall_c8
    move-exception v0

    invoke-virtual {v14}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    throw v0

    :catch_cd
    :cond_cd
    invoke-virtual {v14}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeCurrentOperationUnsafe()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    if-eqz p1, :cond_14

    iget v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-nez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    iget-wide p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    :cond_14
    return-void
.end method

.method public final dispose(Z)V
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/CloseGuard;->warnIfOpen()V

    :cond_9
    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mCloseGuard:Lio/requery/android/database/sqlite/CloseGuard;

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/CloseGuard;->close()V

    :cond_e
    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_38

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v0, "close"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    :try_start_1f
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeClose(J)V

    iput-wide v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_31

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    goto :goto_38

    :catchall_31
    move-exception v0

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v0

    :cond_38
    :goto_38
    return-void
.end method

.method public dump(Landroid/util/Printer;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    return-void
.end method

.method public dumpUnsafe(Landroid/util/Printer;Z)V
    .registers 6

    const-string v0, "Connection #"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_2f

    const-string v0, "  connectionPtr: 0x"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_2f
    const-string v0, "  isPrimaryConnection: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onlyAllowReadOnlyOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;Z)V

    if-eqz p2, :cond_63

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    :cond_63
    return-void
.end method

.method public enableLocalizedCollators()V
    .registers 2

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeHasCodec()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    :cond_9
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    .registers 9

    if-eqz p1, :cond_46

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "execute"

    invoke-virtual {v0, v1, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :try_start_a
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_39
    .catchall {:try_start_a .. :try_end_e} :catchall_37

    :try_start_e
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_32

    :try_start_1a
    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v3, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeExecute(JJ)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_2d

    :try_start_21
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_32

    :try_start_24
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_39
    .catchall {:try_start_24 .. :try_end_27} :catchall_37

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-void

    :catchall_2d
    move-exception p2

    :try_start_2e
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V

    throw p2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p2

    :try_start_33
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw p2
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_37} :catch_39
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    goto :goto_40

    :catch_39
    move-exception p1

    :try_start_3a
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw p1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    :goto_40
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw p1

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    if-eqz p1, :cond_4f

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForBlobFileDescriptor"

    invoke-virtual {v0, v1, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :try_start_a
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_42
    .catchall {:try_start_a .. :try_end_e} :catchall_40

    :try_start_e
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3b

    :try_start_1a
    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v3, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    move-result p2

    if-ltz p2, :cond_29

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_36

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    :try_start_2a
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3b

    :try_start_2d
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_42
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object p2

    :catchall_36
    move-exception p2

    :try_start_37
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V

    throw p2
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p2

    :try_start_3c
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw p2
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_40} :catch_42
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    goto :goto_49

    :catch_42
    move-exception p1

    :try_start_43
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw p1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_40

    :goto_49
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw p1

    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)I
    .registers 11

    const-string v0, "changedRows="

    if-eqz p1, :cond_78

    const/4 v1, 0x0

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForChangedRowCount"

    invoke-virtual {v2, v3, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    :try_start_d
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_11} :catch_54
    .catchall {:try_start_d .. :try_end_11} :catchall_52

    :try_start_11
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_4d

    :try_start_1d
    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v5, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v3, v4, v5, v6}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I

    move-result v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_48

    :try_start_25
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_4d

    :try_start_28
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_54
    .catchall {:try_start_28 .. :try_end_2b} :catchall_52

    iget-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p1, v2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_47
    return v1

    :catchall_48
    move-exception p2

    :try_start_49
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V

    throw p2
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p2

    :try_start_4e
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw p2
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_52} :catch_54
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p1

    goto :goto_5b

    :catch_54
    move-exception p1

    :try_start_55
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v2, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw p1
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_52

    :goto_5b
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result p2

    if-eqz p2, :cond_77

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_77
    throw p1

    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lio/requery/android/database/CursorWindow;IIZLandroidx/core/os/CancellationSignal;)I
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v13, p4

    move-object/from16 v14, p7

    const-string v15, ", countedRows="

    const-string v12, ", filledRows="

    const-string v11, ", actualPos="

    const-string v10, "\', startPos="

    const-string v8, "window=\'"

    if-eqz v0, :cond_1b1

    if-eqz v3, :cond_1a9

    invoke-virtual/range {p3 .. p3}, Lio/requery/android/database/sqlite/SQLiteClosable;->acquireReference()V

    :try_start_1d
    iget-object v4, v1, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v5, "executeForCursorWindow"

    invoke-virtual {v4, v5, v0, v2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v9
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_1a4

    const/16 v16, -0x1

    :try_start_27
    invoke-virtual/range {p0 .. p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v6
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2b} :catch_158
    .catchall {:try_start_27 .. :try_end_2b} :catchall_148

    :try_start_2b
    invoke-virtual {v1, v6}, Lio/requery/android/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {v1, v6, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lio/requery/android/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {v1, v14}, Lio/requery/android/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_133

    :try_start_37
    iget-wide v4, v1, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_11e

    move-object v2, v8

    :try_start_3a
    iget-wide v7, v6, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_117

    move/from16 v18, v9

    move-object/from16 v17, v10

    :try_start_40
    iget-wide v9, v3, Lio/requery/android/database/CursorWindow;->mWindowPtr:J
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_10b

    move-object/from16 p1, v2

    move-object v2, v6

    move-wide v6, v7

    move-object/from16 v13, p1

    move-object/from16 v19, v15

    move/from16 v15, v18

    move-wide v8, v9

    move-object/from16 v20, v17

    move/from16 v10, p4

    move-object/from16 v21, v11

    move/from16 v11, p5

    move-object/from16 v22, v12

    move/from16 v12, p6

    :try_start_59
    invoke-static/range {v4 .. v12}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v4
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_fe

    const/16 v0, 0x20

    shr-long v6, v4, v0

    long-to-int v6, v6

    long-to-int v4, v4

    :try_start_63
    invoke-virtual/range {p3 .. p3}, Lio/requery/android/database/CursorWindow;->getNumRows()I

    move-result v5
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_ed

    :try_start_67
    invoke-virtual {v3, v6}, Lio/requery/android/database/CursorWindow;->setStartPosition(I)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_e0

    :try_start_6a
    invoke-virtual {v1, v14}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_d0

    :try_start_6d
    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_70} :catch_c0
    .catchall {:try_start_6d .. :try_end_70} :catchall_b2

    :try_start_70
    iget-object v0, v1, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v15}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, v1, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v21

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v22

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v19

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_70 .. :try_end_ae} :catchall_1a4

    :cond_ae
    invoke-virtual/range {p3 .. p3}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    return v4

    :catchall_b2
    move-exception v0

    move/from16 v8, p4

    move-object v12, v13

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_16f

    :catch_c0
    move-exception v0

    move/from16 v8, p4

    move-object v12, v13

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v16, v6

    goto/16 :goto_166

    :catchall_d0
    move-exception v0

    move/from16 v8, p4

    move-object v12, v13

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v16, v6

    goto/16 :goto_142

    :catchall_e0
    move-exception v0

    move/from16 v8, p4

    move-object v12, v13

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto :goto_fb

    :catchall_ed
    move-exception v0

    move/from16 v8, p4

    move-object v12, v13

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v5, v16

    :goto_fb
    move/from16 v16, v6

    goto :goto_12d

    :catchall_fe
    move-exception v0

    move/from16 v8, p4

    move-object v12, v13

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto :goto_12a

    :catchall_10b
    move-exception v0

    move-object v9, v11

    move-object v10, v12

    move v8, v13

    move-object v11, v15

    move-object/from16 v7, v17

    move/from16 v15, v18

    move-object v12, v2

    move-object v2, v6

    goto :goto_12a

    :catchall_117
    move-exception v0

    move-object v7, v10

    move-object v10, v12

    move v8, v13

    move-object v12, v2

    move-object v2, v6

    goto :goto_124

    :catchall_11e
    move-exception v0

    move-object v2, v6

    move-object v7, v10

    move-object v10, v12

    move-object v12, v8

    move v8, v13

    :goto_124
    move-object/from16 v23, v15

    move v15, v9

    move-object v9, v11

    move-object/from16 v11, v23

    :goto_12a
    move/from16 v4, v16

    move v5, v4

    :goto_12d
    :try_start_12d
    invoke-virtual {v1, v14}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V

    throw v0
    :try_end_131
    .catchall {:try_start_12d .. :try_end_131} :catchall_131

    :catchall_131
    move-exception v0

    goto :goto_142

    :catchall_133
    move-exception v0

    move-object v2, v6

    move-object v7, v10

    move-object v10, v12

    move-object v12, v8

    move v8, v13

    move-object/from16 v23, v15

    move v15, v9

    move-object v9, v11

    move-object/from16 v11, v23

    move/from16 v4, v16

    move v5, v4

    :goto_142
    :try_start_142
    invoke-virtual {v1, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v0
    :try_end_146
    .catch Ljava/lang/RuntimeException; {:try_start_142 .. :try_end_146} :catch_146
    .catchall {:try_start_142 .. :try_end_146} :catchall_16c

    :catch_146
    move-exception v0

    goto :goto_166

    :catchall_148
    move-exception v0

    move-object v7, v10

    move-object v10, v12

    move-object v12, v8

    move v8, v13

    move-object/from16 v23, v15

    move v15, v9

    move-object v9, v11

    move-object/from16 v11, v23

    move/from16 v4, v16

    move v5, v4

    move v6, v5

    goto :goto_16f

    :catch_158
    move-exception v0

    move-object v7, v10

    move-object v10, v12

    move-object v12, v8

    move v8, v13

    move-object/from16 v23, v15

    move v15, v9

    move-object v9, v11

    move-object/from16 v11, v23

    move/from16 v4, v16

    move v5, v4

    :goto_166
    :try_start_166
    iget-object v2, v1, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v15, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw v0
    :try_end_16c
    .catchall {:try_start_166 .. :try_end_16c} :catchall_16c

    :catchall_16c
    move-exception v0

    move/from16 v6, v16

    :goto_16f
    :try_start_16f
    iget-object v2, v1, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v15}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v2

    if-eqz v2, :cond_1a3

    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_1a3
    throw v0
    :try_end_1a4
    .catchall {:try_start_16f .. :try_end_1a4} :catchall_1a4

    :catchall_1a4
    move-exception v0

    invoke-virtual/range {p3 .. p3}, Lio/requery/android/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0

    :cond_1a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "window must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J
    .registers 9

    if-eqz p1, :cond_47

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLastInsertedRowId"

    invoke-virtual {v0, v1, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :try_start_a
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_3a
    .catchall {:try_start_a .. :try_end_e} :catchall_38

    :try_start_e
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_33

    :try_start_1a
    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v3, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J

    move-result-wide v1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    :try_start_22
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_33

    :try_start_25
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_3a
    .catchall {:try_start_25 .. :try_end_28} :catchall_38

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v1

    :catchall_2e
    move-exception p2

    :try_start_2f
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V

    throw p2
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p2

    :try_start_34
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw p2
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_38} :catch_3a
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    goto :goto_41

    :catch_3a
    move-exception p1

    :try_start_3b
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw p1
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_38

    :goto_41
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw p1

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J
    .registers 9

    if-eqz p1, :cond_47

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLong"

    invoke-virtual {v0, v1, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :try_start_a
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_3a
    .catchall {:try_start_a .. :try_end_e} :catchall_38

    :try_start_e
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_33

    :try_start_1a
    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v3, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J

    move-result-wide v1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    :try_start_22
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_33

    :try_start_25
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_3a
    .catchall {:try_start_25 .. :try_end_28} :catchall_38

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v1

    :catchall_2e
    move-exception p2

    :try_start_2f
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V

    throw p2
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p2

    :try_start_34
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw p2
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_38} :catch_3a
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    goto :goto_41

    :catch_3a
    move-exception p1

    :try_start_3b
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw p1
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_38

    :goto_41
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw p1

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_47

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForString"

    invoke-virtual {v0, v1, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :try_start_a
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_3a
    .catchall {:try_start_a .. :try_end_e} :catchall_38

    :try_start_e
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteConnection;->bindArguments(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_33

    :try_start_1a
    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v3, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;

    move-result-object p2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    :try_start_22
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_33

    :try_start_25
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_3a
    .catchall {:try_start_25 .. :try_end_28} :catchall_38

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object p2

    :catchall_2e
    move-exception p2

    :try_start_2f
    invoke-virtual {p0, p3}, Lio/requery/android/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroidx/core/os/CancellationSignal;)V

    throw p2
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p2

    :try_start_34
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw p2
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_38} :catch_3a
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    goto :goto_41

    :catch_3a
    move-exception p1

    :try_start_3b
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw p1
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_38

    :goto_41
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw p1

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPool:Lio/requery/android/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_f

    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_17

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_17
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final finalizePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6

    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method public final getMainDbStatsUnsafe(IJJ)Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-boolean v2, v0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-nez v2, :cond_17

    const-string v2, " ("

    invoke-static {v1, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionId:I

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_17
    move-object v3, v1

    new-instance v1, Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;

    iget-object v2, v0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroidx/collection/LruCache;->hitCount()I

    move-result v9

    iget-object v2, v0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroidx/collection/LruCache;->missCount()I

    move-result v10

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    move-result v11

    move-object v2, v1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move v8, p1

    invoke-direct/range {v2 .. v11}, Lio/requery/android/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    return-object v1
.end method

.method public isPreparedStatementInCache(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPrimaryConnection()Z
    .registers 1

    iget-boolean p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return p0
.end method

.method public final obtainPreparedStatement(Ljava/lang/String;JIIZ)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 10

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v2, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v1, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    goto :goto_14

    :cond_f
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;-><init>(Lio/requery/android/database/sqlite/SQLiteConnection$1;)V

    :goto_14
    iput-object p1, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    iput-wide p2, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    iput p4, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput p5, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    iput-boolean p6, v0, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    return-object v0
.end method

.method public onCancel()V
    .registers 3

    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeCancel(J)V

    return-void
.end method

.method public final open()V
    .registers 7

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget v2, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v3, -0x20000001

    and-int/2addr v2, v3

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    sget-boolean v3, Lio/requery/android/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v4, Lio/requery/android/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    invoke-static {v1, v2, v0, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setPageSize()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeHasCodec()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    :cond_2e
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_38
    if-ge v2, v0, :cond_4c

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/requery/android/database/sqlite/SQLiteCustomFunction;

    iget-wide v4, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLio/requery/android/database/sqlite/SQLiteCustomFunction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4c
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_54
    if-ge v1, v0, :cond_68

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/requery/android/database/sqlite/SQLiteFunction;

    iget-wide v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeRegisterFunction(JLio/requery/android/database/sqlite/SQLiteFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_68
    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customExtensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/requery/android/database/sqlite/SQLiteCustomExtension;

    iget-wide v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v4, v1, Lio/requery/android/database/sqlite/SQLiteCustomExtension;->path:Ljava/lang/String;

    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteCustomExtension;->entryPoint:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeLoadExtension(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :cond_86
    return-void
.end method

.method public prepare(Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V
    .registers 11

    if-eqz p1, :cond_5b

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    const-string v2, "prepare"

    invoke-virtual {v0, v2, p1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :try_start_b
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_f} :catch_4e
    .catchall {:try_start_b .. :try_end_f} :catchall_4c

    if-eqz p2, :cond_43

    :try_start_11
    iget v1, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v1, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iget-boolean v1, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v1, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v3, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v1, v2, v3, v4}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Lio/requery/android/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    goto :goto_43

    :cond_28
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_43

    iget-object v3, p2, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget-wide v4, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_3e

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :catchall_3e
    move-exception p2

    :try_start_3f
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw p2

    :cond_43
    :goto_43
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_46} :catch_4e
    .catchall {:try_start_3f .. :try_end_46} :catchall_4c

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-void

    :catchall_4c
    move-exception p1

    goto :goto_55

    :catch_4e
    move-exception p1

    :try_start_4f
    iget-object p2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p2, v0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    throw p1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_4c

    :goto_55
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mRecentOperations:Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw p1

    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sql must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reconfigure(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    iget-object v1, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_26

    iget-object v3, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/requery/android/database/sqlite/SQLiteCustomFunction;

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    iget-wide v4, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLio/requery/android/database/sqlite/SQLiteCustomFunction;)V

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_26
    iget-object v1, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_2d
    if-ge v2, v1, :cond_49

    iget-object v3, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/requery/android/database/sqlite/SQLiteFunction;

    iget-object v4, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->functions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    iget-wide v4, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeRegisterFunction(JLio/requery/android/database/sqlite/SQLiteFunction;)V

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_49
    iget-boolean v1, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v2, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v3, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v4, 0x1

    if-eq v1, v3, :cond_54

    move v1, v4

    goto :goto_55

    :cond_54
    move v1, v0

    :goto_55
    iget v3, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v5, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v3, v5

    const/high16 v5, 0x20000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_60

    move v0, v4

    :cond_60
    iget-object v3, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v2, v2, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, p1}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)V

    iget-object v3, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget p1, p1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v3, p1}, Landroidx/collection/LruCache;->resize(I)V

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    :cond_7a
    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    :cond_7f
    if-eqz v2, :cond_84

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    :cond_84
    return-void
.end method

.method public final recyclePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;

    return-void
.end method

.method public final releasePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    iget-boolean v0, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_17

    :try_start_7
    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object p1, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_17
    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V

    :goto_1a
    return-void
.end method

.method public final setAutoCheckpointInterval()V
    .registers 7

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_25

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "PRAGMA wal_autocheckpoint"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-eqz v2, :cond_25

    const-string v2, "PRAGMA wal_autocheckpoint="

    invoke-static {v2, v0, v1}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    :cond_25
    return-void
.end method

.method public final setForeignKeyModeFromConfiguration()V
    .registers 7

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x1

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    :goto_f
    const-string v2, "PRAGMA foreign_keys"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-eqz v2, :cond_23

    const-string v2, "PRAGMA foreign_keys="

    invoke-static {v2, v0, v1}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    :cond_23
    return-void
.end method

.method public final setJournalMode(Ljava/lang/String;)V
    .registers 6

    const-string v0, "PRAGMA journal_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_26} :catch_29

    if-eqz v1, :cond_2e

    return-void

    :catch_29
    move-exception v1

    instance-of v2, v1, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v2, :cond_51

    :cond_2e
    const-string v1, "Could not change the database journal mode of \'"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    const-string v2, "\' from \'"

    const-string v3, "\' to \'"

    invoke-static {v1, p0, v2, v0, v3}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SQLiteConnection"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_51
    throw v1

    :cond_52
    :goto_52
    return-void
.end method

.method public final setJournalSizeLimit()V
    .registers 7

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_25

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "PRAGMA journal_size_limit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-eqz v2, :cond_25

    const-string v2, "PRAGMA journal_size_limit="

    invoke-static {v2, v0, v1}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    :cond_25
    return-void
.end method

.method public final setLocaleFromConfiguration()V
    .registers 6

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    iget-boolean v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v1, :cond_12

    return-void

    :cond_12
    :try_start_12
    const-string v1, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    const-string v1, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    invoke-virtual {p0, v1, v2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    :cond_27
    const-string v1, "BEGIN"

    invoke-virtual {p0, v1, v2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_2c} :catch_4e

    :try_start_2c
    const-string v1, "DELETE FROM android_metadata"

    invoke-virtual {p0, v1, v2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    const-string v1, "INSERT INTO android_metadata (locale) VALUES(?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    const-string v1, "REINDEX LOCALIZED"

    invoke-virtual {p0, v1, v2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_47

    :try_start_41
    const-string v1, "COMMIT"

    invoke-virtual {p0, v1, v2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    return-void

    :catchall_47
    move-exception v1

    const-string v3, "ROLLBACK"

    invoke-virtual {p0, v3, v2, v2}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    throw v1
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_4e} :catch_4e

    :catch_4e
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Failed to change locale for db \'"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' to \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOnlyAllowReadOnlyOperations(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    return-void
.end method

.method public final setPageSize()V
    .registers 7

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_25

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "PRAGMA page_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-eqz v2, :cond_25

    const-string v2, "PRAGMA page_size="

    invoke-static {v2, v0, v1}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    :cond_25
    return-void
.end method

.method public final setSyncMode(Ljava/lang/String;)V
    .registers 5

    const-string v0, "PRAGMA synchronous"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lio/requery/android/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA synchronous="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v1}, Lio/requery/android/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V

    :cond_29
    return-void
.end method

.method public final setWalModeFromConfiguration()V
    .registers 3

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    const-string v0, "WAL"

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    goto :goto_30

    :cond_22
    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->getDefaultJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    invoke-static {}, Lio/requery/android/database/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/requery/android/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public final throwIfStatementForbidden(Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 2

    iget-boolean p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz p0, :cond_11

    iget-boolean p0, p1, Lio/requery/android/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz p0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SQLiteConnection: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConfiguration:Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteConnection;->mConnectionId:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
