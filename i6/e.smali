.class public final Li6/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/e$a;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:I

.field public c:I

.field public d:I

.field public final e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Li6/e;->d:I

    iput-object p1, p0, Li6/e;->e:Ljava/io/OutputStream;

    iput-object p2, p0, Li6/e;->a:[B

    iput v0, p0, Li6/e;->c:I

    array-length p1, p2

    iput p1, p0, Li6/e;->b:I

    return-void
.end method

.method public static a(Li6/c;)I
    .registers 2

    invoke-virtual {p0}, Li6/c;->size()I

    move-result v0

    invoke-static {v0}, Li6/e;->g(I)I

    move-result v0

    invoke-virtual {p0}, Li6/c;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static b(II)I
    .registers 2

    invoke-static {p0}, Li6/e;->i(I)I

    move-result p0

    invoke-static {p1}, Li6/e;->d(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(II)I
    .registers 2

    invoke-static {p0}, Li6/e;->i(I)I

    move-result p0

    invoke-static {p1}, Li6/e;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Li6/e;->g(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static e(ILi6/p;)I
    .registers 3

    invoke-static {p0}, Li6/e;->i(I)I

    move-result p0

    invoke-interface {p1}, Li6/p;->getSerializedSize()I

    move-result p1

    invoke-static {p1}, Li6/e;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static f(Li6/p;)I
    .registers 2

    invoke-interface {p0}, Li6/p;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Li6/e;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static g(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static h(J)I
    .registers 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 p0, 0x5

    return p0

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 p0, 0x6

    return p0

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 p0, 0x7

    return p0

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 p0, 0x8

    return p0

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_5d

    const/16 p0, 0x9

    return p0

    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method public static i(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    invoke-static {p0}, Li6/e;->g(I)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/io/OutputStream;I)Li6/e;
    .registers 3

    new-instance v0, Li6/e;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Li6/e;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method


# virtual methods
.method public A(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    return-void
.end method

.method public j()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Li6/e;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Li6/e;->l()V

    :cond_7
    return-void
.end method

.method public final l()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Li6/e;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_f

    iget-object v1, p0, Li6/e;->a:[B

    iget v2, p0, Li6/e;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Li6/e;->c:I

    return-void

    :cond_f
    new-instance p0, Li6/e$a;

    invoke-direct {p0}, Li6/e$a;-><init>()V

    throw p0
.end method

.method public m(Li6/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Li6/e;->y(I)V

    invoke-virtual {p0, p1}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public n(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    if-ltz p2, :cond_d

    invoke-virtual {p0, p2}, Li6/e;->y(I)V

    goto :goto_11

    :cond_d
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Li6/e;->z(J)V

    :goto_11
    return-void
.end method

.method public o(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Li6/e;->z(J)V

    :goto_a
    return-void
.end method

.method public p(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    if-ltz p2, :cond_d

    invoke-virtual {p0, p2}, Li6/e;->y(I)V

    goto :goto_11

    :cond_d
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Li6/e;->z(J)V

    :goto_11
    return-void
.end method

.method public q(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Li6/e;->z(J)V

    :goto_a
    return-void
.end method

.method public r(ILi6/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    invoke-interface {p2}, Li6/p;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    invoke-interface {p2, p0}, Li6/p;->b(Li6/e;)V

    return-void
.end method

.method public s(Li6/p;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Li6/p;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Li6/e;->y(I)V

    invoke-interface {p1, p0}, Li6/p;->b(Li6/e;)V

    return-void
.end method

.method public t(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    iget v0, p0, Li6/e;->c:I

    iget v1, p0, Li6/e;->b:I

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Li6/e;->l()V

    :cond_a
    iget-object v0, p0, Li6/e;->a:[B

    iget v1, p0, Li6/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Li6/e;->c:I

    aput-byte p1, v0, v1

    iget p1, p0, Li6/e;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li6/e;->d:I

    return-void
.end method

.method public u(Li6/c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v0

    iget v1, p0, Li6/e;->b:I

    iget v2, p0, Li6/e;->c:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v1, v0, :cond_1c

    iget-object v1, p0, Li6/e;->a:[B

    invoke-virtual {p1, v1, v3, v2, v0}, Li6/c;->e([BIII)V

    iget p1, p0, Li6/e;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Li6/e;->c:I

    iget p1, p0, Li6/e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Li6/e;->d:I

    goto :goto_54

    :cond_1c
    iget-object v4, p0, Li6/e;->a:[B

    invoke-virtual {p1, v4, v3, v2, v1}, Li6/c;->e([BIII)V

    add-int v2, v3, v1

    sub-int/2addr v0, v1

    iget v4, p0, Li6/e;->b:I

    iput v4, p0, Li6/e;->c:I

    iget v4, p0, Li6/e;->d:I

    add-int/2addr v4, v1

    iput v4, p0, Li6/e;->d:I

    invoke-virtual {p0}, Li6/e;->l()V

    iget v1, p0, Li6/e;->b:I

    if-gt v0, v1, :cond_3c

    iget-object v1, p0, Li6/e;->a:[B

    invoke-virtual {p1, v1, v2, v3, v0}, Li6/c;->e([BIII)V

    iput v0, p0, Li6/e;->c:I

    goto :goto_4f

    :cond_3c
    iget-object v1, p0, Li6/e;->e:Ljava/io/OutputStream;

    if-ltz v2, :cond_87

    if-ltz v0, :cond_6e

    add-int v3, v2, v0

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v4

    if-gt v3, v4, :cond_55

    if-lez v0, :cond_4f

    invoke-virtual {p1, v1, v2, v0}, Li6/c;->s(Ljava/io/OutputStream;II)V

    :cond_4f
    :goto_4f
    iget p1, p0, Li6/e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Li6/e;->d:I

    :goto_54
    return-void

    :cond_55
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source end offset exceeded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length < 0: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source offset < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Li6/e;->b:I

    iget v2, p0, Li6/e;->c:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v1, v0, :cond_19

    iget-object v1, p0, Li6/e;->a:[B

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Li6/e;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Li6/e;->c:I

    iget p1, p0, Li6/e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Li6/e;->d:I

    goto :goto_43

    :cond_19
    iget-object v4, p0, Li6/e;->a:[B

    invoke-static {p1, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v4, p0, Li6/e;->b:I

    iput v4, p0, Li6/e;->c:I

    iget v4, p0, Li6/e;->d:I

    add-int/2addr v4, v1

    iput v4, p0, Li6/e;->d:I

    invoke-virtual {p0}, Li6/e;->l()V

    iget v1, p0, Li6/e;->b:I

    if-gt v0, v1, :cond_39

    iget-object v1, p0, Li6/e;->a:[B

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Li6/e;->c:I

    goto :goto_3e

    :cond_39
    iget-object v1, p0, Li6/e;->e:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_3e
    iget p1, p0, Li6/e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Li6/e;->d:I

    :goto_43
    return-void
.end method

.method public w(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Li6/e;->t(I)V

    return-void
.end method

.method public x(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Li6/e;->t(I)V

    return-void
.end method

.method public y(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Li6/e;->t(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public z(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Li6/e;->t(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Li6/e;->t(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method
