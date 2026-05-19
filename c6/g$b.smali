.class public final Lc6/g$b;
.super Li6/h$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$c<",
        "Lc6/g;",
        "Lc6/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li6/h$c;-><init>()V

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

    invoke-virtual {p0, p1, p2}, Lc6/g$b;->i(Li6/d;Li6/f;)Lc6/g$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/g$b;->g()Lc6/g;

    move-result-object p0

    invoke-virtual {p0}, Lc6/g;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/g$b;->i(Li6/d;Li6/f;)Lc6/g$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/g$b;

    invoke-direct {v0}, Lc6/g$b;-><init>()V

    invoke-virtual {p0}, Lc6/g$b;->g()Lc6/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/g$b;->h(Lc6/g;)Lc6/g$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/g$b;

    invoke-direct {v0}, Lc6/g$b;-><init>()V

    invoke-virtual {p0}, Lc6/g$b;->g()Lc6/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/g$b;->h(Lc6/g;)Lc6/g$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/g;

    invoke-virtual {p0, p1}, Lc6/g$b;->h(Lc6/g;)Lc6/g$b;

    return-object p0
.end method

.method public g()Lc6/g;
    .registers 4

    new-instance v0, Lc6/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/g;-><init>(Li6/h$c;La4/c;)V

    iget v1, p0, Lc6/g$b;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iget p0, p0, Lc6/g$b;->e:I

    iput p0, v0, Lc6/g;->d:I

    iput v2, v0, Lc6/g;->c:I

    return-object v0
.end method

.method public h(Lc6/g;)Lc6/g$b;
    .registers 5

    sget-object v0, Lc6/g;->g:Lc6/g;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/g;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_19

    iget v0, p1, Lc6/g;->d:I

    iget v2, p0, Lc6/g$b;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Lc6/g$b;->d:I

    iput v0, p0, Lc6/g$b;->e:I

    :cond_19
    invoke-virtual {p0, p1}, Li6/h$c;->f(Li6/h$d;)V

    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/g;->b:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public i(Li6/d;Li6/f;)Lc6/g$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/g;->h:Li6/r;

    check-cast v1, Lc6/g$a;

    invoke-virtual {v1, p1, p2}, Lc6/g$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/g;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/g$b;->h(Lc6/g;)Lc6/g$b;

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

    check-cast p2, Lc6/g;
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

    invoke-virtual {p0, v0}, Lc6/g$b;->h(Lc6/g;)Lc6/g$b;

    :cond_21
    throw p1
.end method
