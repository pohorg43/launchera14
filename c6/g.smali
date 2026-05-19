.class public final Lc6/g;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lc6/g;

.field public static h:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/g$a;

    invoke-direct {v0}, Lc6/g$a;-><init>()V

    sput-object v0, Lc6/g;->h:Li6/r;

    new-instance v0, Lc6/g;

    invoke-direct {v0}, Lc6/g;-><init>()V

    sput-object v0, Lc6/g;->g:Lc6/g;

    const/4 v1, 0x0

    iput v1, v0, Lc6/g;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/g;->e:B

    iput v0, p0, Lc6/g;->f:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/g;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/g;->e:B

    iput p3, p0, Lc6/g;->f:I

    const/4 p3, 0x0

    iput p3, p0, Lc6/g;->d:I

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v2

    :cond_14
    :goto_14
    if-nez p3, :cond_60

    :try_start_16
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v3

    if-eqz v3, :cond_33

    const/16 v4, 0x8

    if-eq v3, v4, :cond_27

    invoke-virtual {p0, p1, v2, p2, v3}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_33

    :cond_27
    iget v3, p0, Lc6/g;->c:I

    or-int/2addr v3, v1

    iput v3, p0, Lc6/g;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v3

    iput v3, p0, Lc6/g;->d:I
    :try_end_32
    .catch Li6/j; {:try_start_16 .. :try_end_32} :catch_44
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_32} :catch_37
    .catchall {:try_start_16 .. :try_end_32} :catchall_35

    goto :goto_14

    :cond_33
    :goto_33
    move p3, v1

    goto :goto_14

    :catchall_35
    move-exception p1

    goto :goto_48

    :catch_37
    move-exception p1

    :try_start_38
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_44
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_35

    :goto_48
    :try_start_48
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_54
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_54

    :catchall_4c
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/g;->b:Li6/c;

    throw p1

    :catch_54
    :goto_54
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/g;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_60
    :try_start_60
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6c
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_6c

    :catchall_64
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/g;->b:Li6/c;

    throw p1

    :catch_6c
    :goto_6c
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/g;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/g;->e:B

    iput p2, p0, Lc6/g;->f:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/g;->b:Li6/c;

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

    invoke-virtual {p0}, Lc6/g;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/g;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget v1, p0, Lc6/g;->d:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_12
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/g;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/g;->g:Lc6/g;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 4

    iget v0, p0, Lc6/g;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lc6/g;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget v1, p0, Lc6/g;->d:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc6/g;->b:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/g;->f:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    iget-byte v0, p0, Lc6/g;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_13

    iput-byte v2, p0, Lc6/g;->e:B

    return v2

    :cond_13
    iput-byte v1, p0, Lc6/g;->e:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/g$b;

    invoke-direct {p0}, Lc6/g$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/g$b;

    invoke-direct {v0}, Lc6/g$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/g$b;->h(Lc6/g;)Lc6/g$b;

    return-object v0
.end method
