.class public final Lj4/i;
.super Li4/f;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li4/f<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableSet;"
    }
.end annotation


# static fields
.field public static final b:Lj4/i;


# instance fields
.field public final a:Lj4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/c<",
            "TE;*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lj4/i;

    sget-object v1, Lj4/c;->m:Lj4/c$a;

    sget-object v1, Lj4/c;->n:Lj4/c;

    invoke-direct {v0, v1}, Lj4/i;-><init>(Lj4/c;)V

    sput-object v0, Lj4/i;->b:Lj4/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lj4/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lj4/c;-><init>(I)V

    invoke-direct {p0, v0}, Lj4/i;-><init>(Lj4/c;)V

    return-void
.end method

.method public constructor <init>(Lj4/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj4/c<",
            "TE;*>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li4/f;-><init>()V

    iput-object p1, p0, Lj4/i;->a:Lj4/c;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lj4/i;->a:Lj4/c;

    iget-boolean v0, v0, Lj4/c;->l:Z

    if-eqz v0, :cond_d

    new-instance v0, Lj4/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lj4/g;-><init>(Ljava/util/Collection;I)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/io/NotSerializableException;

    const-string v0, "The set cannot be serialized while it is being built."

    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lj4/i;->a:Lj4/c;

    iget p0, p0, Lj4/c;->h:I

    return p0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object p0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {p0, p1}, Lj4/c;->a(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {v0}, Lj4/c;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .registers 1

    iget-object p0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {p0}, Lj4/c;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {p0, p1}, Lj4/c;->j(Ljava/lang/Object;)I

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

    iget-object p0, p0, Lj4/i;->a:Lj4/c;

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
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lj4/i;->a:Lj4/c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj4/c$e;

    invoke-direct {v0, p0}, Lj4/c$e;-><init>(Lj4/c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {p0, p1}, Lj4/c;->n(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
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

    iget-object v0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {v0}, Lj4/c;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

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

    iget-object v0, p0, Lj4/i;->a:Lj4/c;

    invoke-virtual {v0}, Lj4/c;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
