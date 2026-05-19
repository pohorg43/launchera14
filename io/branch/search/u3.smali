.class public final Lio/branch/search/u3;
.super Lio/branch/search/s3;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/s3<",
        "Lio/branch/search/internal/sqlite/SQLiteDBInner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/u3$a;

    invoke-direct {v0}, Lio/branch/search/u3$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/branch/search/s3;-><init>(Landroid/content/Context;Lio/branch/search/k3;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/c4;
    .registers 1

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->c()Lio/branch/search/c4;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lio/branch/search/k4;
    .registers 1

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->d()Lio/branch/search/k4;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Lio/branch/search/n4;
    .registers 1

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->e()Lio/branch/search/n4;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d()Lio/branch/search/a4;
    .registers 1

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->h()Lio/branch/search/a4;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e()Lio/branch/search/m3;
    .registers 1

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->f()Lio/branch/search/m3;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f()Lio/branch/search/p3;
    .registers 1

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    check-cast p0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    invoke-virtual {p0}, Lio/branch/search/internal/sqlite/SQLiteDBInner;->g()Lio/branch/search/p3;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
