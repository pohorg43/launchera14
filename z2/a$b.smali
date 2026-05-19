.class public final Lz2/a$b;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/a;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 10

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p0, "931000"

    sget-object p1, Lcom/pantanal/server/content/utils/a;->a:Ljava/util/Map;

    const-class p1, Lcom/pantanal/server/content/utils/a;

    monitor-enter p1

    :try_start_a
    const-string v0, "traceNode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTraceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startFromUri] [traceNode]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_e0

    const/4 v0, 0x0

    if-nez p2, :cond_32

    monitor-exit p1

    goto :goto_83

    :cond_32
    :try_start_32
    sget-object v1, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    const-string v3, "UTranceCtx"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/utrace/sdk/UTraceCompat;->readFromUri$default(Lcom/oplus/utrace/sdk/UTraceCompat;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p2

    const-string v1, "UTraceUtils"

    const-string v2, "[startFromUri] ctx:"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v1
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_e0

    if-nez v1, :cond_51

    monitor-exit p1

    goto :goto_83

    :cond_51
    if-nez p2, :cond_54

    goto :goto_82

    :cond_54
    const/4 v1, 0x2

    :try_start_55
    invoke-static {p2, v0, p0, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/pantanal/server/content/utils/a;->d(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContext;

    const-string v2, "UTraceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startFromUri] traceNode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ctx:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", innerCtx:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_55 .. :try_end_82} :catchall_e0

    :goto_82
    monitor-exit p1

    :goto_83
    const-string p0, "931000"

    const-string p1, "static_sdk_ver"

    const-string p2, "1.1.13-beta-p3-SNAPSHOT"

    new-instance v1, Lh4/j;

    invoke-direct {v1, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "traceNode"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "tags"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p2

    invoke-static {p2}, Lcom/pantanal/server/content/utils/a;->c(Lcom/oplus/utrace/sdk/UTraceContext;)Z

    move-result v1

    if-nez v1, :cond_a7

    goto :goto_d3

    :cond_a7
    if-nez p2, :cond_aa

    goto :goto_d3

    :cond_aa
    invoke-static {p2, p1}, Lcom/oplus/utrace/sdk/UTrace;->addTraceTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addTraceTags] traceNode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", tags:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", innerCtx:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTraceUtils"

    invoke-static {p1, p0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d3
    const-string p0, "DecisionCenter"

    const-string p1, "receive onChange event from ums,call DecisionCenter onChange()"

    invoke-static {p0, p1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lz2/a;->b:Lz2/a;

    invoke-virtual {p0, v0}, Lz2/a;->g(Ljava/lang/Integer;)V

    return-void

    :catchall_e0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
