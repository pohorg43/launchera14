.class public final Lc6/l$b;
.super Li6/h$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$c<",
        "Lc6/l;",
        "Lc6/l$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/i;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/r;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lc6/t;

.field public i:Lc6/w;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$c;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/l$b;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/l$b;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/l$b;->g:Ljava/util/List;

    sget-object v0, Lc6/t;->g:Lc6/t;

    iput-object v0, p0, Lc6/l$b;->h:Lc6/t;

    sget-object v0, Lc6/w;->e:Lc6/w;

    iput-object v0, p0, Lc6/l$b;->i:Lc6/w;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li6/d;Li6/f;)Li6/p$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lc6/l$b;->i(Li6/d;Li6/f;)Lc6/l$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/l$b;->g()Lc6/l;

    move-result-object p0

    invoke-virtual {p0}, Lc6/l;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Li6/v;

    invoke-direct {p0}, Li6/v;-><init>()V

    throw p0
.end method

.method public bridge synthetic c(Li6/d;Li6/f;)Li6/a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lc6/l$b;->i(Li6/d;Li6/f;)Lc6/l$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/l$b;

    invoke-direct {v0}, Lc6/l$b;-><init>()V

    invoke-virtual {p0}, Lc6/l$b;->g()Lc6/l;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/l$b;

    invoke-direct {v0}, Lc6/l$b;-><init>()V

    invoke-virtual {p0}, Lc6/l$b;->g()Lc6/l;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/l;

    invoke-virtual {p0, p1}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    return-object p0
.end method

.method public g()Lc6/l;
    .registers 6

    new-instance v0, Lc6/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/l;-><init>(Li6/h$c;La4/c;)V

    iget v1, p0, Lc6/l$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    iget-object v2, p0, Lc6/l$b;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/l$b;->e:Ljava/util/List;

    iget v2, p0, Lc6/l$b;->d:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lc6/l$b;->d:I

    :cond_1b
    iget-object v2, p0, Lc6/l$b;->e:Ljava/util/List;

    iput-object v2, v0, Lc6/l;->d:Ljava/util/List;

    iget v2, p0, Lc6/l$b;->d:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_33

    iget-object v2, p0, Lc6/l$b;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/l$b;->f:Ljava/util/List;

    iget v2, p0, Lc6/l$b;->d:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lc6/l$b;->d:I

    :cond_33
    iget-object v2, p0, Lc6/l$b;->f:Ljava/util/List;

    iput-object v2, v0, Lc6/l;->e:Ljava/util/List;

    iget v2, p0, Lc6/l$b;->d:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4b

    iget-object v2, p0, Lc6/l$b;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/l$b;->g:Ljava/util/List;

    iget v2, p0, Lc6/l$b;->d:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lc6/l$b;->d:I

    :cond_4b
    iget-object v2, p0, Lc6/l$b;->g:Ljava/util/List;

    iput-object v2, v0, Lc6/l;->f:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_56

    goto :goto_57

    :cond_56
    const/4 v3, 0x0

    :goto_57
    iget-object v2, p0, Lc6/l$b;->h:Lc6/t;

    iput-object v2, v0, Lc6/l;->g:Lc6/t;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_62

    or-int/lit8 v3, v3, 0x2

    :cond_62
    iget-object p0, p0, Lc6/l$b;->i:Lc6/w;

    iput-object p0, v0, Lc6/l;->h:Lc6/w;

    iput v3, v0, Lc6/l;->c:I

    return-object v0
.end method

