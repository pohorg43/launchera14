.class public final Lc6/h;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/h$b;,
        Lc6/h$c;
    }
.end annotation


# static fields
.field public static final l:Lc6/h;

.field public static m:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lc6/h$c;

.field public f:Lc6/q;

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/h;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/h;",
            ">;"
        }
    .end annotation
.end field

.field public j:B

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/h$a;

    invoke-direct {v0}, Lc6/h$a;-><init>()V

    sput-object v0, Lc6/h;->m:Li6/r;

    new-instance v0, Lc6/h;

    invoke-direct {v0}, Lc6/h;-><init>()V

    sput-object v0, Lc6/h;->l:Lc6/h;

    invoke-virtual {v0}, Lc6/h;->e()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/h;->j:B

    iput v0, p0, Lc6/h;->k:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/h;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/h;->j:B

    iput p3, p0, Lc6/h;->k:I

    invoke-virtual {p0}, Lc6/h;->e()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_16
    :goto_16
    const/16 v4, 0x40

    const/16 v5, 0x20

    if-nez v2, :cond_129

    :try_start_1c
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v6

    if-eqz v6, :cond_eb

    const/16 v7, 0x8

    if-eq v6, v7, :cond_de

    const/16 v8, 0x10

    if-eq v6, v8, :cond_d0

    const/16 v9, 0x18

    if-eq v6, v9, :cond_b4

    const/16 v9, 0x22

    if-eq v6, v9, :cond_84

    const/16 v7, 0x28

    if-eq v6, v7, :cond_78

    const/16 v7, 0x32

    if-eq v6, v7, :cond_5f

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_46

    invoke-virtual {p1, v6, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_eb

    :cond_46
    and-int/lit8 v6, v3, 0x40

    if-eq v6, v4, :cond_53

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/h;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    :cond_53
    iget-object v6, p0, Lc6/h;->i:Ljava/util/List;

    sget-object v7, Lc6/h;->m:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_5f
    and-int/lit8 v6, v3, 0x20

    if-eq v6, v5, :cond_6c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/h;->h:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_6c
    iget-object v6, p0, Lc6/h;->h:Ljava/util/List;

    sget-object v7, Lc6/h;->m:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_78
    iget v6, p0, Lc6/h;->b:I

    or-int/2addr v6, v8

    iput v6, p0, Lc6/h;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    iput v6, p0, Lc6/h;->g:I

    goto :goto_16

    :cond_84
    const/4 v6, 0x0

    iget v8, p0, Lc6/h;->b:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_98

    iget-object v6, p0, Lc6/h;->f:Lc6/q;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v6

    goto :goto_98

    :catchall_94
    move-exception p1

    goto :goto_fe

    :catch_96
    move-exception p1

    goto :goto_ee

    :cond_98
    :goto_98
    sget-object v8, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v8, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v8

    check-cast v8, Lc6/q;

    iput-object v8, p0, Lc6/h;->f:Lc6/q;

    if-eqz v6, :cond_ad

    invoke-virtual {v6, v8}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v6}, Lc6/q$c;->g()Lc6/q;

    move-result-object v6

    iput-object v6, p0, Lc6/h;->f:Lc6/q;

    :cond_ad
    iget v6, p0, Lc6/h;->b:I

    or-int/2addr v6, v7

    iput v6, p0, Lc6/h;->b:I

    goto/16 :goto_16

    :cond_b4
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-static {v7}, Lc6/h$c;->a(I)Lc6/h$c;

    move-result-object v8

    if-nez v8, :cond_c6

    invoke-virtual {v1, v6}, Li6/e;->y(I)V

    invoke-virtual {v1, v7}, Li6/e;->y(I)V

    goto/16 :goto_16

    :cond_c6
    iget v6, p0, Lc6/h;->b:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lc6/h;->b:I

    iput-object v8, p0, Lc6/h;->e:Lc6/h$c;

    goto/16 :goto_16

    :cond_d0
    iget v6, p0, Lc6/h;->b:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lc6/h;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    iput v6, p0, Lc6/h;->d:I

    goto/16 :goto_16

    :cond_de
    iget v6, p0, Lc6/h;->b:I

    or-int/2addr v6, v0

    iput v6, p0, Lc6/h;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    iput v6, p0, Lc6/h;->c:I
    :try_end_e9
    .catch Li6/j; {:try_start_1c .. :try_end_e9} :catch_fa
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_e9} :catch_96
    .catchall {:try_start_1c .. :try_end_e9} :catchall_94

    goto/16 :goto_16

    :cond_eb
    :goto_eb
    move v2, v0

    goto/16 :goto_16

    :goto_ee
    :try_start_ee
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_fa
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_fe
    .catchall {:try_start_ee .. :try_end_fe} :catchall_94

    :goto_fe
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v5, :cond_10a

    iget-object p2, p0, Lc6/h;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/h;->h:Ljava/util/List;

    :cond_10a
    and-int/lit8 p2, v3, 0x40

    if-ne p2, v4, :cond_116

    iget-object p2, p0, Lc6/h;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/h;->i:Ljava/util/List;

    :cond_116
    :try_start_116
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_122
    .catchall {:try_start_116 .. :try_end_119} :catchall_11a

    goto :goto_122

    :catchall_11a
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/h;->a:Li6/c;

    throw p1

    :catch_122
    :goto_122
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/h;->a:Li6/c;

    throw p1

    :cond_129
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v5, :cond_135

    iget-object p1, p0, Lc6/h;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->h:Ljava/util/List;

    :cond_135
    and-int/lit8 p1, v3, 0x40

    if-ne p1, v4, :cond_141

    iget-object p1, p0, Lc6/h;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->i:Ljava/util/List;

    :cond_141
    :try_start_141
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_14d
    .catchall {:try_start_141 .. :try_end_144} :catchall_145

    goto :goto_14d

    :catchall_145
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/h;->a:Li6/c;

    throw p1

    :catch_14d
    :goto_14d
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/h;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/h;->j:B

    iput p2, p0, Lc6/h;->k:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/h;->a:Li6/c;

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

    invoke-virtual {p0}, Lc6/h;->getSerializedSize()I

    iget v0, p0, Lc6/h;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lc6/h;->c:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_e
    iget v0, p0, Lc6/h;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    iget v0, p0, Lc6/h;->d:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_19
    iget v0, p0, Lc6/h;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_27

    const/4 v0, 0x3

    iget-object v2, p0, Lc6/h;->e:Lc6/h$c;

    iget v2, v2, Lc6/h$c;->a:I

    invoke-virtual {p1, v0, v2}, Li6/e;->n(II)V

    :cond_27
    iget v0, p0, Lc6/h;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_33

    iget-object v0, p0, Lc6/h;->f:Lc6/q;

    invoke-virtual {p1, v1, v0}, Li6/e;->r(ILi6/p;)V

    :cond_33
    iget v0, p0, Lc6/h;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_40

    const/4 v0, 0x5

    iget v1, p0, Lc6/h;->g:I

    invoke-virtual {p1, v0, v1}, Li6/e;->p(II)V

    :cond_40
    const/4 v0, 0x0

    move v1, v0

    :goto_42
    iget-object v2, p0, Lc6/h;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    const/4 v2, 0x6

    iget-object v3, p0, Lc6/h;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-virtual {p1, v2, v3}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_59
    :goto_59
    iget-object v1, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_70

    const/4 v1, 0x7

    iget-object v2, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_70
    iget-object p0, p0, Lc6/h;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public final e()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lc6/h;->c:I

    iput v0, p0, Lc6/h;->d:I

    sget-object v1, Lc6/h$c;->b:Lc6/h$c;

    iput-object v1, p0, Lc6/h;->e:Lc6/h$c;

    sget-object v1, Lc6/q;->t:Lc6/q;

    iput-object v1, p0, Lc6/h;->f:Lc6/q;

    iput v0, p0, Lc6/h;->g:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/h;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/h;->i:Ljava/util/List;

    return-void
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lc6/h;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/h;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lc6/h;->c:I

    invoke-static {v1, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget v1, p0, Lc6/h;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_23

    iget v1, p0, Lc6/h;->d:I

    invoke-static {v3, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget v1, p0, Lc6/h;->b:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_33

    const/4 v1, 0x3

    iget-object v4, p0, Lc6/h;->e:Lc6/h$c;

    iget v4, v4, Lc6/h$c;->a:I

    invoke-static {v1, v4}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_33
    iget v1, p0, Lc6/h;->b:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_41

    iget-object v1, p0, Lc6/h;->f:Lc6/q;

    invoke-static {v3, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_41
    iget v1, p0, Lc6/h;->b:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_50

    const/4 v1, 0x5

    iget v3, p0, Lc6/h;->g:I

    invoke-static {v1, v3}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_50
    move v1, v2

    :goto_51
    iget-object v3, p0, Lc6/h;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6a

    const/4 v3, 0x6

    iget-object v4, p0, Lc6/h;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-static {v3, v4}, Li6/e;->e(ILi6/p;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_6a
    :goto_6a
    iget-object v1, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_83

    const/4 v1, 0x7

    iget-object v3, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-static {v1, v3}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_83
    iget-object v1, p0, Lc6/h;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/h;->k:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/h;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/h;->b:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    if-eqz v0, :cond_21

    iget-object v0, p0, Lc6/h;->f:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_21

    iput-byte v2, p0, Lc6/h;->j:B

    return v2

    :cond_21
    move v0, v2

    :goto_22
    iget-object v3, p0, Lc6/h;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    iget-object v3, p0, Lc6/h;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/h;

    invoke-virtual {v3}, Lc6/h;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3b

    iput-byte v2, p0, Lc6/h;->j:B

    return v2

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3e
    move v0, v2

    :goto_3f
    iget-object v3, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5b

    iget-object v3, p0, Lc6/h;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/h;

    invoke-virtual {v3}, Lc6/h;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_58

    iput-byte v2, p0, Lc6/h;->j:B

    return v2

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_5b
    iput-byte v1, p0, Lc6/h;->j:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/h$b;

    invoke-direct {p0}, Lc6/h$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/h$b;

    invoke-direct {v0}, Lc6/h$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/h$b;->g(Lc6/h;)Lc6/h$b;

    return-object v0
.end method
