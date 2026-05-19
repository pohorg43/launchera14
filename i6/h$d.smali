.class public abstract Li6/h$d;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/h$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Li6/h$d<",
        "TMessageType;>;>",
        "Li6/h;"
    }
.end annotation


# instance fields
.field public final a:Li6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/g<",
            "Li6/h$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    new-instance v0, Li6/g;

    invoke-direct {v0}, Li6/g;-><init>()V

    iput-object v0, p0, Li6/h$d;->a:Li6/g;

    return-void
.end method

.method public constructor <init>(Li6/h$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/h$c<",
            "TMessageType;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    iget-object v0, p1, Li6/h$c;->b:Li6/g;

    invoke-virtual {v0}, Li6/g;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Li6/h$c;->c:Z

    iget-object p1, p1, Li6/h$c;->b:Li6/g;

    iput-object p1, p0, Li6/h$d;->a:Li6/g;

    return-void
.end method


# virtual methods
.method public e()Z
    .registers 4

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v2, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v2}, Li6/u;->e()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v2, v1}, Li6/u;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {p0, v2}, Li6/g;->h(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_3a

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1c
    iget-object v1, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v1}, Li6/u;->f()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p0, v2}, Li6/g;->h(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_3a

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    return v0
.end method

.method public f()I
    .registers 5

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v2, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v2}, Li6/u;->e()I

    move-result v2

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v2, v0}, Li6/u;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/g$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Li6/g;->e(Li6/g$a;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_24
    iget-object p0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0}, Li6/u;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/g$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Li6/g;->e(Li6/g$a;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2e

    :cond_4a
    return v1
.end method

.method public final g(Li6/h$f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/h$f<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Li6/h$d;->l(Li6/h$f;)V

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    iget-object v0, p1, Li6/h$f;->d:Li6/h$e;

    invoke-virtual {p0, v0}, Li6/g;->f(Li6/g$a;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_10

    iget-object p0, p1, Li6/h$f;->b:Ljava/lang/Object;

    return-object p0

    :cond_10
    iget-object v0, p1, Li6/h$f;->d:Li6/h$e;

    iget-boolean v1, v0, Li6/h$e;->d:Z

    if-eqz v1, :cond_3d

    iget-object v0, v0, Li6/h$e;->c:Li6/y;

    iget-object v0, v0, Li6/y;->a:Li6/z;

    sget-object v1, Li6/z;->i:Li6/z;

    if-ne v0, v1, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Li6/h$f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3b
    move-object p0, v0

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, p0}, Li6/h$f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_41
    :goto_41
    return-object p0
.end method

.method public final h(Li6/h$f;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/h$f<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Li6/h$d;->l(Li6/h$f;)V

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    iget-object p1, p1, Li6/h$f;->d:Li6/h$e;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Li6/h$e;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, p1}, Li6/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()V
    .registers 1

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public j()Li6/h$d$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li6/h$d<",
            "TMessageType;>.a;"
        }
    .end annotation

    new-instance v0, Li6/h$d$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Li6/h$d$a;-><init>(Li6/h$d;ZLi6/h$a;)V

    return-object v0
.end method

.method public k(Li6/d;Li6/e;Li6/f;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Li6/h$d;->a:Li6/g;

    invoke-interface {p0}, Li6/q;->getDefaultInstanceForType()Li6/p;

    move-result-object p0

    and-int/lit8 v1, p4, 0x7

    ushr-int/lit8 v2, p4, 0x3

    iget-object v3, p3, Li6/f;->a:Ljava/util/Map;

    new-instance v4, Li6/f$a;

    invoke-direct {v4, p0, v2}, Li6/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/h$f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_1c

    goto :goto_44

    :cond_1c
    iget-object v4, p0, Li6/h$f;->d:Li6/h$e;

    iget-object v4, v4, Li6/h$e;->c:Li6/y;

    invoke-static {v4, v2}, Li6/g;->g(Li6/y;Z)I

    move-result v4

    if-ne v1, v4, :cond_29

    move v1, v2

    move v4, v1

    goto :goto_46

    :cond_29
    iget-object v4, p0, Li6/h$f;->d:Li6/h$e;

    iget-boolean v5, v4, Li6/h$e;->d:Z

    if-eqz v5, :cond_44

    iget-object v4, v4, Li6/h$e;->c:Li6/y;

    invoke-virtual {v4}, Li6/y;->a()Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Li6/h$f;->d:Li6/h$e;

    iget-object v4, v4, Li6/h$e;->c:Li6/y;

    invoke-static {v4, v3}, Li6/g;->g(Li6/y;Z)I

    move-result v4

    if-ne v1, v4, :cond_44

    move v1, v2

    move v4, v3

    goto :goto_46

    :cond_44
    :goto_44
    move v4, v2

    move v1, v3

    :goto_46
    if-eqz v1, :cond_4e

    invoke-virtual {p1, p4, p2}, Li6/d;->r(ILi6/e;)Z

    move-result v3

    goto/16 :goto_151

    :cond_4e
    if-eqz v4, :cond_9b

    invoke-virtual {p1}, Li6/d;->l()I

    move-result p2

    invoke-virtual {p1, p2}, Li6/d;->d(I)I

    move-result p2

    iget-object p3, p0, Li6/h$f;->d:Li6/h$e;

    iget-object p3, p3, Li6/h$e;->c:Li6/y;

    sget-object p4, Li6/y;->p:Li6/y;

    if-ne p3, p4, :cond_80

    :goto_60
    invoke-virtual {p1}, Li6/d;->b()I

    move-result p3

    if-lez p3, :cond_94

    invoke-virtual {p1}, Li6/d;->l()I

    move-result p3

    iget-object p4, p0, Li6/h$f;->d:Li6/h$e;

    iget-object p4, p4, Li6/h$e;->a:Li6/i$b;

    invoke-interface {p4, p3}, Li6/i$b;->findValueByNumber(I)Li6/i$a;

    move-result-object p3

    if-nez p3, :cond_76

    goto/16 :goto_151

    :cond_76
    iget-object p4, p0, Li6/h$f;->d:Li6/h$e;

    invoke-virtual {p0, p3}, Li6/h$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Li6/g;->a(Li6/g$a;Ljava/lang/Object;)V

    goto :goto_60

    :cond_80
    :goto_80
    invoke-virtual {p1}, Li6/d;->b()I

    move-result p3

    if-lez p3, :cond_94

    iget-object p3, p0, Li6/h$f;->d:Li6/h$e;

    iget-object p3, p3, Li6/h$e;->c:Li6/y;

    invoke-static {p1, p3, v2}, Li6/g;->k(Li6/d;Li6/y;Z)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Li6/h$f;->d:Li6/h$e;

    invoke-virtual {v0, p4, p3}, Li6/g;->a(Li6/g$a;Ljava/lang/Object;)V

    goto :goto_80

    :cond_94
    iput p2, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto/16 :goto_151

    :cond_9b
    iget-object v1, p0, Li6/h$f;->d:Li6/h$e;

    iget-object v1, v1, Li6/h$e;->c:Li6/y;

    iget-object v1, v1, Li6/y;->a:Li6/z;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_126

    const/16 p2, 0x8

    if-eq v1, p2, :cond_b6

    iget-object p2, p0, Li6/h$f;->d:Li6/h$e;

    iget-object p2, p2, Li6/h$e;->c:Li6/y;

    invoke-static {p1, p2, v2}, Li6/g;->k(Li6/d;Li6/y;Z)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_13c

    :cond_b6
    const/4 p2, 0x0

    iget-object p4, p0, Li6/h$f;->d:Li6/h$e;

    iget-boolean v1, p4, Li6/h$e;->d:Z

    if-nez v1, :cond_c9

    invoke-virtual {v0, p4}, Li6/g;->f(Li6/g$a;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Li6/p;

    if-eqz p4, :cond_c9

    invoke-interface {p4}, Li6/p;->toBuilder()Li6/p$a;

    move-result-object p2

    :cond_c9
    if-nez p2, :cond_d1

    iget-object p2, p0, Li6/h$f;->c:Li6/p;

    invoke-interface {p2}, Li6/p;->newBuilderForType()Li6/p$a;

    move-result-object p2

    :cond_d1
    iget-object p4, p0, Li6/h$f;->d:Li6/h$e;

    iget-object v1, p4, Li6/h$e;->c:Li6/y;

    sget-object v4, Li6/y;->l:Li6/y;

    const/16 v5, 0x40

    if-ne v1, v4, :cond_fa

    iget p4, p4, Li6/h$e;->b:I

    iget v1, p1, Li6/d;->j:I

    if-ge v1, v5, :cond_f5

    add-int/2addr v1, v3

    iput v1, p1, Li6/d;->j:I

    invoke-interface {p2, p1, p3}, Li6/p$a;->a(Li6/d;Li6/f;)Li6/p$a;

    shl-int/lit8 p3, p4, 0x3

    or-int/lit8 p3, p3, 0x4

    invoke-virtual {p1, p3}, Li6/d;->a(I)V

    iget p3, p1, Li6/d;->j:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Li6/d;->j:I

    goto :goto_11c

    :cond_f5
    invoke-static {}, Li6/j;->b()Li6/j;

    move-result-object p0

    throw p0

    :cond_fa
    invoke-virtual {p1}, Li6/d;->l()I

    move-result p4

    iget v1, p1, Li6/d;->j:I

    if-ge v1, v5, :cond_121

    invoke-virtual {p1, p4}, Li6/d;->d(I)I

    move-result p4

    iget v1, p1, Li6/d;->j:I

    add-int/2addr v1, v3

    iput v1, p1, Li6/d;->j:I

    invoke-interface {p2, p1, p3}, Li6/p$a;->a(Li6/d;Li6/f;)Li6/p$a;

    invoke-virtual {p1, v2}, Li6/d;->a(I)V

    iget p3, p1, Li6/d;->j:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Li6/d;->j:I

    iput p4, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    :goto_11c
    invoke-interface {p2}, Li6/p$a;->build()Li6/p;

    move-result-object p1

    goto :goto_13c

    :cond_121
    invoke-static {}, Li6/j;->b()Li6/j;

    move-result-object p0

    throw p0

    :cond_126
    invoke-virtual {p1}, Li6/d;->l()I

    move-result p1

    iget-object p3, p0, Li6/h$f;->d:Li6/h$e;

    iget-object p3, p3, Li6/h$e;->a:Li6/i$b;

    invoke-interface {p3, p1}, Li6/i$b;->findValueByNumber(I)Li6/i$a;

    move-result-object p3

    if-nez p3, :cond_13b

    invoke-virtual {p2, p4}, Li6/e;->y(I)V

    invoke-virtual {p2, p1}, Li6/e;->y(I)V

    goto :goto_151

    :cond_13b
    move-object p1, p3

    :goto_13c
    iget-object p2, p0, Li6/h$f;->d:Li6/h$e;

    iget-boolean p3, p2, Li6/h$e;->d:Z

    if-eqz p3, :cond_14a

    invoke-virtual {p0, p1}, Li6/h$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Li6/g;->a(Li6/g$a;Ljava/lang/Object;)V

    goto :goto_151

    :cond_14a
    invoke-virtual {p0, p1}, Li6/h$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Li6/g;->l(Li6/g$a;Ljava/lang/Object;)V

    :goto_151
    return v3
.end method

.method public final l(Li6/h$f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/h$f<",
            "TMessageType;*>;)V"
        }
    .end annotation

    iget-object p1, p1, Li6/h$f;->a:Li6/p;

    invoke-interface {p0}, Li6/q;->getDefaultInstanceForType()Li6/p;

    move-result-object p0

    if-ne p1, p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
