.class public final Lc6/d;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lc6/d;

.field public static j:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/u;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:B

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/d$a;

    invoke-direct {v0}, Lc6/d$a;-><init>()V

    sput-object v0, Lc6/d;->j:Li6/r;

    new-instance v0, Lc6/d;

    invoke-direct {v0}, Lc6/d;-><init>()V

    sput-object v0, Lc6/d;->i:Lc6/d;

    const/4 v1, 0x6

    iput v1, v0, Lc6/d;->d:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc6/d;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc6/d;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/d;->g:B

    iput v0, p0, Lc6/d;->h:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/d;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/d;->g:B

    iput p3, p0, Lc6/d;->h:I

    const/4 p3, 0x6

    iput p3, p0, Lc6/d;->d:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lc6/d;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lc6/d;->f:Ljava/util/List;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_22
    :goto_22
    const/4 v4, 0x2

    const/4 v5, 0x4

    if-nez v2, :cond_101

    :try_start_26
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v6

    if-eqz v6, :cond_bb

    const/16 v7, 0x8

    if-eq v6, v7, :cond_ae

    const/16 v7, 0x12

    if-eq v6, v7, :cond_94

    const/16 v7, 0xf8

    if-eq v6, v7, :cond_79

    const/16 v7, 0xfa

    if-eq v6, v7, :cond_44

    invoke-virtual {p0, p1, v1, p2, v6}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_bb

    :cond_44
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-virtual {p1, v6}, Li6/d;->d(I)I

    move-result v6

    and-int/lit8 v7, v3, 0x4

    if-eq v7, v5, :cond_5f

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v7

    if-lez v7, :cond_5f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc6/d;->f:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v7

    if-lez v7, :cond_73

    iget-object v7, p0, Lc6/d;->f:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_73
    iput v6, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto :goto_22

    :cond_79
    and-int/lit8 v6, v3, 0x4

    if-eq v6, v5, :cond_86

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/d;->f:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    :cond_86
    iget-object v6, p0, Lc6/d;->f:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_94
    and-int/lit8 v6, v3, 0x2

    if-eq v6, v4, :cond_a1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/d;->e:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_a1
    iget-object v6, p0, Lc6/d;->e:Ljava/util/List;

    sget-object v7, Lc6/u;->m:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_ae
    iget v6, p0, Lc6/d;->c:I

    or-int/2addr v6, v0

    iput v6, p0, Lc6/d;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    iput v6, p0, Lc6/d;->d:I
    :try_end_b9
    .catch Li6/j; {:try_start_26 .. :try_end_b9} :catch_cd
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_b9} :catch_c0
    .catchall {:try_start_26 .. :try_end_b9} :catchall_be

    goto/16 :goto_22

    :cond_bb
    :goto_bb
    move v2, v0

    goto/16 :goto_22

    :catchall_be
    move-exception p1

    goto :goto_d1

    :catch_c0
    move-exception p1

    :try_start_c1
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_cd
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_d1
    .catchall {:try_start_c1 .. :try_end_d1} :catchall_be

    :goto_d1
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_dd

    iget-object p2, p0, Lc6/d;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/d;->e:Ljava/util/List;

    :cond_dd
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v5, :cond_e9

    iget-object p2, p0, Lc6/d;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/d;->f:Ljava/util/List;

    :cond_e9
    :try_start_e9
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_f5
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_ed

    goto :goto_f5

    :catchall_ed
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/d;->b:Li6/c;

    throw p1

    :catch_f5
    :goto_f5
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/d;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_101
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_10d

    iget-object p1, p0, Lc6/d;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/d;->e:Ljava/util/List;

    :cond_10d
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v5, :cond_119

    iget-object p1, p0, Lc6/d;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/d;->f:Ljava/util/List;

    :cond_119
    :try_start_119
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_125
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_125

    :catchall_11d
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/d;->b:Li6/c;

    throw p1

    :catch_125
    :goto_125
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/d;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/d;->g:B

    iput p2, p0, Lc6/d;->h:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/d;->b:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/d;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/d;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget v1, p0, Lc6/d;->d:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_12
    const/4 v1, 0x0

    move v2, v1

    :goto_14
    iget-object v3, p0, Lc6/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    const/4 v3, 0x2

    iget-object v4, p0, Lc6/d;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2b
    :goto_2b
    iget-object v2, p0, Lc6/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    const/16 v2, 0x1f

    iget-object v3, p0, Lc6/d;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Li6/e;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_47
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/d;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/d;->i:Lc6/d;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lc6/d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/d;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lc6/d;->d:I

    invoke-static {v1, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    move v1, v2

    :goto_17
    iget-object v3, p0, Lc6/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_30

    iget-object v3, p0, Lc6/d;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-static {v4, v3}, Li6/e;->e(ILi6/p;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_30
    move v1, v2

    :goto_31
    iget-object v3, p0, Lc6/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    iget-object v3, p0, Lc6/d;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Li6/e;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_4d
    add-int/2addr v0, v1

    iget-object v1, p0, Lc6/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lc6/d;->b:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/d;->h:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/d;->g:B

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
    iget-object v3, p0, Lc6/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lc6/d;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/u;

    invoke-virtual {v3}, Lc6/u;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lc6/d;->g:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_30

    iput-byte v2, p0, Lc6/d;->g:B

    return v2

    :cond_30
    iput-byte v1, p0, Lc6/d;->g:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/d$b;

    invoke-direct {p0}, Lc6/d$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/d$b;

    invoke-direct {v0}, Lc6/d$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/d$b;->h(Lc6/d;)Lc6/d$b;

    return-object v0
.end method
