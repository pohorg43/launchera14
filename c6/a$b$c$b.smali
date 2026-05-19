.class public final Lc6/a$b$c$b;
.super Li6/h$b;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/a$b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$b<",
        "Lc6/a$b$c;",
        "Lc6/a$b$c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lc6/a$b$c$c;

.field public d:J

.field public e:F

.field public f:D

.field public g:I

.field public h:I

.field public i:I

.field public j:Lc6/a;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/a$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$b;-><init>()V

    sget-object v0, Lc6/a$b$c$c;->b:Lc6/a$b$c$c;

    iput-object v0, p0, Lc6/a$b$c$b;->c:Lc6/a$b$c$c;

    sget-object v0, Lc6/a;->g:Lc6/a;

    iput-object v0, p0, Lc6/a$b$c$b;->j:Lc6/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li6/d;Li6/f;)Li6/p$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lc6/a$b$c$b;->h(Li6/d;Li6/f;)Lc6/a$b$c$b;

    return-object p0
.end method

.method public build()Li6/p;
    .registers 2

    invoke-virtual {p0}, Lc6/a$b$c$b;->f()Lc6/a$b$c;

    move-result-object p0

    invoke-virtual {p0}, Lc6/a$b$c;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Li6/v;

    invoke-direct {p0}, Li6/v;-><init>()V

    throw p0
.end method

.method public bridge synthetic c(Li6/d;Li6/f;)Li6/a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lc6/a$b$c$b;->h(Li6/d;Li6/f;)Lc6/a$b$c$b;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lc6/a$b$c$b;

    invoke-direct {v0}, Lc6/a$b$c$b;-><init>()V

    invoke-virtual {p0}, Lc6/a$b$c$b;->f()Lc6/a$b$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    return-object v0
.end method

.method public d()Li6/h$b;
    .registers 2

    new-instance v0, Lc6/a$b$c$b;

    invoke-direct {v0}, Lc6/a$b$c$b;-><init>()V

    invoke-virtual {p0}, Lc6/a$b$c$b;->f()Lc6/a$b$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    return-object v0
.end method

.method public bridge synthetic e(Li6/h;)Li6/h$b;
    .registers 2

    check-cast p1, Lc6/a$b$c;

    invoke-virtual {p0, p1}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    return-object p0
.end method

.method public f()Lc6/a$b$c;
    .registers 7

    new-instance v0, Lc6/a$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc6/a$b$c;-><init>(Li6/h$b;La4/c;)V

    iget v1, p0, Lc6/a$b$c$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-object v2, p0, Lc6/a$b$c$b;->c:Lc6/a$b$c$c;

    iput-object v2, v0, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    or-int/lit8 v3, v3, 0x2

    :cond_1a
    iget-wide v4, p0, Lc6/a$b$c$b;->d:J

    iput-wide v4, v0, Lc6/a$b$c;->d:J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_25

    or-int/lit8 v3, v3, 0x4

    :cond_25
    iget v2, p0, Lc6/a$b$c$b;->e:F

    iput v2, v0, Lc6/a$b$c;->e:F

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_31

    or-int/lit8 v3, v3, 0x8

    :cond_31
    iget-wide v4, p0, Lc6/a$b$c$b;->f:D

    iput-wide v4, v0, Lc6/a$b$c;->f:D

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_3d

    or-int/lit8 v3, v3, 0x10

    :cond_3d
    iget v2, p0, Lc6/a$b$c$b;->g:I

    iput v2, v0, Lc6/a$b$c;->g:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_49

    or-int/lit8 v3, v3, 0x20

    :cond_49
    iget v2, p0, Lc6/a$b$c$b;->h:I

    iput v2, v0, Lc6/a$b$c;->h:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_55

    or-int/lit8 v3, v3, 0x40

    :cond_55
    iget v2, p0, Lc6/a$b$c$b;->i:I

    iput v2, v0, Lc6/a$b$c;->i:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_61

    or-int/lit16 v3, v3, 0x80

    :cond_61
    iget-object v2, p0, Lc6/a$b$c$b;->j:Lc6/a;

    iput-object v2, v0, Lc6/a$b$c;->j:Lc6/a;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_79

    iget-object v2, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    iget v2, p0, Lc6/a$b$c$b;->b:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lc6/a$b$c$b;->b:I

    :cond_79
    iget-object v2, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    iput-object v2, v0, Lc6/a$b$c;->k:Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_85

    or-int/lit16 v3, v3, 0x100

    :cond_85
    iget v2, p0, Lc6/a$b$c$b;->l:I

    iput v2, v0, Lc6/a$b$c;->l:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_90

    or-int/lit16 v3, v3, 0x200

    :cond_90
    iget p0, p0, Lc6/a$b$c$b;->m:I

    iput p0, v0, Lc6/a$b$c;->m:I

    iput v3, v0, Lc6/a$b$c;->b:I

    return-object v0
.end method

