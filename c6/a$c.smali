.class public final Lc6/a$c;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lc6/a;",
        "Lc6/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/a$c;->d:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lc6/a$c;->h(Li6/d;Li6/f;)Lc6/a$c;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/a$c;->f()Lc6/a;

    move-result-object p0

    invoke-virtual {p0}, Lc6/a;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/a$c;->h(Li6/d;Li6/f;)Lc6/a$c;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/a$c;

    invoke-direct {v0}, Lc6/a$c;-><init>()V

    invoke-virtual {p0}, Lc6/a$c;->f()Lc6/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/a$c;

    invoke-direct {v0}, Lc6/a$c;-><init>()V

    invoke-virtual {p0}, Lc6/a$c;->f()Lc6/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/a;

    invoke-virtual {p0, p1}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    return-object p0
.end method

.method public f()Lc6/a;
    .registers 5

    new-instance v0, Lc6/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/a;-><init>(Li6/h$b;La4/c;)V

    iget v1, p0, Lc6/a$c;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lc6/a$c;->c:I

    iput v2, v0, Lc6/a;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lc6/a$c;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/a$c;->d:Ljava/util/List;

    iget v1, p0, Lc6/a$c;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lc6/a$c;->b:I

    :cond_25
    iget-object p0, p0, Lc6/a$c;->d:Ljava/util/List;

    iput-object p0, v0, Lc6/a;->d:Ljava/util/List;

    iput v3, v0, Lc6/a;->b:I

    return-object v0
.end method

.method public g(Lc6/a;)Lc6/a$c;
    .registers 5

    sget-object v0, Lc6/a;->g:Lc6/a;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_19

    iget v0, p1, Lc6/a;->c:I

    iget v2, p0, Lc6/a$c;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lc6/a$c;->b:I

    iput v0, p0, Lc6/a$c;->c:I

    :cond_19
    iget-object v0, p1, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lc6/a$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p1, Lc6/a;->d:Ljava/util/List;

    iput-object v0, p0, Lc6/a$c;->d:Ljava/util/List;

    iget v0, p0, Lc6/a$c;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lc6/a$c;->b:I

    goto :goto_4f

    :cond_34
    iget v0, p0, Lc6/a$c;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_48

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lc6/a$c;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/a$c;->d:Ljava/util/List;

    iget v0, p0, Lc6/a$c;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/a$c;->b:I

    :cond_48
    iget-object v0, p0, Lc6/a$c;->d:Ljava/util/List;

    iget-object v1, p1, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4f
    :goto_4f
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/a;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lc6/a$c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/a;->h:Li6/r;

    check-cast v1, Lc6/a$a;

    invoke-virtual {v1, p1, p2}, Lc6/a$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/a;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

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

    check-cast p2, Lc6/a;
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

    invoke-virtual {p0, v0}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    :cond_21
    throw p1
.end method
