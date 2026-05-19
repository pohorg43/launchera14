.class public final Lc6/q;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/q$c;,
        Lc6/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final t:Lc6/q;

.field public static u:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/q;",
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
            "Lc6/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I

.field public g:Lc6/q;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Lc6/q;

.field public n:I

.field public o:Lc6/q;

.field public p:I

.field public q:I

.field public r:B

.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/q$a;

    invoke-direct {v0}, Lc6/q$a;-><init>()V

    sput-object v0, Lc6/q;->u:Li6/r;

    new-instance v0, Lc6/q;

    invoke-direct {v0}, Lc6/q;-><init>()V

    sput-object v0, Lc6/q;->t:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->r()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/q;->r:B

    iput v0, p0, Lc6/q;->s:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/q;->b:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/q;->r:B

    iput p3, p0, Lc6/q;->s:I

    invoke-virtual {p0}, Lc6/q;->r()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_16
    :goto_16
    if-nez v2, :cond_18a

    :try_start_18
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_1ae

    invoke-virtual {p0, p1, v1, p2, v4}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    goto/16 :goto_151

    :sswitch_26
    iget v4, p0, Lc6/q;->c:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->p:I

    goto :goto_16

    :sswitch_33
    iget v4, p0, Lc6/q;->c:I

    const/16 v6, 0x400

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_4a

    iget-object v4, p0, Lc6/q;->o:Lc6/q;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v5

    goto :goto_4a

    :catchall_44
    move-exception p1

    goto/16 :goto_166

    :catch_47
    move-exception p1

    goto/16 :goto_156

    :cond_4a
    :goto_4a
    sget-object v4, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v4, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v4

    check-cast v4, Lc6/q;

    iput-object v4, p0, Lc6/q;->o:Lc6/q;

    if-eqz v5, :cond_5f

    invoke-virtual {v5, v4}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v5}, Lc6/q$c;->g()Lc6/q;

    move-result-object v4

    iput-object v4, p0, Lc6/q;->o:Lc6/q;

    :cond_5f
    iget v4, p0, Lc6/q;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lc6/q;->c:I

    goto :goto_16

    :sswitch_65
    iget v4, p0, Lc6/q;->c:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->l:I

    goto :goto_16

    :sswitch_72
    iget v4, p0, Lc6/q;->c:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->n:I

    goto :goto_16

    :sswitch_7f
    iget v4, p0, Lc6/q;->c:I

    const/16 v6, 0x100

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_8f

    iget-object v4, p0, Lc6/q;->m:Lc6/q;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v5

    :cond_8f
    sget-object v4, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v4, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v4

    check-cast v4, Lc6/q;

    iput-object v4, p0, Lc6/q;->m:Lc6/q;

    if-eqz v5, :cond_a4

    invoke-virtual {v5, v4}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v5}, Lc6/q$c;->g()Lc6/q;

    move-result-object v4

    iput-object v4, p0, Lc6/q;->m:Lc6/q;

    :cond_a4
    iget v4, p0, Lc6/q;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lc6/q;->c:I

    goto/16 :goto_16

    :sswitch_ab
    iget v4, p0, Lc6/q;->c:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->k:I

    goto/16 :goto_16

    :sswitch_b9
    iget v4, p0, Lc6/q;->c:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->h:I

    goto/16 :goto_16

    :sswitch_c7
    iget v4, p0, Lc6/q;->c:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->j:I

    goto/16 :goto_16

    :sswitch_d5
    iget v4, p0, Lc6/q;->c:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->i:I

    goto/16 :goto_16

    :sswitch_e3
    iget v4, p0, Lc6/q;->c:I

    const/4 v6, 0x4

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_f2

    iget-object v4, p0, Lc6/q;->g:Lc6/q;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v5

    :cond_f2
    sget-object v4, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v4, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v4

    check-cast v4, Lc6/q;

    iput-object v4, p0, Lc6/q;->g:Lc6/q;

    if-eqz v5, :cond_107

    invoke-virtual {v5, v4}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v5}, Lc6/q$c;->g()Lc6/q;

    move-result-object v4

    iput-object v4, p0, Lc6/q;->g:Lc6/q;

    :cond_107
    iget v4, p0, Lc6/q;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lc6/q;->c:I

    goto/16 :goto_16

    :sswitch_10e
    iget v4, p0, Lc6/q;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->f:I

    goto/16 :goto_16

    :sswitch_11c
    iget v4, p0, Lc6/q;->c:I

    or-int/2addr v4, v0

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->e()Z

    move-result v4

    iput-boolean v4, p0, Lc6/q;->e:Z

    goto/16 :goto_16

    :sswitch_129
    and-int/lit8 v4, v3, 0x1

    if-eq v4, v0, :cond_136

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lc6/q;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    :cond_136
    iget-object v4, p0, Lc6/q;->d:Ljava/util/List;

    sget-object v5, Lc6/q$b;->i:Li6/r;

    invoke-virtual {p1, v5, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :sswitch_143
    iget v4, p0, Lc6/q;->c:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lc6/q;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v4

    iput v4, p0, Lc6/q;->q:I
    :try_end_14f
    .catch Li6/j; {:try_start_18 .. :try_end_14f} :catch_162
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_14f} :catch_47
    .catchall {:try_start_18 .. :try_end_14f} :catchall_44

    goto/16 :goto_16

    :goto_151
    if-nez v4, :cond_16

    :sswitch_153
    move v2, v0

    goto/16 :goto_16

    :goto_156
    :try_start_156
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_162
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_166
    .catchall {:try_start_156 .. :try_end_166} :catchall_44

    :goto_166
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_172

    iget-object p2, p0, Lc6/q;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/q;->d:Ljava/util/List;

    :cond_172
    :try_start_172
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_17e
    .catchall {:try_start_172 .. :try_end_175} :catchall_176

    goto :goto_17e

    :catchall_176
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/q;->b:Li6/c;

    throw p1

    :catch_17e
    :goto_17e
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/q;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_18a
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_196

    iget-object p1, p0, Lc6/q;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/q;->d:Ljava/util/List;

    :cond_196
    :try_start_196
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_199} :catch_1a2
    .catchall {:try_start_196 .. :try_end_199} :catchall_19a

    goto :goto_1a2

    :catchall_19a
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/q;->b:Li6/c;

    throw p1

    :catch_1a2
    :goto_1a2
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/q;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void

    :sswitch_data_1ae
    .sparse-switch
        0x0 -> :sswitch_153
        0x8 -> :sswitch_143
        0x12 -> :sswitch_129
        0x18 -> :sswitch_11c
        0x20 -> :sswitch_10e
        0x2a -> :sswitch_e3
        0x30 -> :sswitch_d5
        0x38 -> :sswitch_c7
        0x40 -> :sswitch_b9
        0x48 -> :sswitch_ab
        0x52 -> :sswitch_7f
        0x58 -> :sswitch_72
        0x60 -> :sswitch_65
        0x6a -> :sswitch_33
        0x70 -> :sswitch_26
    .end sparse-switch
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/q;->r:B

    iput p2, p0, Lc6/q;->s:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/q;->b:Li6/c;

    return-void
