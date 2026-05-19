.class public abstract Lio/requery/android/database/sqlite/SQLiteProgram;
.super Lio/requery/android/database/sqlite/SQLiteClosable;
.source ""

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field private final mNumParameters:I

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/requery/android/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroidx/core/os/CancellationSignal;)V
    .registers 9

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteClosable;-><init>()V

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {p2}, Lio/requery/android/database/sqlite/SQLiteStatementType;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    new-instance v0, Lio/requery/android/database/sqlite/SQLiteStatementInfo;

    invoke-direct {v0}, Lio/requery/android/database/sqlite/SQLiteStatementInfo;-><init>()V

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object v3

    invoke-virtual {p1, v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result p1

    invoke-virtual {v3, p2, p1, p4, v0}, Lio/requery/android/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroidx/core/os/CancellationSignal;Lio/requery/android/database/sqlite/SQLiteStatementInfo;)V

    iget-boolean p1, v0, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    iput-boolean p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mReadOnly:Z

    iget-object p1, v0, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    iget p1, v0, Lio/requery/android/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iput p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    goto :goto_43

    :cond_3b
    iput-boolean v2, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mReadOnly:Z

    sget-object p1, Lio/requery/android/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    iput v2, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    :goto_43
    if-eqz p3, :cond_68

    array-length p1, p3

    iget p2, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, p2, :cond_4b

    goto :goto_68

    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many bind arguments.  "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " arguments were provided but the statement needs "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    const-string p3, " arguments."

    invoke-static {p2, p0, p3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    :goto_68
    iget p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz p1, :cond_77

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz p3, :cond_7a

    array-length p0, p3

    invoke-static {p3, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7a

    :cond_77
    const/4 p1, 0x0

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    :cond_7a
    :goto_7a
    return-void
.end method

.method private bind(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    iget v1, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, v1, :cond_d

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    sub-int/2addr p1, v0

    aput-object p2, p0, p1

    return-void

    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot bind argument at index "

    const-string v1, " because the index is out of range.  The statement has "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mNumParameters:I

    const-string v0, " parameters."

    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_f

    array-length v0, p1

    :goto_3
    if-eqz v0, :cond_f

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method public bindBlob(I[B)V
    .registers 4

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "the bind value at index "

    const-string v0, " is null"

    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bindDouble(ID)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindLong(IJ)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindNull(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindObject(ILjava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_50

    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_47

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_f

    goto :goto_47

    :cond_f
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1d

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_50

    :cond_1d
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_35

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2f

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_50

    :cond_2f
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_50

    :cond_35
    instance-of v0, p2, [B

    if-eqz v0, :cond_3f

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_50

    :cond_3f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_50

    :cond_47
    :goto_47
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/requery/android/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    :goto_50
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "the bind value at index "

    const-string v0, " is null"

    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearBindings()V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final getBindArgs()[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object p0
.end method

.method final getColumnNames()[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object p0
.end method

.method public final getConnectionFlags()I
    .registers 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    iget-boolean p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result p0

    return p0
.end method

.method public final getDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public final getSession()Lio/requery/android/database/sqlite/SQLiteSession;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getThreadSession()Lio/requery/android/database/sqlite/SQLiteSession;

    move-result-object p0

    return-object p0
.end method

.method final getSql()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object p0
.end method

.method public onAllReferencesReleased()V
    .registers 1

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void
.end method

.method public final onCorruption()V
    .registers 1

    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteProgram;->mDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->onCorruption()V

    return-void
.end method
