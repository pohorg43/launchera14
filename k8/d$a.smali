.class public final Lk8/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk8/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lokio/BufferedSource;

.field public final c:I

.field public d:I

.field public e:[Lk8/c;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(ILokio/Source;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk8/d$a;->a:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lk8/c;

    iput-object v0, p0, Lk8/d$a;->e:[Lk8/c;

    const/4 v0, 0x7

    iput v0, p0, Lk8/d$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lk8/d$a;->g:I

    iput v0, p0, Lk8/d$a;->h:I

    iput p1, p0, Lk8/d$a;->c:I

    iput p1, p0, Lk8/d$a;->d:I

    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lk8/d$a;->b:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lk8/d$a;->e:[Lk8/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lk8/d$a;->e:[Lk8/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk8/d$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lk8/d$a;->g:I

    iput v0, p0, Lk8/d$a;->h:I

    return-void
.end method

.method public final b(I)I
    .registers 2

    iget p0, p0, Lk8/d$a;->f:I

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    return p0
.end method

.method public final c(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_3a

    iget-object v1, p0, Lk8/d$a;->e:[Lk8/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lk8/d$a;->f:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    iget-object v2, p0, Lk8/d$a;->e:[Lk8/c;

    aget-object v3, v2, v1

    iget v3, v3, Lk8/c;->c:I

    sub-int/2addr p1, v3

    iget v3, p0, Lk8/d$a;->h:I

    aget-object v2, v2, v1

    iget v2, v2, Lk8/c;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lk8/d$a;->h:I

    iget v2, p0, Lk8/d$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lk8/d$a;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_29
    iget-object p1, p0, Lk8/d$a;->e:[Lk8/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lk8/d$a;->g:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lk8/d$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lk8/d$a;->f:I

    :cond_3a
    return v0
.end method

.method public final d(I)Lokio/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ltz p1, :cond_b

    sget-object v1, Lk8/d;->a:[Lk8/c;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_15

    sget-object p0, Lk8/d;->a:[Lk8/c;

    aget-object p0, p0, p1

    iget-object p0, p0, Lk8/c;->a:Lokio/ByteString;

    return-object p0

    :cond_15
    sget-object v1, Lk8/d;->a:[Lk8/c;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lk8/d$a;->b(I)I

    move-result v1

    if-ltz v1, :cond_2a

    iget-object p0, p0, Lk8/d$a;->e:[Lk8/c;

    array-length v2, p0

    if-ge v1, v2, :cond_2a

    aget-object p0, p0, v1

    iget-object p0, p0, Lk8/c;->a:Lokio/ByteString;

    return-object p0

    :cond_2a
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Header index too large "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(ILk8/c;)V
    .registers 9

    iget-object v0, p0, Lk8/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lk8/c;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_16

    iget-object v2, p0, Lk8/d$a;->e:[Lk8/c;

    iget v3, p0, Lk8/d$a;->f:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p1

    aget-object v2, v2, v3

    iget v2, v2, Lk8/c;->c:I

    sub-int/2addr v0, v2

    :cond_16
    iget v2, p0, Lk8/d$a;->d:I

    if-le v0, v2, :cond_1e

    invoke-virtual {p0}, Lk8/d$a;->a()V

    return-void

    :cond_1e
    iget v3, p0, Lk8/d$a;->h:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lk8/d$a;->c(I)I

    move-result v2

    if-ne p1, v1, :cond_55

    iget p1, p0, Lk8/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lk8/d$a;->e:[Lk8/c;

    array-length v3, v2

    if-le p1, v3, :cond_44

    array-length p1, v2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lk8/c;

    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lk8/d$a;->e:[Lk8/c;

    array-length v2, v2

    add-int/2addr v2, v1

    iput v2, p0, Lk8/d$a;->f:I

    iput-object p1, p0, Lk8/d$a;->e:[Lk8/c;

    :cond_44
    iget p1, p0, Lk8/d$a;->f:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lk8/d$a;->f:I

    iget-object v1, p0, Lk8/d$a;->e:[Lk8/c;

    aput-object p2, v1, p1

    iget p1, p0, Lk8/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk8/d$a;->g:I

    goto :goto_60

    :cond_55
    iget v1, p0, Lk8/d$a;->f:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p1

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget-object p1, p0, Lk8/d$a;->e:[Lk8/c;

    aput-object p2, p1, v1

    :goto_60
    iget p1, p0, Lk8/d$a;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lk8/d$a;->h:I

    return-void
.end method

.method public f()Lokio/ByteString;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/d$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    const/4 v3, 0x0

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lk8/d$a;->g(II)I

    move-result v0

    if-eqz v1, :cond_86

    sget-object v1, Lk8/s;->d:Lk8/s;

    iget-object p0, p0, Lk8/d$a;->b:Lokio/BufferedSource;

    int-to-long v4, v0

    invoke-interface {p0, v4, v5}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object p0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, v1, Lk8/s;->a:Lk8/s$a;

    move v4, v3

    move v5, v4

    :goto_2f
    array-length v6, p0

    if-ge v3, v6, :cond_5d

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x8

    :goto_3b
    const/16 v6, 0x8

    if-lt v5, v6, :cond_5a

    add-int/lit8 v6, v5, -0x8

    ushr-int v7, v4, v6

    and-int/lit16 v7, v7, 0xff

    iget-object v2, v2, Lk8/s$a;->a:[Lk8/s$a;

    aget-object v2, v2, v7

    iget-object v7, v2, Lk8/s$a;->a:[Lk8/s$a;

    if-nez v7, :cond_58

    iget v6, v2, Lk8/s$a;->b:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v2, v2, Lk8/s$a;->c:I

    sub-int/2addr v5, v2

    iget-object v2, v1, Lk8/s;->a:Lk8/s$a;

    goto :goto_3b

    :cond_58
    move v5, v6

    goto :goto_3b

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_5d
    :goto_5d
    if-lez v5, :cond_7d

    rsub-int/lit8 p0, v5, 0x8

    shl-int p0, v4, p0

    and-int/lit16 p0, p0, 0xff

    iget-object v2, v2, Lk8/s$a;->a:[Lk8/s$a;

    aget-object p0, v2, p0

    iget-object v2, p0, Lk8/s$a;->a:[Lk8/s$a;

    if-nez v2, :cond_7d

    iget v2, p0, Lk8/s$a;->c:I

    if-le v2, v5, :cond_72

    goto :goto_7d

    :cond_72
    iget v2, p0, Lk8/s$a;->b:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget p0, p0, Lk8/s$a;->c:I

    sub-int/2addr v5, p0

    iget-object v2, v1, Lk8/s;->a:Lk8/s$a;

    goto :goto_5d

    :cond_7d
    :goto_7d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_86
    iget-object p0, p0, Lk8/d$a;->b:Lokio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public g(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_4

    return p1

    :cond_4
    const/4 p1, 0x0

    :goto_5
    iget-object v0, p0, Lk8/d$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_18

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_5

    :cond_18
    shl-int p0, v0, p1

    add-int/2addr p2, p0

    return p2
.end method