.end method

.method public static s(Lc6/q;)Lc6/q$c;
    .registers 2

    new-instance v0, Lc6/q$c;

    invoke-direct {v0}, Lc6/q$c;-><init>()V

    invoke-virtual {v0, p0}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    return-object v0
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/q;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_14

    iget v1, p0, Lc6/q;->q:I

    invoke-virtual {p1, v3, v1}, Li6/e;->p(II)V

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iget-object v2, p0, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    invoke-virtual {p1, v4, v2}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2c
    iget v1, p0, Lc6/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3b

    iget-boolean v1, p0, Lc6/q;->e:Z

    const/16 v2, 0x18

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    invoke-virtual {p1, v1}, Li6/e;->t(I)V

    :cond_3b
    iget v1, p0, Lc6/q;->c:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_46

    iget v1, p0, Lc6/q;->f:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_46
    iget v1, p0, Lc6/q;->c:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_51

    const/4 v1, 0x5

    iget-object v2, p0, Lc6/q;->g:Lc6/q;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    :cond_51
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5e

    const/4 v1, 0x6

    iget v2, p0, Lc6/q;->i:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_5e
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6b

    const/4 v1, 0x7

    iget v2, p0, Lc6/q;->j:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_6b
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_77

    iget v1, p0, Lc6/q;->h:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_77
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_85

    const/16 v1, 0x9

    iget v2, p0, Lc6/q;->k:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_85
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_93

    const/16 v1, 0xa

    iget-object v2, p0, Lc6/q;->m:Lc6/q;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    :cond_93
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a1

    const/16 v1, 0xb

    iget v2, p0, Lc6/q;->n:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_a1
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_af

    const/16 v1, 0xc

    iget v2, p0, Lc6/q;->l:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_af
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_bd

    const/16 v1, 0xd

    iget-object v2, p0, Lc6/q;->o:Lc6/q;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    :cond_bd
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_cb

    const/16 v1, 0xe

    iget v2, p0, Lc6/q;->p:I

    invoke-virtual {p1, v1, v2}, Li6/e;->p(II)V

    :cond_cb
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/q;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/q;->t:Lc6/q;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lc6/q;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/q;->c:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lc6/q;->q:I

    invoke-static {v3, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iget-object v1, p0, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v2, v1, :cond_31

    iget-object v1, p0, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/p;

    invoke-static {v4, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_31
    iget v1, p0, Lc6/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3d

    const/4 v1, 0x3

    invoke-static {v1}, Li6/e;->i(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_3d
    iget v1, p0, Lc6/q;->c:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_4a

    iget v1, p0, Lc6/q;->f:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget v1, p0, Lc6/q;->c:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_57

    const/4 v1, 0x5

    iget-object v2, p0, Lc6/q;->g:Lc6/q;

    invoke-static {v1, v2}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_57
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_66

    const/4 v1, 0x6

    iget v2, p0, Lc6/q;->i:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_75

    const/4 v1, 0x7

    iget v2, p0, Lc6/q;->j:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_83

    iget v1, p0, Lc6/q;->h:I

    invoke-static {v2, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_83
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_93

    const/16 v1, 0x9

    iget v2, p0, Lc6/q;->k:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a3

    const/16 v1, 0xa

    iget-object v2, p0, Lc6/q;->m:Lc6/q;

    invoke-static {v1, v2}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a3
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b3

    const/16 v1, 0xb

    iget v2, p0, Lc6/q;->n:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b3
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c3

    const/16 v1, 0xc

    iget v2, p0, Lc6/q;->l:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c3
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d3

    const/16 v1, 0xd

    iget-object v2, p0, Lc6/q;->o:Lc6/q;

    invoke-static {v1, v2}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d3
    iget v1, p0, Lc6/q;->c:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e3

    const/16 v1, 0xe

    iget v2, p0, Lc6/q;->p:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e3
    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc6/q;->b:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/q;->s:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/q;->r:B

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
    iget-object v3, p0, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lc6/q;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/q$b;

    invoke-virtual {v3}, Lc6/q$b;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lc6/q;->r:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    invoke-virtual {p0}, Lc6/q;->o()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lc6/q;->g:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_38

    iput-byte v2, p0, Lc6/q;->r:B

    return v2

    :cond_38
    invoke-virtual {p0}, Lc6/q;->p()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lc6/q;->m:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_49

    iput-byte v2, p0, Lc6/q;->r:B

    return v2

    :cond_49
    invoke-virtual {p0}, Lc6/q;->m()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lc6/q;->o:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5a

    iput-byte v2, p0, Lc6/q;->r:B

    return v2

    :cond_5a
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_63

    iput-byte v2, p0, Lc6/q;->r:B

    return v2

    :cond_63
    iput-byte v1, p0, Lc6/q;->r:B

    return v1
.end method

.method public m()Z
    .registers 2

    iget p0, p0, Lc6/q;->c:I

    const/16 v0, 0x400

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

    iget p0, p0, Lc6/q;->c:I

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

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/q$c;

    invoke-direct {p0}, Lc6/q$c;-><init>()V

    return-object p0
.end method

.method public o()Z
    .registers 2

    iget p0, p0, Lc6/q;->c:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public p()Z
    .registers 2

    iget p0, p0, Lc6/q;->c:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public q()Z
    .registers 2

    iget p0, p0, Lc6/q;->c:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final r()V
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/q;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc6/q;->e:Z

    iput v0, p0, Lc6/q;->f:I

    sget-object v1, Lc6/q;->t:Lc6/q;

    iput-object v1, p0, Lc6/q;->g:Lc6/q;

    iput v0, p0, Lc6/q;->h:I

    iput v0, p0, Lc6/q;->i:I

    iput v0, p0, Lc6/q;->j:I

    iput v0, p0, Lc6/q;->k:I

    iput v0, p0, Lc6/q;->l:I

    iput-object v1, p0, Lc6/q;->m:Lc6/q;

    iput v0, p0, Lc6/q;->n:I

    iput-object v1, p0, Lc6/q;->o:Lc6/q;

    iput v0, p0, Lc6/q;->p:I

    iput v0, p0, Lc6/q;->q:I

    return-void
.end method

.method public t()Lc6/q$c;
    .registers 1

    invoke-static {p0}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Li6/p$a;
    .registers 1

    invoke-virtual {p0}, Lc6/q;->t()Lc6/q$c;

    move-result-object p0

    return-object p0
.end method
