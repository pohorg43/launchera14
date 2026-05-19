.class public final Lc6/s;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/s$b;,
        Lc6/s$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Lc6/s;

.field public static n:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Lc6/s$c;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:B

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/s$a;

    invoke-direct {v0}, Lc6/s$a;-><init>()V

    sput-object v0, Lc6/s;->n:Li6/r;

    new-instance v0, Lc6/s;

    invoke-direct {v0}, Lc6/s;-><init>()V

    sput-object v0, Lc6/s;->m:Lc6/s;

    invoke-virtual {v0}, Lc6/s;->m()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc6/s;->j:I

    iput-byte v0, p0, Lc6/s;->k:B

    iput v0, p0, Lc6/s;->l:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/s;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 p3, -0x1

    iput p3, p0, Lc6/s;->j:I

    iput-byte p3, p0, Lc6/s;->k:B

    iput p3, p0, Lc6/s;->l:I

    invoke-virtual {p0}, Lc6/s;->m()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_18
    :goto_18
    const/16 v4, 0x10

    const/16 v5, 0x20

    if-nez v2, :cond_138

    :try_start_1e
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v6

    if-eqz v6, :cond_f2

    const/16 v7, 0x8

    if-eq v6, v7, :cond_e5

    if-eq v6, v4, :cond_d7

    const/16 v8, 0x18

    if-eq v6, v8, :cond_c9

    if-eq v6, v5, :cond_ae

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_94

    const/16 v7, 0x30

    if-eq v6, v7, :cond_79

    const/16 v7, 0x32

    if-eq v6, v7, :cond_44

    invoke-virtual {p0, p1, v1, p2, v6}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_f2

    :cond_44
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-virtual {p1, v6}, Li6/d;->d(I)I

    move-result v6

    and-int/lit8 v7, v3, 0x20

    if-eq v7, v5, :cond_5f

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v7

    if-lez v7, :cond_5f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc6/s;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v7

    if-lez v7, :cond_73

    iget-object v7, p0, Lc6/s;->i:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_73
    iput v6, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto :goto_18

    :cond_79
    and-int/lit8 v6, v3, 0x20

    if-eq v6, v5, :cond_86

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/s;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_86
    iget-object v6, p0, Lc6/s;->i:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_94
    and-int/lit8 v6, v3, 0x10

    if-eq v6, v4, :cond_a1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/s;->h:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    :cond_a1
    iget-object v6, p0, Lc6/s;->h:Ljava/util/List;

    sget-object v7, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_ae
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    invoke-static {v8}, Lc6/s$c;->a(I)Lc6/s$c;

    move-result-object v9

    if-nez v9, :cond_c0

    invoke-virtual {v1, v6}, Li6/e;->y(I)V

    invoke-virtual {v1, v8}, Li6/e;->y(I)V

    goto/16 :goto_18

    :cond_c0
    iget v6, p0, Lc6/s;->c:I

    or-int/2addr v6, v7

    iput v6, p0, Lc6/s;->c:I

    iput-object v9, p0, Lc6/s;->g:Lc6/s$c;

    goto/16 :goto_18

    :cond_c9
    iget v6, p0, Lc6/s;->c:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lc6/s;->c:I

    invoke-virtual {p1}, Li6/d;->e()Z

    move-result v6

    iput-boolean v6, p0, Lc6/s;->f:Z

    goto/16 :goto_18

    :cond_d7
    iget v6, p0, Lc6/s;->c:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lc6/s;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    iput v6, p0, Lc6/s;->e:I

    goto/16 :goto_18

    :cond_e5
    iget v6, p0, Lc6/s;->c:I

    or-int/2addr v6, v0

    iput v6, p0, Lc6/s;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    iput v6, p0, Lc6/s;->d:I
    :try_end_f0
    .catch Li6/j; {:try_start_1e .. :try_end_f0} :catch_104
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_f0} :catch_f7
    .catchall {:try_start_1e .. :try_end_f0} :catchall_f5

    goto/16 :goto_18

    :cond_f2
    :goto_f2
    move v2, v0

    goto/16 :goto_18

    :catchall_f5
    move-exception p1

    goto :goto_108

    :catch_f7
    move-exception p1

    :try_start_f8
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_104
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_108
    .catchall {:try_start_f8 .. :try_end_108} :catchall_f5

    :goto_108
    and-int/lit8 p2, v3, 0x10

    if-ne p2, v4, :cond_114

    iget-object p2, p0, Lc6/s;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/s;->h:Ljava/util/List;

    :cond_114
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v5, :cond_120

    iget-object p2, p0, Lc6/s;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/s;->i:Ljava/util/List;

    :cond_120
    :try_start_120
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_12c
    .catchall {:try_start_120 .. :try_end_123} :catchall_124

    goto :goto_12c

    :catchall_124
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/s;->b:Li6/c;

    throw p1

    :catch_12c
    :goto_12c
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/s;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_138
    and-int/lit8 p1, v3, 0x10

    if-ne p1, v4, :cond_144

    iget-object p1, p0, Lc6/s;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/s;->h:Ljava/util/List;

    :cond_144
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v5, :cond_150

    iget-object p1, p0, Lc6/s;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/s;->i:Ljava/util/List;

    :cond_150
    :try_start_150
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_15c
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    goto :goto_15c

    :catchall_154
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/s;->b:Li6/c;

    throw p1

    :catch_15c
    :goto_15c
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/s;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput p2, p0, Lc6/s;->j:I

    iput-byte p2, p0, Lc6/s;->k:B

    iput p2, p0, Lc6/s;->l:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/s;->b:Li6/c;

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

    invoke-virtual {p0}, Lc6/s;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/s;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget v1, p0, Lc6/s;->d:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_12
    iget v1, p0, Lc6/s;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d

    iget v1, p0, Lc6/s;->e:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_1d
    iget v1, p0, Lc6/s;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2d

    iget-boolean v1, p0, Lc6/s;->f:Z

    const/16 v3, 0x18

    invoke-virtual {p1, v3}, Li6/e;->y(I)V

    invoke-virtual {p1, v1}, Li6/e;->t(I)V

    :cond_2d
    iget v1, p0, Lc6/s;->c:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3b

    iget-object v1, p0, Lc6/s;->g:Lc6/s$c;

    iget v1, v1, Lc6/s$c;->a:I

    invoke-virtual {p1, v2, v1}, Li6/e;->n(II)V

    :cond_3b
    const/4 v1, 0x0

    move v2, v1

    :goto_3d
    iget-object v3, p0, Lc6/s;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    const/4 v3, 0x5

    iget-object v4, p0, Lc6/s;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_54
    iget-object v2, p0, Lc6/s;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_66

    const/16 v2, 0x32

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    iget v2, p0, Lc6/s;->j:I

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    :cond_66
    :goto_66
    iget-object v2, p0, Lc6/s;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_80

    iget-object v2, p0, Lc6/s;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Li6/e;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_80
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/s;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/s;->m:Lc6/s;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lc6/s;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/s;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lc6/s;->d:I

    invoke-static {v1, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget v3, p0, Lc6/s;->c:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_23

    iget v3, p0, Lc6/s;->e:I

    invoke-static {v4, v3}, Li6/e;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_23
    iget v3, p0, Lc6/s;->c:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_30

    const/4 v3, 0x3

    invoke-static {v3}, Li6/e;->i(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    :cond_30
    iget v1, p0, Lc6/s;->c:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_40

    iget-object v1, p0, Lc6/s;->g:Lc6/s$c;

    iget v1, v1, Lc6/s$c;->a:I

    invoke-static {v4, v1}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    move v1, v2

    :goto_41
    iget-object v3, p0, Lc6/s;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5a

    const/4 v3, 0x5

    iget-object v4, p0, Lc6/s;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-static {v3, v4}, Li6/e;->e(ILi6/p;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_5a
    move v1, v2

    :goto_5b
    iget-object v3, p0, Lc6/s;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_77

    iget-object v3, p0, Lc6/s;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Li6/e;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_77
    add-int/2addr v0, v1

    iget-object v2, p0, Lc6/s;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_87

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Li6/e;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_87
    iput v1, p0, Lc6/s;->j:I

    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc6/s;->b:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/s;->l:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/s;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/s;->c:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    if-nez v3, :cond_18

    iput-byte v2, p0, Lc6/s;->k:B

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

    iput-byte v2, p0, Lc6/s;->k:B

    return v2

    :cond_24
    move v0, v2

    :goto_25
    iget-object v3, p0, Lc6/s;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_41

    iget-object v3, p0, Lc6/s;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q;

    invoke-virtual {v3}, Lc6/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3e

    iput-byte v2, p0, Lc6/s;->k:B

    return v2

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_41
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_4a

    iput-byte v2, p0, Lc6/s;->k:B

    return v2

    :cond_4a
    iput-byte v1, p0, Lc6/s;->k:B

    return v1
.end method

.method public final m()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lc6/s;->d:I

    iput v0, p0, Lc6/s;->e:I

    iput-boolean v0, p0, Lc6/s;->f:Z

    sget-object v0, Lc6/s$c;->d:Lc6/s$c;

    iput-object v0, p0, Lc6/s;->g:Lc6/s$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/s;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/s;->i:Ljava/util/List;

    return-void
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/s$b;

    invoke-direct {p0}, Lc6/s$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/s$b;

    invoke-direct {v0}, Lc6/s$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/s$b;->h(Lc6/s;)Lc6/s$b;

    return-object v0
.end method
