.class public final Lf6/a$e$c$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a$e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lf6/a$e$c;",
        "Lf6/a$e$c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Lf6/a$e$c$c;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
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

    invoke-direct {p0}, Li6/h$b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lf6/a$e$c$b;->c:I

    const-string v0, ""

    iput-object v0, p0, Lf6/a$e$c$b;->e:Ljava/lang/Object;

    sget-object v0, Lf6/a$e$c$c;->b:Lf6/a$e$c$c;

    iput-object v0, p0, Lf6/a$e$c$b;->f:Lf6/a$e$c$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lf6/a$e$c$b;->h(Li6/d;Li6/f;)Lf6/a$e$c$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lf6/a$e$c$b;->f()Lf6/a$e$c;

    move-result-object p0

    invoke-virtual {p0}, Lf6/a$e$c;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lf6/a$e$c$b;->h(Li6/d;Li6/f;)Lf6/a$e$c$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lf6/a$e$c$b;

    invoke-direct {v0}, Lf6/a$e$c$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$e$c$b;->f()Lf6/a$e$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$e$c$b;->g(Lf6/a$e$c;)Lf6/a$e$c$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lf6/a$e$c$b;

    invoke-direct {v0}, Lf6/a$e$c$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$e$c$b;->f()Lf6/a$e$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$e$c$b;->g(Lf6/a$e$c;)Lf6/a$e$c$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lf6/a$e$c;

    invoke-virtual {p0, p1}, Lf6/a$e$c$b;->g(Lf6/a$e$c;)Lf6/a$e$c$b;

    return-object p0
.end method

.method public f()Lf6/a$e$c;
    .registers 6

    new-instance v0, Lf6/a$e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf6/a$e$c;-><init>(Li6/h$b;Lf6/a$a;)V

    iget v1, p0, Lf6/a$e$c$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lf6/a$e$c$b;->c:I

    iput v2, v0, Lf6/a$e$c;->c:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget v2, p0, Lf6/a$e$c$b;->d:I

    iput v2, v0, Lf6/a$e$c;->d:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_25

    or-int/lit8 v3, v3, 0x4

    :cond_25
    iget-object v2, p0, Lf6/a$e$c$b;->e:Ljava/lang/Object;

    iput-object v2, v0, Lf6/a$e$c;->e:Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_31

    or-int/lit8 v3, v3, 0x8

    :cond_31
    iget-object v2, p0, Lf6/a$e$c$b;->f:Lf6/a$e$c$c;

    iput-object v2, v0, Lf6/a$e$c;->f:Lf6/a$e$c$c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_48

    iget-object v1, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    iget v1, p0, Lf6/a$e$c$b;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lf6/a$e$c$b;->b:I

    :cond_48
    iget-object v1, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    iput-object v1, v0, Lf6/a$e$c;->g:Ljava/util/List;

    iget v1, p0, Lf6/a$e$c$b;->b:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_61

    iget-object v1, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    iget v1, p0, Lf6/a$e$c$b;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lf6/a$e$c$b;->b:I

    :cond_61
    iget-object p0, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    iput-object p0, v0, Lf6/a$e$c;->i:Ljava/util/List;

    iput v3, v0, Lf6/a$e$c;->b:I

    return-object v0
.end method

.method public g(Lf6/a$e$c;)Lf6/a$e$c$b;
    .registers 8

    sget-object v0, Lf6/a$e$c;->m:Lf6/a$e$c;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lf6/a$e$c;->b:I

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

    iget v1, p1, Lf6/a$e$c;->c:I

    iget v4, p0, Lf6/a$e$c$b;->b:I

    or-int/2addr v4, v3

    iput v4, p0, Lf6/a$e$c$b;->b:I

    iput v1, p0, Lf6/a$e$c$b;->c:I

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

    iget v1, p1, Lf6/a$e$c;->d:I

    iget v5, p0, Lf6/a$e$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lf6/a$e$c$b;->b:I

    iput v1, p0, Lf6/a$e$c$b;->d:I

    :cond_2e
    and-int/lit8 v1, v0, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_35

    move v1, v3

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    if-eqz v1, :cond_41

    iget v1, p0, Lf6/a$e$c$b;->b:I

    or-int/2addr v1, v4

    iput v1, p0, Lf6/a$e$c$b;->b:I

    iget-object v1, p1, Lf6/a$e$c;->e:Ljava/lang/Object;

    iput-object v1, p0, Lf6/a$e$c$b;->e:Ljava/lang/Object;

    :cond_41
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_47

    move v2, v3

    :cond_47
    if-eqz v2, :cond_55

    iget-object v0, p1, Lf6/a$e$c;->f:Lf6/a$e$c$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lf6/a$e$c$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lf6/a$e$c$b;->b:I

    iput-object v0, p0, Lf6/a$e$c$b;->f:Lf6/a$e$c$c;

    :cond_55
    iget-object v0, p1, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p1, Lf6/a$e$c;->g:Ljava/util/List;

    iput-object v0, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    iget v0, p0, Lf6/a$e$c$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lf6/a$e$c$b;->b:I

    goto :goto_8c

    :cond_70
    iget v0, p0, Lf6/a$e$c$b;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_85

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    iget v0, p0, Lf6/a$e$c$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lf6/a$e$c$b;->b:I

    :cond_85
    iget-object v0, p0, Lf6/a$e$c$b;->g:Ljava/util/List;

    iget-object v1, p1, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8c
    :goto_8c
    iget-object v0, p1, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p1, Lf6/a$e$c;->i:Ljava/util/List;

    iput-object v0, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    iget v0, p0, Lf6/a$e$c$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lf6/a$e$c$b;->b:I

    goto :goto_c3

    :cond_a7
    iget v0, p0, Lf6/a$e$c$b;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_bc

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    iget v0, p0, Lf6/a$e$c$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lf6/a$e$c$b;->b:I

    :cond_bc
    iget-object v0, p0, Lf6/a$e$c$b;->h:Ljava/util/List;

    iget-object v1, p1, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c3
    :goto_c3
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lf6/a$e$c;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lf6/a$e$c$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lf6/a$e$c;->n:Li6/r;

    check-cast v1, Lf6/a$e$c$a;

    invoke-virtual {v1, p1, p2}, Lf6/a$e$c$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf6/a$e$c;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lf6/a$e$c$b;->g(Lf6/a$e$c;)Lf6/a$e$c$b;

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

    check-cast p2, Lf6/a$e$c;
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

    invoke-virtual {p0, v0}, Lf6/a$e$c$b;->g(Lf6/a$e$c;)Lf6/a$e$c$b;

    :cond_21
    throw p1
.end method
