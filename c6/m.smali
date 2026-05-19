.class public final Lc6/m;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Lc6/m;

.field public static k:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:Lc6/p;

.field public e:Lc6/o;

.field public f:Lc6/l;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:B

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/m$a;

    invoke-direct {v0}, Lc6/m$a;-><init>()V

    sput-object v0, Lc6/m;->k:Li6/r;

    new-instance v0, Lc6/m;

    invoke-direct {v0}, Lc6/m;-><init>()V

    sput-object v0, Lc6/m;->j:Lc6/m;

    sget-object v1, Lc6/p;->e:Lc6/p;

    iput-object v1, v0, Lc6/m;->d:Lc6/p;

    sget-object v1, Lc6/o;->e:Lc6/o;

    iput-object v1, v0, Lc6/m;->e:Lc6/o;

    sget-object v1, Lc6/l;->k:Lc6/l;

    iput-object v1, v0, Lc6/m;->f:Lc6/l;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc6/m;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/m;->h:B

    iput v0, p0, Lc6/m;->i:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/m;->b:Li6/c;

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

    iput-byte p3, p0, Lc6/m;->h:B

    iput p3, p0, Lc6/m;->i:I

    sget-object p3, Lc6/p;->e:Lc6/p;

    iput-object p3, p0, Lc6/m;->d:Lc6/p;

    sget-object p3, Lc6/o;->e:Lc6/o;

    iput-object p3, p0, Lc6/m;->e:Lc6/o;

    sget-object p3, Lc6/l;->k:Lc6/l;

    iput-object p3, p0, Lc6/m;->f:Lc6/l;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lc6/m;->g:Ljava/util/List;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_25
    :goto_25
    const/16 v4, 0x8

    if-nez v2, :cond_126

    :try_start_29
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v5

    if-eqz v5, :cond_ec

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v5, v6, :cond_be

    const/16 v6, 0x12

    if-eq v5, v6, :cond_8f

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_61

    const/16 v6, 0x22

    if-eq v5, v6, :cond_48

    invoke-virtual {p0, p1, v1, p2, v5}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    if-nez v4, :cond_25

    goto/16 :goto_ec

    :cond_48
    and-int/lit8 v5, v3, 0x8

    if-eq v5, v4, :cond_55

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lc6/m;->g:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    :cond_55
    iget-object v5, p0, Lc6/m;->g:Ljava/util/List;

    sget-object v6, Lc6/b;->P:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_61
    iget v5, p0, Lc6/m;->c:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_74

    iget-object v5, p0, Lc6/m;->f:Lc6/l;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lc6/l$b;

    invoke-direct {v7}, Lc6/l$b;-><init>()V

    invoke-virtual {v7, v5}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    :cond_74
    sget-object v5, Lc6/l;->l:Li6/r;

    invoke-virtual {p1, v5, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v5

    check-cast v5, Lc6/l;

    iput-object v5, p0, Lc6/m;->f:Lc6/l;

    if-eqz v7, :cond_89

    invoke-virtual {v7, v5}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    invoke-virtual {v7}, Lc6/l$b;->g()Lc6/l;

    move-result-object v5

    iput-object v5, p0, Lc6/m;->f:Lc6/l;

    :cond_89
    iget v5, p0, Lc6/m;->c:I

    or-int/2addr v5, v6

    iput v5, p0, Lc6/m;->c:I

    goto :goto_25

    :cond_8f
    iget v5, p0, Lc6/m;->c:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_a2

    iget-object v5, p0, Lc6/m;->e:Lc6/o;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lc6/o$b;

    invoke-direct {v7}, Lc6/o$b;-><init>()V

    invoke-virtual {v7, v5}, Lc6/o$b;->g(Lc6/o;)Lc6/o$b;

    :cond_a2
    sget-object v5, Lc6/o;->f:Li6/r;

    invoke-virtual {p1, v5, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v5

    check-cast v5, Lc6/o;

    iput-object v5, p0, Lc6/m;->e:Lc6/o;

    if-eqz v7, :cond_b7

    invoke-virtual {v7, v5}, Lc6/o$b;->g(Lc6/o;)Lc6/o$b;

    invoke-virtual {v7}, Lc6/o$b;->f()Lc6/o;

    move-result-object v5

    iput-object v5, p0, Lc6/m;->e:Lc6/o;

    :cond_b7
    iget v5, p0, Lc6/m;->c:I

    or-int/2addr v5, v6

    iput v5, p0, Lc6/m;->c:I

    goto/16 :goto_25

    :cond_be
    iget v5, p0, Lc6/m;->c:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_d0

    iget-object v5, p0, Lc6/m;->d:Lc6/p;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lc6/p$b;

    invoke-direct {v7}, Lc6/p$b;-><init>()V

    invoke-virtual {v7, v5}, Lc6/p$b;->g(Lc6/p;)Lc6/p$b;

    :cond_d0
    sget-object v5, Lc6/p;->f:Li6/r;

    invoke-virtual {p1, v5, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v5

    check-cast v5, Lc6/p;

    iput-object v5, p0, Lc6/m;->d:Lc6/p;

    if-eqz v7, :cond_e5

    invoke-virtual {v7, v5}, Lc6/p$b;->g(Lc6/p;)Lc6/p$b;

    invoke-virtual {v7}, Lc6/p$b;->f()Lc6/p;

    move-result-object v5

    iput-object v5, p0, Lc6/m;->d:Lc6/p;

    :cond_e5
    iget v5, p0, Lc6/m;->c:I

    or-int/2addr v5, v0

    iput v5, p0, Lc6/m;->c:I
    :try_end_ea
    .catch Li6/j; {:try_start_29 .. :try_end_ea} :catch_fe
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_ea} :catch_f1
    .catchall {:try_start_29 .. :try_end_ea} :catchall_ef

    goto/16 :goto_25

    :cond_ec
    :goto_ec
    move v2, v0

    goto/16 :goto_25

    :catchall_ef
    move-exception p1

    goto :goto_102

    :catch_f1
    move-exception p1

    :try_start_f2
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_fe
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_102
    .catchall {:try_start_f2 .. :try_end_102} :catchall_ef

    :goto_102
    and-int/lit8 p2, v3, 0x8

    if-ne p2, v4, :cond_10e

    iget-object p2, p0, Lc6/m;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/m;->g:Ljava/util/List;

    :cond_10e
    :try_start_10e
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_11a
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_11a

    :catchall_112
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/m;->b:Li6/c;

    throw p1

    :catch_11a
    :goto_11a
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/m;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_126
    and-int/lit8 p1, v3, 0x8

    if-ne p1, v4, :cond_132

    iget-object p1, p0, Lc6/m;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/m;->g:Ljava/util/List;

    :cond_132
    :try_start_132
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_13e
    .catchall {:try_start_132 .. :try_end_135} :catchall_136

    goto :goto_13e

    :catchall_136
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/m;->b:Li6/c;

    throw p1

    :catch_13e
    :goto_13e
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/m;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/m;->h:B

    iput p2, p0, Lc6/m;->i:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/m;->b:Li6/c;

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

    invoke-virtual {p0}, Lc6/m;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/m;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lc6/m;->d:Lc6/p;

    invoke-virtual {p1, v2, v1}, Li6/e;->r(ILi6/p;)V

    :cond_12
    iget v1, p0, Lc6/m;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lc6/m;->e:Lc6/o;

    invoke-virtual {p1, v2, v1}, Li6/e;->r(ILi6/p;)V

    :cond_1d
    iget v1, p0, Lc6/m;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_29

    const/4 v1, 0x3

    iget-object v3, p0, Lc6/m;->f:Lc6/l;

    invoke-virtual {p1, v1, v3}, Li6/e;->r(ILi6/p;)V

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    iget-object v3, p0, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_40

    iget-object v3, p0, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-virtual {p1, v2, v3}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_40
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/m;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/m;->j:Lc6/m;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lc6/m;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/m;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lc6/m;->d:Lc6/p;

    invoke-static {v1, v0}, Li6/e;->e(ILi6/p;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget v1, p0, Lc6/m;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_23

    iget-object v1, p0, Lc6/m;->e:Lc6/o;

    invoke-static {v3, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget v1, p0, Lc6/m;->c:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_31

    const/4 v1, 0x3

    iget-object v4, p0, Lc6/m;->f:Lc6/l;

    invoke-static {v1, v4}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    :goto_31
    iget-object v1, p0, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_49

    iget-object v1, p0, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/p;

    invoke-static {v3, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_49
    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc6/m;->b:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/m;->i:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/m;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/m;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-eqz v0, :cond_20

    iget-object v0, p0, Lc6/m;->e:Lc6/o;

    invoke-virtual {v0}, Lc6/o;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    iput-byte v2, p0, Lc6/m;->h:B

    return v2

    :cond_20
    iget v0, p0, Lc6/m;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    if-eqz v0, :cond_36

    iget-object v0, p0, Lc6/m;->f:Lc6/l;

    invoke-virtual {v0}, Lc6/l;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_36

    iput-byte v2, p0, Lc6/m;->h:B

    return v2

    :cond_36
    move v0, v2

    :goto_37
    iget-object v3, p0, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_53

    iget-object v3, p0, Lc6/m;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/b;

    invoke-virtual {v3}, Lc6/b;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_50

    iput-byte v2, p0, Lc6/m;->h:B

    return v2

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_53
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_5c

    iput-byte v2, p0, Lc6/m;->h:B

    return v2

    :cond_5c
    iput-byte v1, p0, Lc6/m;->h:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/m$b;

    invoke-direct {p0}, Lc6/m$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/m$b;

    invoke-direct {v0}, Lc6/m$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/m$b;->h(Lc6/m;)Lc6/m$b;

    return-object v0
.end method
