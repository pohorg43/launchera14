.class public final Lokio/CipherSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCipherSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSource.kt\nokio/CipherSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final buffer:Lokio/Buffer;

.field private final cipher:Ljavax/crypto/Cipher;

.field private closed:Z

.field private final:Z

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lokio/CipherSource;->blockSize:I

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    if-lez p1, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    if-eqz p0, :cond_26

    return-void

    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Block cipher required "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final doFinal()V
    .registers 8

    iget-object v0, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    iget v1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_3b

    iget-object p0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_3b
    return-void
.end method

.method private final refill()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lokio/CipherSource;->final:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/CipherSource;->final:Z

    invoke-direct {p0}, Lokio/CipherSource;->doFinal()V

    goto :goto_23

    :cond_1f
    invoke-direct {p0}, Lokio/CipherSource;->update()V

    goto :goto_0

    :cond_23
    :goto_23
    return-void
.end method

.method private final update()V
    .registers 10

    iget-object v0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v2

    :goto_16
    const/16 v3, 0x2000

    if-le v2, v3, :cond_40

    iget v2, p0, Lokio/CipherSource;->blockSize:I

    if-gt v1, v2, :cond_38

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/CipherSource;->final:Z

    iget-object v0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    iget-object v1, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    iget-object p0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const-string v1, "doFinal(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lokio/Buffer;->write([B)Lokio/Buffer;

    return-void

    :cond_38
    sub-int/2addr v1, v2

    iget-object v2, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v2

    goto :goto_16

    :cond_40
    iget-object v3, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    iget-object v3, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v5, v0, Lokio/Segment;->pos:I

    iget-object v7, v2, Lokio/Segment;->data:[B

    iget v8, v2, Lokio/Segment;->pos:I

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    iget-object v3, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    iget v1, v2, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v2, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    iget v0, v2, Lokio/Segment;->pos:I

    iget v1, v2, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_7c

    iget-object p0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_7c
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/CipherSource;->closed:Z

    iget-object p0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .registers 1

    iget-object p0, p0, Lokio/CipherSource;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_2f

    iget-boolean v4, p0, Lokio/CipherSource;->closed:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_23

    if-nez v2, :cond_19

    return-wide v0

    :cond_19
    invoke-direct {p0}, Lokio/CipherSource;->refill()V

    iget-object p0, p0, Lokio/CipherSource;->buffer:Lokio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p0

    return-wide p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lokio/CipherSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
