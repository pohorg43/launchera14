.class public final Lc6/q$c;
.super Li6/h$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$c<",
        "Lc6/q;",
        "Lc6/q$c;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:Lc6/q;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lc6/q;

.field public o:I

.field public p:Lc6/q;

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$c;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/q$c;->e:Ljava/util/List;

    sget-object v0, Lc6/q;->t:Lc6/q;

    iput-object v0, p0, Lc6/q$c;->h:Lc6/q;

    iput-object v0, p0, Lc6/q$c;->n:Lc6/q;

    iput-object v0, p0, Lc6/q$c;->p:Lc6/q;

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

    invoke-virtual {p0, p1, p2}, Lc6/q$c;->i(Li6/d;Li6/f;)Lc6/q$c;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/q$c;->g()Lc6/q;

    move-result-object p0

    invoke-virtual {p0}, Lc6/q;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/q$c;->i(Li6/d;Li6/f;)Lc6/q$c;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/q$c;

    invoke-direct {v0}, Lc6/q$c;-><init>()V

    invoke-virtual {p0}, Lc6/q$c;->g()Lc6/q;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/q$c;

    invoke-direct {v0}, Lc6/q$c;-><init>()V

    invoke-virtual {p0}, Lc6/q$c;->g()Lc6/q;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/q;

    invoke-virtual {p0, p1}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    move-result-object p0

    return-object p0
.end method

.method public g()Lc6/q;
    .registers 6

    new-instance v0, Lc6/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/q;-><init>(Li6/h$c;La4/c;)V

    iget v1, p0, Lc6/q$c;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    iget-object v2, p0, Lc6/q$c;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/q$c;->e:Ljava/util/List;

    iget v2, p0, Lc6/q$c;->d:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lc6/q$c;->d:I

    :cond_1b
    iget-object v2, p0, Lc6/q$c;->e:Ljava/util/List;

    iput-object v2, v0, Lc6/q;->d:Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    iget-boolean v2, p0, Lc6/q$c;->f:Z

    iput-boolean v2, v0, Lc6/q;->e:Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_31

    or-int/lit8 v3, v3, 0x2

    :cond_31
    iget v2, p0, Lc6/q$c;->g:I

    iput v2, v0, Lc6/q;->f:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3d

    or-int/lit8 v3, v3, 0x4

    :cond_3d
    iget-object v2, p0, Lc6/q$c;->h:Lc6/q;

    iput-object v2, v0, Lc6/q;->g:Lc6/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_49

    or-int/lit8 v3, v3, 0x8

    :cond_49
    iget v2, p0, Lc6/q$c;->i:I

    iput v2, v0, Lc6/q;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_55

    or-int/lit8 v3, v3, 0x10

    :cond_55
    iget v2, p0, Lc6/q$c;->j:I

    iput v2, v0, Lc6/q;->i:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_61

    or-int/lit8 v3, v3, 0x20

    :cond_61
    iget v2, p0, Lc6/q$c;->k:I

    iput v2, v0, Lc6/q;->j:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_6d

    or-int/lit8 v3, v3, 0x40

    :cond_6d
    iget v2, p0, Lc6/q$c;->l:I

    iput v2, v0, Lc6/q;->k:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_79

    or-int/lit16 v3, v3, 0x80

    :cond_79
    iget v2, p0, Lc6/q$c;->m:I

    iput v2, v0, Lc6/q;->l:I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_85

    or-int/lit16 v3, v3, 0x100

    :cond_85
    iget-object v2, p0, Lc6/q$c;->n:Lc6/q;

    iput-object v2, v0, Lc6/q;->m:Lc6/q;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_91

    or-int/lit16 v3, v3, 0x200

    :cond_91
    iget v2, p0, Lc6/q$c;->o:I

    iput v2, v0, Lc6/q;->n:I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_9d

    or-int/lit16 v3, v3, 0x400

    :cond_9d
    iget-object v2, p0, Lc6/q$c;->p:Lc6/q;

    iput-object v2, v0, Lc6/q;->o:Lc6/q;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_a9

    or-int/lit16 v3, v3, 0x800

    :cond_a9
    iget v2, p0, Lc6/q$c;->q:I

    iput v2, v0, Lc6/q;->p:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b4

    or-int/lit16 v3, v3, 0x1000

    :cond_b4
    iget p0, p0, Lc6/q$c;->r:I

    iput p0, v0, Lc6/q;->q:I

    iput v3, v0, Lc6/q;->c:I

    return-object v0
