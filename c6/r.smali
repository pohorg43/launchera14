.class public final Lc6/r;
.super Li6/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/h$d<",
        "Lc6/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lc6/r;

.field public static p:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Li6/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/s;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc6/q;

.field public h:I

.field public i:Lc6/q;

.field public j:I

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/a;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m:B

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/r$a;

    invoke-direct {v0}, Lc6/r$a;-><init>()V

    sput-object v0, Lc6/r;->p:Li6/r;

    new-instance v0, Lc6/r;

    invoke-direct {v0}, Lc6/r;-><init>()V

    sput-object v0, Lc6/r;->o:Lc6/r;

    invoke-virtual {v0}, Lc6/r;->o()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h$d;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/r;->m:B

    iput v0, p0, Lc6/r;->n:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/r;->b:Li6/c;

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

    iput-byte p3, p0, Lc6/r;->m:B

    iput p3, p0, Lc6/r;->n:I

    invoke-virtual {p0}, Lc6/r;->o()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_16
    :goto_16
    const/16 v4, 0x80

    const/4 v5, 0x4

    const/16 v6, 0x100

    if-nez v2, :cond_193

    :try_start_1d
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_1d0

    invoke-virtual {p0, p1, v1, p2, v7}, Li6/h$d;->k(Li6/d;Li6/e;Li6/f;I)Z

    move-result v4

    goto/16 :goto_142

    :sswitch_2b
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-virtual {p1, v7}, Li6/d;->d(I)I

    move-result v7

    and-int/lit16 v8, v3, 0x100

    if-eq v8, v6, :cond_46

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v8

    if-lez v8, :cond_46

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lc6/r;->l:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_46
    :goto_46
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v8

    if-lez v8, :cond_5a

    iget-object v8, p0, Lc6/r;->l:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_5a
    iput v7, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto :goto_16

    :sswitch_60
    and-int/lit16 v7, v3, 0x100

    if-eq v7, v6, :cond_6d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc6/r;->l:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_6d
    iget-object v7, p0, Lc6/r;->l:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :sswitch_7b
    and-int/lit16 v7, v3, 0x80

    if-eq v7, v4, :cond_88

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc6/r;->k:Ljava/util/List;

    or-int/lit16 v3, v3, 0x80

    :cond_88
    iget-object v7, p0, Lc6/r;->k:Ljava/util/List;

    sget-object v8, Lc6/a;->h:Li6/r;

    invoke-virtual {p1, v8, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :sswitch_94
    iget v7, p0, Lc6/r;->c:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lc6/r;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    iput v7, p0, Lc6/r;->j:I

    goto/16 :goto_16

    :sswitch_a2
    iget v7, p0, Lc6/r;->c:I

    const/16 v9, 0x10

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_b9

    iget-object v7, p0, Lc6/r;->i:Lc6/q;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v8

    goto :goto_b9

    :catchall_b3
    move-exception p1

    goto/16 :goto_157

    :catch_b6
    move-exception p1

    goto/16 :goto_147

    :cond_b9
    :goto_b9
    sget-object v7, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    check-cast v7, Lc6/q;

    iput-object v7, p0, Lc6/r;->i:Lc6/q;

    if-eqz v8, :cond_ce

    invoke-virtual {v8, v7}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v8}, Lc6/q$c;->g()Lc6/q;

    move-result-object v7

    iput-object v7, p0, Lc6/r;->i:Lc6/q;

    :cond_ce
    iget v7, p0, Lc6/r;->c:I

    or-int/2addr v7, v9

    iput v7, p0, Lc6/r;->c:I

    goto/16 :goto_16

    :sswitch_d5
    iget v7, p0, Lc6/r;->c:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lc6/r;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    iput v7, p0, Lc6/r;->h:I

    goto/16 :goto_16

    :sswitch_e3
    iget v7, p0, Lc6/r;->c:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_f1

    iget-object v7, p0, Lc6/r;->g:Lc6/q;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lc6/q;->s(Lc6/q;)Lc6/q$c;

    move-result-object v8

    :cond_f1
    sget-object v7, Lc6/q;->u:Li6/r;

    invoke-virtual {p1, v7, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v7

    check-cast v7, Lc6/q;

    iput-object v7, p0, Lc6/r;->g:Lc6/q;

    if-eqz v8, :cond_106

    invoke-virtual {v8, v7}, Lc6/q$c;->h(Lc6/q;)Lc6/q$c;

    invoke-virtual {v8}, Lc6/q$c;->g()Lc6/q;

    move-result-object v7

    iput-object v7, p0, Lc6/r;->g:Lc6/q;

    :cond_106
    iget v7, p0, Lc6/r;->c:I

    or-int/2addr v7, v5

    iput v7, p0, Lc6/r;->c:I

    goto/16 :goto_16

    :sswitch_10d
    and-int/lit8 v7, v3, 0x4

    if-eq v7, v5, :cond_11a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lc6/r;->f:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    :cond_11a
    iget-object v7, p0, Lc6/r;->f:Ljava/util/List;

    sget-object v8, Lc6/s;->n:Li6/r;

    invoke-virtual {p1, v8, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :sswitch_127
    iget v7, p0, Lc6/r;->c:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lc6/r;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    iput v7, p0, Lc6/r;->e:I

    goto/16 :goto_16

    :sswitch_135
    iget v7, p0, Lc6/r;->c:I

    or-int/2addr v7, v0

    iput v7, p0, Lc6/r;->c:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    iput v7, p0, Lc6/r;->d:I
    :try_end_140
    .catch Li6/j; {:try_start_1d .. :try_end_140} :catch_153
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_140} :catch_b6
    .catchall {:try_start_1d .. :try_end_140} :catchall_b3

    goto/16 :goto_16

    :goto_142
    if-nez v4, :cond_16

    :sswitch_144
    move v2, v0

    goto/16 :goto_16

    :goto_147
    :try_start_147
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_153
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_157
    .catchall {:try_start_147 .. :try_end_157} :catchall_b3

    :goto_157
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v5, :cond_163

    iget-object p2, p0, Lc6/r;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/r;->f:Ljava/util/List;

    :cond_163
    and-int/lit16 p2, v3, 0x80

    if-ne p2, v4, :cond_16f

    iget-object p2, p0, Lc6/r;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/r;->k:Ljava/util/List;

    :cond_16f
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v6, :cond_17b

    iget-object p2, p0, Lc6/r;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/r;->l:Ljava/util/List;

    :cond_17b
    :try_start_17b
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_187
    .catchall {:try_start_17b .. :try_end_17e} :catchall_17f

    goto :goto_187

    :catchall_17f
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/r;->b:Li6/c;

    throw p1

    :catch_187
    :goto_187
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/r;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    throw p1

    :cond_193
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v5, :cond_19f

    iget-object p1, p0, Lc6/r;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/r;->f:Ljava/util/List;

    :cond_19f
    and-int/lit16 p1, v3, 0x80

    if-ne p1, v4, :cond_1ab

    iget-object p1, p0, Lc6/r;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/r;->k:Ljava/util/List;

    :cond_1ab
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v6, :cond_1b7

    iget-object p1, p0, Lc6/r;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/r;->l:Ljava/util/List;

    :cond_1b7
    :try_start_1b7
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1c3
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1bb

    goto :goto_1c3

    :catchall_1bb
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/r;->b:Li6/c;

    throw p1

    :catch_1c3
    :goto_1c3
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/r;->b:Li6/c;

    iget-object p0, p0, Li6/h$d;->a:Li6/g;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void

    nop

    :sswitch_data_1d0
    .sparse-switch
        0x0 -> :sswitch_144
        0x8 -> :sswitch_135
        0x10 -> :sswitch_127
        0x1a -> :sswitch_10d
        0x22 -> :sswitch_e3
        0x28 -> :sswitch_d5
        0x32 -> :sswitch_a2
        0x38 -> :sswitch_94
        0x42 -> :sswitch_7b
        0xf8 -> :sswitch_60
        0xfa -> :sswitch_2b
    .end sparse-switch
.end method

.method public constructor <init>(Li6/h$c;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h$d;-><init>(Li6/h$c;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/r;->m:B

    iput p2, p0, Lc6/r;->n:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/r;->b:Li6/c;

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

    invoke-virtual {p0}, Lc6/r;->getSerializedSize()I

    invoke-virtual {p0}, Li6/h$d;->j()Li6/h$d$a;

    move-result-object v0

    iget v1, p0, Lc6/r;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    iget v1, p0, Lc6/r;->d:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_12
    iget v1, p0, Lc6/r;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d

    iget v1, p0, Lc6/r;->e:I

    invoke-virtual {p1, v2, v1}, Li6/e;->p(II)V

    :cond_1d
    const/4 v1, 0x0

    move v2, v1

    :goto_1f
    iget-object v3, p0, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    const/4 v3, 0x3

    iget-object v4, p0, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_36
    iget v2, p0, Lc6/r;->c:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_41

    iget-object v2, p0, Lc6/r;->g:Lc6/q;

    invoke-virtual {p1, v3, v2}, Li6/e;->r(ILi6/p;)V

    :cond_41
    iget v2, p0, Lc6/r;->c:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4e

    const/4 v2, 0x5

    iget v4, p0, Lc6/r;->h:I

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    :cond_4e
    iget v2, p0, Lc6/r;->c:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5b

    const/4 v2, 0x6

    iget-object v4, p0, Lc6/r;->i:Lc6/q;

    invoke-virtual {p1, v2, v4}, Li6/e;->r(ILi6/p;)V

    :cond_5b
    iget v2, p0, Lc6/r;->c:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_68

    const/4 v2, 0x7

    iget v4, p0, Lc6/r;->j:I

    invoke-virtual {p1, v2, v4}, Li6/e;->p(II)V

    :cond_68
    move v2, v1

    :goto_69
    iget-object v4, p0, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7f

    iget-object v4, p0, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6/p;

    invoke-virtual {p1, v3, v4}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_7f
    :goto_7f
    iget-object v2, p0, Lc6/r;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9b

    const/16 v2, 0x1f

    iget-object v3, p0, Lc6/r;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Li6/e;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_9b
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Li6/h$d$a;->a(ILi6/e;)V

    iget-object p0, p0, Lc6/r;->b:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getDefaultInstanceForType()Li6/p;
    .registers 1

    sget-object p0, Lc6/r;->o:Lc6/r;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 7

    iget v0, p0, Lc6/r;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/r;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lc6/r;->d:I

    invoke-static {v1, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget v1, p0, Lc6/r;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_23

    iget v1, p0, Lc6/r;->e:I

    invoke-static {v3, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    move v1, v2

    :goto_24
    iget-object v4, p0, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3d

    const/4 v4, 0x3

    iget-object v5, p0, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-static {v4, v5}, Li6/e;->e(ILi6/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3d
    iget v1, p0, Lc6/r;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4a

    iget-object v1, p0, Lc6/r;->g:Lc6/q;

    invoke-static {v4, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget v1, p0, Lc6/r;->c:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_59

    const/4 v1, 0x5

    iget v5, p0, Lc6/r;->h:I

    invoke-static {v1, v5}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_59
    iget v1, p0, Lc6/r;->c:I

    const/16 v5, 0x10

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_68

    const/4 v1, 0x6

    iget-object v5, p0, Lc6/r;->i:Lc6/q;

    invoke-static {v1, v5}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_68
    iget v1, p0, Lc6/r;->c:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_77

    const/4 v1, 0x7

    iget v5, p0, Lc6/r;->j:I

    invoke-static {v1, v5}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_77
    move v1, v2

    :goto_78
    iget-object v5, p0, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_90

    iget-object v5, p0, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li6/p;

    invoke-static {v4, v5}, Li6/e;->e(ILi6/p;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_90
    move v1, v2

    :goto_91
    iget-object v4, p0, Lc6/r;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_ad

    iget-object v4, p0, Lc6/r;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_ad
    add-int/2addr v0, v1

    iget-object v1, p0, Lc6/r;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    invoke-virtual {p0}, Li6/h$d;->f()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lc6/r;->b:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/r;->n:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/r;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/r;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_18

    iput-byte v2, p0, Lc6/r;->m:B

    return v2

    :cond_18
    move v0, v2

    :goto_19
    iget-object v3, p0, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    iget-object v3, p0, Lc6/r;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/s;

    invoke-virtual {v3}, Lc6/s;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_32

    iput-byte v2, p0, Lc6/r;->m:B

    return v2

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    invoke-virtual {p0}, Lc6/r;->n()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lc6/r;->g:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_46

    iput-byte v2, p0, Lc6/r;->m:B

    return v2

    :cond_46
    invoke-virtual {p0}, Lc6/r;->m()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lc6/r;->i:Lc6/q;

    invoke-virtual {v0}, Lc6/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_57

    iput-byte v2, p0, Lc6/r;->m:B

    return v2

    :cond_57
    move v0, v2

    :goto_58
    iget-object v3, p0, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_74

    iget-object v3, p0, Lc6/r;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/a;

    invoke-virtual {v3}, Lc6/a;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_71

    iput-byte v2, p0, Lc6/r;->m:B

    return v2

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_74
    invoke-virtual {p0}, Li6/h$d;->e()Z

    move-result v0

    if-nez v0, :cond_7d

    iput-byte v2, p0, Lc6/r;->m:B

    return v2

    :cond_7d
    iput-byte v1, p0, Lc6/r;->m:B

    return v1
.end method

.method public m()Z
    .registers 2

    iget p0, p0, Lc6/r;->c:I

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

.method public n()Z
    .registers 2

    iget p0, p0, Lc6/r;->c:I

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

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/r$b;

    invoke-direct {p0}, Lc6/r$b;-><init>()V

    return-object p0
.end method

.method public final o()V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lc6/r;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lc6/r;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/r;->f:Ljava/util/List;

    sget-object v1, Lc6/q;->t:Lc6/q;

    iput-object v1, p0, Lc6/r;->g:Lc6/q;

    iput v0, p0, Lc6/r;->h:I

    iput-object v1, p0, Lc6/r;->i:Lc6/q;

    iput v0, p0, Lc6/r;->j:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/r;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc6/r;->l:Ljava/util/List;

    return-void
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/r$b;

    invoke-direct {v0}, Lc6/r$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/r$b;->h(Lc6/r;)Lc6/r$b;

    return-object v0
.end method
