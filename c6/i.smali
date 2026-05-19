.class public final Lc6/i;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final u:Lc6/i;

.field public static v:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lc6/q;

.field public h:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/s;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lc6/q;

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/u;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lc6/t;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lc6/e;

.field public s:B

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/i$a;

    invoke-direct {v0}, Lc6/i$a;-><init>()V

    sput-object v0, Lc6/i;->v:Li6/r;

    new-instance v0, Lc6/i;

    invoke-direct {v0}, Lc6/i;-><init>()V

    sput-object v0, Lc6/i;->u:Lc6/i;

    invoke-virtual {v0}, Lc6/i;->p()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc6/i;->n:I

    iput-byte v0, p0, Lc6/i;->s:B

    iput v0, p0, Lc6/i;->t:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/i;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 p3, -0x1

    iput p3, p0, Lc6/i;->n:I

    iput-byte p3, p0, Lc6/i;->s:B

    iput p3, p0, Lc6/i;->t:I

    invoke-virtual {p0}, Lc6/i;->p()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_18
    :goto_18
    const/16 v4, 0x400

    const/16 v5, 0x100

    const/16 v6, 0x20

    const/16 v7, 0x1000

    const/16 v8, 0x200

    if-nez v2, :cond_287

    :try_start_24
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_2dc

    invoke-virtual {p0, p1, v1, p2, v9}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    goto/16 :goto_21e

    :sswitch_32
    iget v9, p0, Lc6/i;->c:I

    and-int/2addr v9, v5

    if-ne v9, v5, :cond_44

    iget-object v9, p0, Lc6/i;->r:Lc6/e;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lc6/e$b;

    invoke-direct {v10}, Lc6/e$b;-><init>()V

    invoke-virtual {v10, v9}, Lc6/e$b;->g(Lc6/e;)Lc6/e$b;

    :cond_44
    sget-object v9, Lc6/e;->f:Li6/r;

    invoke-virtual {p1, v9, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v9

    check-cast v9, Lc6/e;

    iput-object v9, p0, Lc6/i;->r:Lc6/e;

    if-eqz v10, :cond_59

    invoke-virtual {v10, v9}, Lc6/e$b;->g(Lc6/e;)Lc6/e$b;

    invoke-virtual {v10}, Lc6/e$b;->f()Lc6/e;

    move-result-object v9

    iput-object v9, p0, Lc6/i;->r:Lc6/e;

    :cond_59
    iget v9, p0, Lc6/i;->c:I

    or-int/2addr v9, v5

    iput v9, p0, Lc6/i;->c:I

    goto :goto_18

    :sswitch_5f
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    invoke-virtual {p1, v9}, Li6/d;->d(I)I

    move-result v9

    and-int/lit16 v10, v3, 0x1000

    if-eq v10, v7, :cond_7a

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v10

    if-lez v10, :cond_7a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lc6/i;->q:Ljava/util/List;

    or-int/lit16 v3, v3, 0x1000

    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v10

    if-lez v10, :cond_8e

    iget-object v10, p0, Lc6/i;->q:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_8e
    iput v9, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto :goto_18

    :sswitch_94
    and-int/lit16 v9, v3, 0x1000

    if-eq v9, v7, :cond_a1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc6/i;->q:Ljava/util/List;

    or-int/lit16 v3, v3, 0x1000

    :cond_a1
    iget-object v9, p0, Lc6/i;->q:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_b0
    iget v9, p0, Lc6/i;->c:I

    const/16 v11, 0x80

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_c0

    iget-object v9, p0, Lc6/i;->p:Lc6/t;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lc6/t;->e(Lc6/t;)Lc6/t$b;

    move-result-object v10

    :cond_c0
    sget-object v9, Lc6/t;->h:Li6/r;

    invoke-virtual {p1, v9, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v9

    check-cast v9, Lc6/t;

    iput-object v9, p0, Lc6/i;->p:Lc6/t;

    if-eqz v10, :cond_d5

    invoke-virtual {v10, v9}, Lc6/t$b;->g(Lc6/t;)Lc6/t$b;

    invoke-virtual {v10}, Lc6/t$b;->f()Lc6/t;

    move-result-object v9

    iput-object v9, p0, Lc6/i;->p:Lc6/t;

    :cond_d5
    iget v9, p0, Lc6/i;->c:I

    or-int/2addr v9, v11

    iput v9, p0, Lc6/i;->c:I

    goto/16 :goto_18

    :sswitch_dc
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    invoke-virtual {p1, v9}, Li6/d;->d(I)I

    move-result v9

    and-int/lit16 v10, v3, 0x200

    if-eq v10, v8, :cond_f7

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v10

    if-lez v10, :cond_f7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lc6/i;->m:Ljava/util/List;

    or-int/lit16 v3, v3, 0x200

    :cond_f7
    :goto_f7
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v10

    if-lez v10, :cond_10b

    iget-object v10, p0, Lc6/i;->m:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    :cond_10b
    iput v9, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto/16 :goto_18

    :sswitch_112
    and-int/lit16 v9, v3, 0x200

    if-eq v9, v8, :cond_11f

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc6/i;->m:Ljava/util/List;

    or-int/lit16 v3, v3, 0x200

    :cond_11f
    iget-object v9, p0, Lc6/i;->m:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_12e
    and-int/lit16 v9, v3, 0x100

    if-eq v9, v5, :cond_13b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc6/i;->l:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_13b
    iget-object v9, p0, Lc6/i;->l:Ljava/util/List;

    sget-object v10, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v10, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_148
    iget v9, p0, Lc6/i;->c:I

    or-int/2addr v9, v0

    iput v9, p0, Lc6/i;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    iput v9, p0, Lc6/i;->d:I

    goto/16 :goto_18

    :sswitch_155
    iget v9, p0, Lc6/i;->c:I

    or-int/lit8 v9, v9, 0x40

    iput v9, p0, Lc6/i;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    iput v9, p0, Lc6/i;->k:I

    goto/16 :goto_18

    :sswitch_163
    iget v9, p0, Lc6/i;->c:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lc6/i;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    iput v9, p0, Lc6/i;->h:I

    goto/16 :goto_18

    :sswitch_171
    and-int/lit16 v9, v3, 0x400

    if-eq v9, v4, :cond_17e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc6/i;->o:Ljava/util/List;

    or-int/lit16 v3, v3, 0x400

    :cond_17e
    iget-object v9, p0, Lc6/i;->o:Ljava/util/List;

    sget-object v10, Lc6/u;->m:Li6/r;

    invoke-virtual {p1, v10, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_18b
    iget v9, p0, Lc6/i;->c:I

    and-int/2addr v9, v6

    if-ne v9, v6, :cond_1a0

    iget-object v9, p0, Lc6/i;->j:Lc6/q;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v10

    goto :goto_1a0

    :catchall_19a
    move-exception p1

    goto/16 :goto_233

    :catch_19d
    move-exception p1

    goto/16 :goto_223

    :cond_1a0
    :goto_1a0
    sget-object v9, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v9, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v9

    check-cast v9, Lc6/q;

    iput-object v9, p0, Lc6/i;->j:Lc6/q;

    if-eqz v10, :cond_1b5

    invoke-virtual {v10, v9}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v10}, Lc6/q$c;->g()Lc6/q;

    move-result-object v9

    iput-object v9, p0, Lc6/i;->j:Lc6/q;

    :cond_1b5
    iget v9, p0, Lc6/i;->c:I

    or-int/2addr v9, v6

    iput v9, p0, Lc6/i;->c:I

    goto/16 :goto_18

    :sswitch_1bc
    and-int/lit8 v9, v3, 0x20

    if-eq v9, v6, :cond_1c9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc6/i;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_1c9
    iget-object v9, p0, Lc6/i;->i:Ljava/util/List;

    sget-object v10, Lc6/s;->n:Li6/r;

    invoke-virtual {p1, v10, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_1d6
    iget v9, p0, Lc6/i;->c:I

    const/16 v11, 0x8

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_1e6

    iget-object v9, p0, Lc6/i;->g:Lc6/q;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v10

    :cond_1e6
    sget-object v9, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v9, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v9

    check-cast v9, Lc6/q;

    iput-object v9, p0, Lc6/i;->g:Lc6/q;

    if-eqz v10, :cond_1fb

    invoke-virtual {v10, v9}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v10}, Lc6/q$c;->g()Lc6/q;

    move-result-object v9

    iput-object v9, p0, Lc6/i;->g:Lc6/q;

    :cond_1fb
    iget v9, p0, Lc6/i;->c:I

    or-int/2addr v9, v11

    iput v9, p0, Lc6/i;->c:I

    goto/16 :goto_18

    :sswitch_202
    iget v9, p0, Lc6/i;->c:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lc6/i;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    iput v9, p0, Lc6/i;->f:I

    goto/16 :goto_18

    :sswitch_210
    iget v9, p0, Lc6/i;->c:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lc6/i;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    iput v9, p0, Lc6/i;->e:I
    :try_end_21c
    .catch Li6/j; {:try_start_24 .. :try_end_21c} :catch_22f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_21c} :catch_19d
    .catchall {:try_start_24 .. :try_end_21c} :catchall_19a

    goto/16 :goto_18

    :goto_21e
    if-nez v4, :cond_18

    :sswitch_220
    move v2, v0

    goto/16 :goto_18

    :goto_223
    :try_start_223
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_22f
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_233
    .catchall {:try_start_223 .. :try_end_233} :catchall_19a

    :goto_233
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v6, :cond_23f

    iget-object p2, p0, Lc6/i;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->i:Ljava/util/List;

    :cond_23f
    and-int/lit16 p2, v3, 0x400

    if-ne p2, v4, :cond_24b

    iget-object p2, p0, Lc6/i;->o:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->o:Ljava/util/List;

    :cond_24b
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v5, :cond_257

    iget-object p2, p0, Lc6/i;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->l:Ljava/util/List;

    :cond_257
    and-int/lit16 p2, v3, 0x200

    if-ne p2, v8, :cond_263

    iget-object p2, p0, Lc6/i;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->m:Ljava/util/List;

    :cond_263
    and-int/lit16 p2, v3, 0x1000

    if-ne p2, v7, :cond_26f

    iget-object p2, p0, Lc6/i;->q:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->q:Ljava/util/List;

    :cond_26f
    :try_start_26f
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_272} :catch_27b
    .catchall {:try_start_26f .. :try_end_272} :catchall_273

    goto :goto_27b

    :catchall_273
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->b:Li6/c;

    throw p1

    :catch_27b
    :goto_27b
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_287
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v6, :cond_293

    iget-object p1, p0, Lc6/i;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/i;->i:Ljava/util/List;

    :cond_293
    and-int/lit16 p1, v3, 0x400

    if-ne p1, v4, :cond_29f

    iget-object p1, p0, Lc6/i;->o:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/i;->o:Ljava/util/List;

    :cond_29f
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v5, :cond_2ab

    iget-object p1, p0, Lc6/i;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/i;->l:Ljava/util/List;

    :cond_2ab
    and-int/lit16 p1, v3, 0x200

    if-ne p1, v8, :cond_2b7

    iget-object p1, p0, Lc6/i;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/i;->m:Ljava/util/List;

    :cond_2b7
    and-int/lit16 p1, v3, 0x1000

    if-ne p1, v7, :cond_2c3

    iget-object p1, p0, Lc6/i;->q:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/i;->q:Ljava/util/List;

    :cond_2c3
    :try_start_2c3
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_2c6
    .catch Ljava/io/IOException; {:try_start_2c3 .. :try_end_2c6} :catch_2cf
    .catchall {:try_start_2c3 .. :try_end_2c6} :catchall_2c7

    goto :goto_2cf

    :catchall_2c7
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/i;->b:Li6/c;

    throw p1

    :catch_2cf
    :goto_2cf
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/i;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void

    nop

    :sswitch_data_2dc
    .sparse-switch
        0x0 -> :sswitch_220
        0x8 -> :sswitch_210
        0x10 -> :sswitch_202
        0x1a -> :sswitch_1d6
        0x22 -> :sswitch_1bc
        0x2a -> :sswitch_18b
        0x32 -> :sswitch_171
        0x38 -> :sswitch_163
        0x40 -> :sswitch_155
        0x48 -> :sswitch_148
        0x52 -> :sswitch_12e
        0x58 -> :sswitch_112
        0x5a -> :sswitch_dc
        0xf2 -> :sswitch_b0
        0xf8 -> :sswitch_94
        0xfa -> :sswitch_5f
        0x102 -> :sswitch_32
    .end sparse-switch
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput p2, p0, Lc6/i;->n:I

    iput-byte p2, p0, Lc6/i;->s:B

    iput p2, p0, Lc6/i;->t:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/i;->b:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/i;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/i;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_13

    iget v1, p0, Lc6/i;->e:I

    invoke-virtual {p1, v3, v1}, Li6/e;->p(II)V

    :cond_13
    iget v1, p0, Lc6/i;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1e

    iget v1, p0, Lc6/i;->f:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_1e
    iget v1, p0, Lc6/i;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x3

    iget-object v5, p0, Lc6/i;->g:Lc6/q;

    invoke-virtual {p1, v1, v5}, Li6/e;->r(ILi6/p;)V

    :cond_2b
    const/4 v1, 0x0

    move v5, v1

    :goto_2d
    iget-object v6, p0, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_43

    iget-object v6, p0, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-virtual {p1, v4, v6}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_43
    iget v4, p0, Lc6/i;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_50

    const/4 v4, 0x5

    iget-object v6, p0, Lc6/i;->j:Lc6/q;

    invoke-virtual {p1, v4, v6}, Li6/e;->r(ILi6/p;)V

    :cond_50
    move v4, v1

    :goto_51
    iget-object v6, p0, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_68

    const/4 v6, 0x6

    iget-object v7, p0, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li6/p;

    invoke-virtual {p1, v6, v7}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_68
    iget v4, p0, Lc6/i;->c:I

    const/16 v6, 0x10

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_75

    const/4 v4, 0x7

    iget v6, p0, Lc6/i;->h:I

    invoke-virtual {p1, v4, v6}, Li6/e;->p(II)V

    :cond_75
    iget v4, p0, Lc6/i;->c:I

    const/16 v6, 0x40

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_81

    iget v4, p0, Lc6/i;->k:I

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    :cond_81
    iget v2, p0, Lc6/i;->c:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8d

    const/16 v2, 0x9

    iget v3, p0, Lc6/i;->d:I

    invoke-virtual {p1, v2, v3}, Li6/e;->p(II)V

    :cond_8d
    move v2, v1

    :goto_8e
    iget-object v3, p0, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a6

    const/16 v3, 0xa

    iget-object v4, p0, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_a6
    iget-object v2, p0, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b8

    const/16 v2, 0x5a

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    iget v2, p0, Lc6/i;->n:I

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    :cond_b8
    move v2, v1

    :goto_b9
    iget-object v3, p0, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d3

    iget-object v3, p0, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Li6/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    :cond_d3
    iget v2, p0, Lc6/i;->c:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_e1

    const/16 v2, 0x1e

    iget-object v3, p0, Lc6/i;->p:Lc6/t;

    invoke-virtual {p1, v2, v3}, Li6/e;->r(ILi6/p;)V

    :cond_e1
    :goto_e1
    iget-object v2, p0, Lc6/i;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_fd

    const/16 v2, 0x1f

    iget-object v3, p0, Lc6/i;->q:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Li6/e;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    :cond_fd
    iget v1, p0, Lc6/i;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_109

    iget-object v1, p0, Lc6/i;->r:Lc6/e;

    invoke-virtual {p1, v5, v1}, Li6/e;->r(ILi6/p;)V

    :cond_109
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/i;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/i;->u:Lc6/i;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 10

    iget v0, p0, Lc6/i;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/i;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_16

    iget v0, p0, Lc6/i;->e:I

    invoke-static {v3, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    iget v4, p0, Lc6/i;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_24

    iget v4, p0, Lc6/i;->f:I

    invoke-static {v1, v4}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_24
    iget v4, p0, Lc6/i;->c:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_33

    const/4 v4, 0x3

    iget-object v7, p0, Lc6/i;->g:Lc6/q;

    invoke-static {v4, v7}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_33
    move v4, v2

    :goto_34
    iget-object v7, p0, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4c

    iget-object v7, p0, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li6/p;

    invoke-static {v5, v7}, Li6/e;->e(ILi6/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_4c
    iget v4, p0, Lc6/i;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5b

    const/4 v4, 0x5

    iget-object v7, p0, Lc6/i;->j:Lc6/q;

    invoke-static {v4, v7}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5b
    move v4, v2

    :goto_5c
    iget-object v7, p0, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_75

    const/4 v7, 0x6

    iget-object v8, p0, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li6/p;

    invoke-static {v7, v8}, Li6/e;->e(ILi6/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    :cond_75
    iget v4, p0, Lc6/i;->c:I

    const/16 v7, 0x10

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_84

    const/4 v4, 0x7

    iget v7, p0, Lc6/i;->h:I

    invoke-static {v4, v7}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_84
    iget v4, p0, Lc6/i;->c:I

    const/16 v7, 0x40

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_92

    iget v4, p0, Lc6/i;->k:I

    invoke-static {v6, v4}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_92
    iget v4, p0, Lc6/i;->c:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_a0

    const/16 v3, 0x9

    iget v4, p0, Lc6/i;->d:I

    invoke-static {v3, v4}, Li6/e;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a0
    move v3, v2

    :goto_a1
    iget-object v4, p0, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_bb

    const/16 v4, 0xa

    iget-object v6, p0, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-static {v4, v6}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    :cond_bb
    move v3, v2

    move v4, v3

    :goto_bd
    iget-object v6, p0, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_d9

    iget-object v6, p0, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Li6/e;->d(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    :cond_d9
    add-int/2addr v0, v4

    iget-object v3, p0, Lc6/i;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e9

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_e9
    iput v4, p0, Lc6/i;->n:I

    iget v3, p0, Lc6/i;->c:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_fb

    const/16 v3, 0x1e

    iget-object v4, p0, Lc6/i;->p:Lc6/t;

    invoke-static {v3, v4}, Li6/e;->e(ILi6/p;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_fb
    move v3, v2

    :goto_fc
    iget-object v4, p0, Lc6/i;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_118

    iget-object v4, p0, Lc6/i;->q:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_fc

    :cond_118
    add-int/2addr v0, v3

    iget-object v2, p0, Lc6/i;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget v0, p0, Lc6/i;->c:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12f

    iget-object v0, p0, Lc6/i;->r:Lc6/e;

    invoke-static {v5, v0}, Li6/e;->e(ILi6/p;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_12f
    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lc6/i;->b:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/i;->t:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/i;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/i;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_18

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_18
    invoke-virtual {p0}, Lc6/i;->o()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lc6/i;->g:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_29

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_29
    move v0, v2

    :goto_2a
    iget-object v3, p0, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_46

    iget-object v3, p0, Lc6/i;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/s;

    invoke-virtual {v3}, Lc6/s;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_43

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_46
    invoke-virtual {p0}, Lc6/i;->m()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lc6/i;->j:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_57

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_57
    move v0, v2

    :goto_58
    iget-object v3, p0, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_74

    iget-object v3, p0, Lc6/i;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q;

    invoke-virtual {v3}, Lc6/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_71

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_74
    move v0, v2

    :goto_75
    iget-object v3, p0, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_91

    iget-object v3, p0, Lc6/i;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/u;

    invoke-virtual {v3}, Lc6/u;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8e

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_91
    iget v0, p0, Lc6/i;->c:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9a

    move v0, v1

    goto :goto_9b

    :cond_9a
    move v0, v2

    :goto_9b
    if-eqz v0, :cond_a8

    iget-object v0, p0, Lc6/i;->p:Lc6/t;

    invoke-virtual {v0}, Lc6/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a8

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_a8
    iget v0, p0, Lc6/i;->c:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_b1

    move v0, v1

    goto :goto_b2

    :cond_b1
    move v0, v2

    :goto_b2
    if-eqz v0, :cond_bf

    iget-object v0, p0, Lc6/i;->r:Lc6/e;

    invoke-virtual {v0}, Lc6/e;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_bf

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_bf
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_c8

    iput-byte v2, p0, Lc6/i;->s:B

    return v2

    :cond_c8
    iput-byte v1, p0, Lc6/i;->s:B

    return v1
.end method

.method public m()Z
    .registers 2

    iget p0, p0, Lc6/i;->c:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public n()Z
    .registers 2

    iget p0, p0, Lc6/i;->c:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/i$b;

    invoke-direct {p0}, Lc6/i$b;-><init>()V

    return-object p0
.end method

.method public o()Z
    .registers 2

    iget p0, p0, Lc6/i;->c:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final p()V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lc6/i;->d:I

    iput v0, p0, Lc6/i;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lc6/i;->f:I

    sget-object v1, Lc6/q;->t:Lc6/q;

    iput-object v1, p0, Lc6/i;->g:Lc6/q;

    iput v0, p0, Lc6/i;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/i;->i:Ljava/util/List;

    iput-object v1, p0, Lc6/i;->j:Lc6/q;

    iput v0, p0, Lc6/i;->k:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i;->o:Ljava/util/List;

    sget-object v0, Lc6/t;->g:Lc6/t;

    iput-object v0, p0, Lc6/i;->p:Lc6/t;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/i;->q:Ljava/util/List;

    sget-object v0, Lc6/e;->e:Lc6/e;

    iput-object v0, p0, Lc6/i;->r:Lc6/e;

    return-void
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/i$b;

    invoke-direct {v0}, Lc6/i$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/i$b;->h(Lc6/i;)Lc6/i$b;

    return-object v0
.end method
