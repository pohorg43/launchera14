.class public Lio/branch/search/s5;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_a
    new-instance v3, Ls8/b;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ls8/b;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_34
    .catchall {:try_start_a .. :try_end_14} :catchall_2d

    :goto_14
    :try_start_14
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_2a
    .catchall {:try_start_14 .. :try_end_1e} :catchall_27

    goto :goto_14

    :cond_1f
    invoke-virtual {v3}, Ls8/b;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_27
    move-exception p0

    move-object v2, v3

    goto :goto_2e

    :catch_2a
    move-exception p0

    move-object v2, v3

    goto :goto_35

    :catchall_2d
    move-exception p0

    :goto_2e
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ls8/b;->close()V

    :cond_33
    throw p0

    :catch_34
    move-exception p0

    :goto_35
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ls8/b;->close()V

    :cond_3a
    const-string v0, "Branchzip.brotliUnzip"

    const-string v1, "Exception brotli-unzipping network response."

    invoke-static {v0, v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static b([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_13
    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {p0, v2, v3, v1}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_2f
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2a

    goto :goto_13

    :cond_1f
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    throw v0

    :catch_2f
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    const-string p0, "Branchzip.unzip"

    const-string v1, "Exception unzipping network response."

    invoke-static {p0, v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/DeflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_13
    const/4 v3, 0x0

    :try_start_14
    invoke-virtual {p0, v2, v3, v1}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_2f
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2a

    goto :goto_13

    :cond_1f
    invoke-virtual {p0}, Ljava/util/zip/DeflaterInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/DeflaterInputStream;->close()V

    throw v0

    :catch_2f
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/DeflaterInputStream;->close()V

    const-string p0, "Branchzip.zip"

    const-string v1, "Exception zipping network response"

    invoke-static {p0, v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
