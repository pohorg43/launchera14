.class public final Lk3/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/io/BufferedReader;ZI)Ljava/lang/String;
    .registers 5

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_1d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_22
    .catchall {:try_start_a .. :try_end_1c} :catchall_20

    goto :goto_e

    :cond_1d
    if-eqz p1, :cond_31

    goto :goto_2e

    :catchall_20
    move-exception p2

    goto :goto_3b

    :catch_22
    move-exception v0

    :try_start_23
    const-string v1, "FileReadUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_20

    if-eqz p1, :cond_31

    :goto_2e
    invoke-static {p0}, Lk3/c;->a(Ljava/io/Closeable;)V

    :cond_31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :goto_3b
    if-eqz p1, :cond_40

    invoke-static {p0}, Lk3/c;->a(Ljava/io/Closeable;)V

    :cond_40
    throw p2
.end method

.method public static final b(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lk3/e;->a(Ljava/io/BufferedReader;ZI)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "readFile error, file:"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FileReadUtils"

    invoke-static {v1, p0, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
