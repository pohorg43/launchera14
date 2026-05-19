.class public final Lio/branch/search/x2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/f2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/f2<",
        "Lio/branch/search/c3;",
        "Lh4/j<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/v2;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/v2;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final d:Lio/branch/search/x1;


# direct methods
.method public constructor <init>(Lio/branch/search/x1;)V
    .registers 3

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/x2;->d:Lio/branch/search/x1;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/x2;->b(Landroid/database/Cursor;)Lio/branch/search/c3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/x2;->b(Ljava/util/List;)Lh4/j;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/util/List;)Lh4/j;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/c3;",
            ">;)",
            "Lh4/j<",
            "Ljava/util/List<",
            "Lio/branch/search/v2;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/v2;",
            ">;>;"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/branch/search/c3;

    invoke-virtual {v5}, Lio/branch/search/c3;->b()Lio/branch/search/z2;

    move-result-object v5

    sget-object v6, Lio/branch/search/z2;->a:Lio/branch/search/z2;

    if-ne v5, v6, :cond_26

    goto :goto_27

    :cond_26
    move v3, v4

    :goto_27
    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2d
    new-instance v1, Lio/branch/search/x2$a;

    invoke-direct {v1}, Lio/branch/search/x2$a;-><init>()V

    invoke-static {v0, v1}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3f
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/branch/search/c3;

    invoke-virtual {v5}, Lio/branch/search/c3;->b()Lio/branch/search/z2;

    move-result-object v5

    sget-object v6, Lio/branch/search/z2;->b:Lio/branch/search/z2;

    if-ne v5, v6, :cond_56

    move v5, v3

    goto :goto_57

    :cond_56
    move v5, v4

    :goto_57
    if-eqz v5, :cond_3f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_5d
    new-instance p1, Lio/branch/search/x2$b;

    invoke-direct {p1}, Lio/branch/search/x2$b;-><init>()V

    invoke-static {v1, p1}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/c3;

    iget-object v4, p0, Lio/branch/search/x2;->d:Lio/branch/search/x1;

    invoke-virtual {v3, v4}, Lio/branch/search/c3;->a(Lio/branch/search/x1;)Lio/branch/search/v2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_8b
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/c3;

    iget-object v3, p0, Lio/branch/search/x2;->d:Lio/branch/search/x1;

    invoke-virtual {v2, v3}, Lio/branch/search/c3;->a(Lio/branch/search/x1;)Lio/branch/search/v2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_ae
    new-instance p0, Lh4/j;

    invoke-direct {p0, v1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/c3;
    .registers 9

    const-string p0, "cur"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "phase"

    invoke-static {p1, p0}, Lio/branch/search/d5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "position"

    invoke-static {p1, v0}, Lio/branch/search/d5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v0, "query"

    invoke-static {p1, v0}, Lio/branch/search/d5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "binds"

    invoke-static {p1, v0}, Lio/branch/search/d5;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "repeat_binds"

    invoke-static {p1, v0}, Lio/branch/search/d5;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lio/branch/search/c3;

    sget-object v1, Lio/branch/search/z2;->Companion:Lio/branch/search/z2$a;

    invoke-virtual {v1, p0}, Lio/branch/search/z2$a;->a(Ljava/lang/String;)Lio/branch/search/z2;

    move-result-object v2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    move v6, p0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/branch/search/c3;-><init>(Lio/branch/search/z2;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
