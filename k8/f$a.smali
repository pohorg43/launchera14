.class public Lk8/f$a;
.super Lokio/ForwardingSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public final synthetic c:Lk8/f;


# direct methods
.method public constructor <init>(Lk8/f;Lokio/Source;)V
    .registers 3

    iput-object p1, p0, Lk8/f$a;->c:Lk8/f;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk8/f$a;->a:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lk8/f$a;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .registers 9

    iget-boolean v0, p0, Lk8/f$a;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk8/f$a;->a:Z

    iget-object v3, p0, Lk8/f$a;->c:Lk8/f;

    iget-object v1, v3, Lk8/f;->b:Lh8/g;

    const/4 v2, 0x0

    iget-wide v4, p0, Lk8/f$a;->b:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lh8/g;->i(ZLi8/c;JLjava/io/IOException;)V

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk8/f$a;->a(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lokio/ForwardingSource;->delegate()Lokio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    iget-wide v0, p0, Lk8/f$a;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lk8/f$a;->b:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    invoke-virtual {p0, p1}, Lk8/f$a;->a(Ljava/io/IOException;)V

    throw p1
.end method
