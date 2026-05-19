.class public Lio/branch/search/j3;
.super Lio/branch/search/i3;
.source ""


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;

.field public final c:Landroidx/room/SharedSQLiteStatement;

.field public final d:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0}, Lio/branch/search/i3;-><init>()V

    iput-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lio/branch/search/j3$a;

    invoke-direct {v0, p0, p1}, Lio/branch/search/j3$a;-><init>(Lio/branch/search/j3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/j3;->b:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lio/branch/search/j3$b;

    invoke-direct {v0, p0, p1}, Lio/branch/search/j3$b;-><init>(Lio/branch/search/j3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/j3;->c:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lio/branch/search/j3$c;

    invoke-direct {v0, p0, p1}, Lio/branch/search/j3$c;-><init>(Lio/branch/search/j3;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/branch/search/j3;->d:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lio/branch/search/j3$d;

    invoke-direct {v0, p0, p1}, Lio/branch/search/j3$d;-><init>(Lio/branch/search/j3;Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/h3;)J
    .registers 4

    iget-object v0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_5
    iget-object v0, p0, Lio/branch/search/j3;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    iget-object p0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_16
    move-exception p1

    iget-object p0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    const-string v0, "SELECT SUM(usage) FROM data_usage WHERE date > ? AND ((? = \'||\' OR ? =\'\' OR ? is null) OR INSTR(?, \'|\' || channel || \'|\') > 0)AND ((? = \'||\' OR ? =\'\' OR ? is null) OR INSTR(?, \'|\' || connection_type || \'|\') > 0)"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_f

    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_12

    :cond_f
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_12
    const/4 p1, 0x2

    if-nez p2, :cond_19

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1c
    const/4 p1, 0x3

    if-nez p2, :cond_23

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_26
    const/4 p1, 0x4

    if-nez p2, :cond_2d

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_30

    :cond_2d
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_30
    const/4 p1, 0x5

    if-nez p2, :cond_37

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_3a

    :cond_37
    invoke-virtual {v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_3a
    const/4 p1, 0x6

    if-nez p3, :cond_41

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_44

    :cond_41
    invoke-virtual {v0, p1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_44
    const/4 p1, 0x7

    if-nez p3, :cond_4b

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_4e

    :cond_4b
    invoke-virtual {v0, p1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_4e
    const/16 p1, 0x8

    if-nez p3, :cond_56

    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_59

    :cond_56
    invoke-virtual {v0, p1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_59
    if-nez p3, :cond_5f

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_62

    :cond_5f
    invoke-virtual {v0, v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_62
    iget-object p0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_68
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_74

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_7d

    goto :goto_76

    :cond_74
    const-wide/16 p1, 0x0

    :goto_76
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide p1

    :catchall_7d
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;JLjava/lang/String;Lio/branch/search/e5;)V
    .registers 8

    iget-object v0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_5
    invoke-super/range {p0 .. p6}, Lio/branch/search/i3;->a(Lio/branch/search/KBranchRemoteConfiguration;Ljava/lang/String;JLjava/lang/String;Lio/branch/search/e5;)V

    iget-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    iget-object p0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_13
    move-exception p1

    iget-object p0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lio/branch/search/j3;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_12

    :try_start_e
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_15

    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_15
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_28

    iget-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lio/branch/search/j3;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_28
    move-exception p1

    iget-object v1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lio/branch/search/j3;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    iget-object v0, p0, Lio/branch/search/j3;->c:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    :try_start_c
    invoke-interface {v0, v1, p4, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p4, 0x2

    if-nez p1, :cond_16

    invoke-interface {v0, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_19

    :cond_16
    invoke-interface {v0, p4, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_19
    const/4 p1, 0x3

    if-nez p2, :cond_20

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_23

    :cond_20
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_23
    const/4 p1, 0x4

    if-nez p3, :cond_2a

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2d

    :cond_2a
    invoke-interface {v0, p1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2d
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_40

    iget-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lio/branch/search/j3;->c:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_40
    move-exception p1

    iget-object p2, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lio/branch/search/j3;->c:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public b(Lio/branch/search/h3;)V
    .registers 3

    iget-object v0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_5
    invoke-super {p0, p1}, Lio/branch/search/i3;->b(Lio/branch/search/h3;)V

    iget-object p1, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    iget-object p0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_13
    move-exception p1

    iget-object p0, p0, Lio/branch/search/j3;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
