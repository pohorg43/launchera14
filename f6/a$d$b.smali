.class public final Lf6/a$d$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lf6/a$d;",
        "Lf6/a$d$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lf6/a$b;

.field public d:Lf6/a$c;

.field public e:Lf6/a$c;

.field public f:Lf6/a$c;

.field public g:Lf6/a$c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    sget-object v0, Lf6/a$b;->g:Lf6/a$b;

    iput-object v0, p0, Lf6/a$d$b;->c:Lf6/a$b;

    sget-object v0, Lf6/a$c;->g:Lf6/a$c;

    iput-object v0, p0, Lf6/a$d$b;->d:Lf6/a$c;

    iput-object v0, p0, Lf6/a$d$b;->e:Lf6/a$c;

    iput-object v0, p0, Lf6/a$d$b;->f:Lf6/a$c;

    iput-object v0, p0, Lf6/a$d$b;->g:Lf6/a$c;

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

    invoke-virtual {p0, p1, p2}, Lf6/a$d$b;->h(Li6/d;Li6/f;)Lf6/a$d$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lf6/a$d$b;->f()Lf6/a$d;

    move-result-object p0

    invoke-virtual {p0}, Lf6/a$d;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lf6/a$d$b;->h(Li6/d;Li6/f;)Lf6/a$d$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lf6/a$d$b;

    invoke-direct {v0}, Lf6/a$d$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$d$b;->f()Lf6/a$d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$d$b;->g(Lf6/a$d;)Lf6/a$d$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lf6/a$d$b;

    invoke-direct {v0}, Lf6/a$d$b;-><init>()V

    invoke-virtual {p0}, Lf6/a$d$b;->f()Lf6/a$d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lf6/a$d$b;->g(Lf6/a$d;)Lf6/a$d$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lf6/a$d;

    invoke-virtual {p0, p1}, Lf6/a$d$b;->g(Lf6/a$d;)Lf6/a$d$b;

    return-object p0
.end method

.method public f()Lf6/a$d;
    .registers 6

    new-instance v0, Lf6/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf6/a$d;-><init>(Li6/h$b;Lf6/a$a;)V

    iget v1, p0, Lf6/a$d$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lf6/a$d$b;->c:Lf6/a$b;

    iput-object v2, v0, Lf6/a$d;->c:Lf6/a$b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget-object v2, p0, Lf6/a$d$b;->d:Lf6/a$c;

    iput-object v2, v0, Lf6/a$d;->d:Lf6/a$c;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_25

    or-int/lit8 v3, v3, 0x4

    :cond_25
    iget-object v2, p0, Lf6/a$d$b;->e:Lf6/a$c;

    iput-object v2, v0, Lf6/a$d;->e:Lf6/a$c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_31

    or-int/lit8 v3, v3, 0x8

    :cond_31
    iget-object v2, p0, Lf6/a$d$b;->f:Lf6/a$c;

    iput-object v2, v0, Lf6/a$d;->f:Lf6/a$c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3c

    or-int/lit8 v3, v3, 0x10

    :cond_3c
    iget-object p0, p0, Lf6/a$d$b;->g:Lf6/a$c;

    iput-object p0, v0, Lf6/a$d;->g:Lf6/a$c;

    iput v3, v0, Lf6/a$d;->b:I

    return-object v0
.end method

