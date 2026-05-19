.class public final Lc6/t;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/t$b;
    }
.end annotation


# static fields
.field public static final g:Lc6/t;

.field public static h:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/t$a;

    invoke-direct {v0}, Lc6/t$a;-><init>()V

    sput-object v0, Lc6/t;->h:Li6/r;

    new-instance v0, Lc6/t;

    invoke-direct {v0}, Lc6/t;-><init>()V

    sput-object v0, Lc6/t;->g:Lc6/t;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc6/t;->c:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, v0, Lc6/t;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/t;->e:B

    iput v0, p0, Lc6/t;->f:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/t;->a:Li6/c;

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

    iput-byte p3, p0, Lc6/t;->e:B

    iput p3, p0, Lc6/t;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/t;->c:Ljava/util/List;

    iput p3, p0, Lc6/t;->d:I

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1b
    :goto_1b
    if-nez v2, :cond_8b

    :try_start_1d
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v4

    if-eqz v4, :cond_57

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3e

    const/16 v5, 0x10

    if-eq v4, v5, :cond_32

    invoke-virtual {p1, v4, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_57

    :cond_32
    iget v4, p0, Lc6/t;->b:I

    or-int/2addr v4, v0

    iput v4, p0, Lc6/t;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/t;->d:I

    goto :goto_1b

    :cond_3e
    and-int/lit8 v4, v3, 0x1

    if-eq v4, v0, :cond_4b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lc6/t;->c:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    :cond_4b
    iget-object v4, p0, Lc6/t;->c:Ljava/util/List;

    sget-object v5, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v5, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Li6/j; {:try_start_1d .. :try_end_56} :catch_68
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_56} :catch_5b
    .catchall {:try_start_1d .. :try_end_56} :catchall_59

    goto :goto_1b

    :cond_57
    :goto_57
    move v2, v0

    goto :goto_1b

    :catchall_59
    move-exception p1

    goto :goto_6c

    :catch_5b
    move-exception p1

    :try_start_5c
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_68
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_59

    :goto_6c
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_78

    iget-object p2, p0, Lc6/t;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/t;->c:Ljava/util/List;

    :cond_78
    :try_start_78
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_84
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_84

    :catchall_7c
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/t;->a:Li6/c;

    throw p1

    :catch_84
    :goto_84
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/t;->a:Li6/c;

    throw p1

    :cond_8b
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_97

    iget-object p1, p0, Lc6/t;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/t;->c:Ljava/util/List;

    :cond_97
    :try_start_97
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_a3
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_a3

    :catchall_9b
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/t;->a:Li6/c;

    throw p1

    :catch_a3
    :goto_a3
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/t;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/t;->e:B

    iput p2, p0, Lc6/t;->f:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/t;->a:Li6/c;

    return-void
.end method

.method public static e(Lc6/t;)Lc6/t$b;
    .registers 2

    new-instance v0, Lc6/t$b;

    invoke-direct {v0}, Lc6/t$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/t$b;->g(Lc6/t;)Lc6/t$b;

    return-object v0
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/t;->getSerializedSize()I

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lc6/t;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lc6/t;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/p;

    invoke-virtual {p1, v2, v1}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    iget v0, p0, Lc6/t;->b:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    const/4 v0, 0x2

    iget v1, p0, Lc6/t;->d:I

    invoke-virtual {p1, v0, v1}, Li6/e;->p(II)V

    :cond_26
    iget-object p0, p0, Lc6/t;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public f()Lc6/t$b;
    .registers 1

    invoke-static {p0}, Lc6/t;->e(Lc6/t;)Lc6/t$b;

    move-result-object p0

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lc6/t;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v2, p0, Lc6/t;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lc6/t;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    invoke-static {v3, v2}, Li6/e;->e(ILi6/p;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    iget v0, p0, Lc6/t;->b:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2e

    const/4 v0, 0x2

    iget v2, p0, Lc6/t;->d:I

    invoke-static {v0, v2}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2e
    iget-object v0, p0, Lc6/t;->a:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/t;->f:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/t;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    move v0, v2

    :goto_b
    iget-object v3, p0, Lc6/t;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lc6/t;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q;

    invoke-virtual {v3}, Lc6/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lc6/t;->e:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    iput-byte v1, p0, Lc6/t;->e:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/t$b;

    invoke-direct {p0}, Lc6/t$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 1

    invoke-static {p0}, Lc6/t;->e(Lc6/t;)Lc6/t$b;

    move-result-object p0

    return-object p0
.end method
