.class public abstract Le8/y;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Le8/t;Ljava/io/File;)Le8/y;
    .registers 3
    .param p0  # Le8/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "file == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Le8/y$c;

    invoke-direct {v0, p0, p1}, Le8/y$c;-><init>(Le8/t;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Le8/t;Ljava/lang/String;)Le8/y;
    .registers 4
    .param p0  # Le8/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lf8/c;->i:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_27

    :try_start_4
    iget-object v0, p0, Le8/t;->b:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_27

    sget-object v0, Lf8/c;->i:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le8/t;->b(Ljava/lang/String;)Le8/t;

    move-result-object p0

    :cond_27
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Le8/y;->create(Le8/t;[B)Le8/y;

    move-result-object p0

    return-object p0
.end method

.method public static create(Le8/t;Lokio/ByteString;)Le8/y;
    .registers 3
    .param p0  # Le8/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Le8/y$a;

    invoke-direct {v0, p0, p1}, Le8/y$a;-><init>(Le8/t;Lokio/ByteString;)V

    return-object v0
.end method

.method public static create(Le8/t;[B)Le8/y;
    .registers 4
    .param p0  # Le8/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Le8/y;->create(Le8/t;[BII)Le8/y;

    move-result-object p0

    return-object p0
.end method

.method public static create(Le8/t;[BII)Le8/y;
    .registers 11
    .param p0  # Le8/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "content == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lf8/c;->d(JJJ)V

    new-instance v0, Le8/y$b;

    invoke-direct {v0, p0, p3, p1, p2}, Le8/y$b;-><init>(Le8/t;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract contentType()Le8/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lokio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
