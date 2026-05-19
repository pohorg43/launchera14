.class public final Lc6/v;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/v$b;,
        Lc6/v$d;,
        Lc6/v$c;
    }
.end annotation


# static fields
.field public static final k:Lc6/v;

.field public static l:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lc6/v$c;

.field public f:I

.field public g:I

.field public h:Lc6/v$d;

.field public i:B

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lc6/v$a;

    invoke-direct {v0}, Lc6/v$a;-><init>()V

    sput-object v0, Lc6/v;->l:Li6/r;

    new-instance v0, Lc6/v;

    invoke-direct {v0}, Lc6/v;-><init>()V

    sput-object v0, Lc6/v;->k:Lc6/v;

    const/4 v1, 0x0

    iput v1, v0, Lc6/v;->c:I

    iput v1, v0, Lc6/v;->d:I

    sget-object v2, Lc6/v$c;->c:Lc6/v$c;

    iput-object v2, v0, Lc6/v;->e:Lc6/v$c;

    iput v1, v0, Lc6/v;->f:I

    iput v1, v0, Lc6/v;->g:I

    sget-object v1, Lc6/v$d;->b:Lc6/v$d;

    iput-object v1, v0, Lc6/v;->h:Lc6/v$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/v;->i:B

    iput v0, p0, Lc6/v;->j:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/v;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/v;->i:B

    iput p2, p0, Lc6/v;->j:I

    const/4 p2, 0x0

    iput p2, p0, Lc6/v;->c:I

    iput p2, p0, Lc6/v;->d:I

    sget-object p3, Lc6/v$c;->c:Lc6/v$c;

    iput-object p3, p0, Lc6/v;->e:Lc6/v$c;

    iput p2, p0, Lc6/v;->f:I

    iput p2, p0, Lc6/v;->g:I

    sget-object p3, Lc6/v$d;->b:Lc6/v$d;

    iput-object p3, p0, Lc6/v;->h:Lc6/v$d;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    :cond_22
    :goto_22
    if-nez p2, :cond_d7

    :try_start_24
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v2

    if-eqz v2, :cond_ae

    const/16 v3, 0x8

    if-eq v2, v3, :cond_a1

    const/16 v4, 0x10

    if-eq v2, v4, :cond_94

    const/16 v5, 0x18

    if-eq v2, v5, :cond_7a

    const/16 v5, 0x20

    if-eq v2, v5, :cond_6e

    const/16 v3, 0x28

    if-eq v2, v3, :cond_62

    const/16 v3, 0x30

    if-eq v2, v3, :cond_49

    invoke-virtual {p1, v2, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_ae

    :cond_49
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    invoke-static {v3}, Lc6/v$d;->a(I)Lc6/v$d;

    move-result-object v4

    if-nez v4, :cond_5a

    invoke-virtual {v1, v2}, Li6/e;->y(I)V

    invoke-virtual {v1, v3}, Li6/e;->y(I)V

    goto :goto_22

    :cond_5a
    iget v2, p0, Lc6/v;->b:I

    or-int/2addr v2, v5

    iput v2, p0, Lc6/v;->b:I

    iput-object v4, p0, Lc6/v;->h:Lc6/v$d;

    goto :goto_22

    :cond_62
    iget v2, p0, Lc6/v;->b:I

    or-int/2addr v2, v4

    iput v2, p0, Lc6/v;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lc6/v;->g:I

    goto :goto_22

    :cond_6e
    iget v2, p0, Lc6/v;->b:I

    or-int/2addr v2, v3

    iput v2, p0, Lc6/v;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lc6/v;->f:I

    goto :goto_22

    :cond_7a
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    invoke-static {v3}, Lc6/v$c;->a(I)Lc6/v$c;

    move-result-object v4

    if-nez v4, :cond_8b

    invoke-virtual {v1, v2}, Li6/e;->y(I)V

    invoke-virtual {v1, v3}, Li6/e;->y(I)V

    goto :goto_22

    :cond_8b
    iget v2, p0, Lc6/v;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lc6/v;->b:I

    iput-object v4, p0, Lc6/v;->e:Lc6/v$c;

    goto :goto_22

    :cond_94
    iget v2, p0, Lc6/v;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lc6/v;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lc6/v;->d:I

    goto :goto_22

    :cond_a1
    iget v2, p0, Lc6/v;->b:I

    or-int/2addr v2, v0

    iput v2, p0, Lc6/v;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lc6/v;->c:I
    :try_end_ac
    .catch Li6/j; {:try_start_24 .. :try_end_ac} :catch_c0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_ac} :catch_b3
    .catchall {:try_start_24 .. :try_end_ac} :catchall_b1

    goto/16 :goto_22

    :cond_ae
    :goto_ae
    move p2, v0

    goto/16 :goto_22

    :catchall_b1
    move-exception p1

    goto :goto_c4

    :catch_b3
    move-exception p1

    :try_start_b4
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_c0
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_c4
    .catchall {:try_start_b4 .. :try_end_c4} :catchall_b1

    :goto_c4
    :try_start_c4
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_d0
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_d0

    :catchall_c8
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/v;->a:Li6/c;

    throw p1

    :catch_d0
    :goto_d0
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/v;->a:Li6/c;

    throw p1

    :cond_d7
    :try_start_d7
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_e3
    .catchall {:try_start_d7 .. :try_end_da} :catchall_db

    goto :goto_e3

    :catchall_db
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/v;->a:Li6/c;

    throw p1

    :catch_e3
    :goto_e3
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/v;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/v;->i:B

    iput p2, p0, Lc6/v;->j:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/v;->a:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/v;->getSerializedSize()I

    iget v0, p0, Lc6/v;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lc6/v;->c:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_e
    iget v0, p0, Lc6/v;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    iget v0, p0, Lc6/v;->d:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_19
    iget v0, p0, Lc6/v;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_27

    const/4 v0, 0x3

    iget-object v2, p0, Lc6/v;->e:Lc6/v$c;

    iget v2, v2, Lc6/v$c;->a:I

    invoke-virtual {p1, v0, v2}, Li6/e;->n(II)V

    :cond_27
    iget v0, p0, Lc6/v;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_33

    iget v0, p0, Lc6/v;->f:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_33
    iget v0, p0, Lc6/v;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_40

    const/4 v0, 0x5

    iget v1, p0, Lc6/v;->g:I

    invoke-virtual {p1, v0, v1}, Li6/e;->p(II)V

    :cond_40
    iget v0, p0, Lc6/v;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4f

    const/4 v0, 0x6

    iget-object v1, p0, Lc6/v;->h:Lc6/v$d;

    iget v1, v1, Lc6/v$d;->a:I

    invoke-virtual {p1, v0, v1}, Li6/e;->n(II)V

    :cond_4f
    iget-object p0, p0, Lc6/v;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lc6/v;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lc6/v;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lc6/v;->c:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lc6/v;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    iget v1, p0, Lc6/v;->d:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lc6/v;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_31

    const/4 v1, 0x3

    iget-object v3, p0, Lc6/v;->e:Lc6/v$c;

    iget v3, v3, Lc6/v$c;->a:I

    invoke-static {v1, v3}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    iget v1, p0, Lc6/v;->b:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3f

    iget v1, p0, Lc6/v;->f:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3f
    iget v1, p0, Lc6/v;->b:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4e

    const/4 v1, 0x5

    iget v2, p0, Lc6/v;->g:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4e
    iget v1, p0, Lc6/v;->b:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5f

    const/4 v1, 0x6

    iget-object v2, p0, Lc6/v;->h:Lc6/v$d;

    iget v2, v2, Lc6/v$d;->a:I

    invoke-static {v1, v2}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5f
    iget-object v1, p0, Lc6/v;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/v;->j:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 3

    iget-byte v0, p0, Lc6/v;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-byte v1, p0, Lc6/v;->i:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/v$b;

    invoke-direct {p0}, Lc6/v$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/v$b;

    invoke-direct {v0}, Lc6/v$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/v$b;->g(Lc6/v;)Lc6/v$b;

    return-object v0
.end method
