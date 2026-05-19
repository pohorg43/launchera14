.class public final Lj4/f;
.super Ljava/util/AbstractCollection;
.source ""

# interfaces
.implements Lkotlin/jvm/internal/markers/KMutableCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableCollection;"
    }
.end annotation


# instance fields
.field public final a:Lj4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/c<",
            "*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj4/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj4/c<",
            "*TV;>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lj4/f;->a:Lj4/c;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    const-string p0, "elements"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .registers 1

    iget-object p0, p0, Lj4/f;->a:Lj4/c;

    invoke-virtual {p0}, Lj4/c;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lj4/f;->a:Lj4/c;

    invoke-virtual {p0, p1}, Lj4/c;->k(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isEmpty()Z
    .registers 1

    iget-object p0, p0, Lj4/f;->a:Lj4/c;

    invoke-virtual {p0}, Lj4/c;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lj4/f;->a:Lj4/c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj4/c$f;

    invoke-direct {v0, p0}, Lj4/c$f;-><init>(Lj4/c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lj4/f;->a:Lj4/c;

    invoke-virtual {p0}, Lj4/c;->d()V

    invoke-virtual {p0, p1}, Lj4/c;->k(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_d

    const/4 p0, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p0, p1}, Lj4/c;->o(I)V

    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj4/f;->a:Lj4/c;

    invoke-virtual {v0}, Lj4/c;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj4/f;->a:Lj4/c;

    invoke-virtual {v0}, Lj4/c;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .registers 1

    iget-object p0, p0, Lj4/f;->a:Lj4/c;

    iget p0, p0, Lj4/c;->h:I

    return p0
.end method
