.class public final Lio/branch/search/a3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/f2<",
        "Lio/branch/search/r2;",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/u2;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/a3;->b(Landroid/database/Cursor;)Lio/branch/search/r2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/a3;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/r2;
    .registers 12

    const-string p0, "cur"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/r2;

    const-string v0, "query_id"

    invoke-static {p1, v0}, Lio/branch/search/d5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v0, "should_execute_now_query"

    invoke-static {p1, v0}, Lio/branch/search/d5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "should_execute_now_query_bindings"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v2}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "weight"

    invoke-static {p1, v0}, Lio/branch/search/d5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v0, "transaction_group_id"

    invoke-static {p1, v0, v2, v3, v2}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    const-string v0, "uses_cursor"

    invoke-static {p1, v0}, Lio/branch/search/d5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    move v8, v0

    :goto_33
    const-string v0, "query"

    invoke-static {p1, v0}, Lio/branch/search/d5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "bindings"

    invoke-static {p1, v0, v2, v3, v2}, Lio/branch/search/d5;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v8}, Lio/branch/search/r2;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Z)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/r2;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/u2;",
            ">;"
        }
    .end annotation

    const-string p0, "scheduledQueries"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/r2;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4b

    invoke-static {p0}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/u2;

    invoke-virtual {v1}, Lio/branch/search/u2;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lio/branch/search/r2;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_4b

    invoke-virtual {v0}, Lio/branch/search/r2;->f()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3d

    goto :goto_4b

    :cond_3d
    invoke-static {p0}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/u2;

    invoke-virtual {v1}, Lio/branch/search/u2;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_4b
    :goto_4b
    new-instance v1, Lio/branch/search/u2;

    invoke-virtual {v0}, Lio/branch/search/r2;->f()Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Lio/branch/search/r2;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v2}, Li4/o;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lio/branch/search/u2;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_61
    return-object p0
.end method
