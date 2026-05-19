.class public Lv1/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv1/v;


# instance fields
.field public final synthetic a:Lv1/t;


# direct methods
.method public constructor <init>(Lv1/t;)V
    .registers 2

    iput-object p1, p0, Lv1/u;->a:Lv1/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lw1/a;)V
    .registers 3

    iget-object p0, p0, Lv1/u;->a:Lv1/t;

    invoke-static {p0, p1, p2}, Lv1/t;->g(Lv1/t;Ljava/lang/String;Lw1/a;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lv1/u;->a:Lv1/t;

    invoke-static {p0, p1}, Lv1/t;->h(Lv1/t;Ljava/util/Map;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lw1/a;)V
    .registers 3

    iget-object p0, p0, Lv1/u;->a:Lv1/t;

    invoke-static {p0, p1, p2}, Lv1/t;->g(Lv1/t;Ljava/lang/String;Lw1/a;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lw1/a;)V
    .registers 3

    iget-object p0, p0, Lv1/u;->a:Lv1/t;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lv1/t;->g(Lv1/t;Ljava/lang/String;Lw1/a;)V

    return-void
.end method

.method public e(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_26
    iget-object p0, p0, Lv1/u;->a:Lv1/t;

    invoke-static {p0, v0}, Lv1/t;->h(Lv1/t;Ljava/util/Map;)V

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lv1/u;->a:Lv1/t;

    invoke-static {p0, p1}, Lv1/t;->h(Lv1/t;Ljava/util/Map;)V

    return-void
.end method
