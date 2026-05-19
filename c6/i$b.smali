.class public final Lc6/i$b;
.super Li6/h$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$c<",
        "Lc6/i;",
        "Lc6/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lc6/q;

.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/s;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lc6/q;

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/u;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lc6/t;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lc6/e;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Li6/h$c;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lc6/i$b;->e:I

    iput v0, p0, Lc6/i$b;->f:I

    sget-object v0, Lc6/q;->t:Lc6/q;

    iput-object v0, p0, Lc6/i$b;->h:Lc6/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/i$b;->j:Ljava/util/List;

    iput-object v0, p0, Lc6/i$b;->k:Lc6/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->o:Ljava/util/List;

    sget-object v0, Lc6/t;->g:Lc6/t;

    iput-object v0, p0, Lc6/i$b;->p:Lc6/t;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->q:Ljava/util/List;

    sget-object v0, Lc6/e;->e:Lc6/e;

    iput-object v0, p0, Lc6/i$b;->r:Lc6/e;

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

    invoke-virtual {p0, p1, p2}, Lc6/i$b;->i(Li6/d;Li6/f;)Lc6/i$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/i$b;->g()Lc6/i;

    move-result-object p0

    invoke-virtual {p0}, Lc6/i;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/i$b;->i(Li6/d;Li6/f;)Lc6/i$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/i$b;

    invoke-direct {v0}, Lc6/i$b;-><init>()V

    invoke-virtual {p0}, Lc6/i$b;->g()Lc6/i;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/i$b;->h(Lc6/i;)Lc6/i$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/i$b;

    invoke-direct {v0}, Lc6/i$b;-><init>()V

    invoke-virtual {p0}, Lc6/i$b;->g()Lc6/i;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/i$b;->h(Lc6/i;)Lc6/i$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/i;

    invoke-virtual {p0, p1}, Lc6/i$b;->h(Lc6/i;)Lc6/i$b;

    return-object p0
.end method

.method public g()Lc6/i;
    .registers 6

    new-instance v0, Lc6/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/i;-><init>(Li6/h$c;La4/c;)V

    iget v1, p0, Lc6/i$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lc6/i$b;->e:I

    iput v2, v0, Lc6/i;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget v2, p0, Lc6/i$b;->f:I

    iput v2, v0, Lc6/i;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_25

    or-int/lit8 v3, v3, 0x4

    :cond_25
    iget v2, p0, Lc6/i$b;->g:I

    iput v2, v0, Lc6/i;->f:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_31

    or-int/lit8 v3, v3, 0x8

    :cond_31
    iget-object v2, p0, Lc6/i$b;->h:Lc6/q;

    iput-object v2, v0, Lc6/i;->g:Lc6/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_3d

    or-int/lit8 v3, v3, 0x10

    :cond_3d
    iget v2, p0, Lc6/i$b;->i:I

    iput v2, v0, Lc6/i;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_55

    iget-object v2, p0, Lc6/i$b;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/i$b;->j:Ljava/util/List;

    iget v2, p0, Lc6/i$b;->d:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lc6/i$b;->d:I

    :cond_55
    iget-object v2, p0, Lc6/i$b;->j:Ljava/util/List;

    iput-object v2, v0, Lc6/i;->i:Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_61

    or-int/lit8 v3, v3, 0x20

    :cond_61
    iget-object v2, p0, Lc6/i$b;->k:Lc6/q;

    iput-object v2, v0, Lc6/i;->j:Lc6/q;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_6d

    or-int/lit8 v3, v3, 0x40

    :cond_6d
    iget v2, p0, Lc6/i$b;->l:I

    iput v2, v0, Lc6/i;->k:I

    iget v2, p0, Lc6/i$b;->d:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_86

    iget-object v2, p0, Lc6/i$b;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/i$b;->m:Ljava/util/List;

    iget v2, p0, Lc6/i$b;->d:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lc6/i$b;->d:I

    :cond_86
    iget-object v2, p0, Lc6/i$b;->m:Ljava/util/List;

    iput-object v2, v0, Lc6/i;->l:Ljava/util/List;

    iget v2, p0, Lc6/i$b;->d:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9f

    iget-object v2, p0, Lc6/i$b;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/i$b;->n:Ljava/util/List;

    iget v2, p0, Lc6/i$b;->d:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lc6/i$b;->d:I

    :cond_9f
    iget-object v2, p0, Lc6/i$b;->n:Ljava/util/List;

    iput-object v2, v0, Lc6/i;->m:Ljava/util/List;

    iget v2, p0, Lc6/i$b;->d:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_b8

    iget-object v2, p0, Lc6/i$b;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/i$b;->o:Ljava/util/List;

    iget v2, p0, Lc6/i$b;->d:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lc6/i$b;->d:I

    :cond_b8
    iget-object v2, p0, Lc6/i$b;->o:Ljava/util/List;

    iput-object v2, v0, Lc6/i;->o:Ljava/util/List;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_c4

    or-int/lit16 v3, v3, 0x80

    :cond_c4
    iget-object v2, p0, Lc6/i$b;->p:Lc6/t;

    iput-object v2, v0, Lc6/i;->p:Lc6/t;

    iget v2, p0, Lc6/i$b;->d:I

    const/16 v4, 0x1000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_dd

    iget-object v2, p0, Lc6/i$b;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/i$b;->q:Ljava/util/List;

    iget v2, p0, Lc6/i$b;->d:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lc6/i$b;->d:I

    :cond_dd
    iget-object v2, p0, Lc6/i$b;->q:Ljava/util/List;

    iput-object v2, v0, Lc6/i;->q:Ljava/util/List;

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e8

    or-int/lit16 v3, v3, 0x100

    :cond_e8
    iget-object p0, p0, Lc6/i$b;->r:Lc6/e;

    iput-object p0, v0, Lc6/i;->r:Lc6/e;

    iput v3, v0, Lc6/i;->c:I

    return-object v0