.end method

.method public h(Lc6/q;)Lc6/q$c;
    .registers 9

    sget-object v0, Lc6/q;->t:Lc6/q;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget-object v1, p1, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lc6/q$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p1, Lc6/q;->d:Ljava/util/List;

    iput-object v1, p0, Lc6/q$c;->e:Ljava/util/List;

    iget v1, p0, Lc6/q$c;->d:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lc6/q$c;->d:I

    goto :goto_3b

    :cond_21
    iget v1, p0, Lc6/q$c;->d:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_34

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lc6/q$c;->e:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lc6/q$c;->e:Ljava/util/List;

    iget v1, p0, Lc6/q$c;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Lc6/q$c;->d:I

    :cond_34
    iget-object v1, p0, Lc6/q$c;->e:Ljava/util/List;

    iget-object v3, p1, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    :goto_3b
    iget v1, p1, Lc6/q;->c:I

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_44

    move v3, v2

    goto :goto_45

    :cond_44
    move v3, v4

    :goto_45
    const/4 v5, 0x2

    if-eqz v3, :cond_51

    iget-boolean v3, p1, Lc6/q;->e:Z

    iget v6, p0, Lc6/q$c;->d:I

    or-int/2addr v6, v5

    iput v6, p0, Lc6/q$c;->d:I

    iput-boolean v3, p0, Lc6/q$c;->f:Z

    :cond_51
    and-int/2addr v1, v5

    if-ne v1, v5, :cond_56

    move v1, v2

    goto :goto_57

    :cond_56
    move v1, v4

    :goto_57
    if-eqz v1, :cond_63

    iget v1, p1, Lc6/q;->f:I

    iget v3, p0, Lc6/q$c;->d:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lc6/q$c;->d:I

    iput v1, p0, Lc6/q$c;->g:I

    :cond_63
    invoke-virtual {p1}, Lc6/q;->o()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_84

    iget-object v1, p1, Lc6/q;->g:Lc6/q;

    iget v5, p0, Lc6/q$c;->d:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_7d

    iget-object v5, p0, Lc6/q$c;->h:Lc6/q;

    if-eq v5, v0, :cond_7d

    invoke-static {v5, v1}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v1

    iput-object v1, p0, Lc6/q$c;->h:Lc6/q;

    goto :goto_7f

    :cond_7d
    iput-object v1, p0, Lc6/q$c;->h:Lc6/q;

    :goto_7f
    iget v1, p0, Lc6/q$c;->d:I

    or-int/2addr v1, v3

    iput v1, p0, Lc6/q$c;->d:I

    :cond_84
    iget v1, p1, Lc6/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8b

    move v1, v2

    goto :goto_8c

    :cond_8b
    move v1, v4

    :goto_8c
    if-eqz v1, :cond_98

    iget v1, p1, Lc6/q;->h:I

    iget v3, p0, Lc6/q$c;->d:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lc6/q$c;->d:I

    iput v1, p0, Lc6/q$c;->i:I

    :cond_98
    invoke-virtual {p1}, Lc6/q;->n()Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_a9

    iget v1, p1, Lc6/q;->i:I

    iget v5, p0, Lc6/q$c;->d:I

    or-int/2addr v5, v3

    iput v5, p0, Lc6/q$c;->d:I

    iput v1, p0, Lc6/q$c;->j:I

    :cond_a9
    iget v1, p1, Lc6/q;->c:I

    and-int/lit8 v5, v1, 0x20

    if-ne v5, v3, :cond_b1

    move v3, v2

    goto :goto_b2

    :cond_b1
    move v3, v4

    :goto_b2
    const/16 v5, 0x40

    if-eqz v3, :cond_bf

    iget v3, p1, Lc6/q;->j:I

    iget v6, p0, Lc6/q$c;->d:I

    or-int/2addr v6, v5

    iput v6, p0, Lc6/q$c;->d:I

    iput v3, p0, Lc6/q$c;->k:I

    :cond_bf
    and-int/2addr v1, v5

    if-ne v1, v5, :cond_c4

    move v1, v2

    goto :goto_c5

    :cond_c4
    move v1, v4

    :goto_c5
    if-eqz v1, :cond_d1

    iget v1, p1, Lc6/q;->k:I

    iget v3, p0, Lc6/q$c;->d:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lc6/q$c;->d:I

    iput v1, p0, Lc6/q$c;->l:I

    :cond_d1
    invoke-virtual {p1}, Lc6/q;->q()Z

    move-result v1

    if-eqz v1, :cond_e1

    iget v1, p1, Lc6/q;->l:I

    iget v3, p0, Lc6/q$c;->d:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lc6/q$c;->d:I

    iput v1, p0, Lc6/q$c;->m:I

    :cond_e1
    invoke-virtual {p1}, Lc6/q;->p()Z

    move-result v1

    const/16 v3, 0x200

    if-eqz v1, :cond_102

    iget-object v1, p1, Lc6/q;->m:Lc6/q;

    iget v5, p0, Lc6/q$c;->d:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_fb

    iget-object v5, p0, Lc6/q$c;->n:Lc6/q;

    if-eq v5, v0, :cond_fb

    invoke-static {v5, v1}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v1

    iput-object v1, p0, Lc6/q$c;->n:Lc6/q;

    goto :goto_fd

    :cond_fb
    iput-object v1, p0, Lc6/q$c;->n:Lc6/q;

    :goto_fd
    iget v1, p0, Lc6/q$c;->d:I

    or-int/2addr v1, v3

    iput v1, p0, Lc6/q$c;->d:I

    :cond_102
    iget v1, p1, Lc6/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_109

    move v1, v2

    goto :goto_10a

    :cond_109
    move v1, v4

    :goto_10a
    if-eqz v1, :cond_116

    iget v1, p1, Lc6/q;->n:I

    iget v3, p0, Lc6/q$c;->d:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lc6/q$c;->d:I

    iput v1, p0, Lc6/q$c;->o:I

    :cond_116
    invoke-virtual {p1}, Lc6/q;->m()Z

    move-result v1

    const/16 v3, 0x800

    if-eqz v1, :cond_137

    iget-object v1, p1, Lc6/q;->o:Lc6/q;

    iget v5, p0, Lc6/q$c;->d:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_130

    iget-object v5, p0, Lc6/q$c;->p:Lc6/q;

    if-eq v5, v0, :cond_130

    invoke-static {v5, v1}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v0

    iput-object v0, p0, Lc6/q$c;->p:Lc6/q;

    goto :goto_132

    :cond_130
    iput-object v1, p0, Lc6/q$c;->p:Lc6/q;

    :goto_132
    iget v0, p0, Lc6/q$c;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/q$c;->d:I

    :cond_137
    iget v0, p1, Lc6/q;->c:I

    and-int/lit16 v1, v0, 0x800

    if-ne v1, v3, :cond_13f

    move v1, v2

    goto :goto_140

    :cond_13f
    move v1, v4

    :goto_140
    const/16 v3, 0x1000

    if-eqz v1, :cond_14d

    iget v1, p1, Lc6/q;->p:I

    iget v5, p0, Lc6/q$c;->d:I

    or-int/2addr v5, v3

    iput v5, p0, Lc6/q$c;->d:I

    iput v1, p0, Lc6/q$c;->q:I

    :cond_14d
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_151

    goto :goto_152

    :cond_151
    move v2, v4

    :goto_152
    if-eqz v2, :cond_15e

    iget v0, p1, Lc6/q;->q:I

    iget v1, p0, Lc6/q$c;->d:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lc6/q$c;->d:I

    iput v0, p0, Lc6/q$c;->r:I

    :cond_15e
    invoke-virtual {p0, p1}, Li6/h$c;->f(Li6/h$d;)V

    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/q;->b:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public i(Li6/d;Li6/f;)Lc6/q$c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/q;->u:Li6/r;

    check-cast v1, Lc6/q$a;

    invoke-virtual {v1, p1, p2}, Lc6/q$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/q;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

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

    check-cast p2, Lc6/q;
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

    invoke-virtual {p0, v0}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    :cond_21
    throw p1
.end method
