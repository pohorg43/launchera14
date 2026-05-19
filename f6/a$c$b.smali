.class public final Lf6/a$c$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lf6/a$c;",
        "Lf6/a$c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li6/h$b;-><init>()V

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

    invoke-virtual {p0, p1, p2}, Lf6/a$c$b;->h(Li6/d;Li6/f;)Lf6/a$c$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object p0

    invoke-virtual {p0}, Lf6/a$c;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lf6/a$c$b;->h(Li6/d;Li6/f;)Lf6/a$c$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lf6/a$c$b;

    invoke-direct {v0}, Lf6/a$c$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lf6/a$c$b;

    invoke-direct {v0}, Lf6/a$c$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lf6/a$c;

    invoke-virtual {p0, p1}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    return-object p0
.end method

.method public f()Lf6/a$c;
    .registers 5

    new-instance v0, Lf6/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf6/a$c;-><init>(Li6/h$b;Lf6/a$a;)V

    iget v1, p0, Lf6/a$c$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lf6/a$c$b;->c:I

    iput v2, v0, Lf6/a$c;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_19

    or-int/lit8 v3, v3, 0x2

    :cond_19
    iget p0, p0, Lf6/a$c$b;->d:I

    iput p0, v0, Lf6/a$c;->d:I

    iput v3, v0, Lf6/a$c;->b:I

    return-object v0
.end method

.method public g(Lf6/a$c;)Lf6/a$c$b;
    .registers 4

    sget-object v0, Lf6/a$c;->g:Lf6/a$c;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lf6/a$c;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p1, Lf6/a$c;->c:I

    iget v1, p0, Lf6/a$c$b;->b:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf6/a$c$b;->b:I

    iput v0, p0, Lf6/a$c$b;->c:I

    :cond_15
    invoke-virtual {p1}, Lf6/a$c;->e()Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p1, Lf6/a$c;->d:I

    iget v1, p0, Lf6/a$c$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lf6/a$c$b;->b:I

    iput v0, p0, Lf6/a$c$b;->d:I

    :cond_25
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lf6/a$c;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lf6/a$c$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lf6/a$c;->h:Li6/r;

    check-cast v1, Lf6/a$c$a;

    invoke-virtual {v1, p1, p2}, Lf6/a$c$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf6/a$c;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

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

    check-cast p2, Lf6/a$c;
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

    invoke-virtual {p0, v0}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    :cond_21
    throw p1
.end method
