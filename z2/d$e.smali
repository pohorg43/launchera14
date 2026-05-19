.class public final Lz2/d$e;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/d;->f(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.pantanal.server.content.decision.SceneDecisionCenter$query$1"
    f = "SceneDecisionCenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ll4/d<",
            "-",
            "Lz2/d$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/d$e;->a:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lz2/d$e;

    iget-object p0, p0, Lz2/d$e;->a:Ljava/lang/Integer;

    invoke-direct {p1, p0, p2}, Lz2/d$e;-><init>(Ljava/lang/Integer;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lz2/d$e;

    iget-object p0, p0, Lz2/d$e;->a:Ljava/lang/Integer;

    invoke-direct {p1, p0, p2}, Lz2/d$e;-><init>(Ljava/lang/Integer;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lz2/d$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lz2/d;->a:Lz2/d;

    invoke-virtual {p1}, Lz2/d;->d()Lz2/e;

    move-result-object v0

    invoke-virtual {v0}, Lz2/e;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "SceneDecisionCenter"

    const-string v2, "query"

    const-string v3, "newList"

    invoke-static {v1, v2, v3, v0}, Lk3/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p1}, Lz2/d;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p1}, Lz2/d;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lz2/d$e;->a:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_79

    invoke-virtual {p1}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3a

    :cond_39
    move v2, v3

    :cond_3a
    if-eqz v2, :cond_43

    const-string p0, "notifyAllObservers register entrance is null!"

    invoke-static {v1, p0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15b

    :cond_43
    invoke-virtual {p1}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_15b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/a;

    sget-object v2, Lz2/d;->a:Lz2/d;

    invoke-virtual {v2}, Lz2/d;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lz2/d;->e(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ld3/a;->onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    goto :goto_4f

    :cond_79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    if-eqz v4, :cond_89

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8a

    :cond_89
    move v2, v3

    :cond_8a
    if-nez v2, :cond_9a

    invoke-virtual {p1}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b3

    :cond_9a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyObserversByEntranceType entrance("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") can not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    invoke-virtual {p1}, Lz2/d;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lz2/d;->e(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_147

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantanal/server/content/recommendlist/SceneInfo;

    const-string v5, "notifyObserversByEntrance("

    const-string v6, "), sceneId:"

    invoke-static {v5, p0, v6}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getSceneId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", serviceList size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getServiceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", serviceList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_105
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v9, 0x7c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportEntrance()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_105

    :cond_13b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    :cond_147
    invoke-virtual {p1}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld3/a;

    if-nez p0, :cond_158

    goto :goto_15b

    :cond_158
    invoke-interface {p0, v2, v0}, Ld3/a;->onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    :cond_15b
    :goto_15b
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
