.class public Ls4/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n231#1:234\n1#2:233\n1#2:235\n*S KotlinDebug\n*F\n+ 1 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n*L\n230#1:234\n230#1:235\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .registers 5

    and-int/lit8 p1, p2, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    sget-object p1, Lk7/b;->a:Ljava/nio/charset/Charset;

    goto :goto_9

    :cond_8
    move-object p1, p2

    :goto_9
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_1d
    invoke-static {v0}, Ls4/h;->c(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    invoke-static {v0, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_25
    move-exception p0

    :try_start_26
    throw p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p1

    invoke-static {v0, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
