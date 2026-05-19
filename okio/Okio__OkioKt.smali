.class final synthetic Lokio/Okio__OkioKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final blackhole()Lokio/Sink;
    .registers 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "blackhole"
    .end annotation

    new-instance v0, Lokio/BlackholeSink;

    invoke-direct {v0}, Lokio/BlackholeSink;-><init>()V

    return-object v0
.end method

.method public static final buffer(Lokio/Sink;)Lokio/BufferedSink;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    return-object v0
.end method

.method public static final buffer(Lokio/Source;)Lokio/BufferedSource;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    return-object v0
.end method

.method public static final use(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_7
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_19

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p0, :cond_15

    :try_start_10
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_15

    :catchall_14
    move-exception v0

    :cond_15
    :goto_15
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_2d

    :catchall_19
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p0, :cond_27

    :try_start_1f
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p0

    invoke-static {p1, p0}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_2d
    if-nez v0, :cond_33

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    :cond_33
    throw v0
.end method
