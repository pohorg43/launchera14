.class public final Lcom/pantanal/server/content/utils/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/utils/a$a;,
        Lcom/pantanal/server/content/utils/a$b;
    }
.end annotation


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


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    invoke-static {v2}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v0

    if-nez v0, :cond_15

    return-object p1

    :cond_15
    if-nez v2, :cond_19

    move-object v0, p1

    goto :goto_32

    :cond_19
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v1, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    const-string v0, "builder"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v4, "UTranceCtx"

    invoke-static/range {v1 .. v7}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToUri$default(Lcom/oplus/utrace/sdk/UTraceCompat;Lcom/oplus/utrace/sdk/UTraceContext;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[appendTraceContextToUri] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", uri:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", resultUri:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTraceUtils"

    invoke-static {p1, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "resultUri"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

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
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_12

    const-string p0, "com.pantanal.server.utrace.switch"

    const-string v0, "1"

    invoke-static {p0, v0}, Lk3/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static final d(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

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

.method public static final declared-synchronized e(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/pantanal/server/content/utils/a;

    monitor-enter v0

    :try_start_3
    const-string v1, "key"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    if-nez p1, :cond_13

    goto :goto_16

    :cond_13
    :try_start_13
    invoke-static {p0, p1}, Lcom/pantanal/server/content/utils/a;->d(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContext;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    :goto_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method
