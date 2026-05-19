.class public final Li6/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ljava/io/InputStream;

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Li6/d;->i:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Li6/d;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Li6/d;->c:I

    iput v0, p0, Li6/d;->e:I

    iput v0, p0, Li6/d;->h:I

    iput-object p1, p0, Li6/d;->f:Ljava/io/InputStream;

    iput-boolean v0, p0, Li6/d;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    iget p0, p0, Li6/d;->g:I

    if-ne p0, p1, :cond_5

    return-void

    :cond_5
    new-instance p0, Li6/j;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()I
    .registers 3

    iget v0, p0, Li6/d;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    iget v1, p0, Li6/d;->h:I

    iget p0, p0, Li6/d;->e:I

    add-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Li6/d;->i:I

    invoke-virtual {p0}, Li6/d;->p()V

    return-void
.end method

.method public d(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    if-ltz p1, :cond_17

    iget v0, p0, Li6/d;->h:I

    iget v1, p0, Li6/d;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, Li6/d;->i:I

    if-gt v0, p1, :cond_12

    iput v0, p0, Li6/d;->i:I

    invoke-virtual {p0}, Li6/d;->p()V

    return p1

    :cond_12
    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0

    :cond_17
    invoke-static {}, Li6/j;->a()Li6/j;

    move-result-object p0

    throw p0
.end method

.method public e()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Li6/d;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public f()Li6/c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Li6/d;->l()I

    move-result v0

    iget v1, p0, Li6/d;->c:I

    iget v2, p0, Li6/d;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_22

    if-lez v0, :cond_22

    iget-object v1, p0, Li6/d;->a:[B

    sget-object v3, Li6/c;->a:Li6/c;

    new-array v3, v0, [B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Li6/o;

    invoke-direct {v1, v3}, Li6/o;-><init>([B)V

    iget v2, p0, Li6/d;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Li6/d;->e:I

    return-object v1

    :cond_22
    if-nez v0, :cond_27

    sget-object p0, Li6/c;->a:Li6/c;

    return-object p0

    :cond_27
    new-instance v1, Li6/o;

    invoke-virtual {p0, v0}, Li6/d;->i(I)[B

    move-result-object p0

    invoke-direct {v1, p0}, Li6/o;-><init>([B)V

    return-object v1
.end method

.method public g()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Li6/d;->l()I

    move-result p0

    return p0
.end method

.method public h(Li6/r;Li6/f;)Li6/p;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Li6/p;",
            ">(",
            "Li6/r<",
            "TT;>;",
            "Li6/f;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Li6/d;->l()I

    move-result v0

    iget v1, p0, Li6/d;->j:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_2a

    invoke-virtual {p0, v0}, Li6/d;->d(I)I

    move-result v0

    iget v1, p0, Li6/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li6/d;->j:I

    invoke-interface {p1, p0, p2}, Li6/r;->a(Li6/d;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/p;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Li6/d;->a(I)V

    iget p2, p0, Li6/d;->j:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Li6/d;->j:I

    iput v0, p0, Li6/d;->i:I

    invoke-virtual {p0}, Li6/d;->p()V

    return-object p1

    :cond_2a
    invoke-static {}, Li6/j;->b()Li6/j;

    move-result-object p0

    throw p0
.end method

.method public final i(I)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_c

    if-nez p1, :cond_7

    sget-object p0, Li6/i;->a:[B

    return-object p0

    :cond_7
    invoke-static {}, Li6/j;->a()Li6/j;

    move-result-object p0

    throw p0

    :cond_c
    iget v0, p0, Li6/d;->h:I

    iget v1, p0, Li6/d;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Li6/d;->i:I

    if-gt v2, v3, :cond_9d

    const/16 v2, 0x1000

    const/4 v3, 0x0

    if-ge p1, v2, :cond_42

    new-array v0, p1, [B

    iget v2, p0, Li6/d;->c:I

    sub-int/2addr v2, v1

    iget-object v4, p0, Li6/d;->a:[B

    invoke-static {v4, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Li6/d;->c:I

    iput v1, p0, Li6/d;->e:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, v1

    if-ge v1, p1, :cond_3a

    invoke-virtual {p0, p1}, Li6/d;->t(I)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_3a

    :cond_35
    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0

    :cond_3a
    :goto_3a
    iget-object v1, p0, Li6/d;->a:[B

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Li6/d;->e:I

    return-object v0

    :cond_42
    iget v4, p0, Li6/d;->c:I

    add-int/2addr v0, v4

    iput v0, p0, Li6/d;->h:I

    iput v3, p0, Li6/d;->e:I

    iput v3, p0, Li6/d;->c:I

    sub-int/2addr v4, v1

    sub-int v0, p1, v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_53
    if-lez v0, :cond_7e

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    move v8, v3

    :goto_5c
    if-ge v8, v6, :cond_79

    iget-object v9, p0, Li6/d;->f:Ljava/io/InputStream;

    const/4 v10, -0x1

    if-nez v9, :cond_65

    move v9, v10

    goto :goto_6b

    :cond_65
    sub-int v11, v6, v8

    invoke-virtual {v9, v7, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    :goto_6b
    if-eq v9, v10, :cond_74

    iget v10, p0, Li6/d;->h:I

    add-int/2addr v10, v9

    iput v10, p0, Li6/d;->h:I

    add-int/2addr v8, v9

    goto :goto_5c

    :cond_74
    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0

    :cond_79
    sub-int/2addr v0, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_7e
    new-array p1, p1, [B

    iget-object p0, p0, Li6/d;->a:[B

    invoke-static {p0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_89
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    invoke-static {v0, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v4, v0

    goto :goto_89

    :cond_9c
    return-object p1

    :cond_9d
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Li6/d;->s(I)V

    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0
.end method

.method public j()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Li6/d;->e:I

    iget v1, p0, Li6/d;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v2}, Li6/d;->q(I)V

    iget v0, p0, Li6/d;->e:I

    :cond_d
    iget-object v1, p0, Li6/d;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Li6/d;->e:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public k()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Li6/d;->e:I

    iget v1, p0, Li6/d;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    invoke-virtual {p0, v2}, Li6/d;->q(I)V

    iget v0, p0, Li6/d;->e:I

    :cond_e
    iget-object v1, p0, Li6/d;->a:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Li6/d;->e:I

    aget-byte p0, v1, v0

    int-to-long v3, p0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 p0, v0, 0x1

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 p0, v0, 0x2

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x10

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x3

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x18

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x4

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x20

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x5

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x28

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x6

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x30

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, v1, v0

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public l()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Li6/d;->e:I

    iget v1, p0, Li6/d;->c:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_7c

    :cond_8
    iget-object v2, p0, Li6/d;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_13

    iput v3, p0, Li6/d;->e:I

    return v0

    :cond_13
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_19

    goto :goto_7c

    :cond_19
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_2d

    const-wide/16 v5, -0x80

    :goto_29
    xor-long v2, v3, v5

    long-to-int v0, v2

    goto :goto_82

    :cond_2d
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    int-to-long v7, v0

    cmp-long v1, v7, v5

    if-ltz v1, :cond_3f

    const-wide/16 v0, 0x3f80

    xor-long/2addr v0, v7

    long-to-int v0, v0

    :cond_3d
    move v1, v3

    goto :goto_82

    :cond_3f
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v5, v3, v5

    if-gez v5, :cond_4f

    const-wide/32 v5, -0x1fc080

    goto :goto_29

    :cond_4f
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    int-to-long v4, v0

    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    long-to-int v0, v4

    if-gez v1, :cond_3d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_82

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_82

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3d

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_82

    :goto_7c
    invoke-virtual {p0}, Li6/d;->n()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_82
    :goto_82
    iput v1, p0, Li6/d;->e:I

    return v0
.end method

.method public m()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Li6/d;->e:I

    iget v1, p0, Li6/d;->c:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b8

    :cond_8
    iget-object v2, p0, Li6/d;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_14

    iput v3, p0, Li6/d;->e:I

    int-to-long v0, v0

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1b

    goto/16 :goto_b8

    :cond_1b
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2f

    const-wide/16 v5, -0x80

    :goto_2b
    xor-long v2, v3, v5

    goto/16 :goto_bf

    :cond_2f
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    int-to-long v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_42

    const-wide/16 v1, 0x3f80

    :goto_3d
    xor-long v2, v3, v1

    move v1, v0

    goto/16 :goto_bf

    :cond_42
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x15

    int-to-long v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_52

    const-wide/32 v5, -0x1fc080

    goto :goto_2b

    :cond_52
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x1c

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_63

    const-wide/32 v1, 0xfe03f80

    goto :goto_3d

    :cond_63
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_76

    const-wide v5, -0x7f01fc080L

    goto :goto_2b

    :cond_76
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_89

    const-wide v1, 0x3f80fe03f80L

    goto :goto_3d

    :cond_89
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9c

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2b

    :cond_9c
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bd

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_be

    :goto_b8
    invoke-virtual {p0}, Li6/d;->n()J

    move-result-wide v0

    return-wide v0

    :cond_bd
    move v1, v0

    :cond_be
    move-wide v2, v3

    :goto_bf
    iput v1, p0, Li6/d;->e:I

    return-wide v2
.end method

.method public n()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_28

    iget v3, p0, Li6/d;->e:I

    iget v4, p0, Li6/d;->c:I

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Li6/d;->q(I)V

    :cond_11
    iget-object v3, p0, Li6/d;->a:[B

    iget v4, p0, Li6/d;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Li6/d;->e:I

    aget-byte v3, v3, v4

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_25

    return-wide v0

    :cond_25
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_28
    new-instance p0, Li6/j;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Li6/d;->e:I

    iget v1, p0, Li6/d;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_f

    invoke-virtual {p0, v2}, Li6/d;->t(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    move v2, v3

    :goto_10
    if-eqz v2, :cond_15

    iput v3, p0, Li6/d;->g:I

    return v3

    :cond_15
    invoke-virtual {p0}, Li6/d;->l()I

    move-result v0

    iput v0, p0, Li6/d;->g:I

    ushr-int/lit8 p0, v0, 0x3

    if-eqz p0, :cond_20

    return v0

    :cond_20
    new-instance p0, Li6/j;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p()V
    .registers 4

    iget v0, p0, Li6/d;->c:I

    iget v1, p0, Li6/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Li6/d;->c:I

    iget v1, p0, Li6/d;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Li6/d;->i:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    iput v1, p0, Li6/d;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Li6/d;->c:I

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Li6/d;->d:I

    :goto_18
    return-void
.end method

.method public final q(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Li6/d;->t(I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0
.end method

.method public r(ILi6/e;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_57

    if-eq v0, v1, :cond_4c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_41

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    if-eq v0, v2, :cond_26

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1e

    invoke-virtual {p0}, Li6/d;->j()I

    move-result p0

    invoke-virtual {p2, p1}, Li6/e;->y(I)V

    invoke-virtual {p2, p0}, Li6/e;->w(I)V

    return v1

    :cond_1e
    new-instance p0, Li6/j;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    const/4 p0, 0x0

    return p0

    :cond_28
    invoke-virtual {p2, p1}, Li6/e;->y(I)V

    :cond_2b
    invoke-virtual {p0}, Li6/d;->o()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0, v0, p2}, Li6/d;->r(ILi6/e;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_37
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Li6/d;->a(I)V

    invoke-virtual {p2, p1}, Li6/e;->y(I)V

    return v1

    :cond_41
    invoke-virtual {p0}, Li6/d;->f()Li6/c;

    move-result-object p0

    invoke-virtual {p2, p1}, Li6/e;->y(I)V

    invoke-virtual {p2, p0}, Li6/e;->m(Li6/c;)V

    return v1

    :cond_4c
    invoke-virtual {p0}, Li6/d;->k()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Li6/e;->y(I)V

    invoke-virtual {p2, v2, v3}, Li6/e;->x(J)V

    return v1

    :cond_57
    invoke-virtual {p0}, Li6/d;->m()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Li6/e;->y(I)V

    invoke-virtual {p2, v2, v3}, Li6/e;->z(J)V

    return v1
.end method

.method public s(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Li6/d;->c:I

    iget v1, p0, Li6/d;->e:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_e

    if-ltz p1, :cond_e

    add-int/2addr v1, p1

    iput v1, p0, Li6/d;->e:I

    goto :goto_30

    :cond_e
    if-ltz p1, :cond_3b

    iget v2, p0, Li6/d;->h:I

    add-int v3, v2, v1

    add-int/2addr v3, p1

    iget v4, p0, Li6/d;->i:I

    if-gt v3, v4, :cond_31

    sub-int v1, v0, v1

    iput v0, p0, Li6/d;->e:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li6/d;->q(I)V

    :goto_21
    sub-int v2, p1, v1

    iget v3, p0, Li6/d;->c:I

    if-le v2, v3, :cond_2e

    add-int/2addr v1, v3

    iput v3, p0, Li6/d;->e:I

    invoke-virtual {p0, v0}, Li6/d;->q(I)V

    goto :goto_21

    :cond_2e
    iput v2, p0, Li6/d;->e:I

    :goto_30
    return-void

    :cond_31
    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Li6/d;->s(I)V

    invoke-static {}, Li6/j;->d()Li6/j;

    move-result-object p0

    throw p0

    :cond_3b
    invoke-static {}, Li6/j;->a()Li6/j;

    move-result-object p0

    throw p0
.end method

.method public final t(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Li6/d;->e:I

    add-int v1, v0, p1

    iget v2, p0, Li6/d;->c:I

    if-le v1, v2, :cond_86

    iget v1, p0, Li6/d;->h:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v3, p0, Li6/d;->i:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_12

    return v4

    :cond_12
    iget-object v1, p0, Li6/d;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_85

    if-lez v0, :cond_2c

    if-le v2, v0, :cond_20

    iget-object v1, p0, Li6/d;->a:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    iget v1, p0, Li6/d;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Li6/d;->h:I

    iget v1, p0, Li6/d;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Li6/d;->c:I

    iput v4, p0, Li6/d;->e:I

    :cond_2c
    iget-object v0, p0, Li6/d;->f:Ljava/io/InputStream;

    iget-object v1, p0, Li6/d;->a:[B

    iget v2, p0, Li6/d;->c:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_67

    const/4 v1, -0x1

    if-lt v0, v1, :cond_67

    iget-object v1, p0, Li6/d;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_67

    if-lez v0, :cond_85

    iget v1, p0, Li6/d;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Li6/d;->c:I

    iget v0, p0, Li6/d;->h:I

    add-int/2addr v0, p1

    const/high16 v1, 0x4000000

    sub-int/2addr v0, v1

    if-gtz v0, :cond_5f

    invoke-virtual {p0}, Li6/d;->p()V

    iget v0, p0, Li6/d;->c:I

    if-lt v0, p1, :cond_5a

    const/4 p0, 0x1

    goto :goto_5e

    :cond_5a
    invoke-virtual {p0, p1}, Li6/d;->t(I)Z

    move-result p0

    :goto_5e
    return p0

    :cond_5f
    new-instance p0, Li6/j;

    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p0, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    return v4

    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "refillBuffer() called when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
