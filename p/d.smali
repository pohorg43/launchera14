.class public Lp/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lq/c;Lcom/airbnb/lottie/d;Lp/h0;)Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq/c;",
            "Lcom/airbnb/lottie/d;",
            "Lp/h0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ls/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, p1, v0, p2}, Lp/r;->a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lq/c;Lcom/airbnb/lottie/d;)Ll/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ll/a;

    sget-object v1, Lp/f;->a:Lp/f;

    invoke-static {p0, p1, v1}, Lp/d;->a(Lq/c;Lcom/airbnb/lottie/d;Lp/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ll/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Lq/c;Lcom/airbnb/lottie/d;)Ll/b;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lp/d;->d(Lq/c;Lcom/airbnb/lottie/d;Z)Ll/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lq/c;Lcom/airbnb/lottie/d;Z)Ll/b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ll/b;

    if-eqz p2, :cond_9

    invoke-static {}, Lr/h;->c()F

    move-result p2

    goto :goto_b

    :cond_9
    const/high16 p2, 0x3f800000  # 1.0f

    :goto_b
    sget-object v1, Lp/i;->a:Lp/i;

    invoke-static {p0, p1, p2, v1}, Lp/r;->a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ll/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lq/c;Lcom/airbnb/lottie/d;)Ll/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ll/d;

    sget-object v1, Lp/o;->a:Lp/o;

    invoke-static {p0, p1, v1}, Lp/d;->a(Lq/c;Lcom/airbnb/lottie/d;Lp/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ll/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static f(Lq/c;Lcom/airbnb/lottie/d;)Ll/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ll/f;

    invoke-static {}, Lr/h;->c()F

    move-result v1

    sget-object v2, Lp/w;->a:Lp/w;

    invoke-static {p0, p1, v1, v2}, Lp/r;->a(Lq/c;Lcom/airbnb/lottie/d;FLp/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ll/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method
