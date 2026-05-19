.class public final Lc6/q$b;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/q$b$b;,
        Lc6/q$b$c;
    }
.end annotation


# static fields
.field public static final h:Lc6/q$b;

.field public static i:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/q$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:Lc6/q$b$c;

.field public d:Lc6/q;

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/q$b$a;

    invoke-direct {v0}, Lc6/q$b$a;-><init>()V

    sput-object v0, Lc6/q$b;->i:Li6/r;

    new-instance v0, Lc6/q$b;

    invoke-direct {v0}, Lc6/q$b;-><init>()V

    sput-object v0, Lc6/q$b;->h:Lc6/q$b;

    sget-object v1, Lc6/q$b$c;->d:Lc6/q$b$c;

    iput-object v1, v0, Lc6/q$b;->c:Lc6/q$b$c;

    sget-object v1, Lc6/q;->t:Lc6/q;

    iput-object v1, v0, Lc6/q$b;->d:Lc6/q;

    const/4 v1, 0x0

    iput v1, v0, Lc6/q$b;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/q$b;->f:B

    iput v0, p0, Lc6/q$b;->g:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/q$b;->a:Li6/c;

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

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/q$b;->f:B

    iput p3, p0, Lc6/q$b;->g:I

    sget-object p3, Lc6/q$b$c;->d:Lc6/q$b$c;

    iput-object p3, p0, Lc6/q$b;->c:Lc6/q$b$c;

    sget-object p3, Lc6/q;->t:Lc6/q;

    iput-object p3, p0, Lc6/q$b;->d:Lc6/q;

    const/4 p3, 0x0

    iput p3, p0, Lc6/q$b;->e:I

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v2

    :cond_1c
    :goto_1c
    if-nez p3, :cond_b2

    :try_start_1e
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v3

    if-eqz v3, :cond_8d

    const/16 v4, 0x8

    if-eq v3, v4, :cond_74

    const/16 v4, 0x12

    if-eq v3, v4, :cond_44

    const/16 v4, 0x18

    if-eq v3, v4, :cond_37

    invoke-virtual {p1, v3, v2}, Li6/d;->r(ILi6/e;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_8d

    :cond_37
    iget v3, p0, Lc6/q$b;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lc6/q$b;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    iput v3, p0, Lc6/q$b;->e:I

    goto :goto_1c

    :cond_44
    const/4 v3, 0x0

    iget v4, p0, Lc6/q$b;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_59

    iget-object v3, p0, Lc6/q$b;->d:Lc6/q;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v3

    goto :goto_59

    :catchall_55
    move-exception p1

    goto :goto_9f

    :catch_57
    move-exception p1

    goto :goto_8f

    :cond_59
    :goto_59
    sget-object v4, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v4, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v4

    check-cast v4, Lc6/q;

    iput-object v4, p0, Lc6/q$b;->d:Lc6/q;

    if-eqz v3, :cond_6e

    invoke-virtual {v3, v4}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v3}, Lc6/q$c;->g()Lc6/q;

    move-result-object v3

    iput-object v3, p0, Lc6/q$b;->d:Lc6/q;

    :cond_6e
    iget v3, p0, Lc6/q$b;->b:I

    or-int/2addr v3, v5

    iput v3, p0, Lc6/q$b;->b:I

    goto :goto_1c

    :cond_74
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    invoke-static {v4}, Lc6/q$b$c;->a(I)Lc6/q$b$c;

    move-result-object v5

    if-nez v5, :cond_85

    invoke-virtual {v2, v3}, Li6/e;->y(I)V

    invoke-virtual {v2, v4}, Li6/e;->y(I)V

    goto :goto_1c

    :cond_85
    iget v3, p0, Lc6/q$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Lc6/q$b;->b:I

    iput-object v5, p0, Lc6/q$b;->c:Lc6/q$b$c;
    :try_end_8c
    .catch Li6/j; {:try_start_1e .. :try_end_8c} :catch_9b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_8c} :catch_57
    .catchall {:try_start_1e .. :try_end_8c} :catchall_55

    goto :goto_1c

    :cond_8d
    :goto_8d
    move p3, v1

    goto :goto_1c

    :goto_8f
    :try_start_8f
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_9b
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_9f
    .catchall {:try_start_8f .. :try_end_9f} :catchall_55

    :goto_9f
    :try_start_9f
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ab
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_ab

    :catchall_a3
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/q$b;->a:Li6/c;

    throw p1

    :catch_ab
    :goto_ab
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/q$b;->a:Li6/c;

    throw p1

    :cond_b2
    :try_start_b2
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_be
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_be

    :catchall_b6
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/q$b;->a:Li6/c;

    throw p1

    :catch_be
    :goto_be
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/q$b;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/q$b;->f:B

    iput p2, p0, Lc6/q$b;->g:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/q$b;->a:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/q$b;->getSerializedSize()I

    iget v0, p0, Lc6/q$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lc6/q$b;->c:Lc6/q$b$c;

    iget v0, v0, Lc6/q$b$c;->a:I

    invoke-virtual {p1, v1, v0}, Li6/e;->n(II)V

    :cond_10
    iget v0, p0, Lc6/q$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lc6/q$b;->d:Lc6/q;

    invoke-virtual {p1, v1, v0}, Li6/e;->r(ILi6/p;)V

    :cond_1b
    iget v0, p0, Lc6/q$b;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_27

    const/4 v0, 0x3

    iget v1, p0, Lc6/q$b;->e:I

    invoke-virtual {p1, v0, v1}, Li6/e;->p(II)V

    :cond_27
    iget-object p0, p0, Lc6/q$b;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget p0, p0, Lc6/q$b;->b:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getSerializedSize()I
    .registers 4

    iget v0, p0, Lc6/q$b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lc6/q$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lc6/q$b;->c:Lc6/q$b$c;

    iget v1, v1, Lc6/q$b$c;->a:I

    invoke-static {v2, v1}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lc6/q$b;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lc6/q$b;->d:Lc6/q;

    invoke-static {v2, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget v1, p0, Lc6/q$b;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_31

    const/4 v1, 0x3

    iget v2, p0, Lc6/q$b;->e:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    iget-object v1, p0, Lc6/q$b;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/q$b;->g:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 4

    iget-byte v0, p0, Lc6/q$b;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lc6/q$b;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lc6/q$b;->d:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1b

    iput-byte v2, p0, Lc6/q$b;->f:B

    return v2

    :cond_1b
    iput-byte v1, p0, Lc6/q$b;->f:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/q$b$b;

    invoke-direct {p0}, Lc6/q$b$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/q$b$b;

    invoke-direct {v0}, Lc6/q$b$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/q$b$b;->g(Lc6/q$b;)Lc6/q$b$b;

    return-object v0
.end method