.method public g(Lc6/a$b$c;)Lc6/a$b$c$b;
    .registers 9

    sget-object v0, Lc6/a$b$c;->p:Lc6/a$b$c;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p1, Lc6/a$b$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_1d

    iget-object v0, p1, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Lc6/a$b$c$b;->b:I

    iput-object v0, p0, Lc6/a$b$c$b;->c:Lc6/a$b$c$c;

    :cond_1d
    iget v0, p1, Lc6/a$b$c;->b:I

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    move v3, v1

    goto :goto_27

    :cond_26
    move v3, v2

    :goto_27
    if-eqz v3, :cond_32

    iget-wide v5, p1, Lc6/a$b$c;->d:J

    iget v3, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lc6/a$b$c$b;->b:I

    iput-wide v5, p0, Lc6/a$b$c$b;->d:J

    :cond_32
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_39

    move v3, v1

    goto :goto_3a

    :cond_39
    move v3, v2

    :goto_3a
    if-eqz v3, :cond_45

    iget v3, p1, Lc6/a$b$c;->e:F

    iget v5, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/a$b$c$b;->b:I

    iput v3, p0, Lc6/a$b$c$b;->e:F

    :cond_45
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4d

    move v3, v1

    goto :goto_4e

    :cond_4d
    move v3, v2

    :goto_4e
    if-eqz v3, :cond_59

    iget-wide v5, p1, Lc6/a$b$c;->f:D

    iget v3, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lc6/a$b$c$b;->b:I

    iput-wide v5, p0, Lc6/a$b$c$b;->f:D

    :cond_59
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_61

    move v3, v1

    goto :goto_62

    :cond_61
    move v3, v2

    :goto_62
    if-eqz v3, :cond_6d

    iget v3, p1, Lc6/a$b$c;->g:I

    iget v5, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/a$b$c$b;->b:I

    iput v3, p0, Lc6/a$b$c$b;->g:I

    :cond_6d
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_75

    move v3, v1

    goto :goto_76

    :cond_75
    move v3, v2

    :goto_76
    if-eqz v3, :cond_81

    iget v3, p1, Lc6/a$b$c;->h:I

    iget v5, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/a$b$c$b;->b:I

    iput v3, p0, Lc6/a$b$c$b;->h:I

    :cond_81
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_89

    move v3, v1

    goto :goto_8a

    :cond_89
    move v3, v2

    :goto_8a
    if-eqz v3, :cond_95

    iget v3, p1, Lc6/a$b$c;->i:I

    iget v5, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lc6/a$b$c$b;->b:I

    iput v3, p0, Lc6/a$b$c$b;->i:I

    :cond_95
    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9c

    move v0, v1

    goto :goto_9d

    :cond_9c
    move v0, v2

    :goto_9d
    if-eqz v0, :cond_c5

    iget-object v0, p1, Lc6/a$b$c;->j:Lc6/a;

    iget v4, p0, Lc6/a$b$c$b;->b:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_be

    iget-object v4, p0, Lc6/a$b$c$b;->j:Lc6/a;

    sget-object v5, Lc6/a;->g:Lc6/a;

    if-eq v4, v5, :cond_be

    new-instance v5, Lc6/a$c;

    invoke-direct {v5}, Lc6/a$c;-><init>()V

    invoke-virtual {v5, v4}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    invoke-virtual {v5, v0}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    invoke-virtual {v5}, Lc6/a$c;->f()Lc6/a;

    move-result-object v0

    iput-object v0, p0, Lc6/a$b$c$b;->j:Lc6/a;

    goto :goto_c0

    :cond_be
    iput-object v0, p0, Lc6/a$b$c$b;->j:Lc6/a;

    :goto_c0
    iget v0, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/a$b$c$b;->b:I

    :cond_c5
    iget-object v0, p1, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x100

    if-nez v0, :cond_fc

    iget-object v0, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lc6/a$b$c;->k:Ljava/util/List;

    iput-object v0, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    iget v0, p0, Lc6/a$b$c$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lc6/a$b$c$b;->b:I

    goto :goto_fc

    :cond_e2
    iget v0, p0, Lc6/a$b$c$b;->b:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_f5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    iget v0, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Lc6/a$b$c$b;->b:I

    :cond_f5
    iget-object v0, p0, Lc6/a$b$c$b;->k:Ljava/util/List;

    iget-object v4, p1, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_fc
    :goto_fc
    iget v0, p1, Lc6/a$b$c;->b:I

    and-int/lit16 v4, v0, 0x100

    if-ne v4, v3, :cond_104

    move v3, v1

    goto :goto_105

    :cond_104
    move v3, v2

    :goto_105
    const/16 v4, 0x200

    if-eqz v3, :cond_112

    iget v3, p1, Lc6/a$b$c;->l:I

    iget v5, p0, Lc6/a$b$c$b;->b:I

    or-int/2addr v5, v4

    iput v5, p0, Lc6/a$b$c$b;->b:I

    iput v3, p0, Lc6/a$b$c$b;->l:I

    :cond_112
    and-int/2addr v0, v4

    if-ne v0, v4, :cond_116

    goto :goto_117

    :cond_116
    move v1, v2

    :goto_117
    if-eqz v1, :cond_123

    iget v0, p1, Lc6/a$b$c;->m:I

    iget v1, p0, Lc6/a$b$c$b;->b:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lc6/a$b$c$b;->b:I

    iput v0, p0, Lc6/a$b$c$b;->m:I

    :cond_123
    iget-object v0, p0, Li6/h$b;->a:Li6/c;

    iget-object p1, p1, Lc6/a$b$c;->a:Li6/c;

    invoke-virtual {v0, p1}, Li6/c;->c(Li6/c;)Li6/c;

    move-result-object p1

    iput-object p1, p0, Li6/h$b;->a:Li6/c;

    return-object p0
.end method

.method public h(Li6/d;Li6/f;)Lc6/a$b$c$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lc6/a$b$c;->q:Li6/r;

    check-cast v1, Lc6/a$b$c$a;

    invoke-virtual {v1, p1, p2}, Lc6/a$b$c$a;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/a$b$c;
    :try_end_b
    .catch Li6/j; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    :cond_10
    return-object p0

    :catch_11
    move-exception p1

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_1c

    :goto_15
    :try_start_15
    iget-object p2, p1, Li6/j;->a:Li6/p;

    check-cast p2, Lc6/a$b$c;
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_13

    :try_start_19
    throw p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    move-object v0, p2

    :goto_1c
    if-eqz v0, :cond_21

    invoke-virtual {p0, v0}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    :cond_21
    throw p1
.end method
