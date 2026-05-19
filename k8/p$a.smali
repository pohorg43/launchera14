.class public final Lk8/p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lokio/BufferedSource;

.field public b:I

.field public c:B

.field public d:I

.field public e:I

.field public f:S


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lk8/p$a;->e:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_7a

    iget-object v0, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    iget-short v3, p0, Lk8/p$a;->f:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Lk8/p$a;->f:S

    iget-byte v3, p0, Lk8/p$a;->c:B

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_18

    return-wide v1

    :cond_18
    iget v1, p0, Lk8/p$a;->d:I

    iget-object v2, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    invoke-static {v2}, Lk8/p;->f(Lokio/BufferedSource;)I

    move-result v2

    iput v2, p0, Lk8/p$a;->e:I

    iput v2, p0, Lk8/p$a;->b:I

    iget-object v2, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lk8/p$a;->c:B

    sget-object v3, Lk8/p;->e:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_50

    iget v4, p0, Lk8/p$a;->d:I

    iget v6, p0, Lk8/p$a;->b:I

    iget-byte v7, p0, Lk8/p$a;->c:B

    invoke-static {v5, v4, v6, v2, v7}, Lk8/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_50
    iget-object v3, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, p0, Lk8/p$a;->d:I

    const/16 v4, 0x9

    const/4 v6, 0x0

    if-ne v2, v4, :cond_6c

    if-ne v3, v1, :cond_64

    goto :goto_0

    :cond_64
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "TYPE_CONTINUATION streamId changed"

    invoke-static {p1, p0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_6c
    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "%s != TYPE_CONTINUATION"

    invoke-static {p1, p0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v6

    :cond_7a
    iget-object v3, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_8a

    return-wide v1

    :cond_8a
    iget p3, p0, Lk8/p$a;->e:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lk8/p$a;->e:I

    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lk8/p$a;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
