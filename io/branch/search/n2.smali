.class public final Lio/branch/search/n2;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/x1;Lio/branch/search/f2;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/requery/android/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/branch/search/x1;",
            "Lio/branch/search/f2<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "$this$accumulate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accum"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p2}, Lio/branch/search/x1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p0

    :cond_21
    :goto_21
    :try_start_21
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {p4, p0}, Lio/branch/search/f2;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_3a

    goto :goto_21

    :cond_31
    const/4 p1, 0x0

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-interface {p4, v0}, Lio/branch/search/f2;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_3a
    move-exception p1

    :try_start_3b
    throw p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p2

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