.method public g(Lf6/a$d;)Lf6/a$d$b;
    .registers 8

    sget-object v0, Lf6/a$d;->j:Lf6/a$d;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lf6/a$d;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_37

    iget-object v0, p1, Lf6/a$d;->c:Lf6/a$b;

    iget v3, p0, Lf6/a$d$b;->b:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_30

    iget-object v3, p0, Lf6/a$d$b;->c:Lf6/a$b;

    sget-object v4, Lf6/a$b;->g:Lf6/a$b;

    if-eq v3, v4, :cond_30

    new-instance v4, Lf6/a$b$b;

    invoke-direct {v4}, Lf6/a$b$b;-><init>()V

    invoke-virtual {v4, v3}, Lf6/a$b$b;->g(Lf6/a$b;)Lf6/a$b$b;

    invoke-virtual {v4, v0}, Lf6/a$b$b;->g(Lf6/a$b;)Lf6/a$b$b;

    invoke-virtual {v4}, Lf6/a$b$b;->f()Lf6/a$b;

    move-result-object v0

    iput-object v0, p0, Lf6/a$d$b;->c:Lf6/a$b;

    goto :goto_32

    :cond_30
    iput-object v0, p0, Lf6/a$d$b;->c:Lf6/a$b;

    :goto_32
    iget v0, p0, Lf6/a$d$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lf6/a$d$b;->b:I

    :cond_37
    iget v0, p1, Lf6/a$d;->b:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3f

    move v0, v1

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    if-eqz v0, :cond_64

    iget-object v0, p1, Lf6/a$d;->d:Lf6/a$c;

    iget v4, p0, Lf6/a$d$b;->b:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_5d

    iget-object v4, p0, Lf6/a$d$b;->d:Lf6/a$c;

    sget-object v5, Lf6/a$c;->g:Lf6/a$c;

    if-eq v4, v5, :cond_5d

    invoke-static {v4}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v4}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v0

    iput-object v0, p0, Lf6/a$d$b;->d:Lf6/a$c;

    goto :goto_5f

    :cond_5d
    iput-object v0, p0, Lf6/a$d$b;->d:Lf6/a$c;

    :goto_5f
    iget v0, p0, Lf6/a$d$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Lf6/a$d$b;->b:I

    :cond_64
    invoke-virtual {p1}, Lf6/a$d;->e()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p1, Lf6/a$d;->e:Lf6/a$c;

    iget v3, p0, Lf6/a$d$b;->b:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_86

    iget-object v3, p0, Lf6/a$d$b;->e:Lf6/a$c;

    sget-object v5, Lf6/a$c;->g:Lf6/a$c;

    if-eq v3, v5, :cond_86

    invoke-static {v3}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v3}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v0

    iput-object v0, p0, Lf6/a$d$b;->e:Lf6/a$c;

    goto :goto_88

    :cond_86
    iput-object v0, p0, Lf6/a$d$b;->e:Lf6/a$c;

    :goto_88
    iget v0, p0, Lf6/a$d$b;->b:I

    or-int/2addr v0, v4

    iput v0, p0, Lf6/a$d$b;->b:I

    :cond_8d
    invoke-virtual {p1}, Lf6/a$d;->f()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p1, Lf6/a$d;->f:Lf6/a$c;

    iget v3, p0, Lf6/a$d$b;->b:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_b0

    iget-object v3, p0, Lf6/a$d$b;->f:Lf6/a$c;

    sget-object v5, Lf6/a$c;->g:Lf6/a$c;

    if-eq v3, v5, :cond_b0

    invoke-static {v3}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v3}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v0

    iput-object v0, p0, Lf6/a$d$b;->f:Lf6/a$c;

    goto :goto_b2

    :cond_b0
    iput-object v0, p0, Lf6/a$d$b;->f:Lf6/a$c;

    :goto_b2
    iget v0, p0, Lf6/a$d$b;->b:I

    or-int/2addr v0, v4

    iput v0, p0, Lf6/a$d$b;->b:I

    :cond_b7
    iget v0, p1, Lf6/a$d;->b:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_bf

    goto :goto_c0

    :cond_bf
    move v1, v2

    :goto_c0
    if-eqz v1, :cond_e4

    iget-object v0, p1, Lf6/a$d;->g:Lf6/a$c;

    iget v1, p0, Lf6/a$d$b;->b:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_dd

    iget-object v1, p0, Lf6/a$d$b;->g:Lf6/a$c;

    sget-object v2, Lf6/a$c;->g:Lf6/a$c;

    if-eq v1, v2, :cond_dd

    invoke-static {v1}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v1}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v0

    iput-object v0, p0, Lf6/a$d$b;->g:Lf6/a$c;

    goto :goto_df

    :cond_dd
    iput-object v0, p0, Lf6/a$d$b;->g:Lf6/a$c;

    :goto_df
    iget v0, p0, Lf6/a$d$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Lf6/a$d$b;->b:I

    :cond_e4
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lf6/a$d;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lf6/a$d$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lf6/a$d;->k:Li6/r;

    check-cast v1, Lf6/a$d$a;

    invoke-virtual {v1, p1, p2}, Lf6/a$d$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf6/a$d;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lf6/a$d$b;->g(Lf6/a$d;)Lf6/a$d$b;

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

    check-cast p2, Lf6/a$d;
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

    invoke-virtual {p0, v0}, Lf6/a$d$b;->g(Lf6/a$d;)Lf6/a$d$b;

    :cond_21
    throw p1
.end method
