.class public abstract Lj8/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final a:Lokio/ForwardingTimeout;

.field public b:Z

.field public c:J

.field public final synthetic d:Lj8/a;


# direct methods
.method public constructor <init>(Lj8/a;Lj8/a$a;)V
    .registers 3

    iput-object p1, p0, Lj8/a$b;->d:Lj8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lokio/ForwardingTimeout;

    iget-object p1, p1, Lj8/a;->c:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {p2, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object p2, p0, Lj8/a$b;->a:Lokio/ForwardingTimeout;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lj8/a$b;->c:J

    return-void
.end method


# virtual methods
.method public final a(ZLjava/io/IOException;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lj8/a$b;->d:Lj8/a;

    iget v1, v0, Lj8/a;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    iget-object v1, p0, Lj8/a$b;->a:Lokio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lj8/a;->g(Lokio/ForwardingTimeout;)V

    iget-object v5, p0, Lj8/a$b;->d:Lj8/a;

    iput v2, v5, Lj8/a;->e:I

    iget-object v3, v5, Lj8/a;->b:Lh8/g;

    if-eqz v3, :cond_20

    xor-int/lit8 v4, p1, 0x1

    iget-wide v6, p0, Lj8/a$b;->c:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lh8/g;->i(ZLi8/c;JLjava/io/IOException;)V

    :cond_20
    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lj8/a$b;->d:Lj8/a;

    iget p0, p0, Lj8/a;->e:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lj8/a$b;->d:Lj8/a;

    iget-object v0, v0, Lj8/a;->c:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    iget-wide v0, p0, Lj8/a$b;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lj8/a$b;->c:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lj8/a$b;->a(ZLjava/io/IOException;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    iget-object p0, p0, Lj8/a$b;->a:Lokio/ForwardingTimeout;

    return-object p0
.end method
