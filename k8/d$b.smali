.class public final Lk8/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lokio/Buffer;

.field public b:I

.field public c:Z

.field public d:I

.field public e:[Lk8/c;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lokio/Buffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lk8/d$b;->b:I

    const/16 v0, 0x8

    new-array v0, v0, [Lk8/c;

    iput-object v0, p0, Lk8/d$b;->e:[Lk8/c;

    const/4 v0, 0x7

    iput v0, p0, Lk8/d$b;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lk8/d$b;->g:I

    iput v0, p0, Lk8/d$b;->h:I

    const/16 v0, 0x1000

    iput v0, p0, Lk8/d$b;->d:I

    iput-object p1, p0, Lk8/d$b;->a:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lk8/d$b;->e:[Lk8/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lk8/d$b;->e:[Lk8/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk8/d$b;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lk8/d$b;->g:I

    iput v0, p0, Lk8/d$b;->h:I

    return-void
.end method

.method public final b(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_47

    iget-object v1, p0, Lk8/d$b;->e:[Lk8/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lk8/d$b;->f:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    iget-object v2, p0, Lk8/d$b;->e:[Lk8/c;

    aget-object v3, v2, v1

    iget v3, v3, Lk8/c;->c:I

    sub-int/2addr p1, v3

    iget v3, p0, Lk8/d$b;->h:I

    aget-object v2, v2, v1

    iget v2, v2, Lk8/c;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lk8/d$b;->h:I

    iget v2, p0, Lk8/d$b;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lk8/d$b;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_29
    iget-object p1, p0, Lk8/d$b;->e:[Lk8/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lk8/d$b;->g:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lk8/d$b;->e:[Lk8/c;

    iget v1, p0, Lk8/d$b;->f:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lk8/d$b;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lk8/d$b;->f:I

    :cond_47
    return v0
.end method

.method public final c(Lk8/c;)V
    .registers 8

    iget v0, p1, Lk8/c;->c:I

    iget v1, p0, Lk8/d$b;->d:I

    if-le v0, v1, :cond_a

    invoke-virtual {p0}, Lk8/d$b;->a()V

    return-void

    :cond_a
    iget v2, p0, Lk8/d$b;->h:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lk8/d$b;->b(I)I

    iget v1, p0, Lk8/d$b;->g:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lk8/d$b;->e:[Lk8/c;

    array-length v3, v2

    if-le v1, v3, :cond_2e

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lk8/c;

    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lk8/d$b;->e:[Lk8/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lk8/d$b;->f:I

    iput-object v1, p0, Lk8/d$b;->e:[Lk8/c;

    :cond_2e
    iget v1, p0, Lk8/d$b;->f:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lk8/d$b;->f:I

    iget-object v2, p0, Lk8/d$b;->e:[Lk8/c;

    aput-object p1, v2, v1

    iget p1, p0, Lk8/d$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk8/d$b;->g:I

    iget p1, p0, Lk8/d$b;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lk8/d$b;->h:I

    return-void
.end method

.method public d(Lokio/ByteString;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lk8/s;->d:Lk8/s;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    :goto_a
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v6

    const/16 v7, 0xff

    if-ge v3, v6, :cond_20

    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result v6

    and-int/2addr v6, v7

    sget-object v7, Lk8/s;->c:[B

    aget-byte v6, v7, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_20
    const-wide/16 v8, 0x7

    add-long/2addr v4, v8

    const/4 v3, 0x3

    shr-long v3, v4, v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v4

    const/16 v5, 0x7f

    if-ge v3, v4, :cond_81

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    sget-object v4, Lk8/s;->d:Lk8/s;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    :goto_3a
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v6

    if-ge v2, v6, :cond_61

    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v6

    and-int/2addr v6, v7

    sget-object v8, Lk8/s;->b:[I

    aget v8, v8, v6

    sget-object v9, Lk8/s;->c:[B

    aget-byte v6, v9, v6

    shl-long/2addr v0, v6

    int-to-long v8, v8

    or-long/2addr v0, v8

    add-int/2addr v4, v6

    :goto_51
    const/16 v6, 0x8

    if-lt v4, v6, :cond_5e

    add-int/lit8 v4, v4, -0x8

    shr-long v8, v0, v4

    long-to-int v6, v8

    invoke-interface {v3, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_51

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_61
    if-lez v4, :cond_6e

    rsub-int/lit8 p1, v4, 0x8

    shl-long/2addr v0, p1

    ushr-int p1, v7, v4

    int-to-long v6, p1

    or-long/2addr v0, v6

    long-to-int p1, v0

    invoke-interface {v3, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    :cond_6e
    invoke-virtual {v3}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v5, v1}, Lk8/d$b;->f(III)V

    iget-object p0, p0, Lk8/d$b;->a:Lokio/Buffer;

    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_8d

    :cond_81
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0, v5, v2}, Lk8/d$b;->f(III)V

    iget-object p0, p0, Lk8/d$b;->a:Lokio/Buffer;

    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :goto_8d
    return-void
.end method

.method public e(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk8/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lk8/d$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget v0, p0, Lk8/d$b;->b:I

    iget v2, p0, Lk8/d$b;->d:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_12

    invoke-virtual {p0, v0, v4, v3}, Lk8/d$b;->f(III)V

    :cond_12
    iput-boolean v1, p0, Lk8/d$b;->c:Z

    const v0, 0x7fffffff

    iput v0, p0, Lk8/d$b;->b:I

    iget v0, p0, Lk8/d$b;->d:I

    invoke-virtual {p0, v0, v4, v3}, Lk8/d$b;->f(III)V

    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_23
    if-ge v2, v0, :cond_ea

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk8/c;

    iget-object v4, v3, Lk8/c;->a:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    iget-object v5, v3, Lk8/c;->b:Lokio/ByteString;

    sget-object v6, Lk8/d;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_6c

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_69

    const/16 v9, 0x8

    if-ge v6, v9, :cond_69

    sget-object v9, Lk8/d;->a:[Lk8/c;

    add-int/lit8 v10, v6, -0x1

    aget-object v10, v9, v10

    iget-object v10, v10, Lk8/c;->b:Lokio/ByteString;

    invoke-static {v10, v5}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    goto :goto_6d

    :cond_59
    aget-object v9, v9, v6

    iget-object v9, v9, Lk8/c;->b:Lokio/ByteString;

    invoke-static {v9, v5}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_6e

    :cond_69
    move v9, v6

    move v6, v7

    goto :goto_6e

    :cond_6c
    move v6, v7

    :goto_6d
    move v9, v6

    :goto_6e
    if-ne v6, v7, :cond_a5

    iget v10, p0, Lk8/d$b;->f:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lk8/d$b;->e:[Lk8/c;

    array-length v8, v8

    :goto_76
    if-ge v10, v8, :cond_a5

    iget-object v11, p0, Lk8/d$b;->e:[Lk8/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lk8/c;->a:Lokio/ByteString;

    invoke-static {v11, v4}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a2

    iget-object v11, p0, Lk8/d$b;->e:[Lk8/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lk8/c;->b:Lokio/ByteString;

    invoke-static {v11, v5}, Lf8/c;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_98

    iget v6, p0, Lk8/d$b;->f:I

    sub-int/2addr v10, v6

    sget-object v6, Lk8/d;->a:[Lk8/c;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_a5

    :cond_98
    if-ne v9, v7, :cond_a2

    iget v9, p0, Lk8/d$b;->f:I

    sub-int v9, v10, v9

    sget-object v11, Lk8/d;->a:[Lk8/c;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_a2
    add-int/lit8 v10, v10, 0x1

    goto :goto_76

    :cond_a5
    :goto_a5
    if-eq v6, v7, :cond_af

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v6, v3, v4}, Lk8/d$b;->f(III)V

    goto :goto_e6

    :cond_af
    const/16 v6, 0x40

    if-ne v9, v7, :cond_c2

    iget-object v7, p0, Lk8/d$b;->a:Lokio/Buffer;

    invoke-virtual {v7, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    invoke-virtual {p0, v4}, Lk8/d$b;->d(Lokio/ByteString;)V

    invoke-virtual {p0, v5}, Lk8/d$b;->d(Lokio/ByteString;)V

    invoke-virtual {p0, v3}, Lk8/d$b;->c(Lk8/c;)V

    goto :goto_e6

    :cond_c2
    sget-object v7, Lk8/c;->d:Lokio/ByteString;

    invoke-virtual {v4, v7}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-eqz v7, :cond_db

    sget-object v7, Lk8/c;->i:Lokio/ByteString;

    invoke-virtual {v7, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    const/16 v3, 0xf

    invoke-virtual {p0, v9, v3, v1}, Lk8/d$b;->f(III)V

    invoke-virtual {p0, v5}, Lk8/d$b;->d(Lokio/ByteString;)V

    goto :goto_e6

    :cond_db
    const/16 v4, 0x3f

    invoke-virtual {p0, v9, v4, v6}, Lk8/d$b;->f(III)V

    invoke-virtual {p0, v5}, Lk8/d$b;->d(Lokio/ByteString;)V

    invoke-virtual {p0, v3}, Lk8/d$b;->c(Lk8/c;)V

    :goto_e6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    :cond_ea
    return-void
.end method

.method public f(III)V
    .registers 5

    if-ge p1, p2, :cond_9

    iget-object p0, p0, Lk8/d$b;->a:Lokio/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void

    :cond_9
    iget-object v0, p0, Lk8/d$b;->a:Lokio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    iget-object v0, p0, Lk8/d$b;->a:Lokio/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    :cond_1f
    iget-object p0, p0, Lk8/d$b;->a:Lokio/Buffer;

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void
.end method
