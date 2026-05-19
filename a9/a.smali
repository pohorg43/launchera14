.class public final La9/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    new-instance v0, Lv3/e0$a;

    invoke-direct {v0}, Lv3/e0$a;-><init>()V

    sget-object v1, Lx8/a;->a:Lx8/a;

    invoke-virtual {v0, v1}, Lv3/e0$a;->b(Lv3/r$a;)Lv3/e0$a;

    new-instance v1, Lpantanal/foundation/moshi/ArrayMapJsonAdapter;

    invoke-direct {v1}, Lpantanal/foundation/moshi/ArrayMapJsonAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lv3/e0$a;->a(Ljava/lang/Object;)Lv3/e0$a;

    new-instance v1, Lpantanal/foundation/moshi/BitmapTypeAdapter;

    invoke-direct {v1}, Lpantanal/foundation/moshi/BitmapTypeAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lv3/e0$a;->a(Ljava/lang/Object;)Lv3/e0$a;

    new-instance v1, Lx3/b;

    invoke-direct {v1}, Lx3/b;-><init>()V

    iget-object v2, v0, Lv3/e0$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lv3/e0;

    invoke-direct {v1, v0}, Lv3/e0;-><init>(Lv3/e0$a;)V

    invoke-virtual {v1, p1}, Lv3/e0;->a(Ljava/lang/Class;)Lv3/r;

    move-result-object p1

    const-string v0, "Builder()\n              …            .adapter(cls)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    new-instance v0, Lv3/y;

    invoke-direct {v0, p0}, Lv3/y;-><init>(Lokio/BufferedSource;)V

    invoke-virtual {p1, v0}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lv3/y;->l()Lv3/w$b;

    move-result-object p1

    sget-object v0, Lv3/w$b;->j:Lv3/w$b;

    if-ne p1, v0, :cond_5a

    return-object p0

    :cond_5a
    new-instance p0, Lv3/t;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_62
    .catchall {:try_start_a .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_87

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fromJsonString failed,msg = "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "JsonUtils"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_87
    const/4 p0, 0x0

    return-object p0
.end method
