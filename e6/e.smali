.class public final Le6/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Li6/h$d<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/h$d<",
            "TM;>;",
            "Li6/h$f<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li6/h$d;->h(Li6/h$f;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Li6/h$d;->g(Li6/h$f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static final b(Li6/h$d;Li6/h$f;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Li6/h$d<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/h$d<",
            "TM;>;",
            "Li6/h$f<",
            "TM;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li6/h$d;->l(Li6/h$f;)V

    iget-object v0, p0, Li6/h$d;->a:Li6/g;

    iget-object v1, p1, Li6/h$f;->d:Li6/h$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Li6/h$e;->isRepeated()Z

    move-result v2

    const-string v3, "getRepeatedField() can only be called on repeated fields."

    if-eqz v2, :cond_5b

    invoke-virtual {v0, v1}, Li6/g;->f(Li6/g$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    goto :goto_2a

    :cond_24
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2a
    if-ge p2, v0, :cond_59

    invoke-virtual {p0, p1}, Li6/h$d;->l(Li6/h$f;)V

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    iget-object v0, p1, Li6/h$f;->d:Li6/h$e;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Li6/h$e;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0, v0}, Li6/g;->f(Li6/g$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4d

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Li6/h$f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5a

    :cond_4d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    const/4 p0, 0x0

    :goto_5a
    return-object p0

    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
