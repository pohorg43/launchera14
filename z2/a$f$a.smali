.class public final Lz2/a$f$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.pantanal.server.content.decision.DecisionCenter$query$1$2"
    f = "DecisionCenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/utrace/sdk/UTraceContext;

.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/List;Ljava/lang/Integer;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;",
            "Ljava/lang/Integer;",
            "Ll4/d<",
            "-",
            "Lz2/a$f$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/a$f$a;->a:Lcom/oplus/utrace/sdk/UTraceContext;

    iput-object p2, p0, Lz2/a$f$a;->b:Ljava/util/List;

    iput-object p3, p0, Lz2/a$f$a;->c:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
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

    new-instance p1, Lz2/a$f$a;

    iget-object v0, p0, Lz2/a$f$a;->a:Lcom/oplus/utrace/sdk/UTraceContext;

    iget-object v1, p0, Lz2/a$f$a;->b:Ljava/util/List;

    iget-object p0, p0, Lz2/a$f$a;->c:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, p0, p2}, Lz2/a$f$a;-><init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/List;Ljava/lang/Integer;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lz2/a$f$a;

    iget-object v0, p0, Lz2/a$f$a;->a:Lcom/oplus/utrace/sdk/UTraceContext;

    iget-object v1, p0, Lz2/a$f$a;->b:Ljava/util/List;

    iget-object p0, p0, Lz2/a$f$a;->c:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, p0, p2}, Lz2/a$f$a;-><init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/List;Ljava/lang/Integer;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lz2/a$f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    const-string p1, "931000"

    iget-object v0, p0, Lz2/a$f$a;->a:Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-static {p1, v0}, Lcom/pantanal/server/content/utils/a;->e(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)V

    sget-object p1, Lz2/a;->b:Lz2/a;

    iget-object v0, p0, Lz2/a$f$a;->b:Ljava/util/List;

    invoke-virtual {p1}, Lz2/a;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p1}, Lz2/a;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_63
    const-string v0, "[updateRecommendList] all list:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DecisionCenter"

    invoke-static {v0, p1}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lz2/a$f$a;->c:Ljava/lang/Integer;

    if-nez p1, :cond_c9

    sget-object p1, Lz2/a;->b:Lz2/a;

    iget-object p0, p0, Lz2/a$f$a;->a:Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DecisionCenter"

    const-string v1, "receive changed from ums, notifyAllObservers"

    invoke-static {v0, v1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c3

    invoke-virtual {p1}, Lz2/a;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lz2/a;->b:Lz2/a;

    invoke-virtual {v1}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantanal/server/content/recommendlist/ListObserver;

    if-nez v2, :cond_bb

    goto :goto_98

    :cond_bb
    invoke-virtual {v1, v0}, Lz2/a;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0, p0}, Lcom/pantanal/server/content/recommendlist/ListObserver;->onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    goto :goto_98

    :cond_c3
    const-string p0, "register error,please check register..."

    invoke-static {v0, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_c9
    sget-object v0, Lz2/a;->b:Lz2/a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lz2/a$f$a;->a:Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-virtual {v0}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantanal/server/content/recommendlist/ListObserver;

    if-nez v1, :cond_e2

    goto :goto_e9

    :cond_e2
    invoke-virtual {v0, p1}, Lz2/a;->c(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lcom/pantanal/server/content/recommendlist/ListObserver;->onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    :cond_e9
    :goto_e9
    const-string p0, "931000"

    sget-object p1, Lcom/oplus/utrace/sdk/CompletionType;->GOAHEAD:Lcom/oplus/utrace/sdk/CompletionType;

    const-class v0, Lcom/pantanal/server/content/utils/a;

    monitor-enter v0

    :try_start_f0
    const-string v1, "key"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "completionType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v2
    :try_end_102
    .catchall {:try_start_f0 .. :try_end_102} :catchall_141

    if-nez v2, :cond_106

    monitor-exit v0

    goto :goto_13e

    :cond_106
    if-nez v1, :cond_109

    goto :goto_12d

    :cond_109
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    :try_start_10c
    invoke-static {v1, p1, v2, v3, v4}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    const-string p1, "UTraceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[end] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", innerCtx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12d
    sget-object p1, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ThreadLocal;

    if-nez p0, :cond_13a

    goto :goto_13d

    :cond_13a
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_13d
    .catchall {:try_start_10c .. :try_end_13d} :catchall_141

    :goto_13d
    monitor-exit v0

    :goto_13e
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :catchall_141
    move-exception p0

    monitor-exit v0

    throw p0
.end method
