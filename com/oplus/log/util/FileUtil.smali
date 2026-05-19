.class public Lcom/oplus/log/util/FileUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static File2byte(Ljava/io/File;)[B
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_24} :catch_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_3b

    :catch_25
    move-exception p0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    :catch_30
    move-exception p0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    :goto_3b
    return-object p0
.end method

.method public static File2byte(Ljava/lang/String;)[B
    .registers 1

    invoke-static {p0}, Lcom/oplus/log/util/FileUtil;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/util/FileUtil;->File2byte(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static deleteEarlyFile([Ljava/io/File;)V
    .registers 10

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    array-length v5, p0

    if-ge v4, v5, :cond_2f

    if-nez v4, :cond_19

    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    aget-object v2, p0, v3

    :goto_15
    move-wide v7, v0

    move-object v0, v2

    move-wide v1, v7

    goto :goto_2c

    :cond_19
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gez v5, :cond_2c

    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    aget-object v2, p0, v4

    goto :goto_15

    :cond_2c
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_2f
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_34
    return-void
.end method

.method public static deleteOldFile([Ljava/io/File;J)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_1f

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, v0, v3

    cmp-long v3, v3, p1

    if-lez v3, :cond_1c

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public static getDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_10

    :try_start_b
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return-object v0
.end method
