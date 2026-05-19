.class public final Lc6/a;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/a$c;,
        Lc6/a$b;
    }
.end annotation


# static fields
.field public static final g:Lc6/a;

.field public static h:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/a$a;

    invoke-direct {v0}, Lc6/a$a;-><init>()V

    sput-object v0, Lc6/a;->h:Li6/r;

    new-instance v0, Lc6/a;

    invoke-direct {v0}, Lc6/a;-><init>()V

    sput-object v0, Lc6/a;->g:Lc6/a;

    const/4 v1, 0x0

    iput v1, v0, Lc6/a;->c:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc6/a;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/a;->e:B

    iput v0, p0, Lc6/a;->f:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/a;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/a;->e:B

    iput p3, p0, Lc6/a;->f:I

    const/4 p3, 0x0

    iput p3, p0, Lc6/a;->c:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/a;->d:Ljava/util/List;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v2

    move v3, p3

    :cond_1b
    :goto_1b
    const/4 v4, 0x2

    if-nez p3, :cond_8c

    :try_start_1e
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v5

    if-eqz v5, :cond_58

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4c

    const/16 v6, 0x12

    if-eq v5, v6, :cond_33

    invoke-virtual {p1, v5, v2}, Li6/d;->r(ILi6/e;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_58

    :cond_33
    and-int/lit8 v5, v3, 0x2

    if-eq v5, v4, :cond_40

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lc6/a;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_40
    iget-object v5, p0, Lc6/a;->d:Ljava/util/List;

    sget-object v6, Lc6/a$b;->h:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_4c
    iget v5, p0, Lc6/a;->b:I

    or-int/2addr v5, v1

    iput v5, p0, Lc6/a;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lc6/a;->c:I
    :try_end_57
    .catch Li6/j; {:try_start_1e .. :try_end_57} :catch_69
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_57} :catch_5c
    .catchall {:try_start_1e .. :try_end_57} :catchall_5a

    goto :goto_1b

    :cond_58
    :goto_58
    move p3, v1

    goto :goto_1b

    :catchall_5a
    move-exception p1

    goto :goto_6d

    :catch_5c
    move-exception p1

    :try_start_5d
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_69
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_5a

    :goto_6d
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_79

    iget-object p2, p0, Lc6/a;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/a;->d:Ljava/util/List;

    :cond_79
    :try_start_79
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_85
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_85

    :catchall_7d
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a;->a:Li6/c;

    throw p1

    :catch_85
    :goto_85
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a;->a:Li6/c;

    throw p1

    :cond_8c
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_98

    iget-object p1, p0, Lc6/a;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/a;->d:Ljava/util/List;

    :cond_98
    :try_start_98
    invoke-virtual {v2}, Li6/e;->j()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a4
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a4

    :catchall_9c
    move-exception p1

    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a;->a:Li6/c;

    throw p1

    :catch_a4
    :goto_a4
    invoke-virtual {v0}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/a;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/a;->e:B

    iput p2, p0, Lc6/a;->f:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/a;->a:Li6/c;

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

    invoke-virtual {p0}, Lc6/a;->getSerializedSize()I

    iget v0, p0, Lc6/a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lc6/a;->c:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    const/4 v1, 0x2

    iget-object v2, p0, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_26
    iget-object p0, p0, Lc6/a;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lc6/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lc6/a;->c:I

    invoke-static {v1, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget-object v1, p0, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2f

    const/4 v1, 0x2

    iget-object v3, p0, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-static {v1, v3}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2f
    iget-object v1, p0, Lc6/a;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/a;->f:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/a;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/a;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    if-nez v0, :cond_17

    iput-byte v2, p0, Lc6/a;->e:B

    return v2

    :cond_17
    move v0, v2

    :goto_18
    iget-object v3, p0, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    iget-object v3, p0, Lc6/a;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/a$b;

    invoke-virtual {v3}, Lc6/a$b;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_31

    iput-byte v2, p0, Lc6/a;->e:B

    return v2

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_34
    iput-byte v1, p0, Lc6/a;->e:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/a$c;

    invoke-direct {p0}, Lc6/a$c;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/a$c;

    invoke-direct {v0}, Lc6/a$c;-><init>()V

    invoke-virtual {v0, p0}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    return-object v0
.end method
