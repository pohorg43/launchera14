.class public Lio/branch/search/i2$a;
.super Lio/requery/android/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/i2;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/branch/search/i2;


# direct methods
.method public constructor <init>(Lio/branch/search/i2;Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;IILjava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lio/branch/search/i2$a;->c:Lio/branch/search/i2;

    iput p6, p0, Lio/branch/search/i2$a;->a:I

    iput-object p7, p0, Lio/branch/search/i2$a;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onConfigure(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 4

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    iget-object v0, p0, Lio/branch/search/i2$a;->c:Lio/branch/search/i2;

    iget v1, p0, Lio/branch/search/i2$a;->a:I

    invoke-static {v0, v1}, Lio/branch/search/i2;->a(Lio/branch/search/i2;I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget p0, p0, Lio/branch/search/i2$a;->a:I

    invoke-virtual {p1, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    goto :goto_27

    :cond_13
    const-string p1, "Invalid max cache size: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lio/branch/search/i2$a;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BRANCH_RawSQLiteDB"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method public onCreate(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 7

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    const-string v0, "CREATE TABLE `internal_queries` (`id` TEXT, `query` TEXT, `binds` TEXT, PRIMARY KEY (id))"

    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE `internal_setup_teardown` (`id` TEXT, `phase` TEXT, `position` INTEGER, `query` TEXT, `binds` TEXT, `repeat_binds` INTEGER)"

    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE `internal_versions` (`id` TEXT, `version` TEXT, PRIMARY KEY (id))"

    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE `scheduled_query_execution_history` (`query_id` INTEGER NOT NULL,`timestamp` INTEGER NOT NULL,`error` TEXT, PRIMARY KEY (query_id, timestamp))"

    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE `scheduled_queries` (`query_id` INTEGER NOT NULL,`query` TEXT NOT NULL,`bindings` TEXT,`should_execute_now_query` TEXT NOT NULL,`should_execute_now_query_bindings` TEXT,`weight` INTEGER NOT NULL,`transaction_group_id` INTEGER,`uses_cursor` INTEGER NOT NULL, PRIMARY KEY (query_id))"

    invoke-virtual {p1, v0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/t3;->values()[Lio/branch/search/t3;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_3a

    aget-object v3, v0, v2

    iget-object v4, p0, Lio/branch/search/i2$a;->c:Lio/branch/search/i2;

    iget-object v4, v4, Lio/branch/search/i2;->c:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v3}, Lio/branch/search/t3;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_3a
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_41

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_41
    move-exception p0

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public onUpgrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    iget-object p0, p0, Lio/branch/search/i2$a;->c:Lio/branch/search/i2;

    iget-object p0, p0, Lio/branch/search/i2;->c:Ljava/util/Set;

    invoke-static {p0, p2}, Lio/branch/search/e2;->a(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    return-void
.end method
