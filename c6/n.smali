.class public final Lc6/n;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final u:Lc6/n;

.field public static v:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/n;",
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

.field public o:Lc6/u;

.field public p:I

.field public q:I

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:B

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/n$a;

    invoke-direct {v0}, Lc6/n$a;-><init>()V

    sput-object v0, Lc6/n;->v:Li6/r;

    new-instance v0, Lc6/n;

    invoke-direct {v0}, Lc6/n;-><init>()V

    sput-object v0, Lc6/n;->u:Lc6/n;

    invoke-virtual {v0}, Lc6/n;->p()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc6/n;->n:I

    iput-byte v0, p0, Lc6/n;->s:B

    iput v0, p0, Lc6/n;->t:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/n;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 p3, -0x1

    iput p3, p0, Lc6/n;->n:I

    iput-byte p3, p0, Lc6/n;->s:B

    iput p3, p0, Lc6/n;->t:I

    invoke-virtual {p0}, Lc6/n;->p()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_18
    :goto_18
    const/16 v4, 0x100

    const/16 v5, 0x20

    const/16 v6, 0x2000

    const/16 v7, 0x200

    if-nez v2, :cond_24f

    :try_start_22
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_298

    invoke-virtual {p0, p1, v1, p2, v8}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    goto/16 :goto_1f2

    :sswitch_30
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    invoke-virtual {p1, v8}, Li6/d;->d(I)I

    move-result v8

    and-int/lit16 v9, v3, 0x2000

    if-eq v9, v6, :cond_4b

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v9

    if-lez v9, :cond_4b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc6/n;->r:Ljava/util/List;

    or-int/lit16 v3, v3, 0x2000

    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v9

    if-lez v9, :cond_5f

    iget-object v9, p0, Lc6/n;->r:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_5f
    iput v8, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto :goto_18

    :sswitch_65
    and-int/lit16 v8, v3, 0x2000

    if-eq v8, v6, :cond_72

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lc6/n;->r:Ljava/util/List;

    or-int/lit16 v3, v3, 0x2000

    :cond_72
    iget-object v8, p0, Lc6/n;->r:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :sswitch_80
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    invoke-virtual {p1, v8}, Li6/d;->d(I)I

    move-result v8

    and-int/lit16 v9, v3, 0x200

    if-eq v9, v7, :cond_9b

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v9

    if-lez v9, :cond_9b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc6/n;->m:Ljava/util/List;

    or-int/lit16 v3, v3, 0x200

    :cond_9b
    :goto_9b
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v9

    if-lez v9, :cond_af

    iget-object v9, p0, Lc6/n;->m:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_af
    iput v8, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto/16 :goto_18

    :sswitch_b6
    and-int/lit16 v8, v3, 0x200

    if-eq v8, v7, :cond_c3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lc6/n;->m:Ljava/util/List;

    or-int/lit16 v3, v3, 0x200

    :cond_c3
    iget-object v8, p0, Lc6/n;->m:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_d2
    and-int/lit16 v8, v3, 0x100

    if-eq v8, v4, :cond_df

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lc6/n;->l:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_df
    iget-object v8, p0, Lc6/n;->l:Ljava/util/List;

    sget-object v9, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v9, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_ec
    iget v8, p0, Lc6/n;->c:I

    or-int/2addr v8, v0

    iput v8, p0, Lc6/n;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    iput v8, p0, Lc6/n;->d:I

    goto/16 :goto_18

    :sswitch_f9
    iget v8, p0, Lc6/n;->c:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lc6/n;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    iput v8, p0, Lc6/n;->k:I

    goto/16 :goto_18

    :sswitch_107
    iget v8, p0, Lc6/n;->c:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lc6/n;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    iput v8, p0, Lc6/n;->h:I

    goto/16 :goto_18

    :sswitch_115
    iget v8, p0, Lc6/n;->c:I

    or-int/2addr v8, v7

    iput v8, p0, Lc6/n;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    iput v8, p0, Lc6/n;->q:I

    goto/16 :goto_18

    :sswitch_122
    iget v8, p0, Lc6/n;->c:I

    or-int/2addr v8, v4

    iput v8, p0, Lc6/n;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    iput v8, p0, Lc6/n;->p:I

    goto/16 :goto_18

    :sswitch_12f
    iget v8, p0, Lc6/n;->c:I

    const/16 v10, 0x80

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_143

    iget-object v8, p0, Lc6/n;->o:Lc6/u;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lc6/u$b;

    invoke-direct {v9}, Lc6/u$b;-><init>()V

    invoke-virtual {v9, v8}, Lc6/u$b;->h(Lc6/u;)Lc6/u$b;

    :cond_143
    sget-object v8, Lc6/u;->m:Li6/r;

    invoke-virtual {p1, v8, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v8

    check-cast v8, Lc6/u;

    iput-object v8, p0, Lc6/n;->o:Lc6/u;

    if-eqz v9, :cond_158

    invoke-virtual {v9, v8}, Lc6/u$b;->h(Lc6/u;)Lc6/u$b;

    invoke-virtual {v9}, Lc6/u$b;->g()Lc6/u;

    move-result-object v8

    iput-object v8, p0, Lc6/n;->o:Lc6/u;

    :cond_158
    iget v8, p0, Lc6/n;->c:I

    or-int/2addr v8, v10

    iput v8, p0, Lc6/n;->c:I

    goto/16 :goto_18

    :sswitch_15f
    iget v8, p0, Lc6/n;->c:I

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_174

    iget-object v8, p0, Lc6/n;->j:Lc6/q;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v9

    goto :goto_174

    :catchall_16e
    move-exception p1

    goto/16 :goto_207

    :catch_171
    move-exception p1

    goto/16 :goto_1f7

    :cond_174
    :goto_174
    sget-object v8, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v8, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v8

    check-cast v8, Lc6/q;

    iput-object v8, p0, Lc6/n;->j:Lc6/q;

    if-eqz v9, :cond_189

    invoke-virtual {v9, v8}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v9}, Lc6/q$c;->g()Lc6/q;

    move-result-object v8

    iput-object v8, p0, Lc6/n;->j:Lc6/q;

    :cond_189
    iget v8, p0, Lc6/n;->c:I

    or-int/2addr v8, v5

    iput v8, p0, Lc6/n;->c:I

    goto/16 :goto_18

    :sswitch_190
    and-int/lit8 v8, v3, 0x20

    if-eq v8, v5, :cond_19d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lc6/n;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :cond_19d
    iget-object v8, p0, Lc6/n;->i:Ljava/util/List;

    sget-object v9, Lc6/s;->n:Li6/r;

    invoke-virtual {p1, v9, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :sswitch_1aa
    iget v8, p0, Lc6/n;->c:I

    const/16 v10, 0x8

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_1ba

    iget-object v8, p0, Lc6/n;->g:Lc6/q;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v9

    :cond_1ba
    sget-object v8, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v8, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v8

    check-cast v8, Lc6/q;

    iput-object v8, p0, Lc6/n;->g:Lc6/q;

    if-eqz v9, :cond_1cf

    invoke-virtual {v9, v8}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v9}, Lc6/q$c;->g()Lc6/q;

    move-result-object v8

    iput-object v8, p0, Lc6/n;->g:Lc6/q;

    :cond_1cf
    iget v8, p0, Lc6/n;->c:I

    or-int/2addr v8, v10

    iput v8, p0, Lc6/n;->c:I

    goto/16 :goto_18

    :sswitch_1d6
    iget v8, p0, Lc6/n;->c:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lc6/n;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    iput v8, p0, Lc6/n;->f:I

    goto/16 :goto_18

    :sswitch_1e4
    iget v8, p0, Lc6/n;->c:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lc6/n;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    iput v8, p0, Lc6/n;->e:I
    :try_end_1f0
    .catch Li6/j; {:try_start_22 .. :try_end_1f0} :catch_203
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_1f0} :catch_171
    .catchall {:try_start_22 .. :try_end_1f0} :catchall_16e

    goto/16 :goto_18

    :goto_1f2
    if-nez v4, :cond_18

    :sswitch_1f4
    move v2, v0

    goto/16 :goto_18

    :goto_1f7
    :try_start_1f7
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_203
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_207
    .catchall {:try_start_1f7 .. :try_end_207} :catchall_16e

    :goto_207
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v5, :cond_213

    iget-object p2, p0, Lc6/n;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/n;->i:Ljava/util/List;

    :cond_213
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v4, :cond_21f

    iget-object p2, p0, Lc6/n;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/n;->l:Ljava/util/List;

    :cond_21f
    and-int/lit16 p2, v3, 0x200

    if-ne p2, v7, :cond_22b

    iget-object p2, p0, Lc6/n;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/n;->m:Ljava/util/List;

    :cond_22b
    and-int/lit16 p2, v3, 0x2000

    if-ne p2, v6, :cond_237

    iget-object p2, p0, Lc6/n;->r:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/n;->r:Ljava/util/List;

    :cond_237
    :try_start_237
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_23a} :catch_243
    .catchall {:try_start_237 .. :try_end_23a} :catchall_23b

    goto :goto_243

    :catchall_23b
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/n;->b:Li6/c;

    throw p1

    :catch_243
    :goto_243
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/n;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_24f
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v5, :cond_25b

    iget-object p1, p0, Lc6/n;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/n;->i:Ljava/util/List;

    :cond_25b
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v4, :cond_267

    iget-object p1, p0, Lc6/n;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/n;->l:Ljava/util/List;

    :cond_267
    and-int/lit16 p1, v3, 0x200

    if-ne p1, v7, :cond_273

    iget-object p1, p0, Lc6/n;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/n;->m:Ljava/util/List;

    :cond_273
    and-int/lit16 p1, v3, 0x2000

    if-ne p1, v6, :cond_27f

    iget-object p1, p0, Lc6/n;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/n;->r:Ljava/util/List;

    :cond_27f
    :try_start_27f
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_282
    .catch Ljava/io/IOException; {:try_start_27f .. :try_end_282} :catch_28b
    .catchall {:try_start_27f .. :try_end_282} :catchall_283

    goto :goto_28b

    :catchall_283
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/n;->b:Li6/c;

    throw p1

    :catch_28b
    :goto_28b
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/n;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void

    nop

    :sswitch_data_298
    .sparse-switch
        0x0 -> :sswitch_1f4
        0x8 -> :sswitch_1e4
        0x10 -> :sswitch_1d6
        0x1a -> :sswitch_1aa
        0x22 -> :sswitch_190
        0x2a -> :sswitch_15f
        0x32 -> :sswitch_12f
        0x38 -> :sswitch_122
        0x40 -> :sswitch_115
        0x48 -> :sswitch_107
        0x50 -> :sswitch_f9
        0x58 -> :sswitch_ec
        0x62 -> :sswitch_d2
        0x68 -> :sswitch_b6
        0x6a -> :sswitch_80
        0xf8 -> :sswitch_65
        0xfa -> :sswitch_30
    .end sparse-switch
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput p2, p0, Lc6/n;->n:I

    iput-byte p2, p0, Lc6/n;->s:B

    iput p2, p0, Lc6/n;->t:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/n;->b:Li6/c;

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

    invoke-virtual {p0}, Lc6/n;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/n;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_13

    iget v1, p0, Lc6/n;->e:I

    invoke-virtual {p1, v3, v1}, Li6/e;->p(II)V

    :cond_13
    iget v1, p0, Lc6/n;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1e

    iget v1, p0, Lc6/n;->f:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_1e
    iget v1, p0, Lc6/n;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x3

    iget-object v5, p0, Lc6/n;->g:Lc6/q;

    invoke-virtual {p1, v1, v5}, Li6/e;->r(ILi6/p;)V

    :cond_2b
    const/4 v1, 0x0

    move v5, v1

    :goto_2d
    iget-object v6, p0, Lc6/n;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_43

    iget-object v6, p0, Lc6/n;->i:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li6/p;

    invoke-virtual {p1, v4, v6}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_43
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_50

    const/4 v4, 0x5

    iget-object v5, p0, Lc6/n;->j:Lc6/q;

    invoke-virtual {p1, v4, v5}, Li6/e;->r(ILi6/p;)V

    :cond_50
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5d

    const/4 v4, 0x6

    iget-object v5, p0, Lc6/n;->o:Lc6/u;

    invoke-virtual {p1, v4, v5}, Li6/e;->r(ILi6/p;)V

    :cond_5d
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6a

    const/4 v4, 0x7

    iget v5, p0, Lc6/n;->p:I

    invoke-virtual {p1, v4, v5}, Li6/e;->p(II)V

    :cond_6a
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_76

    iget v4, p0, Lc6/n;->q:I

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    :cond_76
    iget v2, p0, Lc6/n;->c:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_84

    const/16 v2, 0x9

    iget v4, p0, Lc6/n;->h:I

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    :cond_84
    iget v2, p0, Lc6/n;->c:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_92

    const/16 v2, 0xa

    iget v4, p0, Lc6/n;->k:I

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    :cond_92
    iget v2, p0, Lc6/n;->c:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9e

    const/16 v2, 0xb

    iget v3, p0, Lc6/n;->d:I

    invoke-virtual {p1, v2, v3}, Li6/e;->p(II)V

    :cond_9e
    move v2, v1

    :goto_9f
    iget-object v3, p0, Lc6/n;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b7

    const/16 v3, 0xc

    iget-object v4, p0, Lc6/n;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_b7
    iget-object v2, p0, Lc6/n;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c9

    const/16 v2, 0x6a

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    iget v2, p0, Lc6/n;->n:I

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    :cond_c9
    move v2, v1

    :goto_ca
    iget-object v3, p0, Lc6/n;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e4

    iget-object v3, p0, Lc6/n;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Li6/e;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    :cond_e4
    :goto_e4
    iget-object v2, p0, Lc6/n;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_100

    const/16 v2, 0x1f

    iget-object v3, p0, Lc6/n;->r:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Li6/e;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e4

    :cond_100
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/n;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/n;->u:Lc6/n;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 9

    iget v0, p0, Lc6/n;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/n;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_16

    iget v0, p0, Lc6/n;->e:I

    invoke-static {v3, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    iget v4, p0, Lc6/n;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_24

    iget v4, p0, Lc6/n;->f:I

    invoke-static {v1, v4}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_24
    iget v4, p0, Lc6/n;->c:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_33

    const/4 v4, 0x3

    iget-object v7, p0, Lc6/n;->g:Lc6/q;

    invoke-static {v4, v7}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_33
    move v4, v2

    :goto_34
    iget-object v7, p0, Lc6/n;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4c

    iget-object v7, p0, Lc6/n;->i:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li6/p;

    invoke-static {v5, v7}, Li6/e;->e(ILi6/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_4c
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5b

    const/4 v4, 0x5

    iget-object v5, p0, Lc6/n;->j:Lc6/q;

    invoke-static {v4, v5}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5b
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6a

    const/4 v4, 0x6

    iget-object v5, p0, Lc6/n;->o:Lc6/u;

    invoke-static {v4, v5}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_6a
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_79

    const/4 v4, 0x7

    iget v5, p0, Lc6/n;->p:I

    invoke-static {v4, v5}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_79
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_87

    iget v4, p0, Lc6/n;->q:I

    invoke-static {v6, v4}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_87
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_97

    const/16 v4, 0x9

    iget v5, p0, Lc6/n;->h:I

    invoke-static {v4, v5}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_97
    iget v4, p0, Lc6/n;->c:I

    const/16 v5, 0x40

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_a7

    const/16 v4, 0xa

    iget v5, p0, Lc6/n;->k:I

    invoke-static {v4, v5}, Li6/e;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_a7
    iget v4, p0, Lc6/n;->c:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_b5

    const/16 v3, 0xb

    iget v4, p0, Lc6/n;->d:I

    invoke-static {v3, v4}, Li6/e;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_b5
    move v3, v2

    :goto_b6
    iget-object v4, p0, Lc6/n;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d0

    const/16 v4, 0xc

    iget-object v5, p0, Lc6/n;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-static {v4, v5}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_d0
    move v3, v2

    move v4, v3

    :goto_d2
    iget-object v5, p0, Lc6/n;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_ee

    iget-object v5, p0, Lc6/n;->m:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Li6/e;->d(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d2

    :cond_ee
    add-int/2addr v0, v4

    iget-object v3, p0, Lc6/n;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fe

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_fe
    iput v4, p0, Lc6/n;->n:I

    move v3, v2

    :goto_101
    iget-object v4, p0, Lc6/n;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11d

    iget-object v4, p0, Lc6/n;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_101

    :cond_11d
    add-int/2addr v0, v3

    iget-object v2, p0, Lc6/n;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lc6/n;->b:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/n;->t:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/n;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/n;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_18

    iput-byte v2, p0, Lc6/n;->s:B

    return v2

    :cond_18
    invoke-virtual {p0}, Lc6/n;->o()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lc6/n;->g:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_29

    iput-byte v2, p0, Lc6/n;->s:B

    return v2

    :cond_29
    move v0, v2

    :goto_2a
    iget-object v3, p0, Lc6/n;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_46

    iget-object v3, p0, Lc6/n;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/s;

    invoke-virtual {v3}, Lc6/s;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_43

    iput-byte v2, p0, Lc6/n;->s:B

    return v2

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_46
    invoke-virtual {p0}, Lc6/n;->m()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lc6/n;->j:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_57

    iput-byte v2, p0, Lc6/n;->s:B

    return v2

    :cond_57
    move v0, v2

    :goto_58
    iget-object v3, p0, Lc6/n;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_74

    iget-object v3, p0, Lc6/n;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q;

    invoke-virtual {v3}, Lc6/q;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_71

    iput-byte v2, p0, Lc6/n;->s:B

    return v2

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_74
    iget v0, p0, Lc6/n;->c:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7d

    move v0, v1

    goto :goto_7e

    :cond_7d
    move v0, v2

    :goto_7e
    if-eqz v0, :cond_8b

    iget-object v0, p0, Lc6/n;->o:Lc6/u;

    invoke-virtual {v0}, Lc6/u;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8b

    iput-byte v2, p0, Lc6/n;->s:B

    return v2

    :cond_8b
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_94

    iput-byte v2, p0, Lc6/n;->s:B

    return v2

    :cond_94
    iput-byte v1, p0, Lc6/n;->s:B

    return v1
.end method

.method public m()Z
    .registers 2

    iget p0, p0, Lc6/n;->c:I

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

    iget p0, p0, Lc6/n;->c:I

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

    new-instance p0, Lc6/n$b;

    invoke-direct {p0}, Lc6/n$b;-><init>()V

    return-object p0
.end method

.method public o()Z
    .registers 2

    iget p0, p0, Lc6/n;->c:I

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

    const/16 v0, 0x206

    iput v0, p0, Lc6/n;->d:I

    const/16 v0, 0x806

    iput v0, p0, Lc6/n;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lc6/n;->f:I

    sget-object v1, Lc6/q;->t:Lc6/q;

    iput-object v1, p0, Lc6/n;->g:Lc6/q;

    iput v0, p0, Lc6/n;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc6/n;->i:Ljava/util/List;

    iput-object v1, p0, Lc6/n;->j:Lc6/q;

    iput v0, p0, Lc6/n;->k:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/n;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/n;->m:Ljava/util/List;

    sget-object v1, Lc6/u;->l:Lc6/u;

    iput-object v1, p0, Lc6/n;->o:Lc6/u;

    iput v0, p0, Lc6/n;->p:I

    iput v0, p0, Lc6/n;->q:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/n;->r:Ljava/util/List;

    return-void
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/n$b;

    invoke-direct {v0}, Lc6/n$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/n$b;->h(Lc6/n;)Lc6/n$b;

    return-object v0
.end method
