.class public Lio/branch/search/q3$a;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/q3;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/branch/search/o3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/q3;Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/o3;)V
    .registers 6

    iget-object p0, p2, Lio/branch/search/o3;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_9

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    :cond_9
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_c
    iget-object p0, p2, Lio/branch/search/o3;->b:Ljava/lang/Long;

    const/4 v0, 0x2

    if-nez p0, :cond_15

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1c

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1c
    iget-object p0, p2, Lio/branch/search/o3;->c:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_25

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_28

    :cond_25
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_28
    iget-object p0, p2, Lio/branch/search/o3;->d:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_31

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_34

    :cond_31
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_34
    iget-object p0, p2, Lio/branch/search/o3;->e:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_3d

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_40

    :cond_3d
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_40
    iget p0, p2, Lio/branch/search/o3;->f:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Lio/branch/search/o3;->g:Z

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/o3;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/q3$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/o3;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "INSERT OR REPLACE INTO `local_entities`(`package_name`,`user_id`,`shortcut_id`,`hashed_shortcut_id`,`name`,`rank`,`is_dynamic`) VALUES (?,?,?,?,?,?,?)"

    return-object p0
.end method
