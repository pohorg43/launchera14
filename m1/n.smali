.class public final Lm1/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm1/i;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/h<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lm1/n;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    iget-object p0, p0, Lm1/n;->a:Ljava/util/Set;

    invoke-static {p0}, Lt1/f;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/h;

    invoke-interface {v0}, Lm1/i;->onDestroy()V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public onStart()V
    .registers 2

    iget-object p0, p0, Lm1/n;->a:Ljava/util/Set;

    invoke-static {p0}, Lt1/f;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/h;

    invoke-interface {v0}, Lm1/i;->onStart()V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object p0, p0, Lm1/n;->a:Ljava/util/Set;

    invoke-static {p0}, Lt1/f;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/h;

    invoke-interface {v0}, Lm1/i;->onStop()V

    goto :goto_c

    :cond_1c
    return-void
.end method