.method public h(Lc6/l;)Lc6/l$b;
    .registers 9

    sget-object v0, Lc6/l;->k:Lc6/l;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget-object v0, p1, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3b

    iget-object v0, p0, Lc6/l$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p1, Lc6/l;->d:Ljava/util/List;

    iput-object v0, p0, Lc6/l$b;->e:Ljava/util/List;

    iget v0, p0, Lc6/l$b;->d:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lc6/l$b;->d:I

    goto :goto_3b

    :cond_21
    iget v0, p0, Lc6/l$b;->d:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_34

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lc6/l$b;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/l$b;->e:Ljava/util/List;

    iget v0, p0, Lc6/l$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/l$b;->d:I

    :cond_34
    iget-object v0, p0, Lc6/l$b;->e:Ljava/util/List;

    iget-object v2, p1, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    :goto_3b
    iget-object v0, p1, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_71

    iget-object v0, p0, Lc6/l$b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p1, Lc6/l;->e:Ljava/util/List;

    iput-object v0, p0, Lc6/l$b;->f:Ljava/util/List;

    iget v0, p0, Lc6/l$b;->d:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lc6/l$b;->d:I

    goto :goto_71

    :cond_57
    iget v0, p0, Lc6/l$b;->d:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_6a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lc6/l$b;->f:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/l$b;->f:Ljava/util/List;

    iget v0, p0, Lc6/l$b;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lc6/l$b;->d:I

    :cond_6a
    iget-object v0, p0, Lc6/l$b;->f:Ljava/util/List;

    iget-object v3, p1, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_71
    :goto_71
    iget-object v0, p1, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    iget-object v0, p0, Lc6/l$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p1, Lc6/l;->f:Ljava/util/List;

    iput-object v0, p0, Lc6/l$b;->g:Ljava/util/List;

    iget v0, p0, Lc6/l$b;->d:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lc6/l$b;->d:I

    goto :goto_a7

    :cond_8c
    iget v0, p0, Lc6/l$b;->d:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_a0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lc6/l$b;->g:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/l$b;->g:Ljava/util/List;

    iget v0, p0, Lc6/l$b;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/l$b;->d:I

    :cond_a0
    iget-object v0, p0, Lc6/l$b;->g:Ljava/util/List;

    iget-object v3, p1, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a7
    :goto_a7
    iget v0, p1, Lc6/l;->c:I

    and-int/2addr v0, v1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_af

    move v0, v1

    goto :goto_b0

    :cond_af
    move v0, v3

    :goto_b0
    if-eqz v0, :cond_d6

    iget-object v0, p1, Lc6/l;->g:Lc6/t;

    iget v4, p0, Lc6/l$b;->d:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_cf

    iget-object v4, p0, Lc6/l$b;->h:Lc6/t;

    sget-object v6, Lc6/t;->g:Lc6/t;

    if-eq v4, v6, :cond_cf

    invoke-static {v4}, Lc6/t;->e(Lc6/t;)Lc6/t$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lc6/t$b;->g(Lc6/t;)Lc6/t$b;

    invoke-virtual {v4}, Lc6/t$b;->f()Lc6/t;

    move-result-object v0

    iput-object v0, p0, Lc6/l$b;->h:Lc6/t;

    goto :goto_d1

    :cond_cf
    iput-object v0, p0, Lc6/l$b;->h:Lc6/t;

    :goto_d1
    iget v0, p0, Lc6/l$b;->d:I

    or-int/2addr v0, v5

    iput v0, p0, Lc6/l$b;->d:I

    :cond_d6
    iget v0, p1, Lc6/l;->c:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_dc

    goto :goto_dd

    :cond_dc
    move v1, v3

    :goto_dd
    if-eqz v1, :cond_103

    iget-object v0, p1, Lc6/l;->h:Lc6/w;

    iget v1, p0, Lc6/l$b;->d:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_fc

    iget-object v1, p0, Lc6/l$b;->i:Lc6/w;

    sget-object v3, Lc6/w;->e:Lc6/w;

    if-eq v1, v3, :cond_fc

    invoke-static {v1}, Lc6/w;->e(Lc6/w;)Lc6/w$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc6/w$b;->g(Lc6/w;)Lc6/w$b;

    invoke-virtual {v1}, Lc6/w$b;->f()Lc6/w;

    move-result-object v0

    iput-object v0, p0, Lc6/l$b;->i:Lc6/w;

    goto :goto_fe

    :cond_fc
    iput-object v0, p0, Lc6/l$b;->i:Lc6/w;

    :goto_fe
    iget v0, p0, Lc6/l$b;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lc6/l$b;->d:I

    :cond_103
    invoke-virtual {p0, p1}, Li6/h$c;->f(Li6/h$d;)V

    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/l;->b:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public i(Li6/d;Li6/f;)Lc6/l$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/l;->l:Li6/r;

    check-cast v1, Lc6/l$a;

    invoke-virtual {v1, p1, p2}, Lc6/l$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/l;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    :cond_10
    return-object p0

    :catch_11
    move-exception p1

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_1c

    :goto_15
    :try_start_15
    iget-object p2, p1, Li6/j;->a:Li6/p;

    check-cast p2, Lc6/l;
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_13

    :try_start_19
    throw p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    move-object v0, p2

    :goto_1c
    if-eqz v0, :cond_21

    invoke-virtual {p0, v0}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    :cond_21
    throw p1
.end method
