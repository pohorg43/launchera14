.class public final Lc6/l;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lc6/l;

.field public static l:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/n;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/r;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc6/t;

.field public h:Lc6/w;

.field public i:B

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/l$a;

    invoke-direct {v0}, Lc6/l$a;-><init>()V

    sput-object v0, Lc6/l;->l:Li6/r;

    new-instance v0, Lc6/l;

    invoke-direct {v0}, Lc6/l;-><init>()V

    sput-object v0, Lc6/l;->k:Lc6/l;

    invoke-virtual {v0}, Lc6/l;->m()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/l;->i:B

    iput v0, p0, Lc6/l;->j:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/l;->b:Li6/c;

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

    iput-byte p3, p0, Lc6/l;->i:B

    iput p3, p0, Lc6/l;->j:I

    invoke-virtual {p0}, Lc6/l;->m()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_16
    :goto_16
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v2, :cond_12f

    :try_start_1a
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v6

    if-eqz v6, :cond_dd

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_c3

    const/16 v7, 0x22

    if-eq v6, v7, :cond_a9

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_8f

    const/16 v7, 0xf2

    const/4 v8, 0x0

    if-eq v6, v7, :cond_66

    const/16 v7, 0x102

    if-eq v6, v7, :cond_3d

    invoke-virtual {p0, p1, v1, p2, v6}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_dd

    :cond_3d
    iget v6, p0, Lc6/l;->c:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_4b

    iget-object v6, p0, Lc6/l;->h:Lc6/w;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lc6/w;->e(Lc6/w;)Lc6/w$b;

    move-result-object v8

    :cond_4b
    sget-object v6, Lc6/w;->f:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    check-cast v6, Lc6/w;

    iput-object v6, p0, Lc6/l;->h:Lc6/w;

    if-eqz v8, :cond_60

    invoke-virtual {v8, v6}, Lc6/w$b;->g(Lc6/w;)Lc6/w$b;

    invoke-virtual {v8}, Lc6/w$b;->f()Lc6/w;

    move-result-object v6

    iput-object v6, p0, Lc6/l;->h:Lc6/w;

    :cond_60
    iget v6, p0, Lc6/l;->c:I

    or-int/2addr v6, v5

    iput v6, p0, Lc6/l;->c:I

    goto :goto_16

    :cond_66
    iget v6, p0, Lc6/l;->c:I

    and-int/2addr v6, v0

    if-ne v6, v0, :cond_74

    iget-object v6, p0, Lc6/l;->g:Lc6/t;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lc6/t;->e(Lc6/t;)Lc6/t$b;

    move-result-object v8

    :cond_74
    sget-object v6, Lc6/t;->h:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    check-cast v6, Lc6/t;

    iput-object v6, p0, Lc6/l;->g:Lc6/t;

    if-eqz v8, :cond_89

    invoke-virtual {v8, v6}, Lc6/t$b;->g(Lc6/t;)Lc6/t$b;

    invoke-virtual {v8}, Lc6/t$b;->f()Lc6/t;

    move-result-object v6

    iput-object v6, p0, Lc6/l;->g:Lc6/t;

    :cond_89
    iget v6, p0, Lc6/l;->c:I

    or-int/2addr v6, v0

    iput v6, p0, Lc6/l;->c:I

    goto :goto_16

    :cond_8f
    and-int/lit8 v6, v3, 0x4

    if-eq v6, v4, :cond_9c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/l;->f:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    :cond_9c
    iget-object v6, p0, Lc6/l;->f:Ljava/util/List;

    sget-object v7, Lc6/r;->p:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_a9
    and-int/lit8 v6, v3, 0x2

    if-eq v6, v5, :cond_b6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/l;->e:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_b6
    iget-object v6, p0, Lc6/l;->e:Ljava/util/List;

    sget-object v7, Lc6/n;->v:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_c3
    and-int/lit8 v6, v3, 0x1

    if-eq v6, v0, :cond_d0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc6/l;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    :cond_d0
    iget-object v6, p0, Lc6/l;->d:Ljava/util/List;

    sget-object v7, Lc6/i;->v:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catch Li6/j; {:try_start_1a .. :try_end_db} :catch_ef
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_db} :catch_e2
    .catchall {:try_start_1a .. :try_end_db} :catchall_e0

    goto/16 :goto_16

    :cond_dd
    :goto_dd
    move v2, v0

    goto/16 :goto_16

    :catchall_e0
    move-exception p1

    goto :goto_f3

    :catch_e2
    move-exception p1

    :try_start_e3
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_ef
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_f3
    .catchall {:try_start_e3 .. :try_end_f3} :catchall_e0

    :goto_f3
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_ff

    iget-object p2, p0, Lc6/l;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/l;->d:Ljava/util/List;

    :cond_ff
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v5, :cond_10b

    iget-object p2, p0, Lc6/l;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/l;->e:Ljava/util/List;

    :cond_10b
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v4, :cond_117

    iget-object p2, p0, Lc6/l;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/l;->f:Ljava/util/List;

    :cond_117
    :try_start_117
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_123
    .catchall {:try_start_117 .. :try_end_11a} :catchall_11b

    goto :goto_123

    :catchall_11b
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/l;->b:Li6/c;

    throw p1

    :catch_123
    :goto_123
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/l;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_12f
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_13b

    iget-object p1, p0, Lc6/l;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/l;->d:Ljava/util/List;

    :cond_13b
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v5, :cond_147

    iget-object p1, p0, Lc6/l;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/l;->e:Ljava/util/List;

    :cond_147
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v4, :cond_153

    iget-object p1, p0, Lc6/l;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/l;->f:Ljava/util/List;

    :cond_153
    :try_start_153
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_15f
    .catchall {:try_start_153 .. :try_end_156} :catchall_157

    goto :goto_15f

    :catchall_157
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/l;->b:Li6/c;

    throw p1

    :catch_15f
    :goto_15f
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/l;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/l;->i:B

    iput p2, p0, Lc6/l;->j:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/l;->b:Li6/c;

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

    invoke-virtual {p0}, Lc6/l;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    iget-object v3, p0, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    const/4 v3, 0x3

    iget-object v4, p0, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_20
    move v2, v1

    :goto_21
    iget-object v3, p0, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    const/4 v3, 0x4

    iget-object v4, p0, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_38
    :goto_38
    iget-object v2, p0, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    const/4 v2, 0x5

    iget-object v3, p0, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-virtual {p1, v2, v3}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_4f
    iget v1, p0, Lc6/l;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5c

    const/16 v1, 0x1e

    iget-object v2, p0, Lc6/l;->g:Lc6/t;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    :cond_5c
    iget v1, p0, Lc6/l;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_69

    const/16 v1, 0x20

    iget-object v2, p0, Lc6/l;->h:Lc6/w;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    :cond_69
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/l;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/l;->k:Lc6/l;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lc6/l;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_9
    iget-object v3, p0, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    const/4 v3, 0x3

    iget-object v4, p0, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-static {v3, v4}, Li6/e;->e(ILi6/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_22
    move v1, v0

    :goto_23
    iget-object v3, p0, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3c

    const/4 v3, 0x4

    iget-object v4, p0, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-static {v3, v4}, Li6/e;->e(ILi6/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3c
    :goto_3c
    iget-object v1, p0, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    const/4 v1, 0x5

    iget-object v3, p0, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-static {v1, v3}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_55
    iget v0, p0, Lc6/l;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_64

    const/16 v0, 0x1e

    iget-object v1, p0, Lc6/l;->g:Lc6/t;

    invoke-static {v0, v1}, Li6/e;->e(ILi6/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_64
    iget v0, p0, Lc6/l;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_73

    const/16 v0, 0x20

    iget-object v1, p0, Lc6/l;->h:Lc6/w;

    invoke-static {v0, v1}, Li6/e;->e(ILi6/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_73
    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lc6/l;->b:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/l;->j:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/l;->i:B

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
    iget-object v3, p0, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lc6/l;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/i;

    invoke-virtual {v3}, Lc6/i;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lc6/l;->i:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    move v0, v2

    :goto_28
    iget-object v3, p0, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lc6/l;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/n;

    invoke-virtual {v3}, Lc6/n;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_41

    iput-byte v2, p0, Lc6/l;->i:B

    return v2

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_44
    move v0, v2

    :goto_45
    iget-object v3, p0, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_61

    iget-object v3, p0, Lc6/l;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/r;

    invoke-virtual {v3}, Lc6/r;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5e

    iput-byte v2, p0, Lc6/l;->i:B

    return v2

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_61
    iget v0, p0, Lc6/l;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_68

    move v0, v1

    goto :goto_69

    :cond_68
    move v0, v2

    :goto_69
    if-eqz v0, :cond_76

    iget-object v0, p0, Lc6/l;->g:Lc6/t;

    invoke-virtual {v0}, Lc6/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_76

    iput-byte v2, p0, Lc6/l;->i:B

    return v2

    :cond_76
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_7f

    iput-byte v2, p0, Lc6/l;->i:B

    return v2

    :cond_7f
    iput-byte v1, p0, Lc6/l;->i:B

    return v1
.end method

.method public final m()V
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/l;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/l;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/l;->f:Ljava/util/List;

    sget-object v0, Lc6/t;->g:Lc6/t;

    iput-object v0, p0, Lc6/l;->g:Lc6/t;

    sget-object v0, Lc6/w;->e:Lc6/w;

    iput-object v0, p0, Lc6/l;->h:Lc6/w;

    return-void
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/l$b;

    invoke-direct {p0}, Lc6/l$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/l$b;

    invoke-direct {v0}, Lc6/l$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/l$b;->h(Lc6/l;)Lc6/l$b;

    return-object v0
.end method
