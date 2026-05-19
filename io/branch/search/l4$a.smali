.class public Lio/branch/search/l4$a;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/l4;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/branch/search/j4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/l4;Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/j4;)V
    .registers 5

    iget-object p0, p2, Lio/branch/search/j4;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_9

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    :cond_9
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_c
    iget-wide v0, p2, Lio/branch/search/j4;->b:J

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v0, p2, Lio/branch/search/j4;->c:J

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lio/branch/search/j4;->d:Ljava/lang/String;

    const/4 p2, 0x4

    if-nez p0, :cond_21

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_24

    :cond_21
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_24
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/j4;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/l4$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/j4;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "INSERT OR IGNORE INTO `app_usage_event`(`package_name`,`timestamp`,`event_type`,`class_name`) VALUES (?,?,?,?)"

    return-object p0
.end method
