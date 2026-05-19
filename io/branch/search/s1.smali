.class public final Lio/branch/search/s1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Le8/d;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/d;",
            "Ll4/d<",
            "-",
            "Le8/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lm7/n;

    invoke-static {p1}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v0}, Lm7/n;->w()V

    new-instance v1, Lio/branch/search/s1$b;

    invoke-direct {v1, v0}, Lio/branch/search/s1$b;-><init>(Lm7/l;)V

    check-cast p0, Le8/w;

    invoke-virtual {p0, v1}, Le8/w;->c(Le8/e;)V

    new-instance v1, Lio/branch/search/s1$a;

    invoke-direct {v1, p0}, Lio/branch/search/s1$a;-><init>(Le8/d;)V

    invoke-virtual {v0, v1}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    if-ne p0, v0, :cond_2c

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2c
    return-object p0
.end method

.method public static final a(Lio/branch/search/f5;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "$this$getJson"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lio/branch/search/f5$b;

    if-eqz v0, :cond_12

    check-cast p0, Lio/branch/search/f5$b;

    invoke-virtual {p0}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p0

    :goto_f
    check-cast p0, Lorg/json/JSONObject;

    goto :goto_1d

    :cond_12
    instance-of v0, p0, Lio/branch/search/f5$a;

    if-eqz v0, :cond_1e

    check-cast p0, Lio/branch/search/f5$a;

    invoke-virtual {p0}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object p0

    goto :goto_f

    :goto_1d
    return-object p0

    :cond_1e
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
