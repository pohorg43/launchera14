.class public final Lokio/CipherSink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Sink;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n1#2:149\n86#3:150\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:150\n*E\n"
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private closed:Z

.field private final sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V
    .registers 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    iput-object p2, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lokio/CipherSink;->blockSize:I

    if-lez p1, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_1f

    return-void

    :cond_1f
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

.method private final doFinal()Ljava/lang/Throwable;
    .registers 8

    iget-object v0, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    const/16 v2, 0x2000

    if-le v0, v2, :cond_22

    :try_start_f
    iget-object v0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    iget-object p0, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    const-string v2, "doFinal(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_20

    return-object v1

    :catchall_20
    move-exception p0

    return-object p0

    :cond_22
    iget-object v2, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    :try_start_2c
    iget-object p0, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v4, v0, Lokio/Segment;->limit:I

    invoke-virtual {p0, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result p0

    iget v3, v0, Lokio/Segment;->limit:I

    add-int/2addr v3, p0

    iput v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, p0

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->setSize$okio(J)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_45

    goto :goto_47

    :catchall_45
    move-exception p0

    move-object v1, p0

    :goto_47
    iget p0, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne p0, v3, :cond_56

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p0

    iput-object p0, v2, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_56
    return-object v1
.end method

.method private final update(Lokio/Buffer;J)I
    .registers 14

    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v2

    iget-object v3, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    :goto_1c
    const/16 v4, 0x2000

    if-le v3, v4, :cond_42

    iget v3, p0, Lokio/CipherSink;->blockSize:I

    if-gt v1, v3, :cond_3a

    iget-object v0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    iget-object p0, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p0

    const-string p1, "update(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    long-to-int p0, p2

    return p0

    :cond_3a
    sub-int/2addr v1, v3

    iget-object v3, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    goto :goto_1c

    :cond_42
    invoke-virtual {v2, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object p2

    iget-object v4, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    iget-object v5, v0, Lokio/Segment;->data:[B

    iget v6, v0, Lokio/Segment;->pos:I

    iget-object v8, p2, Lokio/Segment;->data:[B

    iget v9, p2, Lokio/Segment;->limit:I

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p3

    iget v3, p2, Lokio/Segment;->limit:I

    add-int/2addr v3, p3

    iput v3, p2, Lokio/Segment;->limit:I

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    iget p3, p2, Lokio/Segment;->pos:I

    iget v3, p2, Lokio/Segment;->limit:I

    if-ne p3, v3, :cond_72

    invoke-virtual {p2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p3

    iput-object p3, v2, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {p2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_72
    iget-object p0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->setSize$okio(J)V

    iget p0, v0, Lokio/Segment;->pos:I

    add-int/2addr p0, v1

    iput p0, v0, Lokio/Segment;->pos:I

    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p0, p2, :cond_92

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p0

    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_92
    return v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokio/CipherSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/CipherSink;->closed:Z

    invoke-direct {p0}, Lokio/CipherSink;->doFinal()Ljava/lang/Throwable;

    move-result-object v0

    :try_start_c
    iget-object p0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/Sink;->close()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p0

    if-nez v0, :cond_16

    move-object v0, p0

    :cond_16
    :goto_16
    if-nez v0, :cond_19

    return-void

    :cond_19
    throw v0
.end method

.method public flush()V
    .registers 1

    iget-object p0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .registers 1

    iget-object p0, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    iget-boolean v0, p0, Lokio/CipherSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    :goto_15
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_22

    invoke-direct {p0, p1, p2, p3}, Lokio/CipherSink;->update(Lokio/Buffer;J)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p2, v0

    goto :goto_15

    :cond_22
    return-void

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
