.class public final Lz2/a$f;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/a;->g(Ljava/lang/Integer;)V
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
    c = "com.pantanal.server.content.decision.DecisionCenter$query$1"
    f = "DecisionCenter.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/oplus/utrace/sdk/UTraceContext;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/Integer;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            "Ljava/lang/Integer;",
            "Ll4/d<",
            "-",
            "Lz2/a$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/a$f;->b:Lcom/oplus/utrace/sdk/UTraceContext;

    iput-object p2, p0, Lz2/a$f;->c:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
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

    new-instance p1, Lz2/a$f;

    iget-object v0, p0, Lz2/a$f;->b:Lcom/oplus/utrace/sdk/UTraceContext;

    iget-object p0, p0, Lz2/a$f;->c:Ljava/lang/Integer;

    invoke-direct {p1, v0, p0, p2}, Lz2/a$f;-><init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/Integer;Ll4/d;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    new-instance p1, Lz2/a$f;

    iget-object v0, p0, Lz2/a$f;->b:Lcom/oplus/utrace/sdk/UTraceContext;

    iget-object p0, p0, Lz2/a$f;->c:Ljava/lang/Integer;

    invoke-direct {p1, v0, p0, p2}, Lz2/a$f;-><init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/Integer;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lz2/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lz2/a$f;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    if-ne v1, v2, :cond_e

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_f9

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/a$f;->b:Lcom/oplus/utrace/sdk/UTraceContext;

    const-string v1, "931000"

    invoke-static {v1, p1}, Lcom/pantanal/server/content/utils/a;->e(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)V

    sget-object p1, Lz2/a;->b:Lz2/a;

    invoke-virtual {p1}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    goto :goto_68

    :cond_34
    invoke-virtual {p1}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_68

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Lz2/a;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_68
    :goto_68
    move-object v3, v4

    :cond_69
    sget-object p1, Lz2/a;->b:Lz2/a;

    invoke-virtual {p1}, Lz2/a;->b()Lz2/c;

    move-result-object p1

    invoke-virtual {p1, v3}, Lz2/c;->d(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object v5, p1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v6}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7f

    :cond_93
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lh4/j;

    const-string v6, "service_id"

    invoke-direct {v5, v6, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v3

    const-string v5, "traceNode"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "tags"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v5

    invoke-static {v5}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v6

    if-nez v6, :cond_b7

    goto :goto_e3

    :cond_b7
    if-nez v5, :cond_ba

    goto :goto_e3

    :cond_ba
    invoke-static {v5, v3}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[addSpanTags] traceNode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", innerCtx:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTraceUtils"

    invoke-static {v3, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e3
    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lz2/a$f$a;

    iget-object v5, p0, Lz2/a$f;->b:Lcom/oplus/utrace/sdk/UTraceContext;

    iget-object v6, p0, Lz2/a$f;->c:Ljava/lang/Integer;

    invoke-direct {v3, v5, p1, v6, v4}, Lz2/a$f$a;-><init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/List;Ljava/lang/Integer;Ll4/d;)V

    iput v2, p0, Lz2/a$f;->a:I

    invoke-static {v1, v3, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_f9

    return-object v0

    :cond_f9
    :goto_f9
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
