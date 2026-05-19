.class public final Lc6/u;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Lc6/u;

.field public static m:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lc6/q;

.field public g:I

.field public h:Lc6/q;

.field public i:I

.field public j:B

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lc6/u$a;

    invoke-direct {v0}, Lc6/u$a;-><init>()V

    sput-object v0, Lc6/u;->m:Li6/r;

    new-instance v0, Lc6/u;

    invoke-direct {v0}, Lc6/u;-><init>()V

    sput-object v0, Lc6/u;->l:Lc6/u;

    const/4 v1, 0x0

    iput v1, v0, Lc6/u;->d:I

    iput v1, v0, Lc6/u;->e:I

    sget-object v2, Lc6/q;->t:Lc6/q;

    iput-object v2, v0, Lc6/u;->f:Lc6/q;

    iput v1, v0, Lc6/u;->g:I

    iput-object v2, v0, Lc6/u;->h:Lc6/q;

    iput v1, v0, Lc6/u;->i:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/u;->j:B

    iput v0, p0, Lc6/u;->k:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/u;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/u;->j:B

    iput p3, p0, Lc6/u;->k:I

    const/4 p3, 0x0

    iput p3, p0, Lc6/u;->d:I

    iput p3, p0, Lc6/u;->e:I

    sget-object v0, Lc6/q;->t:Lc6/q;

    iput-object v0, p0, Lc6/u;->f:Lc6/q;

    iput p3, p0, Lc6/u;->g:I

    iput-object v0, p0, Lc6/u;->h:Lc6/q;

    iput p3, p0, Lc6/u;->i:I

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v2

    :cond_20
    :goto_20
    if-nez p3, :cond_102

    :try_start_22
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v3

    if-eqz v3, :cond_d7

    const/16 v4, 0x8

    if-eq v3, v4, :cond_ca

    const/16 v5, 0x10

    if-eq v3, v5, :cond_bc

    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-eq v3, v6, :cond_91

    const/16 v6, 0x22

    if-eq v3, v6, :cond_62

    const/16 v5, 0x28

    if-eq v3, v5, :cond_56

    const/16 v4, 0x30

    if-eq v3, v4, :cond_49

    invoke-virtual {p0, p1, v2, p2, v3}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_d7

    :cond_49
    iget v3, p0, Lc6/u;->c:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lc6/u;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    iput v3, p0, Lc6/u;->i:I

    goto :goto_20

    :cond_56
    iget v3, p0, Lc6/u;->c:I

    or-int/2addr v3, v4

    iput v3, p0, Lc6/u;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    iput v3, p0, Lc6/u;->g:I

    goto :goto_20

    :cond_62
    iget v3, p0, Lc6/u;->c:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_76

    iget-object v3, p0, Lc6/u;->h:Lc6/q;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v7

    goto :goto_76

    :catchall_71
    move-exception p1

    goto/16 :goto_ea

    :catch_74
    move-exception p1

    goto :goto_da

    :cond_76
    :goto_76
    sget-object v3, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v3, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v3

    check-cast v3, Lc6/q;

    iput-object v3, p0, Lc6/u;->h:Lc6/q;

    if-eqz v7, :cond_8b

    invoke-virtual {v7, v3}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v7}, Lc6/q$c;->g()Lc6/q;

    move-result-object v3

    iput-object v3, p0, Lc6/u;->h:Lc6/q;

    :cond_8b
    iget v3, p0, Lc6/u;->c:I

    or-int/2addr v3, v5

    iput v3, p0, Lc6/u;->c:I

    goto :goto_20

    :cond_91
    iget v3, p0, Lc6/u;->c:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a0

    iget-object v3, p0, Lc6/u;->f:Lc6/q;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v7

    :cond_a0
    sget-object v3, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v3, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v3

    check-cast v3, Lc6/q;

    iput-object v3, p0, Lc6/u;->f:Lc6/q;

    if-eqz v7, :cond_b5

    invoke-virtual {v7, v3}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v7}, Lc6/q$c;->g()Lc6/q;

    move-result-object v3

    iput-object v3, p0, Lc6/u;->f:Lc6/q;

    :cond_b5
    iget v3, p0, Lc6/u;->c:I

    or-int/2addr v3, v4

    iput v3, p0, Lc6/u;->c:I

    goto/16 :goto_20

    :cond_bc
    iget v3, p0, Lc6/u;->c:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lc6/u;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    iput v3, p0, Lc6/u;->e:I

    goto/16 :goto_20

    :cond_ca
    iget v3, p0, Lc6/u;->c:I

    or-int/2addr v3, v1

    iput v3, p0, Lc6/u;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    iput v3, p0, Lc6/u;->d:I
    :try_end_d5
    .catch Li6/j; {:try_start_22 .. :try_end_d5} :catch_e6
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_d5} :catch_74
    .catchall {:try_start_22 .. :try_end_d5} :catchall_71

    goto/16 :goto_20

    :cond_d7
    :goto_d7
    move p3, v1

    goto/16 :goto_20

    :goto_da
    :try_start_da
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_e6
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_ea
    .catchall {:try_start_da .. :try_end_ea} :catchall_71

    :goto_ea
    :try_start_ea
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_f6
    .catchall {:try_start_ea .. :try_end_ed} :catchall_ee

    goto :goto_f6

    :catchall_ee
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/u;->b:Li6/c;

    throw p1

    :catch_f6
    :goto_f6
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/u;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_102
    :try_start_102
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_10e
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_10e

    :catchall_106
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/u;->b:Li6/c;

    throw p1

    :catch_10e
    :goto_10e
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/u;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/u;->j:B

    iput p2, p0, Lc6/u;->k:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/u;->b:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/u;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/u;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget v1, p0, Lc6/u;->d:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_12
    iget v1, p0, Lc6/u;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d

    iget v1, p0, Lc6/u;->e:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_1d
    iget v1, p0, Lc6/u;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_29

    const/4 v1, 0x3

    iget-object v3, p0, Lc6/u;->f:Lc6/q;

    invoke-virtual {p1, v1, v3}, Li6/e;->r(ILi6/p;)V

    :cond_29
    iget v1, p0, Lc6/u;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_35

    iget-object v1, p0, Lc6/u;->h:Lc6/q;

    invoke-virtual {p1, v2, v1}, Li6/e;->r(ILi6/p;)V

    :cond_35
    iget v1, p0, Lc6/u;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_42

    const/4 v1, 0x5

    iget v2, p0, Lc6/u;->g:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_42
    iget v1, p0, Lc6/u;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4f

    const/4 v1, 0x6

    iget v2, p0, Lc6/u;->i:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_4f
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/u;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/u;->l:Lc6/u;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lc6/u;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lc6/u;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lc6/u;->d:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lc6/u;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    iget v1, p0, Lc6/u;->e:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lc6/u;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2f

    const/4 v1, 0x3

    iget-object v3, p0, Lc6/u;->f:Lc6/q;

    invoke-static {v1, v3}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget v1, p0, Lc6/u;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3d

    iget-object v1, p0, Lc6/u;->h:Lc6/q;

    invoke-static {v2, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3d
    iget v1, p0, Lc6/u;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4c

    const/4 v1, 0x5

    iget v2, p0, Lc6/u;->g:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget v1, p0, Lc6/u;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5b

    const/4 v1, 0x6

    iget v2, p0, Lc6/u;->i:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5b
    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc6/u;->b:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/u;->k:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/u;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/u;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_18

    iput-byte v2, p0, Lc6/u;->j:B

    return v2

    :cond_18
    invoke-virtual {p0}, Lc6/u;->m()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lc6/u;->f:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_29

    iput-byte v2, p0, Lc6/u;->j:B

    return v2

    :cond_29
    invoke-virtual {p0}, Lc6/u;->n()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lc6/u;->h:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3a

    iput-byte v2, p0, Lc6/u;->j:B

    return v2

    :cond_3a
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_43

    iput-byte v2, p0, Lc6/u;->j:B

    return v2

    :cond_43
    iput-byte v1, p0, Lc6/u;->j:B

    return v1
.end method

.method public m()Z
    .registers 2

    iget p0, p0, Lc6/u;->c:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public n()Z
    .registers 2

    iget p0, p0, Lc6/u;->c:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/u$b;

    invoke-direct {p0}, Lc6/u$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/u$b;

    invoke-direct {v0}, Lc6/u$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/u$b;->h(Lc6/u;)Lc6/u$b;

    return-object v0
.end method
