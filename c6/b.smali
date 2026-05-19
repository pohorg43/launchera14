.class public final Lc6/b;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/b$b;,
        Lc6/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final O:Lc6/b;

.field public static P:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public D:I

.field public E:Lc6/t;

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lc6/w;

.field public H:B

.field public N:I

.field public final b:Li6/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/s;",
            ">;"
        }
    .end annotation
.end field

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

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/q;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/d;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/i;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/n;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/r;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/g;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public v:I

.field public w:I

.field public x:Lc6/q;

.field public y:I

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/b$a;

    invoke-direct {v0}, Lc6/b$a;-><init>()V

    sput-object v0, Lc6/b;->P:Li6/r;

    new-instance v0, Lc6/b;

    invoke-direct {v0}, Lc6/b;-><init>()V

    sput-object v0, Lc6/b;->O:Lc6/b;

    invoke-virtual {v0}, Lc6/b;->n()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc6/b;->j:I

    iput v0, p0, Lc6/b;->l:I

    iput v0, p0, Lc6/b;->o:I

    iput v0, p0, Lc6/b;->v:I

    iput v0, p0, Lc6/b;->A:I

    iput v0, p0, Lc6/b;->D:I

    iput-byte v0, p0, Lc6/b;->H:B

    iput v0, p0, Lc6/b;->N:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/b;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Li6/h$d;-><init>()V

    const/4 v4, -0x1

    iput v4, v1, Lc6/b;->j:I

    iput v4, v1, Lc6/b;->l:I

    iput v4, v1, Lc6/b;->o:I

    iput v4, v1, Lc6/b;->v:I

    iput v4, v1, Lc6/b;->A:I

    iput v4, v1, Lc6/b;->D:I

    iput-byte v4, v1, Lc6/b;->H:B

    iput v4, v1, Lc6/b;->N:I

    invoke-virtual/range {p0 .. p0}, Lc6/b;->n()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_28
    const/high16 v9, 0x80000

    const/high16 v5, 0x400000

    const/high16 v14, 0x100000

    const/high16 v13, 0x40000

    const/16 v11, 0x80

    const/16 v10, 0x40

    if-nez v7, :cond_547

    :try_start_36
    invoke-virtual/range {p1 .. p1}, Li6/d;->o()I

    move-result v15

    const/16 v16, 0x0

    sparse-switch v15, :sswitch_data_634

    const/4 v12, 0x1

    invoke-virtual {v1, v2, v6, v3, v15}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v5

    goto/16 :goto_43c

    :sswitch_46
    iget v15, v1, Lc6/b;->c:I

    and-int/2addr v15, v11

    if-ne v15, v11, :cond_51

    iget-object v15, v1, Lc6/b;->G:Lc6/w;

    invoke-virtual {v15}, Lc6/w;->f()Lc6/w$b;

    move-result-object v16

    :cond_51
    move-object/from16 v15, v16

    sget-object v12, Lc6/w;->f:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    check-cast v12, Lc6/w;

    iput-object v12, v1, Lc6/b;->G:Lc6/w;

    if-eqz v15, :cond_68

    invoke-virtual {v15, v12}, Lc6/w$b;->g(Lc6/w;)Lc6/w$b;

    invoke-virtual {v15}, Lc6/w$b;->f()Lc6/w;

    move-result-object v12

    iput-object v12, v1, Lc6/b;->G:Lc6/w;

    :cond_68
    iget v12, v1, Lc6/b;->c:I

    or-int/2addr v12, v11

    iput v12, v1, Lc6/b;->c:I

    goto/16 :goto_42a

    :sswitch_6f
    invoke-virtual/range {p1 .. p1}, Li6/d;->l()I

    move-result v12

    invoke-virtual {v2, v12}, Li6/d;->d(I)I

    move-result v12

    and-int v15, v8, v5

    if-eq v15, v5, :cond_89

    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v15

    if-lez v15, :cond_89

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v1, Lc6/b;->F:Ljava/util/List;

    or-int/2addr v8, v5

    :cond_89
    :goto_89
    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v15

    if-lez v15, :cond_9f

    iget-object v15, v1, Lc6/b;->F:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x80

    goto :goto_89

    :cond_9f
    invoke-virtual {v2, v12}, Li6/d;->c(I)V

    goto/16 :goto_42a

    :sswitch_a4
    and-int v11, v8, v5

    if-eq v11, v5, :cond_b0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->F:Ljava/util/List;

    or-int/2addr v8, v5

    :cond_b0
    iget-object v11, v1, Lc6/b;->F:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_bf
    iget v11, v1, Lc6/b;->c:I

    and-int/2addr v11, v10

    if-ne v11, v10, :cond_ca

    iget-object v11, v1, Lc6/b;->E:Lc6/t;

    invoke-virtual {v11}, Lc6/t;->f()Lc6/t$b;

    move-result-object v16

    :cond_ca
    move-object/from16 v11, v16

    sget-object v12, Lc6/t;->h:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    check-cast v12, Lc6/t;

    iput-object v12, v1, Lc6/b;->E:Lc6/t;

    if-eqz v11, :cond_e1

    invoke-virtual {v11, v12}, Lc6/t$b;->g(Lc6/t;)Lc6/t$b;

    invoke-virtual {v11}, Lc6/t$b;->f()Lc6/t;

    move-result-object v11

    iput-object v11, v1, Lc6/b;->E:Lc6/t;

    :cond_e1
    iget v11, v1, Lc6/b;->c:I

    or-int/2addr v11, v10

    iput v11, v1, Lc6/b;->c:I

    goto/16 :goto_42a

    :sswitch_e8
    invoke-virtual/range {p1 .. p1}, Li6/d;->l()I

    move-result v11

    invoke-virtual {v2, v11}, Li6/d;->d(I)I

    move-result v11

    and-int v12, v8, v14

    if-eq v12, v14, :cond_102

    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_102

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lc6/b;->C:Ljava/util/List;

    or-int/2addr v8, v14

    :cond_102
    :goto_102
    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_116

    iget-object v12, v1, Lc6/b;->C:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_102

    :cond_116
    invoke-virtual {v2, v11}, Li6/d;->c(I)V

    goto/16 :goto_42a

    :sswitch_11b
    and-int v11, v8, v14

    if-eq v11, v14, :cond_127

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->C:Ljava/util/List;

    or-int/2addr v8, v14

    :cond_127
    iget-object v11, v1, Lc6/b;->C:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_136
    and-int v11, v8, v9

    if-eq v11, v9, :cond_142

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->B:Ljava/util/List;

    or-int/2addr v8, v9

    :cond_142
    iget-object v11, v1, Lc6/b;->B:Ljava/util/List;

    sget-object v12, Lc6/q;->u:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_14f
    invoke-virtual/range {p1 .. p1}, Li6/d;->l()I

    move-result v11

    invoke-virtual {v2, v11}, Li6/d;->d(I)I

    move-result v11

    and-int v12, v8, v13

    if-eq v12, v13, :cond_169

    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_169

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lc6/b;->z:Ljava/util/List;

    or-int/2addr v8, v13

    :cond_169
    :goto_169
    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_17d

    iget-object v12, v1, Lc6/b;->z:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_169

    :cond_17d
    invoke-virtual {v2, v11}, Li6/d;->c(I)V

    goto/16 :goto_42a

    :sswitch_182
    and-int v11, v8, v13

    if-eq v11, v13, :cond_18e

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->z:Ljava/util/List;

    or-int/2addr v8, v13

    :cond_18e
    iget-object v11, v1, Lc6/b;->z:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_19d
    invoke-virtual/range {p1 .. p1}, Li6/d;->l()I

    move-result v11

    invoke-virtual {v2, v11}, Li6/d;->d(I)I

    move-result v11

    and-int/lit16 v12, v8, 0x100

    const/16 v15, 0x100

    if-eq v12, v15, :cond_1ba

    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_1ba

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lc6/b;->n:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    :cond_1ba
    :goto_1ba
    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_1ce

    iget-object v12, v1, Lc6/b;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ba

    :cond_1ce
    invoke-virtual {v2, v11}, Li6/d;->c(I)V

    goto/16 :goto_42a

    :sswitch_1d3
    and-int/lit16 v11, v8, 0x100

    const/16 v12, 0x100

    if-eq v11, v12, :cond_1e2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->n:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    :cond_1e2
    iget-object v11, v1, Lc6/b;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_1f1
    and-int/lit16 v11, v8, 0x80

    const/16 v12, 0x80

    if-eq v11, v12, :cond_200

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->m:Ljava/util/List;

    or-int/lit16 v8, v8, 0x80

    :cond_200
    iget-object v11, v1, Lc6/b;->m:Ljava/util/List;

    sget-object v12, Lc6/q;->u:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_20d
    iget v11, v1, Lc6/b;->c:I

    const/16 v12, 0x20

    or-int/2addr v11, v12

    iput v11, v1, Lc6/b;->c:I

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v11

    iput v11, v1, Lc6/b;->y:I

    goto/16 :goto_42a

    :sswitch_21c
    iget v11, v1, Lc6/b;->c:I

    const/16 v12, 0x10

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_229

    iget-object v11, v1, Lc6/b;->x:Lc6/q;

    invoke-virtual {v11}, Lc6/q;->t()Lc6/q$c;

    move-result-object v16

    :cond_229
    move-object/from16 v11, v16

    sget-object v12, Lc6/q;->u:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    check-cast v12, Lc6/q;

    iput-object v12, v1, Lc6/b;->x:Lc6/q;

    if-eqz v11, :cond_240

    invoke-virtual {v11, v12}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v11}, Lc6/q$c;->g()Lc6/q;

    move-result-object v11

    iput-object v11, v1, Lc6/b;->x:Lc6/q;

    :cond_240
    iget v11, v1, Lc6/b;->c:I

    const/16 v12, 0x10

    or-int/2addr v11, v12

    iput v11, v1, Lc6/b;->c:I

    goto/16 :goto_42a

    :sswitch_249
    iget v11, v1, Lc6/b;->c:I

    const/16 v12, 0x8

    or-int/2addr v11, v12

    iput v11, v1, Lc6/b;->c:I

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v11

    iput v11, v1, Lc6/b;->w:I

    goto/16 :goto_42a

    :sswitch_258
    invoke-virtual/range {p1 .. p1}, Li6/d;->l()I

    move-result v11

    invoke-virtual {v2, v11}, Li6/d;->d(I)I

    move-result v11

    and-int/lit16 v12, v8, 0x4000

    const/16 v15, 0x4000

    if-eq v12, v15, :cond_275

    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_275

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lc6/b;->u:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    :cond_275
    :goto_275
    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_289

    iget-object v12, v1, Lc6/b;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_275

    :cond_289
    invoke-virtual {v2, v11}, Li6/d;->c(I)V

    goto/16 :goto_42a

    :sswitch_28e
    and-int/lit16 v11, v8, 0x4000

    const/16 v12, 0x4000

    if-eq v11, v12, :cond_29d

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->u:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    :cond_29d
    iget-object v11, v1, Lc6/b;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_2ac
    and-int/lit16 v11, v8, 0x2000

    const/16 v12, 0x2000

    if-eq v11, v12, :cond_2bb

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->t:Ljava/util/List;

    or-int/lit16 v8, v8, 0x2000

    :cond_2bb
    iget-object v11, v1, Lc6/b;->t:Ljava/util/List;

    sget-object v12, Lc6/g;->h:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_2c8
    and-int/lit16 v11, v8, 0x1000

    const/16 v12, 0x1000

    if-eq v11, v12, :cond_2d7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->s:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    :cond_2d7
    iget-object v11, v1, Lc6/b;->s:Ljava/util/List;

    sget-object v12, Lc6/r;->p:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_2e4
    and-int/lit16 v11, v8, 0x800

    const/16 v12, 0x800

    if-eq v11, v12, :cond_2f3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->r:Ljava/util/List;

    or-int/lit16 v8, v8, 0x800

    :cond_2f3
    iget-object v11, v1, Lc6/b;->r:Ljava/util/List;

    sget-object v12, Lc6/n;->v:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_300
    and-int/lit16 v11, v8, 0x400

    const/16 v12, 0x400

    if-eq v11, v12, :cond_30f

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->q:Ljava/util/List;

    or-int/lit16 v8, v8, 0x400

    :cond_30f
    iget-object v11, v1, Lc6/b;->q:Ljava/util/List;

    sget-object v12, Lc6/i;->v:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_31c
    and-int/lit16 v11, v8, 0x200

    const/16 v12, 0x200

    if-eq v11, v12, :cond_32b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->p:Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    :cond_32b
    iget-object v11, v1, Lc6/b;->p:Ljava/util/List;

    sget-object v12, Lc6/d;->j:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_338
    invoke-virtual/range {p1 .. p1}, Li6/d;->l()I

    move-result v11

    invoke-virtual {v2, v11}, Li6/d;->d(I)I

    move-result v11

    and-int/lit8 v12, v8, 0x40

    if-eq v12, v10, :cond_353

    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_353

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lc6/b;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    :cond_353
    :goto_353
    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_367

    iget-object v12, v1, Lc6/b;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_353

    :cond_367
    invoke-virtual {v2, v11}, Li6/d;->c(I)V

    goto/16 :goto_42a

    :sswitch_36c
    and-int/lit8 v11, v8, 0x40

    if-eq v11, v10, :cond_379

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    :cond_379
    iget-object v11, v1, Lc6/b;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_388
    and-int/lit8 v11, v8, 0x10

    const/16 v12, 0x10

    if-eq v11, v12, :cond_397

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->h:Ljava/util/List;

    or-int/lit8 v8, v8, 0x10

    :cond_397
    iget-object v11, v1, Lc6/b;->h:Ljava/util/List;

    sget-object v12, Lc6/q;->u:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42a

    :sswitch_3a4
    and-int/lit8 v11, v8, 0x8

    const/16 v12, 0x8

    if-eq v11, v12, :cond_3b3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->g:Ljava/util/List;

    or-int/lit8 v8, v8, 0x8

    :cond_3b3
    iget-object v11, v1, Lc6/b;->g:Ljava/util/List;

    sget-object v12, Lc6/s;->n:Li6/r;

    invoke-virtual {v2, v12, v3}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42a

    :sswitch_3bf
    iget v11, v1, Lc6/b;->c:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v1, Lc6/b;->c:I

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v11

    iput v11, v1, Lc6/b;->f:I

    goto :goto_42a

    :sswitch_3cc
    iget v11, v1, Lc6/b;->c:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v1, Lc6/b;->c:I

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v11

    iput v11, v1, Lc6/b;->e:I

    goto :goto_42a

    :sswitch_3d9
    invoke-virtual/range {p1 .. p1}, Li6/d;->l()I

    move-result v11

    invoke-virtual {v2, v11}, Li6/d;->d(I)I

    move-result v11

    and-int/lit8 v12, v8, 0x20

    const/16 v15, 0x20

    if-eq v12, v15, :cond_3f6

    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_3f6

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lc6/b;->i:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    :cond_3f6
    :goto_3f6
    invoke-virtual/range {p1 .. p1}, Li6/d;->b()I

    move-result v12

    if-lez v12, :cond_40a

    iget-object v12, v1, Lc6/b;->i:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f6

    :cond_40a
    invoke-virtual {v2, v11}, Li6/d;->c(I)V

    goto :goto_42a

    :sswitch_40e
    and-int/lit8 v11, v8, 0x20

    const/16 v12, 0x20

    if-eq v11, v12, :cond_41d

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lc6/b;->i:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    :cond_41d
    iget-object v11, v1, Lc6/b;->i:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_42a
    const/4 v12, 0x1

    goto :goto_43f

    :sswitch_42c
    iget v11, v1, Lc6/b;->c:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v1, Lc6/b;->c:I

    invoke-virtual/range {p1 .. p1}, Li6/d;->g()I

    move-result v11

    iput v11, v1, Lc6/b;->d:I
    :try_end_438
    .catch Li6/j; {:try_start_36 .. :try_end_438} :catch_454
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_438} :catch_445
    .catchall {:try_start_36 .. :try_end_438} :catchall_442

    goto :goto_43f

    :sswitch_439
    const/4 v12, 0x1

    :goto_43a
    move v7, v12

    goto :goto_43f

    :goto_43c
    if-nez v5, :cond_43f

    goto :goto_43a

    :cond_43f
    :goto_43f
    move v5, v12

    goto/16 :goto_28

    :catchall_442
    move-exception v0

    move-object v2, v0

    goto :goto_45a

    :catch_445
    move-exception v0

    move-object v2, v0

    :try_start_447
    new-instance v3, Li6/j;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Li6/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Li6/j;->c(Li6/p;)Li6/j;

    throw v3

    :catch_454
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2, v1}, Li6/j;->c(Li6/p;)Li6/j;

    throw v2
    :try_end_45a
    .catchall {:try_start_447 .. :try_end_45a} :catchall_442

    :goto_45a
    and-int/lit8 v3, v8, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_468

    iget-object v3, v1, Lc6/b;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->i:Ljava/util/List;

    :cond_468
    and-int/lit8 v3, v8, 0x8

    const/16 v7, 0x8

    if-ne v3, v7, :cond_476

    iget-object v3, v1, Lc6/b;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->g:Ljava/util/List;

    :cond_476
    and-int/lit8 v3, v8, 0x10

    const/16 v7, 0x10

    if-ne v3, v7, :cond_484

    iget-object v3, v1, Lc6/b;->h:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->h:Ljava/util/List;

    :cond_484
    and-int/lit8 v3, v8, 0x40

    if-ne v3, v10, :cond_490

    iget-object v3, v1, Lc6/b;->k:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->k:Ljava/util/List;

    :cond_490
    and-int/lit16 v3, v8, 0x200

    const/16 v7, 0x200

    if-ne v3, v7, :cond_49e

    iget-object v3, v1, Lc6/b;->p:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->p:Ljava/util/List;

    :cond_49e
    and-int/lit16 v3, v8, 0x400

    const/16 v7, 0x400

    if-ne v3, v7, :cond_4ac

    iget-object v3, v1, Lc6/b;->q:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->q:Ljava/util/List;

    :cond_4ac
    and-int/lit16 v3, v8, 0x800

    const/16 v7, 0x800

    if-ne v3, v7, :cond_4ba

    iget-object v3, v1, Lc6/b;->r:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->r:Ljava/util/List;

    :cond_4ba
    and-int/lit16 v3, v8, 0x1000

    const/16 v7, 0x1000

    if-ne v3, v7, :cond_4c8

    iget-object v3, v1, Lc6/b;->s:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->s:Ljava/util/List;

    :cond_4c8
    and-int/lit16 v3, v8, 0x2000

    const/16 v7, 0x2000

    if-ne v3, v7, :cond_4d6

    iget-object v3, v1, Lc6/b;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->t:Ljava/util/List;

    :cond_4d6
    and-int/lit16 v3, v8, 0x4000

    const/16 v7, 0x4000

    if-ne v3, v7, :cond_4e4

    iget-object v3, v1, Lc6/b;->u:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->u:Ljava/util/List;

    :cond_4e4
    and-int/lit16 v3, v8, 0x80

    const/16 v7, 0x80

    if-ne v3, v7, :cond_4f2

    iget-object v3, v1, Lc6/b;->m:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->m:Ljava/util/List;

    :cond_4f2
    and-int/lit16 v3, v8, 0x100

    const/16 v7, 0x100

    if-ne v3, v7, :cond_500

    iget-object v3, v1, Lc6/b;->n:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->n:Ljava/util/List;

    :cond_500
    and-int v3, v8, v13

    if-ne v3, v13, :cond_50c

    iget-object v3, v1, Lc6/b;->z:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->z:Ljava/util/List;

    :cond_50c
    and-int v3, v8, v9

    if-ne v3, v9, :cond_518

    iget-object v3, v1, Lc6/b;->B:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->B:Ljava/util/List;

    :cond_518
    and-int v3, v8, v14

    if-ne v3, v14, :cond_524

    iget-object v3, v1, Lc6/b;->C:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->C:Ljava/util/List;

    :cond_524
    and-int v3, v8, v5

    if-ne v3, v5, :cond_530

    iget-object v3, v1, Lc6/b;->F:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->F:Ljava/util/List;

    :cond_530
    :try_start_530
    invoke-virtual {v6}, Li6/e;->j()V
    :try_end_533
    .catch Ljava/io/IOException; {:try_start_530 .. :try_end_533} :catch_533
    .catchall {:try_start_530 .. :try_end_533} :catchall_53a

    :catch_533
    invoke-virtual {v4}, Li6/c$b;->c()Li6/c;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->b:Li6/c;

    goto :goto_543

    :catchall_53a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Li6/c$b;->c()Li6/c;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->b:Li6/c;

    throw v2

    :goto_543
    invoke-virtual/range {p0 .. p0}, Li6/h$d;->i()V

    throw v2

    :cond_547
    and-int/lit8 v2, v8, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_555

    iget-object v2, v1, Lc6/b;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->i:Ljava/util/List;

    :cond_555
    and-int/lit8 v2, v8, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_563

    iget-object v2, v1, Lc6/b;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->g:Ljava/util/List;

    :cond_563
    and-int/lit8 v2, v8, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_571

    iget-object v2, v1, Lc6/b;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->h:Ljava/util/List;

    :cond_571
    and-int/lit8 v2, v8, 0x40

    if-ne v2, v10, :cond_57d

    iget-object v2, v1, Lc6/b;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->k:Ljava/util/List;

    :cond_57d
    and-int/lit16 v2, v8, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_58b

    iget-object v2, v1, Lc6/b;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->p:Ljava/util/List;

    :cond_58b
    and-int/lit16 v2, v8, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_599

    iget-object v2, v1, Lc6/b;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->q:Ljava/util/List;

    :cond_599
    and-int/lit16 v2, v8, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_5a7

    iget-object v2, v1, Lc6/b;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->r:Ljava/util/List;

    :cond_5a7
    and-int/lit16 v2, v8, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_5b5

    iget-object v2, v1, Lc6/b;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->s:Ljava/util/List;

    :cond_5b5
    and-int/lit16 v2, v8, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_5c3

    iget-object v2, v1, Lc6/b;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->t:Ljava/util/List;

    :cond_5c3
    and-int/lit16 v2, v8, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_5d1

    iget-object v2, v1, Lc6/b;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->u:Ljava/util/List;

    :cond_5d1
    and-int/lit16 v2, v8, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5df

    iget-object v2, v1, Lc6/b;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->m:Ljava/util/List;

    :cond_5df
    and-int/lit16 v2, v8, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_5ed

    iget-object v2, v1, Lc6/b;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->n:Ljava/util/List;

    :cond_5ed
    and-int v2, v8, v13

    if-ne v2, v13, :cond_5f9

    iget-object v2, v1, Lc6/b;->z:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->z:Ljava/util/List;

    :cond_5f9
    and-int v2, v8, v9

    if-ne v2, v9, :cond_605

    iget-object v2, v1, Lc6/b;->B:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->B:Ljava/util/List;

    :cond_605
    and-int v2, v8, v14

    if-ne v2, v14, :cond_611

    iget-object v2, v1, Lc6/b;->C:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->C:Ljava/util/List;

    :cond_611
    and-int v2, v8, v5

    if-ne v2, v5, :cond_61d

    iget-object v2, v1, Lc6/b;->F:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->F:Ljava/util/List;

    :cond_61d
    :try_start_61d
    invoke-virtual {v6}, Li6/e;->j()V
    :try_end_620
    .catch Ljava/io/IOException; {:try_start_61d .. :try_end_620} :catch_620
    .catchall {:try_start_61d .. :try_end_620} :catchall_627

    :catch_620
    invoke-virtual {v4}, Li6/c$b;->c()Li6/c;

    move-result-object v2

    iput-object v2, v1, Lc6/b;->b:Li6/c;

    goto :goto_630

    :catchall_627
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Li6/c$b;->c()Li6/c;

    move-result-object v3

    iput-object v3, v1, Lc6/b;->b:Li6/c;

    throw v2

    :goto_630
    invoke-virtual/range {p0 .. p0}, Li6/h$d;->i()V

    return-void

    :sswitch_data_634
    .sparse-switch
        0x0 -> :sswitch_439
        0x8 -> :sswitch_42c
        0x10 -> :sswitch_40e
        0x12 -> :sswitch_3d9
        0x18 -> :sswitch_3cc
        0x20 -> :sswitch_3bf
        0x2a -> :sswitch_3a4
        0x32 -> :sswitch_388
        0x38 -> :sswitch_36c
        0x3a -> :sswitch_338
        0x42 -> :sswitch_31c
        0x4a -> :sswitch_300
        0x52 -> :sswitch_2e4
        0x5a -> :sswitch_2c8
        0x6a -> :sswitch_2ac
        0x80 -> :sswitch_28e
        0x82 -> :sswitch_258
        0x88 -> :sswitch_249
        0x92 -> :sswitch_21c
        0x98 -> :sswitch_20d
        0xa2 -> :sswitch_1f1
        0xa8 -> :sswitch_1d3
        0xaa -> :sswitch_19d
        0xb0 -> :sswitch_182
        0xb2 -> :sswitch_14f
        0xba -> :sswitch_136
        0xc0 -> :sswitch_11b
        0xc2 -> :sswitch_e8
        0xf2 -> :sswitch_bf
        0xf8 -> :sswitch_a4
        0xfa -> :sswitch_6f
        0x102 -> :sswitch_46
    .end sparse-switch
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput p2, p0, Lc6/b;->j:I

    iput p2, p0, Lc6/b;->l:I

    iput p2, p0, Lc6/b;->o:I

    iput p2, p0, Lc6/b;->v:I

    iput p2, p0, Lc6/b;->A:I

    iput p2, p0, Lc6/b;->D:I

    iput-byte p2, p0, Lc6/b;->H:B

    iput p2, p0, Lc6/b;->N:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/b;->b:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/b;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/b;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget v1, p0, Lc6/b;->d:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_12
    iget-object v1, p0, Lc6/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lez v1, :cond_24

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    iget v1, p0, Lc6/b;->j:I

    invoke-virtual {p1, v1}, Li6/e;->y(I)V

    :cond_24
    const/4 v1, 0x0

    move v3, v1

    :goto_26
    iget-object v4, p0, Lc6/b;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    iget-object v4, p0, Lc6/b;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Li6/e;->q(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_40
    iget v3, p0, Lc6/b;->c:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4c

    const/4 v3, 0x3

    iget v4, p0, Lc6/b;->e:I

    invoke-virtual {p1, v3, v4}, Li6/e;->p(II)V

    :cond_4c
    iget v3, p0, Lc6/b;->c:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_57

    iget v3, p0, Lc6/b;->f:I

    invoke-virtual {p1, v4, v3}, Li6/e;->p(II)V

    :cond_57
    move v3, v1

    :goto_58
    iget-object v4, p0, Lc6/b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6f

    const/4 v4, 0x5

    iget-object v5, p0, Lc6/b;->g:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-virtual {p1, v4, v5}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_6f
    move v3, v1

    :goto_70
    iget-object v4, p0, Lc6/b;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_87

    const/4 v4, 0x6

    iget-object v5, p0, Lc6/b;->h:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-virtual {p1, v4, v5}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_87
    iget-object v3, p0, Lc6/b;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_99

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Li6/e;->y(I)V

    iget v3, p0, Lc6/b;->l:I

    invoke-virtual {p1, v3}, Li6/e;->y(I)V

    :cond_99
    move v3, v1

    :goto_9a
    iget-object v4, p0, Lc6/b;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b4

    iget-object v4, p0, Lc6/b;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Li6/e;->q(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    :cond_b4
    move v3, v1

    :goto_b5
    iget-object v4, p0, Lc6/b;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_cd

    iget-object v4, p0, Lc6/b;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v5, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    :cond_cd
    move v3, v1

    :goto_ce
    iget-object v4, p0, Lc6/b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e6

    const/16 v4, 0x9

    iget-object v6, p0, Lc6/b;->q:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-virtual {p1, v4, v6}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ce

    :cond_e6
    move v3, v1

    :goto_e7
    iget-object v4, p0, Lc6/b;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ff

    const/16 v4, 0xa

    iget-object v6, p0, Lc6/b;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-virtual {p1, v4, v6}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e7

    :cond_ff
    move v3, v1

    :goto_100
    iget-object v4, p0, Lc6/b;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_118

    const/16 v4, 0xb

    iget-object v6, p0, Lc6/b;->s:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-virtual {p1, v4, v6}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_118
    move v3, v1

    :goto_119
    iget-object v4, p0, Lc6/b;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_131

    const/16 v4, 0xd

    iget-object v6, p0, Lc6/b;->t:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-virtual {p1, v4, v6}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_119

    :cond_131
    iget-object v3, p0, Lc6/b;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_143

    const/16 v3, 0x82

    invoke-virtual {p1, v3}, Li6/e;->y(I)V

    iget v3, p0, Lc6/b;->v:I

    invoke-virtual {p1, v3}, Li6/e;->y(I)V

    :cond_143
    move v3, v1

    :goto_144
    iget-object v4, p0, Lc6/b;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_15e

    iget-object v4, p0, Lc6/b;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Li6/e;->q(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_144

    :cond_15e
    iget v3, p0, Lc6/b;->c:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_16a

    const/16 v3, 0x11

    iget v4, p0, Lc6/b;->w:I

    invoke-virtual {p1, v3, v4}, Li6/e;->p(II)V

    :cond_16a
    iget v3, p0, Lc6/b;->c:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_176

    iget-object v3, p0, Lc6/b;->x:Lc6/q;

    invoke-virtual {p1, v2, v3}, Li6/e;->r(ILi6/p;)V

    :cond_176
    iget v2, p0, Lc6/b;->c:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_184

    const/16 v2, 0x13

    iget v4, p0, Lc6/b;->y:I

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    :cond_184
    move v2, v1

    :goto_185
    iget-object v4, p0, Lc6/b;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_19d

    const/16 v4, 0x14

    iget-object v5, p0, Lc6/b;->m:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-virtual {p1, v4, v5}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_185

    :cond_19d
    iget-object v2, p0, Lc6/b;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1af

    const/16 v2, 0xaa

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    iget v2, p0, Lc6/b;->o:I

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    :cond_1af
    move v2, v1

    :goto_1b0
    iget-object v4, p0, Lc6/b;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1ca

    iget-object v4, p0, Lc6/b;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Li6/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b0

    :cond_1ca
    iget-object v2, p0, Lc6/b;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1dc

    const/16 v2, 0xb2

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    iget v2, p0, Lc6/b;->A:I

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    :cond_1dc
    move v2, v1

    :goto_1dd
    iget-object v4, p0, Lc6/b;->z:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1f7

    iget-object v4, p0, Lc6/b;->z:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Li6/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1dd

    :cond_1f7
    move v2, v1

    :goto_1f8
    iget-object v4, p0, Lc6/b;->B:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_210

    const/16 v4, 0x17

    iget-object v5, p0, Lc6/b;->B:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-virtual {p1, v4, v5}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f8

    :cond_210
    iget-object v2, p0, Lc6/b;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_222

    const/16 v2, 0xc2

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    iget v2, p0, Lc6/b;->D:I

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    :cond_222
    move v2, v1

    :goto_223
    iget-object v4, p0, Lc6/b;->C:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_23d

    iget-object v4, p0, Lc6/b;->C:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Li6/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_223

    :cond_23d
    iget v2, p0, Lc6/b;->c:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_24b

    const/16 v2, 0x1e

    iget-object v4, p0, Lc6/b;->E:Lc6/t;

    invoke-virtual {p1, v2, v4}, Li6/e;->r(ILi6/p;)V

    :cond_24b
    :goto_24b
    iget-object v2, p0, Lc6/b;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_267

    const/16 v2, 0x1f

    iget-object v4, p0, Lc6/b;->F:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24b

    :cond_267
    iget v1, p0, Lc6/b;->c:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_273

    iget-object v1, p0, Lc6/b;->G:Lc6/w;

    invoke-virtual {p1, v3, v1}, Li6/e;->r(ILi6/p;)V

    :cond_273
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/b;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/b;->O:Lc6/b;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 8

    iget v0, p0, Lc6/b;->N:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/b;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lc6/b;->d:I

    invoke-static {v1, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    move v1, v2

    move v3, v1

    :goto_18
    iget-object v4, p0, Lc6/b;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    iget-object v4, p0, Lc6/b;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_34
    add-int/2addr v0, v3

    iget-object v1, p0, Lc6/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, Li6/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    iput v3, p0, Lc6/b;->j:I

    iget v1, p0, Lc6/b;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_54

    const/4 v1, 0x3

    iget v4, p0, Lc6/b;->e:I

    invoke-static {v1, v4}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    iget v1, p0, Lc6/b;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_61

    iget v1, p0, Lc6/b;->f:I

    invoke-static {v4, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_61
    move v1, v2

    :goto_62
    iget-object v4, p0, Lc6/b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7b

    const/4 v4, 0x5

    iget-object v5, p0, Lc6/b;->g:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-static {v4, v5}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_7b
    move v1, v2

    :goto_7c
    iget-object v4, p0, Lc6/b;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_95

    const/4 v4, 0x6

    iget-object v5, p0, Lc6/b;->h:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-static {v4, v5}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_95
    move v1, v2

    move v4, v1

    :goto_97
    iget-object v5, p0, Lc6/b;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_b3

    iget-object v5, p0, Lc6/b;->k:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Li6/e;->d(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    :cond_b3
    add-int/2addr v0, v4

    iget-object v1, p0, Lc6/b;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c3
    iput v4, p0, Lc6/b;->l:I

    move v1, v2

    :goto_c6
    iget-object v4, p0, Lc6/b;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_e0

    iget-object v4, p0, Lc6/b;->p:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-static {v5, v4}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    :cond_e0
    move v1, v2

    :goto_e1
    iget-object v4, p0, Lc6/b;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_fb

    const/16 v4, 0x9

    iget-object v6, p0, Lc6/b;->q:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-static {v4, v6}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    :cond_fb
    move v1, v2

    :goto_fc
    iget-object v4, p0, Lc6/b;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_116

    const/16 v4, 0xa

    iget-object v6, p0, Lc6/b;->r:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-static {v4, v6}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    :cond_116
    move v1, v2

    :goto_117
    iget-object v4, p0, Lc6/b;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_131

    const/16 v4, 0xb

    iget-object v6, p0, Lc6/b;->s:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-static {v4, v6}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_117

    :cond_131
    move v1, v2

    :goto_132
    iget-object v4, p0, Lc6/b;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_14c

    const/16 v4, 0xd

    iget-object v6, p0, Lc6/b;->t:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-static {v4, v6}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_132

    :cond_14c
    move v1, v2

    move v4, v1

    :goto_14e
    iget-object v6, p0, Lc6/b;->u:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_16a

    iget-object v6, p0, Lc6/b;->u:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Li6/e;->d(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_14e

    :cond_16a
    add-int/2addr v0, v4

    iget-object v1, p0, Lc6/b;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17a

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17a
    iput v4, p0, Lc6/b;->v:I

    iget v1, p0, Lc6/b;->c:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_18a

    const/16 v1, 0x11

    iget v4, p0, Lc6/b;->w:I

    invoke-static {v1, v4}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18a
    iget v1, p0, Lc6/b;->c:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_19a

    const/16 v1, 0x12

    iget-object v4, p0, Lc6/b;->x:Lc6/q;

    invoke-static {v1, v4}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19a
    iget v1, p0, Lc6/b;->c:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1aa

    const/16 v1, 0x13

    iget v5, p0, Lc6/b;->y:I

    invoke-static {v1, v5}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1aa
    move v1, v2

    :goto_1ab
    iget-object v5, p0, Lc6/b;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1c5

    const/16 v5, 0x14

    iget-object v6, p0, Lc6/b;->m:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-static {v5, v6}, Li6/e;->e(ILi6/p;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ab

    :cond_1c5
    move v1, v2

    move v5, v1

    :goto_1c7
    iget-object v6, p0, Lc6/b;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1e3

    iget-object v6, p0, Lc6/b;->n:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Li6/e;->d(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c7

    :cond_1e3
    add-int/2addr v0, v5

    iget-object v1, p0, Lc6/b;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f3

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, Li6/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f3
    iput v5, p0, Lc6/b;->o:I

    move v1, v2

    move v5, v1

    :goto_1f7
    iget-object v6, p0, Lc6/b;->z:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_213

    iget-object v6, p0, Lc6/b;->z:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Li6/e;->d(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f7

    :cond_213
    add-int/2addr v0, v5

    iget-object v1, p0, Lc6/b;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_223

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, Li6/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_223
    iput v5, p0, Lc6/b;->A:I

    move v1, v2

    :goto_226
    iget-object v5, p0, Lc6/b;->B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_240

    const/16 v5, 0x17

    iget-object v6, p0, Lc6/b;->B:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-static {v5, v6}, Li6/e;->e(ILi6/p;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_226

    :cond_240
    move v1, v2

    move v5, v1

    :goto_242
    iget-object v6, p0, Lc6/b;->C:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_25e

    iget-object v6, p0, Lc6/b;->C:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Li6/e;->d(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_242

    :cond_25e
    add-int/2addr v0, v5

    iget-object v1, p0, Lc6/b;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26e

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, Li6/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26e
    iput v5, p0, Lc6/b;->D:I

    iget v1, p0, Lc6/b;->c:I

    const/16 v5, 0x40

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_280

    const/16 v1, 0x1e

    iget-object v5, p0, Lc6/b;->E:Lc6/t;

    invoke-static {v1, v5}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_280
    move v1, v2

    :goto_281
    iget-object v5, p0, Lc6/b;->F:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_29d

    iget-object v5, p0, Lc6/b;->F:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Li6/e;->d(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_281

    :cond_29d
    add-int/2addr v0, v1

    iget-object v1, p0, Lc6/b;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    iget v0, p0, Lc6/b;->c:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2b4

    iget-object v0, p0, Lc6/b;->G:Lc6/w;

    invoke-static {v4, v0}, Li6/e;->e(ILi6/p;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2b4
    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lc6/b;->b:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/b;->N:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/b;->H:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/b;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_18

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_18
    move v0, v2

    :goto_19
    iget-object v3, p0, Lc6/b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    iget-object v3, p0, Lc6/b;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/s;

    invoke-virtual {v3}, Lc6/s;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_32

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    move v0, v2

    :goto_36
    iget-object v3, p0, Lc6/b;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    iget-object v3, p0, Lc6/b;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q;

    invoke-virtual {v3}, Lc6/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4f

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_52
    move v0, v2

    :goto_53
    iget-object v3, p0, Lc6/b;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6f

    iget-object v3, p0, Lc6/b;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q;

    invoke-virtual {v3}, Lc6/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6c

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_6f
    move v0, v2

    :goto_70
    iget-object v3, p0, Lc6/b;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8c

    iget-object v3, p0, Lc6/b;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/d;

    invoke-virtual {v3}, Lc6/d;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_89

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_8c
    move v0, v2

    :goto_8d
    iget-object v3, p0, Lc6/b;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a9

    iget-object v3, p0, Lc6/b;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/i;

    invoke-virtual {v3}, Lc6/i;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a6

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_a9
    move v0, v2

    :goto_aa
    iget-object v3, p0, Lc6/b;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c6

    iget-object v3, p0, Lc6/b;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/n;

    invoke-virtual {v3}, Lc6/n;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c3

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    :cond_c6
    move v0, v2

    :goto_c7
    iget-object v3, p0, Lc6/b;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e3

    iget-object v3, p0, Lc6/b;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/r;

    invoke-virtual {v3}, Lc6/r;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e0

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_e0
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    :cond_e3
    move v0, v2

    :goto_e4
    iget-object v3, p0, Lc6/b;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_100

    iget-object v3, p0, Lc6/b;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/g;

    invoke-virtual {v3}, Lc6/g;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_fd

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_e4

    :cond_100
    invoke-virtual {p0}, Lc6/b;->m()Z

    move-result v0

    if-eqz v0, :cond_111

    iget-object v0, p0, Lc6/b;->x:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_111

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_111
    move v0, v2

    :goto_112
    iget-object v3, p0, Lc6/b;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_12e

    iget-object v3, p0, Lc6/b;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q;

    invoke-virtual {v3}, Lc6/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_12b

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_12b
    add-int/lit8 v0, v0, 0x1

    goto :goto_112

    :cond_12e
    iget v0, p0, Lc6/b;->c:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_137

    move v0, v1

    goto :goto_138

    :cond_137
    move v0, v2

    :goto_138
    if-eqz v0, :cond_145

    iget-object v0, p0, Lc6/b;->E:Lc6/t;

    invoke-virtual {v0}, Lc6/t;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_145

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_145
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_14e

    iput-byte v2, p0, Lc6/b;->H:B

    return v2

    :cond_14e
    iput-byte v1, p0, Lc6/b;->H:B

    return v1
.end method

.method public m()Z
    .registers 2

    iget p0, p0, Lc6/b;->c:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final n()V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lc6/b;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lc6/b;->e:I

    iput v0, p0, Lc6/b;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->s:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->t:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/b;->u:Ljava/util/List;

    iput v0, p0, Lc6/b;->w:I

    sget-object v1, Lc6/q;->t:Lc6/q;

    iput-object v1, p0, Lc6/b;->x:Lc6/q;

    iput v0, p0, Lc6/b;->y:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/b;->z:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/b;->B:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/b;->C:Ljava/util/List;

    sget-object v0, Lc6/t;->g:Lc6/t;

    iput-object v0, p0, Lc6/b;->E:Lc6/t;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/b;->F:Ljava/util/List;

    sget-object v0, Lc6/w;->e:Lc6/w;

    iput-object v0, p0, Lc6/b;->G:Lc6/w;

    return-void
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/b$b;

    invoke-direct {p0}, Lc6/b$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/b$b;

    invoke-direct {v0}, Lc6/b$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/b$b;->h(Lc6/b;)Lc6/b$b;

    return-object v0
.end method
