.class public final Lc6/a$b$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lc6/a$b;",
        "Lc6/a$b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Lc6/a$b$c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    sget-object v0, Lc6/a$b$c;->p:Lc6/a$b$c;

    iput-object v0, p0, Lc6/a$b$b;->d:Lc6/a$b$c;

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

    invoke-virtual {p0, p1, p2}, Lc6/a$b$b;->h(Li6/d;Li6/f;)Lc6/a$b$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/a$b$b;->f()Lc6/a$b;

    move-result-object p0

    invoke-virtual {p0}, Lc6/a$b;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/a$b$b;->h(Li6/d;Li6/f;)Lc6/a$b$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/a$b$b;

    invoke-direct {v0}, Lc6/a$b$b;-><init>()V

    invoke-virtual {p0}, Lc6/a$b$b;->f()Lc6/a$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/a$b$b;->g(Lc6/a$b;)Lc6/a$b$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/a$b$b;

    invoke-direct {v0}, Lc6/a$b$b;-><init>()V

    invoke-virtual {p0}, Lc6/a$b$b;->f()Lc6/a$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/a$b$b;->g(Lc6/a$b;)Lc6/a$b$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/a$b;

    invoke-virtual {p0, p1}, Lc6/a$b$b;->g(Lc6/a$b;)Lc6/a$b$b;

    return-object p0
.end method

.method public f()Lc6/a$b;
    .registers 5

    new-instance v0, Lc6/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/a$b;-><init>(Li6/h$b;La4/c;)V

    iget v1, p0, Lc6/a$b$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lc6/a$b$b;->c:I

    iput v2, v0, Lc6/a$b;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_19

    or-int/lit8 v3, v3, 0x2

    :cond_19
    iget-object p0, p0, Lc6/a$b$b;->d:Lc6/a$b$c;

    iput-object p0, v0, Lc6/a$b;->d:Lc6/a$b$c;

    iput v3, v0, Lc6/a$b;->b:I

    return-object v0
.end method

.method public g(Lc6/a$b;)Lc6/a$b$b;
    .registers 7

    sget-object v0, Lc6/a$b;->g:Lc6/a$b;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/a$b;->b:I

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

    iget v1, p1, Lc6/a$b;->c:I

    iget v4, p0, Lc6/a$b$b;->b:I

    or-int/2addr v4, v3

    iput v4, p0, Lc6/a$b$b;->b:I

    iput v1, p0, Lc6/a$b$b;->c:I

    :cond_1b
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_20

    move v2, v3

    :cond_20
    if-eqz v2, :cond_48

    iget-object v0, p1, Lc6/a$b;->d:Lc6/a$b$c;

    iget v2, p0, Lc6/a$b$b;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_41

    iget-object v2, p0, Lc6/a$b$b;->d:Lc6/a$b$c;

    sget-object v3, Lc6/a$b$c;->p:Lc6/a$b$c;

    if-eq v2, v3, :cond_41

    new-instance v3, Lc6/a$b$c$b;

    invoke-direct {v3}, Lc6/a$b$c$b;-><init>()V

    invoke-virtual {v3, v2}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    invoke-virtual {v3, v0}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    invoke-virtual {v3}, Lc6/a$b$c$b;->f()Lc6/a$b$c;

    move-result-object v0

    iput-object v0, p0, Lc6/a$b$b;->d:Lc6/a$b$c;

    goto :goto_43

    :cond_41
    iput-object v0, p0, Lc6/a$b$b;->d:Lc6/a$b$c;

    :goto_43
    iget v0, p0, Lc6/a$b$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lc6/a$b$b;->b:I

    :cond_48
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/a$b;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lc6/a$b$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/a$b;->h:Li6/r;

    check-cast v1, Lc6/a$b$a;

    invoke-virtual {v1, p1, p2}, Lc6/a$b$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/a$b;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/a$b$b;->g(Lc6/a$b;)Lc6/a$b$b;

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

    check-cast p2, Lc6/a$b;
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

    invoke-virtual {p0, v0}, Lc6/a$b$b;->g(Lc6/a$b;)Lc6/a$b$b;

    :cond_21
    throw p1
.end method
