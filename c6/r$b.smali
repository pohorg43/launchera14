.class public final Lc6/r$b;
.super Li6/h$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$c<",
        "Lc6/r;",
        "Lc6/r$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/s;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lc6/q;

.field public i:I

.field public j:Lc6/q;

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$c;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lc6/r$b;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/r$b;->g:Ljava/util/List;

    sget-object v0, Lc6/q;->t:Lc6/q;

    iput-object v0, p0, Lc6/r$b;->h:Lc6/q;

    iput-object v0, p0, Lc6/r$b;->j:Lc6/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/r$b;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/r$b;->m:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lc6/r$b;->i(Li6/d;Li6/f;)Lc6/r$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/r$b;->g()Lc6/r;

    move-result-object p0

    invoke-virtual {p0}, Lc6/r;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/r$b;->i(Li6/d;Li6/f;)Lc6/r$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/r$b;

    invoke-direct {v0}, Lc6/r$b;-><init>()V

    invoke-virtual {p0}, Lc6/r$b;->g()Lc6/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/r$b;->h(Lc6/r;)Lc6/r$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/r$b;

    invoke-direct {v0}, Lc6/r$b;-><init>()V

    invoke-virtual {p0}, Lc6/r$b;->g()Lc6/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/r$b;->h(Lc6/r;)Lc6/r$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/r;

    invoke-virtual {p0, p1}, Lc6/r$b;->h(Lc6/r;)Lc6/r$b;

    return-object p0
.end method

.method public g()Lc6/r;
    .registers 6

    new-instance v0, Lc6/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/r;-><init>(Li6/h$c;La4/c;)V

    iget v1, p0, Lc6/r$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lc6/r$b;->e:I

    iput v2, v0, Lc6/r;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget v2, p0, Lc6/r$b;->f:I

    iput v2, v0, Lc6/r;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_31

    iget-object v2, p0, Lc6/r$b;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/r$b;->g:Ljava/util/List;

    iget v2, p0, Lc6/r$b;->d:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lc6/r$b;->d:I

    :cond_31
    iget-object v2, p0, Lc6/r$b;->g:Ljava/util/List;

    iput-object v2, v0, Lc6/r;->f:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3d

    or-int/lit8 v3, v3, 0x4

    :cond_3d
    iget-object v2, p0, Lc6/r$b;->h:Lc6/q;

    iput-object v2, v0, Lc6/r;->g:Lc6/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_49

    or-int/lit8 v3, v3, 0x8

    :cond_49
    iget v2, p0, Lc6/r$b;->i:I

    iput v2, v0, Lc6/r;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_55

    or-int/lit8 v3, v3, 0x10

    :cond_55
    iget-object v2, p0, Lc6/r$b;->j:Lc6/q;

    iput-object v2, v0, Lc6/r;->i:Lc6/q;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_60

    or-int/lit8 v3, v3, 0x20

    :cond_60
    iget v1, p0, Lc6/r$b;->k:I

    iput v1, v0, Lc6/r;->j:I

    iget v1, p0, Lc6/r$b;->d:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_79

    iget-object v1, p0, Lc6/r$b;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/r$b;->l:Ljava/util/List;

    iget v1, p0, Lc6/r$b;->d:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lc6/r$b;->d:I

    :cond_79
    iget-object v1, p0, Lc6/r$b;->l:Ljava/util/List;

    iput-object v1, v0, Lc6/r;->k:Ljava/util/List;

    iget v1, p0, Lc6/r$b;->d:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_92

    iget-object v1, p0, Lc6/r$b;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/r$b;->m:Ljava/util/List;

    iget v1, p0, Lc6/r$b;->d:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lc6/r$b;->d:I

    :cond_92
    iget-object p0, p0, Lc6/r$b;->m:Ljava/util/List;

    iput-object p0, v0, Lc6/r;->l:Ljava/util/List;

    iput v3, v0, Lc6/r;->c:I

    return-object v0
.end method

