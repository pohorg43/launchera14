.class public final Lc6/m$b;
.super Li6/h$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$c<",
        "Lc6/m;",
        "Lc6/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Lc6/p;

.field public f:Lc6/o;

.field public g:Lc6/l;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$c;-><init>()V

    sget-object v0, Lc6/p;->e:Lc6/p;

    iput-object v0, p0, Lc6/m$b;->e:Lc6/p;

    sget-object v0, Lc6/o;->e:Lc6/o;

    iput-object v0, p0, Lc6/m$b;->f:Lc6/o;

    sget-object v0, Lc6/l;->k:Lc6/l;

    iput-object v0, p0, Lc6/m$b;->g:Lc6/l;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/m$b;->h:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lc6/m$b;->i(Li6/d;Li6/f;)Lc6/m$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/m$b;->g()Lc6/m;

    move-result-object p0

    invoke-virtual {p0}, Lc6/m;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/m$b;->i(Li6/d;Li6/f;)Lc6/m$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/m$b;

    invoke-direct {v0}, Lc6/m$b;-><init>()V

    invoke-virtual {p0}, Lc6/m$b;->g()Lc6/m;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/m$b;->h(Lc6/m;)Lc6/m$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/m$b;

    invoke-direct {v0}, Lc6/m$b;-><init>()V

    invoke-virtual {p0}, Lc6/m$b;->g()Lc6/m;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/m$b;->h(Lc6/m;)Lc6/m$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/m;

    invoke-virtual {p0, p1}, Lc6/m$b;->h(Lc6/m;)Lc6/m$b;

    return-object p0
.end method

.method public g()Lc6/m;
    .registers 6

    new-instance v0, Lc6/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/m;-><init>(Li6/h$c;La4/c;)V

    iget v1, p0, Lc6/m$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lc6/m$b;->e:Lc6/p;

    iput-object v2, v0, Lc6/m;->d:Lc6/p;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget-object v2, p0, Lc6/m$b;->f:Lc6/o;

    iput-object v2, v0, Lc6/m;->e:Lc6/o;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_25

    or-int/lit8 v3, v3, 0x4

    :cond_25
    iget-object v2, p0, Lc6/m$b;->g:Lc6/l;

    iput-object v2, v0, Lc6/m;->f:Lc6/l;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lc6/m$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/m$b;->h:Ljava/util/List;

    iget v1, p0, Lc6/m$b;->d:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lc6/m$b;->d:I

    :cond_3c
    iget-object p0, p0, Lc6/m$b;->h:Ljava/util/List;

    iput-object p0, v0, Lc6/m;->g:Ljava/util/List;

    iput v3, v0, Lc6/m;->c:I

    return-object v0
.end method

.method public h(Lc6/m;)Lc6/m$b;
    .registers 8

    sget-object v0, Lc6/m;->j:Lc6/m;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/m;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_37

    iget-object v0, p1, Lc6/m;->d:Lc6/p;

    iget v3, p0, Lc6/m$b;->d:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_30

    iget-object v3, p0, Lc6/m$b;->e:Lc6/p;

    sget-object v4, Lc6/p;->e:Lc6/p;

    if-eq v3, v4, :cond_30

    new-instance v4, Lc6/p$b;

    invoke-direct {v4}, Lc6/p$b;-><init>()V

    invoke-virtual {v4, v3}, Lc6/p$b;->g(Lc6/p;)Lc6/p$b;

    invoke-virtual {v4, v0}, Lc6/p$b;->g(Lc6/p;)Lc6/p$b;

    invoke-virtual {v4}, Lc6/p$b;->f()Lc6/p;

    move-result-object v0

    iput-object v0, p0, Lc6/m$b;->e:Lc6/p;

    goto :goto_32

    :cond_30
    iput-object v0, p0, Lc6/m$b;->e:Lc6/p;

    :goto_32
    iget v0, p0, Lc6/m$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/m$b;->d:I

    :cond_37
    iget v0, p1, Lc6/m;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3f

    move v0, v1

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    if-eqz v0, :cond_68

    iget-object v0, p1, Lc6/m;->e:Lc6/o;

    iget v4, p0, Lc6/m$b;->d:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_61

    iget-object v4, p0, Lc6/m$b;->f:Lc6/o;

    sget-object v5, Lc6/o;->e:Lc6/o;

    if-eq v4, v5, :cond_61

    new-instance v5, Lc6/o$b;

    invoke-direct {v5}, Lc6/o$b;-><init>()V

    invoke-virtual {v5, v4}, Lc6/o$b;->g(Lc6/o;)Lc6/o$b;

    invoke-virtual {v5, v0}, Lc6/o$b;->g(Lc6/o;)Lc6/o$b;

    invoke-virtual {v5}, Lc6/o$b;->f()Lc6/o;

    move-result-object v0

    iput-object v0, p0, Lc6/m$b;->f:Lc6/o;

    goto :goto_63

    :cond_61
    iput-object v0, p0, Lc6/m$b;->f:Lc6/o;

    :goto_63
    iget v0, p0, Lc6/m$b;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/m$b;->d:I

    :cond_68
    iget v0, p1, Lc6/m;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    if-eqz v1, :cond_98

    iget-object v0, p1, Lc6/m;->f:Lc6/l;

    iget v1, p0, Lc6/m$b;->d:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_91

    iget-object v1, p0, Lc6/m$b;->g:Lc6/l;

    sget-object v2, Lc6/l;->k:Lc6/l;

    if-eq v1, v2, :cond_91

    new-instance v2, Lc6/l$b;

    invoke-direct {v2}, Lc6/l$b;-><init>()V

    invoke-virtual {v2, v1}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    invoke-virtual {v2, v0}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    invoke-virtual {v2}, Lc6/l$b;->g()Lc6/l;

    move-result-object v0

    iput-object v0, p0, Lc6/m$b;->g:Lc6/l;

    goto :goto_93

    :cond_91
    iput-object v0, p0, Lc6/m$b;->g:Lc6/l;

    :goto_93
    iget v0, p0, Lc6/m$b;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/m$b;->d:I

    :cond_98
    iget-object v0, p1, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cf

    iget-object v0, p0, Lc6/m$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p1, Lc6/m;->g:Ljava/util/List;

    iput-object v0, p0, Lc6/m$b;->h:Ljava/util/List;

    iget v0, p0, Lc6/m$b;->d:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lc6/m$b;->d:I

    goto :goto_cf

    :cond_b3
    iget v0, p0, Lc6/m$b;->d:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_c8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lc6/m$b;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/m$b;->h:Ljava/util/List;

    iget v0, p0, Lc6/m$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/m$b;->d:I

    :cond_c8
    iget-object v0, p0, Lc6/m$b;->h:Ljava/util/List;

    iget-object v1, p1, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_cf
    :goto_cf
    invoke-virtual {p0, p1}, Li6/h$c;->f(Li6/h$d;)V

    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/m;->b:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public i(Li6/d;Li6/f;)Lc6/m$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/m;->k:Li6/r;

    check-cast v1, Lc6/m$a;

    invoke-virtual {v1, p1, p2}, Lc6/m$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/m;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/m$b;->h(Lc6/m;)Lc6/m$b;

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

    check-cast p2, Lc6/m;
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

    invoke-virtual {p0, v0}, Lc6/m$b;->h(Lc6/m;)Lc6/m$b;

    :cond_21
    throw p1
.end method
