.class public final Lf6/a$e$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lf6/a$e;",
        "Lf6/a$e$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf6/a$e$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf6/a$e$b;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf6/a$e$b;->d:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lf6/a$e$b;->h(Li6/d;Li6/f;)Lf6/a$e$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lf6/a$e$b;->f()Lf6/a$e;

    move-result-object p0

    invoke-virtual {p0}, Lf6/a$e;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lf6/a$e$b;->h(Li6/d;Li6/f;)Lf6/a$e$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lf6/a$e$b;

    invoke-direct {v0}, Lf6/a$e$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$e$b;->f()Lf6/a$e;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$e$b;->g(Lf6/a$e;)Lf6/a$e$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lf6/a$e$b;

    invoke-direct {v0}, Lf6/a$e$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$e$b;->f()Lf6/a$e;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$e$b;->g(Lf6/a$e;)Lf6/a$e$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lf6/a$e;

    invoke-virtual {p0, p1}, Lf6/a$e$b;->g(Lf6/a$e;)Lf6/a$e$b;

    return-object p0
.end method

.method public f()Lf6/a$e;
    .registers 4

    new-instance v0, Lf6/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf6/a$e;-><init>(Li6/h$b;Lf6/a$a;)V

    iget v1, p0, Lf6/a$e$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1a

    iget-object v1, p0, Lf6/a$e$b;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf6/a$e$b;->c:Ljava/util/List;

    iget v1, p0, Lf6/a$e$b;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lf6/a$e$b;->b:I

    :cond_1a
    iget-object v1, p0, Lf6/a$e$b;->c:Ljava/util/List;

    iput-object v1, v0, Lf6/a$e;->b:Ljava/util/List;

    iget v1, p0, Lf6/a$e$b;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_32

    iget-object v1, p0, Lf6/a$e$b;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf6/a$e$b;->d:Ljava/util/List;

    iget v1, p0, Lf6/a$e$b;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lf6/a$e$b;->b:I

    :cond_32
    iget-object p0, p0, Lf6/a$e$b;->d:Ljava/util/List;

    iput-object p0, v0, Lf6/a$e;->c:Ljava/util/List;

    return-object v0
.end method

.method public g(Lf6/a$e;)Lf6/a$e$b;
    .registers 5

    sget-object v0, Lf6/a$e;->g:Lf6/a$e;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget-object v0, p1, Lf6/a$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lf6/a$e$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lf6/a$e;->b:Ljava/util/List;

    iput-object v0, p0, Lf6/a$e$b;->c:Ljava/util/List;

    iget v0, p0, Lf6/a$e$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lf6/a$e$b;->b:I

    goto :goto_3b

    :cond_20
    iget v0, p0, Lf6/a$e$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_34

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lf6/a$e$b;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf6/a$e$b;->c:Ljava/util/List;

    iget v0, p0, Lf6/a$e$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lf6/a$e$b;->b:I

    :cond_34
    iget-object v0, p0, Lf6/a$e$b;->c:Ljava/util/List;

    iget-object v1, p1, Lf6/a$e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    :goto_3b
    iget-object v0, p1, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lf6/a$e$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p1, Lf6/a$e;->c:Ljava/util/List;

    iput-object v0, p0, Lf6/a$e$b;->d:Ljava/util/List;

    iget v0, p0, Lf6/a$e$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lf6/a$e$b;->b:I

    goto :goto_71

    :cond_56
    iget v0, p0, Lf6/a$e$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lf6/a$e$b;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf6/a$e$b;->d:Ljava/util/List;

    iget v0, p0, Lf6/a$e$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lf6/a$e$b;->b:I

    :cond_6a
    iget-object v0, p0, Lf6/a$e$b;->d:Ljava/util/List;

    iget-object v1, p1, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_71
    :goto_71
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lf6/a$e;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lf6/a$e$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lf6/a$e;->h:Li6/r;

    check-cast v1, Lf6/a$e$a;

    invoke-virtual {v1, p1, p2}, Lf6/a$e$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf6/a$e;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lf6/a$e$b;->g(Lf6/a$e;)Lf6/a$e$b;

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

    check-cast p2, Lf6/a$e;
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

    invoke-virtual {p0, v0}, Lf6/a$e$b;->g(Lf6/a$e;)Lf6/a$e$b;

    :cond_21
    throw p1
.end method
