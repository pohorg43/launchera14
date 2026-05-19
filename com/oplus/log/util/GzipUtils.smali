.class public Lcom/oplus/log/util/GzipUtils;
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
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_24} :catch_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_2f

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2e
    const/4 p0, 0x0

    :goto_2f
    return-object p0
.end method

.method public static getFileByBytes([BLjava/io/File;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_2c
    .catchall {:try_start_1 .. :try_end_d} :catchall_29

    :try_start_d
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_27
    .catchall {:try_start_d .. :try_end_12} :catchall_46

    :try_start_12
    invoke-virtual {p1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_24
    .catchall {:try_start_12 .. :try_end_15} :catchall_21

    :try_start_15
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_41

    goto :goto_45

    :catchall_21
    move-exception p0

    move-object v0, p1

    goto :goto_47

    :catch_24
    move-exception p0

    move-object v0, p1

    goto :goto_2e

    :catch_27
    move-exception p0

    goto :goto_2e

    :catchall_29
    move-exception p0

    move-object v1, v0

    goto :goto_47

    :catch_2c
    move-exception p0

    move-object v1, v0

    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_46

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3b
    :goto_3b
    if-eqz v1, :cond_45

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception p0

    :goto_47
    if-eqz v0, :cond_51

    :try_start_49
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_51
    :goto_51
    if-eqz v1, :cond_5b

    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5b
    :goto_5b
    throw p0
.end method

.method public static getFileByBytes([BLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_f
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_4c
    .catchall {:try_start_1 .. :try_end_2d} :catchall_49

    :try_start_2d
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_47
    .catchall {:try_start_2d .. :try_end_32} :catchall_66

    :try_start_32
    invoke-virtual {p2, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_44
    .catchall {:try_start_32 .. :try_end_35} :catchall_41

    :try_start_35
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3d
    :try_start_3d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_61

    goto :goto_65

    :catchall_41
    move-exception p0

    move-object v0, p2

    goto :goto_67

    :catch_44
    move-exception p0

    move-object v0, p2

    goto :goto_4e

    :catch_47
    move-exception p0

    goto :goto_4e

    :catchall_49
    move-exception p0

    move-object p1, v0

    goto :goto_67

    :catch_4c
    move-exception p0

    move-object p1, v0

    :goto_4e
    :try_start_4e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_66

    if-eqz v0, :cond_5b

    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5b
    :goto_5b
    if-eqz p1, :cond_65

    :try_start_5d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_65
    :goto_65
    return-void

    :catchall_66
    move-exception p0

    :goto_67
    if-eqz v0, :cond_71

    :try_start_69
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_71
    :goto_71
    if-eqz p1, :cond_7b

    :try_start_73
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7b
    :goto_7b
    throw p0
.end method

.method public static gzip(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_31

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_14
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {v0}, Lcom/oplus/log/util/GzipUtils;->gzip([B)[B

    move-result-object v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_25

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_25
    move-exception v0

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v1

    :try_start_28
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw v1

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "gzip文件 filename不能为空"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static gzip([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_27

    :try_start_a
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1b

    :try_start_14
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_27

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_1b
    move-exception p0

    :try_start_1c
    throw p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v1

    :try_start_23
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw v1
.end method

.method public static ungzip([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_5
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_39

    const/16 v1, 0x400

    :try_start_c
    new-array v2, v1, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_13
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v1}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1f

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    :cond_1f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    :try_start_26
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1

    :catchall_2d
    move-exception v1

    :try_start_2e
    throw v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v2

    :try_start_30
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    :try_start_35
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    :try_start_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v1

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw v1
.end method