.end method

.method public h(Lc6/i;)Lc6/i$b;
    .registers 9

    sget-object v0, Lc6/i;->u:Lc6/i;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/i;->c:I

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

    iget v1, p1, Lc6/i;->d:I

    iget v4, p0, Lc6/i$b;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Lc6/i$b;->d:I

    iput v1, p0, Lc6/i$b;->e:I

    :cond_1b
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_22

    move v1, v3

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    if-eqz v1, :cond_2e

    iget v1, p1, Lc6/i;->e:I

    iget v5, p0, Lc6/i$b;->d:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/i$b;->d:I

    iput v1, p0, Lc6/i$b;->f:I

    :cond_2e
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_34

    move v0, v3

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    if-eqz v0, :cond_40

    iget v0, p1, Lc6/i;->f:I

    iget v4, p0, Lc6/i$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Lc6/i$b;->d:I

    iput v0, p0, Lc6/i$b;->g:I

    :cond_40
    invoke-virtual {p1}, Lc6/i;->o()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p1, Lc6/i;->g:Lc6/q;

    iget v1, p0, Lc6/i$b;->d:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5c

    iget-object v1, p0, Lc6/i$b;->h:Lc6/q;

    sget-object v5, Lc6/q;->t:Lc6/q;

    if-eq v1, v5, :cond_5c

    invoke-static {v1, v0}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->h:Lc6/q;

    goto :goto_5e

    :cond_5c
    iput-object v0, p0, Lc6/i$b;->h:Lc6/q;

    :goto_5e
    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Lc6/i$b;->d:I

    :cond_63
    iget v0, p1, Lc6/i;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6c

    move v0, v3

    goto :goto_6d

    :cond_6c
    move v0, v2

    :goto_6d
    if-eqz v0, :cond_78

    iget v0, p1, Lc6/i;->h:I

    iget v4, p0, Lc6/i$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Lc6/i$b;->d:I

    iput v0, p0, Lc6/i$b;->i:I

    :cond_78
    iget-object v0, p1, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    iget-object v0, p0, Lc6/i$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p1, Lc6/i;->i:Ljava/util/List;

    iput-object v0, p0, Lc6/i$b;->j:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lc6/i$b;->d:I

    goto :goto_af

    :cond_93
    iget v0, p0, Lc6/i$b;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lc6/i$b;->j:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/i$b;->j:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/i$b;->d:I

    :cond_a8
    iget-object v0, p0, Lc6/i$b;->j:Ljava/util/List;

    iget-object v1, p1, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_af
    :goto_af
    invoke-virtual {p1}, Lc6/i;->m()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p1, Lc6/i;->j:Lc6/q;

    iget v1, p0, Lc6/i$b;->d:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_cb

    iget-object v1, p0, Lc6/i$b;->k:Lc6/q;

    sget-object v5, Lc6/q;->t:Lc6/q;

    if-eq v1, v5, :cond_cb

    invoke-static {v1, v0}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->k:Lc6/q;

    goto :goto_cd

    :cond_cb
    iput-object v0, p0, Lc6/i$b;->k:Lc6/q;

    :goto_cd
    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Lc6/i$b;->d:I

    :cond_d2
    invoke-virtual {p1}, Lc6/i;->n()Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_e3

    iget v0, p1, Lc6/i;->k:I

    iget v4, p0, Lc6/i$b;->d:I

    or-int/2addr v4, v1

    iput v4, p0, Lc6/i$b;->d:I

    iput v0, p0, Lc6/i$b;->l:I

    :cond_e3
    iget-object v0, p1, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v4, 0x100

    if-nez v0, :cond_11a

    iget-object v0, p0, Lc6/i$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p1, Lc6/i;->l:Ljava/util/List;

    iput-object v0, p0, Lc6/i$b;->m:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lc6/i$b;->d:I

    goto :goto_11a

    :cond_100
    iget v0, p0, Lc6/i$b;->d:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_113

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lc6/i$b;->m:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/i$b;->m:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Lc6/i$b;->d:I

    :cond_113
    iget-object v0, p0, Lc6/i$b;->m:Ljava/util/List;

    iget-object v5, p1, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11a
    :goto_11a
    iget-object v0, p1, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_151

    iget-object v0, p0, Lc6/i$b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_135

    iget-object v0, p1, Lc6/i;->m:Ljava/util/List;

    iput-object v0, p0, Lc6/i$b;->n:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lc6/i$b;->d:I

    goto :goto_151

    :cond_135
    iget v0, p0, Lc6/i$b;->d:I

    const/16 v5, 0x200

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_14a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lc6/i$b;->n:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/i$b;->n:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v5

    iput v0, p0, Lc6/i$b;->d:I

    :cond_14a
    iget-object v0, p0, Lc6/i$b;->n:Ljava/util/List;

    iget-object v5, p1, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_151
    :goto_151
    iget-object v0, p1, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_188

    iget-object v0, p0, Lc6/i$b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16c

    iget-object v0, p1, Lc6/i;->o:Ljava/util/List;

    iput-object v0, p0, Lc6/i$b;->o:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lc6/i$b;->d:I

    goto :goto_188

    :cond_16c
    iget v0, p0, Lc6/i$b;->d:I

    const/16 v5, 0x400

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_181

    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lc6/i$b;->o:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/i$b;->o:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v5

    iput v0, p0, Lc6/i$b;->d:I

    :cond_181
    iget-object v0, p0, Lc6/i$b;->o:Ljava/util/List;

    iget-object v5, p1, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_188
    :goto_188
    iget v0, p1, Lc6/i;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18f

    move v0, v3

    goto :goto_190

    :cond_18f
    move v0, v2

    :goto_190
    if-eqz v0, :cond_1b6

    iget-object v0, p1, Lc6/i;->p:Lc6/t;

    iget v1, p0, Lc6/i$b;->d:I

    const/16 v5, 0x800

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1af

    iget-object v1, p0, Lc6/i$b;->p:Lc6/t;

    sget-object v6, Lc6/t;->g:Lc6/t;

    if-eq v1, v6, :cond_1af

    invoke-static {v1}, Lc6/t;->e(Lc6/t;)Lc6/t$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc6/t$b;->g(Lc6/t;)Lc6/t$b;

    invoke-virtual {v1}, Lc6/t$b;->f()Lc6/t;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->p:Lc6/t;

    goto :goto_1b1

    :cond_1af
    iput-object v0, p0, Lc6/i$b;->p:Lc6/t;

    :goto_1b1
    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v5

    iput v0, p0, Lc6/i$b;->d:I

    :cond_1b6
    iget-object v0, p1, Lc6/i;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ed

    iget-object v0, p0, Lc6/i$b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d1

    iget-object v0, p1, Lc6/i;->q:Ljava/util/List;

    iput-object v0, p0, Lc6/i$b;->q:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lc6/i$b;->d:I

    goto :goto_1ed

    :cond_1d1
    iget v0, p0, Lc6/i$b;->d:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1e6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lc6/i$b;->q:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/i$b;->q:Ljava/util/List;

    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/i$b;->d:I

    :cond_1e6
    iget-object v0, p0, Lc6/i$b;->q:Ljava/util/List;

    iget-object v1, p1, Lc6/i;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1ed
    :goto_1ed
    iget v0, p1, Lc6/i;->c:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1f3

    move v2, v3

    :cond_1f3
    if-eqz v2, :cond_21d

    iget-object v0, p1, Lc6/i;->r:Lc6/e;

    iget v1, p0, Lc6/i$b;->d:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_216

    iget-object v1, p0, Lc6/i$b;->r:Lc6/e;

    sget-object v3, Lc6/e;->e:Lc6/e;

    if-eq v1, v3, :cond_216

    new-instance v3, Lc6/e$b;

    invoke-direct {v3}, Lc6/e$b;-><init>()V

    invoke-virtual {v3, v1}, Lc6/e$b;->g(Lc6/e;)Lc6/e$b;

    invoke-virtual {v3, v0}, Lc6/e$b;->g(Lc6/e;)Lc6/e$b;

    invoke-virtual {v3}, Lc6/e$b;->f()Lc6/e;

    move-result-object v0

    iput-object v0, p0, Lc6/i$b;->r:Lc6/e;

    goto :goto_218

    :cond_216
    iput-object v0, p0, Lc6/i$b;->r:Lc6/e;

    :goto_218
    iget v0, p0, Lc6/i$b;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lc6/i$b;->d:I

    :cond_21d
    invoke-virtual {p0, p1}, Li6/h$c;->f(Li6/h$d;)V

    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/i;->b:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public i(Li6/d;Li6/f;)Lc6/i$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/i;->v:Li6/r;

    check-cast v1, Lc6/i$a;

    invoke-virtual {v1, p1, p2}, Lc6/i$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/i;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/i$b;->h(Lc6/i;)Lc6/i$b;

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

    check-cast p2, Lc6/i;
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

    invoke-virtual {p0, v0}, Lc6/i$b;->h(Lc6/i;)Lc6/i$b;

    :cond_21
    throw p1
.end method
