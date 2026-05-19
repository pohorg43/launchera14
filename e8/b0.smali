.class public abstract Le8/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Le8/t;[B)Le8/b0;
    .registers 5
    .param p0  # Le8/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    const-string p1, "source == null"

    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Le8/a0;

    invoke-direct {p1, p0, v1, v2, v0}, Le8/a0;-><init>(Le8/t;JLokio/BufferedSource;)V

    return-object p1
.end method


# virtual methods
.method public final a()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Le8/b0;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3e

    invoke-virtual {p0}, Le8/b0;->e()Lokio/BufferedSource;

    move-result-object p0

    :try_start_f
    invoke-interface {p0}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_39

    invoke-static {p0}, Lf8/c;->e(Ljava/io/Closeable;)V

    const-wide/16 v3, -0x1

    cmp-long p0, v0, v3

    if-eqz p0, :cond_38

    array-length p0, v2

    int-to-long v3, p0

    cmp-long p0, v0, v3

    if-nez p0, :cond_23

    goto :goto_38

    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string v3, "Content-Length ("

    const-string v4, ") and stream length ("

    invoke-static {v3, v0, v1, v4}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v2

    const-string v2, ") disagree"

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    return-object v2

    :catchall_39
    move-exception v0

    invoke-static {p0}, Lf8/c;->e(Ljava/io/Closeable;)V

    throw v0

    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Cannot buffer entire body for content length: "

    invoke-static {v2, v0, v1}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract b()J
.end method

.method public abstract c()Le8/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Le8/b0;->e()Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lf8/c;->e(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract e()Lokio/BufferedSource;
.end method

.method public final f()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Le8/b0;->e()Lokio/BufferedSource;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Le8/b0;->c()Le8/t;

    move-result-object p0

    sget-object v1, Lf8/c;->i:Ljava/nio/charset/Charset;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_20

    if-eqz p0, :cond_14

    :try_start_c
    iget-object p0, p0, Le8/t;->b:Ljava/lang/String;

    if-eqz p0, :cond_14

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    :catch_14
    :cond_14
    :try_start_14
    invoke-static {v0, v1}, Lf8/c;->b(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-interface {v0, p0}, Lokio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_20

    invoke-static {v0}, Lf8/c;->e(Ljava/io/Closeable;)V

    return-object p0

    :catchall_20
    move-exception p0

    invoke-static {v0}, Lf8/c;->e(Ljava/io/Closeable;)V

    throw p0
.end method
