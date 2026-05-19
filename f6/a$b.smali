.class public final Lf6/a$b;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/a$b$b;
    }
.end annotation


# static fields
.field public static final g:Lf6/a$b;

.field public static h:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lf6/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lf6/a$b$a;

    invoke-direct {v0}, Lf6/a$b$a;-><init>()V

    sput-object v0, Lf6/a$b;->h:Li6/r;

    new-instance v0, Lf6/a$b;

    invoke-direct {v0}, Lf6/a$b;-><init>()V

    sput-object v0, Lf6/a$b;->g:Lf6/a$b;

    const/4 v1, 0x0

    iput v1, v0, Lf6/a$b;->c:I

    iput v1, v0, Lf6/a$b;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf6/a$b;->e:B

    iput v0, p0, Lf6/a$b;->f:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lf6/a$b;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;Lf6/a$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p2, -0x1

    iput-byte p2, p0, Lf6/a$b;->e:B

    iput p2, p0, Lf6/a$b;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lf6/a$b;->c:I

    iput p2, p0, Lf6/a$b;->d:I

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    :cond_16
    :goto_16
    if-nez p2, :cond_6e

    :try_start_18
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v2

    if-eqz v2, :cond_46

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2d

    invoke-virtual {p1, v2, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_46

    :cond_2d
    iget v2, p0, Lf6/a$b;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lf6/a$b;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lf6/a$b;->d:I

    goto :goto_16

    :cond_3a
    iget v2, p0, Lf6/a$b;->b:I

    or-int/2addr v2, v0

    iput v2, p0, Lf6/a$b;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lf6/a$b;->c:I
    :try_end_45
    .catch Li6/j; {:try_start_18 .. :try_end_45} :catch_57
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_45} :catch_4a
    .catchall {:try_start_18 .. :try_end_45} :catchall_48

    goto :goto_16

    :cond_46
    :goto_46
    move p2, v0

    goto :goto_16

    :catchall_48
    move-exception p1

    goto :goto_5b

    :catch_4a
    move-exception p1

    :try_start_4b
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_57
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_48

    :goto_5b
    :try_start_5b
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_67
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_67

    :catchall_5f
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$b;->a:Li6/c;

    throw p1

    :catch_67
    :goto_67
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$b;->a:Li6/c;

    throw p1

    :cond_6e
    :try_start_6e
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7a
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_7a

    :catchall_72
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$b;->a:Li6/c;

    throw p1

    :catch_7a
    :goto_7a
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lf6/a$b;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;Lf6/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lf6/a$b;->e:B

    iput p2, p0, Lf6/a$b;->f:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lf6/a$b;->a:Li6/c;

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

    invoke-virtual {p0}, Lf6/a$b;->getSerializedSize()I

    iget v0, p0, Lf6/a$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lf6/a$b;->c:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_e
    iget v0, p0, Lf6/a$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    iget v0, p0, Lf6/a$b;->d:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_19
    iget-object p0, p0, Lf6/a$b;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 4

    iget v0, p0, Lf6/a$b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lf6/a$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lf6/a$b;->c:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lf6/a$b;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    iget v1, p0, Lf6/a$b;->d:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lf6/a$b;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf6/a$b;->f:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 3

    iget-byte v0, p0, Lf6/a$b;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-byte v1, p0, Lf6/a$b;->e:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lf6/a$b$b;

    invoke-direct {p0}, Lf6/a$b$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lf6/a$b$b;

    invoke-direct {v0}, Lf6/a$b$b;-><init>()V

    invoke-virtual {v0, p0}, Lf6/a$b$b;->g(Lf6/a$b;)Lf6/a$b$b;

    return-object v0
.end method
