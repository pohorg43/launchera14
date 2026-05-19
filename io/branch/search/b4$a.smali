.class public Lio/branch/search/b4$a;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b4;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/branch/search/z3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/b4;Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/z3;)V
    .registers 5

    iget p0, p2, Lio/branch/search/z3;->a:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v0, p2, Lio/branch/search/z3;->b:J

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/z3;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/b4$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/branch/search/z3;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "INSERT OR REPLACE INTO `tracking_status_history`(`status`,`timestamp`) VALUES (?,?)"

    return-object p0
.end method
