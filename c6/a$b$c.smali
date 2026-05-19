.class public final Lc6/a$b$c;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/a$b$c$b;,
        Lc6/a$b$c$c;
    }
.end annotation


# static fields
.field public static final p:Lc6/a$b$c;

.field public static q:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/a$b$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

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

.field public n:B

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc6/a$b$c$a;

    invoke-direct {v0}, Lc6/a$b$c$a;-><init>()V

    sput-object v0, Lc6/a$b$c;->q:Li6/r;

    new-instance v0, Lc6/a$b$c;

    invoke-direct {v0}, Lc6/a$b$c;-><init>()V

    sput-object v0, Lc6/a$b$c;->p:Lc6/a$b$c;

    invoke-virtual {v0}, Lc6/a$b$c;->e()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/a$b$c;->n:B

    iput v0, p0, Lc6/a$b$c;->o:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/a$b$c;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/a$b$c;->n:B

    iput p3, p0, Lc6/a$b$c;->o:I

    invoke-virtual {p0}, Lc6/a$b$c;->e()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_16
    :goto_16
    const/16 v4, 0x100

    if-nez v2, :cond_13e

    :try_start_1a
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v5

    sparse-switch v5, :sswitch_data_15e

    goto/16 :goto_103

    :sswitch_23
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/2addr v5, v4

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lc6/a$b$c;->l:I

    goto :goto_16

    :sswitch_2f
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lc6/a$b$c;->m:I

    goto :goto_16

    :sswitch_3c
    and-int/lit16 v5, v3, 0x100

    if-eq v5, v4, :cond_49

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lc6/a$b$c;->k:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    :cond_49
    iget-object v5, p0, Lc6/a$b$c;->k:Ljava/util/List;

    sget-object v6, Lc6/a$b$c;->q:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :sswitch_55
    const/4 v5, 0x0

    iget v6, p0, Lc6/a$b$c;->b:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_6b

    iget-object v5, p0, Lc6/a$b$c;->j:Lc6/a;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lc6/a$c;

    invoke-direct {v6}, Lc6/a$c;-><init>()V

    invoke-virtual {v6, v5}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    move-object v5, v6

    :cond_6b
    sget-object v6, Lc6/a;->h:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    check-cast v6, Lc6/a;

    iput-object v6, p0, Lc6/a$b$c;->j:Lc6/a;

    if-eqz v5, :cond_80

    invoke-virtual {v5, v6}, Lc6/a$c;->g(Lc6/a;)Lc6/a$c;

    invoke-virtual {v5}, Lc6/a$c;->f()Lc6/a;

    move-result-object v5

    iput-object v5, p0, Lc6/a$b$c;->j:Lc6/a;

    :cond_80
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/2addr v5, v7

    iput v5, p0, Lc6/a$b$c;->b:I

    goto :goto_16

    :sswitch_86
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lc6/a$b$c;->i:I

    goto :goto_16

    :sswitch_93
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lc6/a$b$c;->h:I

    goto/16 :goto_16

    :sswitch_a1
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lc6/a$b$c;->g:I

    goto/16 :goto_16

    :sswitch_af
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->k()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    iput-wide v5, p0, Lc6/a$b$c;->f:D

    goto/16 :goto_16

    :sswitch_c1
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    iput v5, p0, Lc6/a$b$c;->e:F

    goto/16 :goto_16

    :sswitch_d3
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lc6/a$b$c;->b:I

    invoke-virtual {p1}, Li6/d;->m()J

    move-result-wide v5

    ushr-long v7, v5, v0

    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    neg-long v5, v5

    xor-long/2addr v5, v7

    iput-wide v5, p0, Lc6/a$b$c;->d:J

    goto/16 :goto_16

    :sswitch_e8
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-static {v6}, Lc6/a$b$c$c;->a(I)Lc6/a$b$c$c;

    move-result-object v7

    if-nez v7, :cond_fa

    invoke-virtual {v1, v5}, Li6/e;->y(I)V

    invoke-virtual {v1, v6}, Li6/e;->y(I)V

    goto/16 :goto_16

    :cond_fa
    iget v5, p0, Lc6/a$b$c;->b:I

    or-int/2addr v5, v0

    iput v5, p0, Lc6/a$b$c;->b:I

    iput-object v7, p0, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    goto/16 :goto_16

    :goto_103
    invoke-virtual {p1, v5, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v4
    :try_end_107
    .catch Li6/j; {:try_start_1a .. :try_end_107} :catch_11b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_107} :catch_10e
    .catchall {:try_start_1a .. :try_end_107} :catchall_10c

    if-nez v4, :cond_16

    :sswitch_109
    move v2, v0

    goto/16 :goto_16

    :catchall_10c
    move-exception p1

    goto :goto_11f

    :catch_10e
    move-exception p1

    :try_start_10f
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_11b
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_11f
    .catchall {:try_start_10f .. :try_end_11f} :catchall_10c

    :goto_11f
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v4, :cond_12b

    iget-object p2, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/a$b$c;->k:Ljava/util/List;

    :cond_12b
    :try_start_12b
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_137
    .catchall {:try_start_12b .. :try_end_12e} :catchall_12f

    goto :goto_137

    :catchall_12f
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a$b$c;->a:Li6/c;

    throw p1

    :catch_137
    :goto_137
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a$b$c;->a:Li6/c;

    throw p1

    :cond_13e
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v4, :cond_14a

    iget-object p1, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/a$b$c;->k:Ljava/util/List;

    :cond_14a
    :try_start_14a
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_156
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    goto :goto_156

    :catchall_14e
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/a$b$c;->a:Li6/c;

    throw p1

    :catch_156
    :goto_156
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/a$b$c;->a:Li6/c;

    return-void

    nop

    :sswitch_data_15e
    .sparse-switch
        0x0 -> :sswitch_109
        0x8 -> :sswitch_e8
        0x10 -> :sswitch_d3
        0x1d -> :sswitch_c1
        0x21 -> :sswitch_af
        0x28 -> :sswitch_a1
        0x30 -> :sswitch_93
        0x38 -> :sswitch_86
        0x42 -> :sswitch_55
        0x4a -> :sswitch_3c
        0x50 -> :sswitch_2f
        0x58 -> :sswitch_23
    .end sparse-switch
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/a$b$c;->n:B

    iput p2, p0, Lc6/a$b$c;->o:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/a$b$c;->a:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lc6/a$b$c;->getSerializedSize()I

    iget v0, p0, Lc6/a$b$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    iget v0, v0, Lc6/a$b$c$c;->a:I

    invoke-virtual {p1, v1, v0}, Li6/e;->n(II)V

    :cond_10
    iget v0, p0, Lc6/a$b$c;->b:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/16 v3, 0x10

    if-ne v0, v2, :cond_26

    iget-wide v4, p0, Lc6/a$b$c;->d:J

    invoke-virtual {p1, v3}, Li6/e;->y(I)V

    shl-long v0, v4, v1

    const/16 v2, 0x3f

    shr-long/2addr v4, v2

    xor-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Li6/e;->z(J)V

    :cond_26
    iget v0, p0, Lc6/a$b$c;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3a

    iget v0, p0, Lc6/a$b$c;->e:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v1}, Li6/e;->y(I)V

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Li6/e;->w(I)V

    :cond_3a
    iget v0, p0, Lc6/a$b$c;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4f

    iget-wide v4, p0, Lc6/a$b$c;->f:D

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Li6/e;->y(I)V

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Li6/e;->x(J)V

    :cond_4f
    iget v0, p0, Lc6/a$b$c;->b:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5a

    const/4 v0, 0x5

    iget v2, p0, Lc6/a$b$c;->g:I

    invoke-virtual {p1, v0, v2}, Li6/e;->p(II)V

    :cond_5a
    iget v0, p0, Lc6/a$b$c;->b:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_67

    const/4 v0, 0x6

    iget v2, p0, Lc6/a$b$c;->h:I

    invoke-virtual {p1, v0, v2}, Li6/e;->p(II)V

    :cond_67
    iget v0, p0, Lc6/a$b$c;->b:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_74

    const/4 v0, 0x7

    iget v2, p0, Lc6/a$b$c;->i:I

    invoke-virtual {p1, v0, v2}, Li6/e;->p(II)V

    :cond_74
    iget v0, p0, Lc6/a$b$c;->b:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_80

    iget-object v0, p0, Lc6/a$b$c;->j:Lc6/a;

    invoke-virtual {p1, v1, v0}, Li6/e;->r(ILi6/p;)V

    :cond_80
    const/4 v0, 0x0

    :goto_81
    iget-object v1, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_99

    const/16 v1, 0x9

    iget-object v2, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    invoke-virtual {p1, v1, v2}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_99
    iget v0, p0, Lc6/a$b$c;->b:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a7

    const/16 v0, 0xa

    iget v1, p0, Lc6/a$b$c;->m:I

    invoke-virtual {p1, v0, v1}, Li6/e;->p(II)V

    :cond_a7
    iget v0, p0, Lc6/a$b$c;->b:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b5

    const/16 v0, 0xb

    iget v1, p0, Lc6/a$b$c;->l:I

    invoke-virtual {p1, v0, v1}, Li6/e;->p(II)V

    :cond_b5
    iget-object p0, p0, Lc6/a$b$c;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public final e()V
    .registers 3

    sget-object v0, Lc6/a$b$c$c;->b:Lc6/a$b$c$c;

    iput-object v0, p0, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc6/a$b$c;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lc6/a$b$c;->e:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc6/a$b$c;->f:D

    const/4 v0, 0x0

    iput v0, p0, Lc6/a$b$c;->g:I

    iput v0, p0, Lc6/a$b$c;->h:I

    iput v0, p0, Lc6/a$b$c;->i:I

    sget-object v1, Lc6/a;->g:Lc6/a;

    iput-object v1, p0, Lc6/a$b$c;->j:Lc6/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc6/a$b$c;->k:Ljava/util/List;

    iput v0, p0, Lc6/a$b$c;->l:I

    iput v0, p0, Lc6/a$b$c;->m:I

    return-void
