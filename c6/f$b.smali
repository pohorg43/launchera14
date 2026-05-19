.class public final Lc6/f$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lc6/f;",
        "Lc6/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lc6/f$c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc6/h;

.field public f:Lc6/f$d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    sget-object v0, Lc6/f$c;->b:Lc6/f$c;

    iput-object v0, p0, Lc6/f$b;->c:Lc6/f$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/f$b;->d:Ljava/util/List;

    sget-object v0, Lc6/h;->l:Lc6/h;

    iput-object v0, p0, Lc6/f$b;->e:Lc6/h;

    sget-object v0, Lc6/f$d;->b:Lc6/f$d;

    iput-object v0, p0, Lc6/f$b;->f:Lc6/f$d;

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

    invoke-virtual {p0, p1, p2}, Lc6/f$b;->h(Li6/d;Li6/f;)Lc6/f$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/f$b;->f()Lc6/f;

    move-result-object p0

    invoke-virtual {p0}, Lc6/f;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/f$b;->h(Li6/d;Li6/f;)Lc6/f$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/f$b;

    invoke-direct {v0}, Lc6/f$b;-><init>()V

    invoke-virtual {p0}, Lc6/f$b;->f()Lc6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/f$b;->g(Lc6/f;)Lc6/f$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/f$b;

    invoke-direct {v0}, Lc6/f$b;-><init>()V

    invoke-virtual {p0}, Lc6/f$b;->f()Lc6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/f$b;->g(Lc6/f;)Lc6/f$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/f;

    invoke-virtual {p0, p1}, Lc6/f$b;->g(Lc6/f;)Lc6/f$b;

    return-object p0
.end method

.method public f()Lc6/f;
    .registers 6

    new-instance v0, Lc6/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/f;-><init>(Li6/h$b;La4/c;)V

    iget v1, p0, Lc6/f$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lc6/f$b;->c:Lc6/f$c;

    iput-object v2, v0, Lc6/f;->c:Lc6/f$c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_26

    iget-object v2, p0, Lc6/f$b;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/f$b;->d:Ljava/util/List;

    iget v2, p0, Lc6/f$b;->b:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lc6/f$b;->b:I

    :cond_26
    iget-object v2, p0, Lc6/f$b;->d:Ljava/util/List;

    iput-object v2, v0, Lc6/f;->d:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_31

    or-int/lit8 v3, v3, 0x2

    :cond_31
    iget-object v2, p0, Lc6/f$b;->e:Lc6/h;

    iput-object v2, v0, Lc6/f;->e:Lc6/h;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3c

    or-int/lit8 v3, v3, 0x4

    :cond_3c
    iget-object p0, p0, Lc6/f$b;->f:Lc6/f$d;

    iput-object p0, v0, Lc6/f;->f:Lc6/f$d;

    iput v3, v0, Lc6/f;->b:I

    return-object v0
.end method

.method public g(Lc6/f;)Lc6/f$b;
    .registers 8

    sget-object v0, Lc6/f;->i:Lc6/f;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/f;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_1d

    iget-object v0, p1, Lc6/f;->c:Lc6/f$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lc6/f$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Lc6/f$b;->b:I

    iput-object v0, p0, Lc6/f$b;->c:Lc6/f$c;

    :cond_1d
    iget-object v0, p1, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_53

    iget-object v0, p0, Lc6/f$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lc6/f;->d:Ljava/util/List;

    iput-object v0, p0, Lc6/f$b;->d:Ljava/util/List;

    iget v0, p0, Lc6/f$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lc6/f$b;->b:I

    goto :goto_53

    :cond_39
    iget v0, p0, Lc6/f$b;->b:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lc6/f$b;->d:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/f$b;->d:Ljava/util/List;

    iget v0, p0, Lc6/f$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/f$b;->b:I

    :cond_4c
    iget-object v0, p0, Lc6/f$b;->d:Ljava/util/List;

    iget-object v4, p1, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_53
    :goto_53
    iget v0, p1, Lc6/f;->b:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5a

    move v0, v1

    goto :goto_5b

    :cond_5a
    move v0, v2

    :goto_5b
    const/4 v3, 0x4

    if-eqz v0, :cond_84

    iget-object v0, p1, Lc6/f;->e:Lc6/h;

    iget v4, p0, Lc6/f$b;->b:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_7d

    iget-object v4, p0, Lc6/f$b;->e:Lc6/h;

    sget-object v5, Lc6/h;->l:Lc6/h;

    if-eq v4, v5, :cond_7d

    new-instance v5, Lc6/h$b;

    invoke-direct {v5}, Lc6/h$b;-><init>()V

    invoke-virtual {v5, v4}, Lc6/h$b;->g(Lc6/h;)Lc6/h$b;

    invoke-virtual {v5, v0}, Lc6/h$b;->g(Lc6/h;)Lc6/h$b;

    invoke-virtual {v5}, Lc6/h$b;->f()Lc6/h;

    move-result-object v0

    iput-object v0, p0, Lc6/f$b;->e:Lc6/h;

    goto :goto_7f

    :cond_7d
    iput-object v0, p0, Lc6/f$b;->e:Lc6/h;

    :goto_7f
    iget v0, p0, Lc6/f$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/f$b;->b:I

    :cond_84
    iget v0, p1, Lc6/f;->b:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_8a

    goto :goto_8b

    :cond_8a
    move v1, v2

    :goto_8b
    if-eqz v1, :cond_9a

    iget-object v0, p1, Lc6/f;->f:Lc6/f$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lc6/f$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lc6/f$b;->b:I

    iput-object v0, p0, Lc6/f$b;->f:Lc6/f$d;

    :cond_9a
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/f;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lc6/f$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/f;->j:Li6/r;

    check-cast v1, Lc6/f$a;

    invoke-virtual {v1, p1, p2}, Lc6/f$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/f;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/f$b;->g(Lc6/f;)Lc6/f$b;

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

    check-cast p2, Lc6/f;
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

    invoke-virtual {p0, v0}, Lc6/f$b;->g(Lc6/f;)Lc6/f$b;

    :cond_21
    throw p1
.end method
