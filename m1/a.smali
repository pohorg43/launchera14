.class public Lm1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm1/h;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lm1/i;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lm1/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lm1/i;)V
    .registers 3
    .param p1  # Lm1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lm1/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lm1/a;->c:Z

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lm1/i;->onDestroy()V

    goto :goto_18

    :cond_d
    iget-boolean p0, p0, Lm1/a;->b:Z

    if-eqz p0, :cond_15

    invoke-interface {p1}, Lm1/i;->onStart()V

    goto :goto_18

    :cond_15
    invoke-interface {p1}, Lm1/i;->onStop()V

    :goto_18
    return-void
.end method

.method public b(Lm1/i;)V
    .registers 2
    .param p1  # Lm1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lm1/a;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/a;->c:Z

    iget-object p0, p0, Lm1/a;->a:Ljava/util/Set;

    invoke-static {p0}, Lt1/f;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/i;

    invoke-interface {v0}, Lm1/i;->onDestroy()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/a;->b:Z

    iget-object p0, p0, Lm1/a;->a:Ljava/util/Set;

    invoke-static {p0}, Lt1/f;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/i;

    invoke-interface {v0}, Lm1/i;->onStart()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm1/a;->b:Z

    iget-object p0, p0, Lm1/a;->a:Ljava/util/Set;

    invoke-static {p0}, Lt1/f;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm1/i;

    invoke-interface {v0}, Lm1/i;->onStop()V

    goto :goto_f

    :cond_1f
    return-void
.end method
