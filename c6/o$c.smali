.class public final Lc6/o$c;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/o$c$b;,
        Lc6/o$c$c;
    }
.end annotation


# static fields
.field public static final h:Lc6/o$c;

.field public static i:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/o$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lc6/o$c$c;

.field public f:B

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/o$c$a;

    invoke-direct {v0}, Lc6/o$c$a;-><init>()V

    sput-object v0, Lc6/o$c;->i:Li6/r;

    new-instance v0, Lc6/o$c;

    invoke-direct {v0}, Lc6/o$c;-><init>()V

    sput-object v0, Lc6/o$c;->h:Lc6/o$c;

    const/4 v1, -0x1

    iput v1, v0, Lc6/o$c;->c:I

    const/4 v1, 0x0

    iput v1, v0, Lc6/o$c;->d:I

    sget-object v1, Lc6/o$c$c;->c:Lc6/o$c$c;

    iput-object v1, v0, Lc6/o$c;->e:Lc6/o$c$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/o$c;->f:B

    iput v0, p0, Lc6/o$c;->g:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/o$c;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/o$c;->f:B

    iput p2, p0, Lc6/o$c;->g:I

    iput p2, p0, Lc6/o$c;->c:I

    const/4 p2, 0x0

    iput p2, p0, Lc6/o$c;->d:I

    sget-object p3, Lc6/o$c$c;->c:Lc6/o$c$c;

    iput-object p3, p0, Lc6/o$c;->e:Lc6/o$c$c;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    :cond_1a
    :goto_1a
    if-nez p2, :cond_90

    :try_start_1c
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v2

    if-eqz v2, :cond_68

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5c

    const/16 v3, 0x10

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x18

    if-eq v2, v3, :cond_35

    invoke-virtual {p1, v2, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_68

    :cond_35
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    invoke-static {v3}, Lc6/o$c$c;->a(I)Lc6/o$c$c;

    move-result-object v4

    if-nez v4, :cond_46

    invoke-virtual {v1, v2}, Li6/e;->y(I)V

    invoke-virtual {v1, v3}, Li6/e;->y(I)V

    goto :goto_1a

    :cond_46
    iget v2, p0, Lc6/o$c;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lc6/o$c;->b:I

    iput-object v4, p0, Lc6/o$c;->e:Lc6/o$c$c;

    goto :goto_1a

    :cond_4f
    iget v2, p0, Lc6/o$c;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lc6/o$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lc6/o$c;->d:I

    goto :goto_1a

    :cond_5c
    iget v2, p0, Lc6/o$c;->b:I

    or-int/2addr v2, v0

    iput v2, p0, Lc6/o$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v2

    iput v2, p0, Lc6/o$c;->c:I
    :try_end_67
    .catch Li6/j; {:try_start_1c .. :try_end_67} :catch_79
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_67} :catch_6c
    .catchall {:try_start_1c .. :try_end_67} :catchall_6a

    goto :goto_1a

    :cond_68
    :goto_68
    move p2, v0

    goto :goto_1a

    :catchall_6a
    move-exception p1

    goto :goto_7d

    :catch_6c
    move-exception p1

    :try_start_6d
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_79
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_6a

    :goto_7d
    :try_start_7d
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_89
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_89

    :catchall_81
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/o$c;->a:Li6/c;

    throw p1

    :catch_89
    :goto_89
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/o$c;->a:Li6/c;

    throw p1

    :cond_90
    :try_start_90
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_9c
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_9c

    :catchall_94
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/o$c;->a:Li6/c;

    throw p1

    :catch_9c
    :goto_9c
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/o$c;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/o$c;->f:B

    iput p2, p0, Lc6/o$c;->g:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/o$c;->a:Li6/c;

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

    invoke-virtual {p0}, Lc6/o$c;->getSerializedSize()I

    iget v0, p0, Lc6/o$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lc6/o$c;->c:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_e
    iget v0, p0, Lc6/o$c;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    iget v0, p0, Lc6/o$c;->d:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_19
    iget v0, p0, Lc6/o$c;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_27

    const/4 v0, 0x3

    iget-object v1, p0, Lc6/o$c;->e:Lc6/o$c$c;

    iget v1, v1, Lc6/o$c$c;->a:I

    invoke-virtual {p1, v0, v1}, Li6/e;->n(II)V

    :cond_27
    iget-object p0, p0, Lc6/o$c;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 4

    iget v0, p0, Lc6/o$c;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lc6/o$c;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lc6/o$c;->c:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lc6/o$c;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    iget v1, p0, Lc6/o$c;->d:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lc6/o$c;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_31

    const/4 v1, 0x3

    iget-object v2, p0, Lc6/o$c;->e:Lc6/o$c$c;

    iget v2, v2, Lc6/o$c$c;->a:I

    invoke-static {v1, v2}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    iget-object v1, p0, Lc6/o$c;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/o$c;->g:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/o$c;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/o$c;->b:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_18

    iput-byte v2, p0, Lc6/o$c;->f:B

    return v2

    :cond_18
    iput-byte v1, p0, Lc6/o$c;->f:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/o$c$b;

    invoke-direct {p0}, Lc6/o$c$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/o$c$b;

    invoke-direct {v0}, Lc6/o$c$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/o$c$b;->g(Lc6/o$c;)Lc6/o$c$b;

    return-object v0
.end method
