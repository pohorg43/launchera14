.class public Li6/u;
.super Ljava/util/AbstractMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/u$a;,
        Li6/u$c;,
        Li6/u$d;,
        Li6/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li6/u<",
            "TK;TV;>.b;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public volatile e:Li6/u$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/u<",
            "TK;TV;>.d;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILi6/t;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Li6/u;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li6/u;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Li6/u;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    iget-object v0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_21

    iget-object v1, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/u$b;

    iget-object v1, v1, Li6/u$b;->a:Ljava/lang/Comparable;

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1e

    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    return p0

    :cond_1e
    if-nez v1, :cond_21

    return v0

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-gt v1, v0, :cond_43

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/u$b;

    iget-object v3, v3, Li6/u$b;->a:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3c

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_22

    :cond_3c
    if-lez v3, :cond_42

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_22

    :cond_42
    return v2

    :cond_43
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method public final b()V
    .registers 1

    iget-boolean p0, p0, Li6/u;->d:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Li6/u;->b()V

    iget-object v0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_10
    iget-object v0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Li6/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object p0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public d(I)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public e()I
    .registers 1

    iget-object p0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Li6/u;->e:Li6/u$d;

    if-nez v0, :cond_c

    new-instance v0, Li6/u$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li6/u$d;-><init>(Li6/u;Li6/t;)V

    iput-object v0, p0, Li6/u;->e:Li6/u$d;

    :cond_c
    iget-object p0, p0, Li6/u;->e:Li6/u$d;

    return-object p0
.end method

.method public f()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Li6/u$a;->b:Ljava/lang/Iterable;

    goto :goto_11

    :cond_b
    iget-object p0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public final g()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Li6/u;->b()V

    iget-object v0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Li6/u;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Li6/u;->c:Ljava/util/Map;

    :cond_18
    iget-object p0, p0, Li6/u;->c:Ljava/util/Map;

    check-cast p0, Ljava/util/SortedMap;

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Li6/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_13

    iget-object p0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/u$b;

    iget-object p0, p0, Li6/u$b;->b:Ljava/lang/Object;

    return-object p0

    :cond_13
    iget-object p0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Li6/u;->b()V

    invoke-virtual {p0, p1}, Li6/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object p0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/u$b;

    iget-object p1, p0, Li6/u$b;->c:Li6/u;

    invoke-virtual {p1}, Li6/u;->b()V

    iget-object p1, p0, Li6/u$b;->b:Ljava/lang/Object;

    iput-object p2, p0, Li6/u$b;->b:Ljava/lang/Object;

    return-object p1

    :cond_1b
    invoke-virtual {p0}, Li6/u;->b()V

    iget-object v1, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Li6/u;->b:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_35

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Li6/u;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Li6/u;->b:Ljava/util/List;

    :cond_35
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget v1, p0, Li6/u;->a:I

    if-lt v0, v1, :cond_45

    invoke-virtual {p0}, Li6/u;->g()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_45
    iget-object v1, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Li6/u;->a:I

    if-ne v1, v2, :cond_64

    iget-object v1, p0, Li6/u;->b:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/u$b;

    invoke-virtual {p0}, Li6/u;->g()Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, v1, Li6/u$b;->a:Ljava/lang/Comparable;

    iget-object v1, v1, Li6/u$b;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    iget-object v1, p0, Li6/u;->b:Ljava/util/List;

    new-instance v2, Li6/u$b;

    invoke-direct {v2, p0, p1, p2}, Li6/u$b;-><init>(Li6/u;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Li6/u;->b()V

    iget-object v0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/u$b;

    iget-object p1, p1, Li6/u$b;->b:Ljava/lang/Object;

    iget-object v0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Li6/u;->g()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Li6/u;->b:Ljava/util/List;

    new-instance v2, Li6/u$b;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Li6/u$b;-><init>(Li6/u;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_34
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Li6/u;->b()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Li6/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    invoke-virtual {p0, v0}, Li6/u;->i(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object v0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    iget-object p0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Li6/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