.method public h(Lc6/r;)Lc6/r$b;
    .registers 8

    sget-object v0, Lc6/r;->o:Lc6/r;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/r;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    if-eqz v1, :cond_1b

    iget v1, p1, Lc6/r;->d:I

    iget v4, p0, Lc6/r$b;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Lc6/r$b;->d:I

    iput v1, p0, Lc6/r$b;->e:I

    :cond_1b
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_21

    move v0, v3

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    if-eqz v0, :cond_2d

    iget v0, p1, Lc6/r;->e:I

    iget v4, p0, Lc6/r$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Lc6/r$b;->d:I

    iput v0, p0, Lc6/r$b;->f:I

    :cond_2d
    iget-object v0, p1, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lc6/r$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p1, Lc6/r;->f:Ljava/util/List;

    iput-object v0, p0, Lc6/r$b;->g:Ljava/util/List;

    iget v0, p0, Lc6/r$b;->d:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lc6/r$b;->d:I

    goto :goto_63

    :cond_48
    iget v0, p0, Lc6/r$b;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lc6/r$b;->g:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/r$b;->g:Ljava/util/List;

    iget v0, p0, Lc6/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/r$b;->d:I

    :cond_5c
    iget-object v0, p0, Lc6/r$b;->g:Ljava/util/List;

    iget-object v1, p1, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_63
    :goto_63
    invoke-virtual {p1}, Lc6/r;->n()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_86

    iget-object v0, p1, Lc6/r;->g:Lc6/q;

    iget v4, p0, Lc6/r$b;->d:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_7f

    iget-object v4, p0, Lc6/r$b;->h:Lc6/q;

    sget-object v5, Lc6/q;->t:Lc6/q;

    if-eq v4, v5, :cond_7f

    invoke-static {v4, v0}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v0

    iput-object v0, p0, Lc6/r$b;->h:Lc6/q;

    goto :goto_81

    :cond_7f
    iput-object v0, p0, Lc6/r$b;->h:Lc6/q;

    :goto_81
    iget v0, p0, Lc6/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/r$b;->d:I

    :cond_86
    iget v0, p1, Lc6/r;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8d

    move v0, v3

    goto :goto_8e

    :cond_8d
    move v0, v2

    :goto_8e
    if-eqz v0, :cond_9a

    iget v0, p1, Lc6/r;->h:I

    iget v1, p0, Lc6/r$b;->d:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lc6/r$b;->d:I

    iput v0, p0, Lc6/r$b;->i:I

    :cond_9a
    invoke-virtual {p1}, Lc6/r;->m()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_bd

    iget-object v0, p1, Lc6/r;->i:Lc6/q;

    iget v4, p0, Lc6/r$b;->d:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_b6

    iget-object v4, p0, Lc6/r$b;->j:Lc6/q;

    sget-object v5, Lc6/q;->t:Lc6/q;

    if-eq v4, v5, :cond_b6

    invoke-static {v4, v0}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v0

    iput-object v0, p0, Lc6/r$b;->j:Lc6/q;

    goto :goto_b8

    :cond_b6
    iput-object v0, p0, Lc6/r$b;->j:Lc6/q;

    :goto_b8
    iget v0, p0, Lc6/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/r$b;->d:I

    :cond_bd
    iget v0, p1, Lc6/r;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c3

    move v2, v3

    :cond_c3
    if-eqz v2, :cond_cf

    iget v0, p1, Lc6/r;->j:I

    iget v1, p0, Lc6/r$b;->d:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lc6/r$b;->d:I

    iput v0, p0, Lc6/r$b;->k:I

    :cond_cf
    iget-object v0, p1, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_106

    iget-object v0, p0, Lc6/r$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p1, Lc6/r;->k:Ljava/util/List;

    iput-object v0, p0, Lc6/r$b;->l:Ljava/util/List;

    iget v0, p0, Lc6/r$b;->d:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lc6/r$b;->d:I

    goto :goto_106

    :cond_ea
    iget v0, p0, Lc6/r$b;->d:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_ff

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lc6/r$b;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/r$b;->l:Ljava/util/List;

    iget v0, p0, Lc6/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/r$b;->d:I

    :cond_ff
    iget-object v0, p0, Lc6/r$b;->l:Ljava/util/List;

    iget-object v1, p1, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_106
    :goto_106
    iget-object v0, p1, Lc6/r;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13d

    iget-object v0, p0, Lc6/r$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, p1, Lc6/r;->l:Ljava/util/List;

    iput-object v0, p0, Lc6/r$b;->m:Ljava/util/List;

    iget v0, p0, Lc6/r$b;->d:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lc6/r$b;->d:I

    goto :goto_13d

    :cond_121
    iget v0, p0, Lc6/r$b;->d:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_136

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lc6/r$b;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/r$b;->m:Ljava/util/List;

    iget v0, p0, Lc6/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/r$b;->d:I

    :cond_136
    iget-object v0, p0, Lc6/r$b;->m:Ljava/util/List;

    iget-object v1, p1, Lc6/r;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_13d
    :goto_13d
    invoke-virtual {p0, p1}, Li6/h$c;->f(Li6/h$d;)V

    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/r;->b:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public i(Li6/d;Li6/f;)Lc6/r$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/r;->p:Li6/r;

    check-cast v1, Lc6/r$a;

    invoke-virtual {v1, p1, p2}, Lc6/r$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/r;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/r$b;->h(Lc6/r;)Lc6/r$b;

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

    check-cast p2, Lc6/r;
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

    invoke-virtual {p0, v0}, Lc6/r$b;->h(Lc6/r;)Lc6/r$b;

    :cond_21
    throw p1
.end method
