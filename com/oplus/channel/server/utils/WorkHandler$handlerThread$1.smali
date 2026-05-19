.class public final Lcom/oplus/channel/server/utils/WorkHandler$handlerThread$1;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/utils/WorkHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0014¨\u0006\u0004"
    }
    d2 = {
        "com/oplus/channel/server/utils/WorkHandler$handlerThread$1",
        "Landroid/os/HandlerThread;",
        "Lh4/z;",
        "onLooperPrepared",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/channel/server/utils/WorkHandler;


# direct methods
.method public constructor <init>(Lcom/oplus/channel/server/utils/WorkHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/utils/WorkHandler$handlerThread$1;->this$0:Lcom/oplus/channel/server/utils/WorkHandler;

    const-string p1, "ServerChannel"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .registers 8

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/oplus/channel/server/utils/WorkHandler$handlerThread$1;->this$0:Lcom/oplus/channel/server/utils/WorkHandler;

    :try_start_5
    const-class v1, Lcom/oplus/channel/server/utils/WorkHandler;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_5c

    :try_start_8
    const-string v2, "WorkHandler"

    const-string v3, "onLooperPrepared."

    invoke-static {v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v2}, Lcom/oplus/channel/server/utils/WorkHandler;->access$setHandler$p(Lcom/oplus/channel/server/utils/WorkHandler;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/oplus/channel/server/utils/WorkHandler;->access$getDelayMap$p(Lcom/oplus/channel/server/utils/WorkHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/oplus/channel/server/utils/WorkHandler;->access$getHandler$p(Lcom/oplus/channel/server/utils/WorkHandler;)Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_3a

    goto :goto_27

    :cond_3a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    :cond_4e
    invoke-static {v0}, Lcom/oplus/channel/server/utils/WorkHandler;->access$getDelayMap$p(Lcom/oplus/channel/server/utils/WorkHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_59

    :try_start_57
    monitor-exit v1

    goto :goto_61

    :catchall_59
    move-exception p0

    monitor-exit v1

    throw p0
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_61
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_76

    const-string v0, "WorkHandler"

    const-string v1, "onLooperPrepared, error: "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    return-void
.end method
