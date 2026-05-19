.class public Lio/branch/search/d4$b;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/d4;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/branch/search/g4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/d4;Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/g4;)V
    .registers 6

    iget-object p0, p2, Lio/branch/search/g4;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_9

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    :cond_9
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_c
    iget p0, p2, Lio/branch/search/g4;->b:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lio/branch/search/g4;->c:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_1c

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1f

    :cond_1c
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1f
    iget-object p0, p2, Lio/branch/search/g4;->d:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_28

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2b

    :cond_28
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2b
    iget-object p0, p2, Lio/branch/search/g4;->e:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_34

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_37

    :cond_34
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_37
    iget-object p0, p2, Lio/branch/search/g4;->f:Ljava/lang/Long;

    const/4 v0, 0x6

    if-nez p0, :cond_40

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_47

    :cond_40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_47
    iget-wide v0, p2, Lio/branch/search/g4;->g:J

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/g4;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/d4$b;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/g4;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "INSERT OR REPLACE INTO `unified_entities`(`request_id`,`result_id`,`entity_id`,`package_id`,`shortcut_id`,`user_id`,`timestamp`) VALUES (?,?,?,?,?,?,?)"

    return-object p0
.end method
