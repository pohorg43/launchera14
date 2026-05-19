.class public final Lokio/internal/FixedLengthSource;
.super Lokio/ForwardingSource;
.source ""


# instance fields
.field private bytesReceived:J

.field private final size:J

.field private final truncate:Z


# direct methods
.method public constructor <init>(Lokio/Source;JZ)V
    .registers 6

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    iput-wide p2, p0, Lokio/internal/FixedLengthSource;->size:J

    iput-boolean p4, p0, Lokio/internal/FixedLengthSource;->truncate:Z

    return-void
.end method

.method private final truncateToSize(Lokio/Buffer;J)V
    .registers 4

    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {p0}, Lokio/Buffer;->clear()V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 13

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v2, p0, Lokio/internal/FixedLengthSource;->size:J

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    if-lez v4, :cond_13

    move-wide p2, v7

    goto :goto_21

    :cond_13
    iget-boolean v4, p0, Lokio/internal/FixedLengthSource;->truncate:Z

    if-eqz v4, :cond_21

    sub-long/2addr v2, v0

    cmp-long v0, v2, v7

    if-nez v0, :cond_1d

    return-wide v5

    :cond_1d
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :cond_21
    :goto_21
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v5

    if-eqz v0, :cond_2e

    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    :cond_2e
    iget-wide v1, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v3, p0, Lokio/internal/FixedLengthSource;->size:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_38

    if-eqz v0, :cond_3c

    :cond_38
    cmp-long v0, v1, v3

    if-lez v0, :cond_70

    :cond_3c
    cmp-long p2, p2, v7

    if-lez p2, :cond_51

    cmp-long p2, v1, v3

    if-lez p2, :cond_51

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p2

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    iget-wide v2, p0, Lokio/internal/FixedLengthSource;->size:J

    sub-long/2addr v0, v2

    sub-long/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lokio/internal/FixedLengthSource;->truncateToSize(Lokio/Buffer;J)V

    :cond_51
    new-instance p1, Ljava/io/IOException;

    const-string p2, "expected "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->size:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lokio/internal/FixedLengthSource;->bytesReceived:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    return-wide p2
.end method
