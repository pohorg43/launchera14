.class public final Lk3/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;>;"
        }
    .end annotation
.end field

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lk3/m;->a:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lk3/m;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/oplus/utrace/sdk/CompletionType;I)V
    .registers 4

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_7

    sget-object p1, Lcom/oplus/utrace/sdk/CompletionType;->GOAHEAD:Lcom/oplus/utrace/sdk/CompletionType;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const-string p2, "key"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk3/m;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p2

    invoke-static {p2}, Lk3/m;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string p0, "UTraceIntentUtils"

    const-string p1, "call end(),isUTraceAvailable false"

    invoke-static {p0, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_24
    if-nez p2, :cond_27

    goto :goto_2b

    :cond_27
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/oplus/utrace/sdk/UTrace;->end(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;Z)V

    :goto_2b
    sget-object p1, Lk3/m;->a:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ThreadLocal;

    if-nez p0, :cond_38

    goto :goto_3b

    :cond_38
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_3b
    return-void
.end method

.method public static final b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk3/m;->a:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method

.method public static final c(Lcom/oplus/utrace/sdk/UTraceContext;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_9

    const-string v0, "UTraceIntentUtils"

    const-string v1, "call isUTraceAvailable(),UTraceContext is null!"

    invoke-static {v0, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-boolean v0, Lk3/m;->b:Z

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    const-string p0, "com.pantanal.server.utrace.switch"

    const-string v0, "1"

    invoke-static {p0, v0}, Lk3/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public static final d(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Lk3/m;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lk3/m;->a:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    if-nez v1, :cond_1d

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method

.method public static final e(Ljava/lang/String;ILcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "StaticSDK_UTrace start spanName:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTraceIntentUtils"

    invoke-static {v1, v0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lk3/m;->b:Z

    if-eqz v0, :cond_34

    const-string v0, "1"

    const-string v2, "com.pantanal.server.utrace.switch"

    invoke-static {v2, v0}, Lk3/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_34

    :cond_27
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/oplus/utrace/sdk/UTrace;->start(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p1

    invoke-static {p0, p1}, Lk3/m;->d(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContext;

    return-void

    :cond_34
    :goto_34
    const-string p0, "call start(),isUTraceAvailable false"

    invoke-static {v1, p0}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
