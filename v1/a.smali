.class public Lv1/a;
.super Lv1/s;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lv1/s;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "host"

    invoke-virtual {p0, v0}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8
    .catch Lv1/r; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, ""

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_9
    .catch Lv1/r; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const-string p0, ""

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_9
    .catch Lv1/r; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const-string p0, ""

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lv1/a;
    .registers 3

    const-string v0, "host"

    invoke-virtual {p0, v0, p1}, Lv1/s;->e(Ljava/lang/String;Ljava/lang/Object;)Lv1/s;

    return-object p0
.end method
