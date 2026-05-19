.class public Lj8/a$g;
.super Lj8/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(Lj8/a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj8/a$b;-><init>(Lj8/a;Lj8/a$a;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lj8/a$b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lj8/a$g;->e:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lj8/a$b;->a(ZLjava/io/IOException;)V

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj8/a$b;->b:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2a

    iget-boolean v0, p0, Lj8/a$b;->b:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lj8/a$g;->e:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11

    return-wide v1

    :cond_11
    invoke-super {p0, p1, p2, p3}, Lj8/a$b;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_21

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj8/a$g;->e:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lj8/a$b;->a(ZLjava/io/IOException;)V

    return-wide v1

    :cond_21
    return-wide p1

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount < 0: "

    invoke-static {p1, p2, p3}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
