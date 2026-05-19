.class public final Lcom/pantanal/server/content/upkmanage/database/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh3/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$a;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$a;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$b;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$b;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$c;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$c;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$d;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$d;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$e;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$e;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$f;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$f;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$g;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$g;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/pantanal/server/content/upkmanage/database/a;->b:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/pantanal/server/content/upkmanage/database/a$h;

    invoke-direct {v0, p0, p1}, Lcom/pantanal/server/content/upkmanage/database/a$h;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a()Lp7/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp7/d<",
            "Ljava/util/List<",
            "Li3/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM UpkEntity"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    const-string v3, "UpkEntity"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pantanal/server/content/upkmanage/database/a$i;

    invoke-direct {v4, p0, v0}, Lcom/pantanal/server/content/upkmanage/database/a$i;-><init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lp7/d;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/pantanal/server/content/upkmanage/database/a;->b:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_12

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_15

    :cond_12
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_15
    iget-object p1, p0, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_1a
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object v1, p0, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2e

    iget-object v1, p0, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/database/a;->b:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_2e
    move-exception p1

    iget-object v1, p0, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/database/a;->b:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method
