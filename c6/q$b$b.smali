.class public final Lc6/q$b$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/q$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lc6/q$b;",
        "Lc6/q$b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lc6/q$b$c;

.field public d:Lc6/q;

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    sget-object v0, Lc6/q$b$c;->d:Lc6/q$b$c;

    iput-object v0, p0, Lc6/q$b$b;->c:Lc6/q$b$c;

    sget-object v0, Lc6/q;->t:Lc6/q;

    iput-object v0, p0, Lc6/q$b$b;->d:Lc6/q;

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

    invoke-virtual {p0, p1, p2}, Lc6/q$b$b;->h(Li6/d;Li6/f;)Lc6/q$b$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/q$b$b;->f()Lc6/q$b;

    move-result-object p0

    invoke-virtual {p0}, Lc6/q$b;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/q$b$b;->h(Li6/d;Li6/f;)Lc6/q$b$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/q$b$b;

    invoke-direct {v0}, Lc6/q$b$b;-><init>()V

    invoke-virtual {p0}, Lc6/q$b$b;->f()Lc6/q$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/q$b$b;->g(Lc6/q$b;)Lc6/q$b$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/q$b$b;

    invoke-direct {v0}, Lc6/q$b$b;-><init>()V

    invoke-virtual {p0}, Lc6/q$b$b;->f()Lc6/q$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/q$b$b;->g(Lc6/q$b;)Lc6/q$b$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/q$b;

    invoke-virtual {p0, p1}, Lc6/q$b$b;->g(Lc6/q$b;)Lc6/q$b$b;

    return-object p0
.end method

.method public f()Lc6/q$b;
    .registers 6

    new-instance v0, Lc6/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/q$b;-><init>(Li6/h$b;La4/c;)V

    iget v1, p0, Lc6/q$b$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lc6/q$b$b;->c:Lc6/q$b$c;

    iput-object v2, v0, Lc6/q$b;->c:Lc6/q$b$c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget-object v2, p0, Lc6/q$b$b;->d:Lc6/q;

    iput-object v2, v0, Lc6/q$b;->d:Lc6/q;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_24

    or-int/lit8 v3, v3, 0x4

    :cond_24
    iget p0, p0, Lc6/q$b$b;->e:I

    iput p0, v0, Lc6/q$b;->e:I

    iput v3, v0, Lc6/q$b;->b:I

    return-object v0
.end method

.method public g(Lc6/q$b;)Lc6/q$b$b;
    .registers 8

    sget-object v0, Lc6/q$b;->h:Lc6/q$b;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/q$b;->b:I

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

    iget-object v0, p1, Lc6/q$b;->c:Lc6/q$b$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lc6/q$b$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Lc6/q$b$b;->b:I

    iput-object v0, p0, Lc6/q$b$b;->c:Lc6/q$b$c;

    :cond_1d
    invoke-virtual {p1}, Lc6/q$b;->e()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lc6/q$b;->d:Lc6/q;

    iget v3, p0, Lc6/q$b$b;->b:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Lc6/q$b$b;->d:Lc6/q;

    sget-object v5, Lc6/q;->t:Lc6/q;

    if-eq v3, v5, :cond_38

    invoke-static {v3, v0}, Lc6/c;->a(Lc6/q;Lc6/q;)Lc6/q;

    move-result-object v0

    iput-object v0, p0, Lc6/q$b$b;->d:Lc6/q;

    goto :goto_3a

    :cond_38
    iput-object v0, p0, Lc6/q$b$b;->d:Lc6/q;

    :goto_3a
    iget v0, p0, Lc6/q$b$b;->b:I

    or-int/2addr v0, v4

    iput v0, p0, Lc6/q$b$b;->b:I

    :cond_3f
    iget v0, p1, Lc6/q$b;->b:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    if-eqz v1, :cond_52

    iget v0, p1, Lc6/q$b;->e:I

    iget v1, p0, Lc6/q$b$b;->b:I

    or-int/2addr v1, v3

    iput v1, p0, Lc6/q$b$b;->b:I

    iput v0, p0, Lc6/q$b$b;->e:I

    :cond_52
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/q$b;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lc6/q$b$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/q$b;->i:Li6/r;

    check-cast v1, Lc6/q$b$a;

    invoke-virtual {v1, p1, p2}, Lc6/q$b$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/q$b;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/q$b$b;->g(Lc6/q$b;)Lc6/q$b$b;

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

    check-cast p2, Lc6/q$b;
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

    invoke-virtual {p0, v0}, Lc6/q$b$b;->g(Lc6/q$b;)Lc6/q$b$b;

    :cond_21
    throw p1
.end method