.end method

.method public getSerializedSize()I
    .registers 10

    iget v0, p0, Lc6/a$b$c;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/a$b$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lc6/a$b$c;->c:Lc6/a$b$c$c;

    iget v0, v0, Lc6/a$b$c$c;->a:I

    invoke-static {v1, v0}, Li6/e;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iget v3, p0, Lc6/a$b$c;->b:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_31

    iget-wide v5, p0, Lc6/a$b$c;->d:J

    invoke-static {v4}, Li6/e;->i(I)I

    move-result v3

    shl-long v7, v5, v1

    const/16 v1, 0x3f

    shr-long v4, v5, v1

    xor-long/2addr v4, v7

    invoke-static {v4, v5}, Li6/e;->h(J)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_31
    iget v1, p0, Lc6/a$b$c;->b:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3e

    const/4 v1, 0x3

    invoke-static {v1}, Li6/e;->i(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_3e
    iget v1, p0, Lc6/a$b$c;->b:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4b

    invoke-static {v3}, Li6/e;->i(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_4b
    iget v1, p0, Lc6/a$b$c;->b:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5a

    const/4 v1, 0x5

    iget v3, p0, Lc6/a$b$c;->g:I

    invoke-static {v1, v3}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    iget v1, p0, Lc6/a$b$c;->b:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_69

    const/4 v1, 0x6

    iget v3, p0, Lc6/a$b$c;->h:I

    invoke-static {v1, v3}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_69
    iget v1, p0, Lc6/a$b$c;->b:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_78

    const/4 v1, 0x7

    iget v3, p0, Lc6/a$b$c;->i:I

    invoke-static {v1, v3}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_78
    iget v1, p0, Lc6/a$b$c;->b:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_86

    iget-object v1, p0, Lc6/a$b$c;->j:Lc6/a;

    invoke-static {v4, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_86
    :goto_86
    iget-object v1, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a0

    const/16 v1, 0x9

    iget-object v3, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    invoke-static {v1, v3}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :cond_a0
    iget v1, p0, Lc6/a$b$c;->b:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b0

    const/16 v1, 0xa

    iget v2, p0, Lc6/a$b$c;->m:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b0
    iget v1, p0, Lc6/a$b$c;->b:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c0

    const/16 v1, 0xb

    iget v2, p0, Lc6/a$b$c;->l:I

    invoke-static {v1, v2}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c0
    iget-object v1, p0, Lc6/a$b$c;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/a$b$c;->o:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/a$b$c;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lc6/a$b$c;->b:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    if-eqz v0, :cond_21

    iget-object v0, p0, Lc6/a$b$c;->j:Lc6/a;

    invoke-virtual {v0}, Lc6/a;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_21

    iput-byte v2, p0, Lc6/a$b$c;->n:B

    return v2

    :cond_21
    move v0, v2

    :goto_22
    iget-object v3, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    iget-object v3, p0, Lc6/a$b$c;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/a$b$c;

    invoke-virtual {v3}, Lc6/a$b$c;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3b

    iput-byte v2, p0, Lc6/a$b$c;->n:B

    return v2

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3e
    iput-byte v1, p0, Lc6/a$b$c;->n:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/a$b$c$b;

    invoke-direct {p0}, Lc6/a$b$c$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/a$b$c$b;

    invoke-direct {v0}, Lc6/a$b$c$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/a$b$c$b;->g(Lc6/a$b$c;)Lc6/a$b$c$b;

    return-object v0
.end method
