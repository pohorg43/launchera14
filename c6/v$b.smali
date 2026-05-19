.class public final Lc6/v$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lc6/v;",
        "Lc6/v$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lc6/v$c;

.field public f:I

.field public g:I

.field public h:Lc6/v$d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    sget-object v0, Lc6/v$c;->c:Lc6/v$c;

    iput-object v0, p0, Lc6/v$b;->e:Lc6/v$c;

    sget-object v0, Lc6/v$d;->b:Lc6/v$d;

    iput-object v0, p0, Lc6/v$b;->h:Lc6/v$d;

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

    invoke-virtual {p0, p1, p2}, Lc6/v$b;->h(Li6/d;Li6/f;)Lc6/v$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/v$b;->f()Lc6/v;

    move-result-object p0

    invoke-virtual {p0}, Lc6/v;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lc6/v$b;->h(Li6/d;Li6/f;)Lc6/v$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/v$b;

    invoke-direct {v0}, Lc6/v$b;-><init>()V

    invoke-virtual {p0}, Lc6/v$b;->f()Lc6/v;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/v$b;->g(Lc6/v;)Lc6/v$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/v$b;

    invoke-direct {v0}, Lc6/v$b;-><init>()V

    invoke-virtual {p0}, Lc6/v$b;->f()Lc6/v;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/v$b;->g(Lc6/v;)Lc6/v$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/v;

    invoke-virtual {p0, p1}, Lc6/v$b;->g(Lc6/v;)Lc6/v$b;

    return-object p0
.end method

.method public f()Lc6/v;
    .registers 6

    new-instance v0, Lc6/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/v;-><init>(Li6/h$b;La4/c;)V

    iget v1, p0, Lc6/v$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget v2, p0, Lc6/v$b;->c:I

    iput v2, v0, Lc6/v;->c:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget v2, p0, Lc6/v$b;->d:I

    iput v2, v0, Lc6/v;->d:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_25

    or-int/lit8 v3, v3, 0x4

    :cond_25
    iget-object v2, p0, Lc6/v$b;->e:Lc6/v$c;

    iput-object v2, v0, Lc6/v;->e:Lc6/v$c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_31

    or-int/lit8 v3, v3, 0x8

    :cond_31
    iget v2, p0, Lc6/v$b;->f:I

    iput v2, v0, Lc6/v;->f:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_3d

    or-int/lit8 v3, v3, 0x10

    :cond_3d
    iget v2, p0, Lc6/v$b;->g:I

    iput v2, v0, Lc6/v;->g:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_48

    or-int/lit8 v3, v3, 0x20

    :cond_48
    iget-object p0, p0, Lc6/v$b;->h:Lc6/v$d;

    iput-object p0, v0, Lc6/v;->h:Lc6/v$d;

    iput v3, v0, Lc6/v;->b:I

    return-object v0
.end method

.method public g(Lc6/v;)Lc6/v$b;
    .registers 8

    sget-object v0, Lc6/v;->k:Lc6/v;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/v;->b:I

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

    iget v1, p1, Lc6/v;->c:I

    iget v4, p0, Lc6/v$b;->b:I

    or-int/2addr v4, v3

    iput v4, p0, Lc6/v$b;->b:I

    iput v1, p0, Lc6/v$b;->c:I

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

    iget v1, p1, Lc6/v;->d:I

    iget v5, p0, Lc6/v$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/v$b;->b:I

    iput v1, p0, Lc6/v$b;->d:I

    :cond_2e
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_34

    move v0, v3

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    if-eqz v0, :cond_43

    iget-object v0, p1, Lc6/v;->e:Lc6/v$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lc6/v$b;->b:I

    or-int/2addr v1, v4

    iput v1, p0, Lc6/v$b;->b:I

    iput-object v0, p0, Lc6/v$b;->e:Lc6/v$c;

    :cond_43
    iget v0, p1, Lc6/v;->b:I

    and-int/lit8 v1, v0, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_4d

    move v1, v3

    goto :goto_4e

    :cond_4d
    move v1, v2

    :goto_4e
    if-eqz v1, :cond_59

    iget v1, p1, Lc6/v;->f:I

    iget v5, p0, Lc6/v$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/v$b;->b:I

    iput v1, p0, Lc6/v$b;->f:I

    :cond_59
    and-int/lit8 v1, v0, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_61

    move v1, v3

    goto :goto_62

    :cond_61
    move v1, v2

    :goto_62
    if-eqz v1, :cond_6d

    iget v1, p1, Lc6/v;->g:I

    iget v5, p0, Lc6/v$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/v$b;->b:I

    iput v1, p0, Lc6/v$b;->g:I

    :cond_6d
    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_73

    move v2, v3

    :cond_73
    if-eqz v2, :cond_81

    iget-object v0, p1, Lc6/v;->h:Lc6/v$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lc6/v$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lc6/v$b;->b:I

    iput-object v0, p0, Lc6/v$b;->h:Lc6/v$d;

    :cond_81
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/v;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lc6/v$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/v;->l:Li6/r;

    check-cast v1, Lc6/v$a;

    invoke-virtual {v1, p1, p2}, Lc6/v$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/v;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/v$b;->g(Lc6/v;)Lc6/v$b;

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

    check-cast p2, Lc6/v;
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

    invoke-virtual {p0, v0}, Lc6/v$b;->g(Lc6/v;)Lc6/v$b;

    :cond_21
    throw p1
.end method
