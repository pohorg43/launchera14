.class public final Lio/branch/search/o;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lio/branch/search/KNetworkUsageCappingRule;)Ljava/lang/String;
    .registers 4

    const-string v0, "$this$stringify"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La8/a;->b:La8/a$a;

    iget-object v1, v0, La8/a;->a:Lb8/c;

    iget-object v1, v1, Lb8/c;->k:Lc8/b;

    const-class v2, Lio/branch/search/KNetworkUsageCappingRule;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lz4/r;

    move-result-object v2

    invoke-static {v1, v2}, Le2/a;->e(Lc8/b;Lz4/r;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, La8/a;->a(Lw7/h;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Le8/y;)[B
    .registers 2

    const-string v0, "$this$flushToByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v0}, Le8/y;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    const-string v0, "bodySink.readByteArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Le8/y;)Ljava/lang/String;
    .registers 3

    const-string v0, "$this$flushToString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {p0}, Lio/branch/search/o;->a(Le8/y;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    move-exception p0

    const-string v0, "RequestBody.flushToString"

    invoke-static {v0, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method
