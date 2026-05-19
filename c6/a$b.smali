.class public final Lc6/a$b;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/a$b$b;,
        Lc6/a$b$c;
    }
.end annotation


# static fields
.field public static final g:Lc6/a$b;

.field public static h:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:I

.field public d:Lc6/a$b$c;

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/a$b$a;

    invoke-direct {v0}, Lc6/a$b$a;-><init>()V

    sput-object v0, Lc6/a$b;->h:Li6/r;

    new-instance v0, Lc6/a$b;

    invoke-direct {v0}, Lc6/a$b;-><init>()V

    sput-object v0, Lc6/a$b;->g:Lc6/a$b;

    const/4 v1, 0x0

    iput v1, v0, Lc6/a$b;->c:I

    sget-object v1, Lc6/a$b$c;->p:Lc6/a$b$c;

    iput-object v1, v0, Lc6/a$b;->d:Lc6/a$b$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/a$b;->e:B

    iput v0, p0, Lc6/a$b;->f:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/a$b;->a:Li6/c;

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

    iput-byte p3, p0, Lc6/a$b;->e:B

    iput p3, p0, Lc6/a$b;->f:I

    const/4 p3, 0x0

    iput p3, p0, Lc6/a$b;->c:I

    sget-object v0, Lc6/a$b$c;->p:Lc6/a$b$c;

    iput-object v0, p0, Lc6/a$b;->d:Lc6/a$b$c;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v2

    :cond_18
    :goto_18
    if-nez p3, :cond_93

    :try_start_1a
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v3

    if-eqz v3, :cond_6b

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5f

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2f

    invoke-virtual {p1, v3, v2}, Li6/d;->r(ILi6/e;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_6b

    :cond_2f
    const/4 v3, 0x0

    iget v4, p0, Lc6/a$b;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_44

    iget-object v3, p0, Lc6/a$b;->d:Lc6/a$b$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc6/a$b$c$b;

    invoke-direct {v4}, Lc6/a$b$c$b;-><init>()V

    invoke-virtual {v4, v3}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    move-object v3, v4

    :cond_44
    sget-object v4, Lc6/a$b$c;->q:Li6/r;

    invoke-virtual {p1, v4, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v4

    check-cast v4, Lc6/a$b$c;

    iput-object v4, p0, Lc6/a$b;->d:Lc6/a$b$c;

    if-eqz v3, :cond_59

    invoke-virtual {v3, v4}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    invoke-virtual {v3}, Lc6/a$b$c$b;->f()Lc6/a$b$c;

    move-result-object v3

    iput-object v3, p0, Lc6/a$b;->d:Lc6/a$b$c;

    :cond_59
    iget v3, p0, Lc6/a$b;->b:I

    or-int/2addr v3, v5

    iput v3, p0, Lc6/a$b;->b:I

    goto :goto_18

    :cond_5f
    iget v3, p0, Lc6/a$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Lc6/a$b;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    iput v3, p0, Lc6/a$b;->c:I
    :try_end_6a
    .catch Li6/j; {:try_start_1a .. :try_end_6a} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_6a} :catch_6f
    .catchall {:try_start_1a .. :try_end_6a} :catchall_6d

    goto :goto_18

    :cond_6b
    :goto_6b
    move p3, v1

    goto :goto_18

    :catchall_6d
    move-exception p1

    goto :goto_80

    :catch_6f
    move-exception p1

    :try_start_70
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_7c
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_6d

    :goto_80
    :try_start_80
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8c
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_8c

    :catchall_84
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a$b;->a:Li6/c;

    throw p1

    :catch_8c
    :goto_8c
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a$b;->a:Li6/c;

    throw p1

    :cond_93
    :try_start_93
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9f
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9f

    :catchall_97
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a$b;->a:Li6/c;

    throw p1

    :catch_9f
    :goto_9f
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/a$b;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/a$b;->e:B

    iput p2, p0, Lc6/a$b;->f:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/a$b;->a:Li6/c;

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

    invoke-virtual {p0}, Lc6/a$b;->getSerializedSize()I

    iget v0, p0, Lc6/a$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lc6/a$b;->c:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_e
    iget v0, p0, Lc6/a$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lc6/a$b;->d:Lc6/a$b$c;

    invoke-virtual {p1, v1, v0}, Li6/e;->r(ILi6/p;)V

    :cond_19
    iget-object p0, p0, Lc6/a$b;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 4

    iget v0, p0, Lc6/a$b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lc6/a$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lc6/a$b;->c:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lc6/a$b;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    iget-object v1, p0, Lc6/a$b;->d:Lc6/a$b$c;

    invoke-static {v2, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lc6/a$b;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/a$b;->f:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/a$b;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/a$b;->b:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    if-nez v3, :cond_18

    iput-byte v2, p0, Lc6/a$b;->e:B

    return v2

    :cond_18
    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    if-nez v0, :cond_24

    iput-byte v2, p0, Lc6/a$b;->e:B

    return v2

    :cond_24
    iget-object v0, p0, Lc6/a$b;->d:Lc6/a$b$c;

    invoke-virtual {v0}, Lc6/a$b$c;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2f

    iput-byte v2, p0, Lc6/a$b;->e:B

    return v2

    :cond_2f
    iput-byte v1, p0, Lc6/a$b;->e:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/a$b$b;

    invoke-direct {p0}, Lc6/a$b$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/a$b$b;

    invoke-direct {v0}, Lc6/a$b$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/a$b$b;->g(Lc6/a$b;)Lc6/a$b$b;

    return-object v0
.end method
