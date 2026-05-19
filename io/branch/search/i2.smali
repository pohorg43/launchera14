.class public Lio/branch/search/i2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/branch/search/t3;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

.field public final e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/branch/search/i2;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/util/Set;)V
    .registers 14
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lio/branch/search/t3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/branch/search/i2;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iput-object p1, p0, Lio/branch/search/i2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/i2;->b:Ljava/lang/String;

    if-nez p5, :cond_1f

    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    :cond_1f
    iput-object p5, p0, Lio/branch/search/i2;->c:Ljava/util/Set;

    sget-object p2, Lio/branch/search/t3;->l:Lio/branch/search/t3;

    invoke-interface {p5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p2, Lio/branch/search/i2$a;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lio/branch/search/i2$a;-><init>(Lio/branch/search/i2;Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;IILjava/lang/String;)V

    iput-object p2, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    iput-object p4, p0, Lio/branch/search/i2;->e:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/i2;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/i2;->a(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(ILjava/util/List;)Ljava/lang/Exception;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Exception;"
        }
    .end annotation

    const-string v0, "BRANCH_RawSQLiteDB.clearDataForStaleUserHandleId"

    sget-object v1, Lio/branch/search/i2;->f:Ljava/util/Map;

    iget-object v2, p0, Lio/branch/search/i2;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    :try_start_10
    iget-object p0, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_8e
    .catchall {:try_start_10 .. :try_end_16} :catchall_8c

    if-eqz p0, :cond_72

    :try_start_18
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_72

    :cond_1f
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_26
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE user_id=?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26

    :cond_56
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_59} :catch_6f
    .catchall {:try_start_18 .. :try_end_59} :catchall_6c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_68

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_68

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_68
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_6c
    move-exception p1

    move-object v2, p0

    goto :goto_a7

    :catch_6f
    move-exception p1

    move-object v2, p0

    goto :goto_8f

    :cond_72
    :goto_72
    :try_start_72
    const-string p1, "Raw database deleted or closed"

    invoke-static {v0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_77} :catch_6f
    .catchall {:try_start_72 .. :try_end_77} :catchall_6c

    if-eqz p0, :cond_88

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_88
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_8c
    move-exception p1

    goto :goto_a7

    :catch_8e
    move-exception p1

    :goto_8f
    :try_start_8f
    invoke-static {v0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_8c

    if-eqz v2, :cond_a3

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_a3

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_a3

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_a3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :goto_a7
    if-eqz v2, :cond_b8

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_b8

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_b8

    invoke-virtual {v2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_b8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public a(Lio/branch/search/l2;)Ljava/lang/Exception;
    .registers 4
    .param p1  # Lio/branch/search/l2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/i2;->f:Ljava/util/Map;

    iget-object v1, p0, Lio/branch/search/i2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_e
    iget-object p0, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_38
    .catchall {:try_start_e .. :try_end_14} :catchall_36

    :try_start_14
    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    invoke-interface {p1, p0}, Lio/branch/search/l2;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_33
    .catchall {:try_start_14 .. :try_end_1d} :catchall_30

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_30
    move-exception p1

    move-object v1, p0

    goto :goto_53

    :catch_33
    move-exception p1

    move-object v1, p0

    goto :goto_39

    :catchall_36
    move-exception p1

    goto :goto_53

    :catch_38
    move-exception p1

    :goto_39
    :try_start_39
    const-string p0, "BRANCH_RawSQLiteDB.update"

    invoke-static {p0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_4f

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_4f

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :goto_53
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_64

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_64

    invoke-virtual {v1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_64
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Lio/branch/search/f2;)Ljava/lang/Object;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/branch/search/f2<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "BRANCH_RawSQLiteDB"

    const-string v2, "doQuery"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Got DB"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "Create cursor"

    invoke-virtual {v0, p1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :cond_22
    :goto_22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-interface {p3, p0}, Lio/branch/search/f2;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    const-string p1, "Iter over rows"

    invoke-virtual {v0, p1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    invoke-interface {p3, v1}, Lio/branch/search/f2;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public final a(I)Z
    .registers 2

    if-lez p1, :cond_8

    const/16 p0, 0x64

    if-gt p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lio/branch/search/i2;->a()V

    iget-object v0, p0, Lio/branch/search/i2;->e:Landroid/content/Context;

    iget-object p0, p0, Lio/branch/search/i2;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public b(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/branch/search/i2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lio/branch/search/i2;->d:Lio/requery/android/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    :cond_f
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/i2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/branch/search/t3;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/i2;->c:Ljava/util/Set;

    return-object p0
.end method
