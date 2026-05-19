.class public final Lcom/oplus/channel/server/utils/WorkHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/utils/WorkHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0004R\"\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/WorkHandler;",
        "",
        "Ljava/lang/Runnable;",
        "r",
        "Lh4/z;",
        "post",
        "",
        "time",
        "postDelayed",
        "removeCallbacks",
        "quitSafely",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "delayMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "Landroid/os/HandlerThread;",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "<init>",
        "()V",
        "Companion",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

.field private static final NAME:Ljava/lang/String; = "ServerChannel"

.field private static final TAG:Ljava/lang/String; = "WorkHandler"

.field private static volatile instance:Lcom/oplus/channel/server/utils/WorkHandler;


# instance fields
.field private delayMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->delayMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/oplus/channel/server/utils/WorkHandler$handlerThread$1;

    invoke-direct {v0, p0}, Lcom/oplus/channel/server/utils/WorkHandler$handlerThread$1;-><init>(Lcom/oplus/channel/server/utils/WorkHandler;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iput-object v0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/WorkHandler;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDelayMap$p(Lcom/oplus/channel/server/utils/WorkHandler;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->delayMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/oplus/channel/server/utils/WorkHandler;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/oplus/channel/server/utils/WorkHandler;
    .registers 1

    sget-object v0, Lcom/oplus/channel/server/utils/WorkHandler;->instance:Lcom/oplus/channel/server/utils/WorkHandler;

    return-object v0
.end method

.method public static final synthetic access$setHandler$p(Lcom/oplus/channel/server/utils/WorkHandler;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/oplus/channel/server/utils/WorkHandler;)V
    .registers 1

    sput-object p0, Lcom/oplus/channel/server/utils/WorkHandler;->instance:Lcom/oplus/channel/server/utils/WorkHandler;

    return-void
.end method


# virtual methods
.method public final post(Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v0, v1

    goto :goto_14

    :cond_c
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_14
    if-nez v0, :cond_3f

    const-class v0, Lcom/oplus/channel/server/utils/WorkHandler;

    monitor-enter v0

    :try_start_19
    iget-object v2, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    if-nez v2, :cond_1e

    goto :goto_26

    :cond_1e
    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_26
    if-nez v1, :cond_3a

    const-string v1, "WorkHandler"

    const-string v2, "post handler is null, add to map."

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->delayMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_3c

    :cond_3a
    monitor-exit v0

    goto :goto_3f

    :catchall_3c
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .registers 7

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v0, v1

    goto :goto_14

    :cond_c
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_14
    if-nez v0, :cond_3d

    const-class v0, Lcom/oplus/channel/server/utils/WorkHandler;

    monitor-enter v0

    :try_start_19
    iget-object v2, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    if-nez v2, :cond_1e

    goto :goto_26

    :cond_1e
    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_26
    if-nez v1, :cond_38

    const-string v1, "WorkHandler"

    const-string v2, "postDelayed handler is null, add to map."

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->delayMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit v0

    goto :goto_3d

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final quitSafely()V
    .registers 4

    const-class v0, Lcom/oplus/channel/server/utils/WorkHandler;

    monitor-enter v0

    :try_start_3
    const-string v1, "WorkHandler"

    const-string v2, "quitSafely."

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/oplus/channel/server/utils/WorkHandler;->instance:Lcom/oplus/channel/server/utils/WorkHandler;

    iget-object v2, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->delayMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/oplus/channel/server/utils/WorkHandler;

    monitor-enter v0

    :try_start_8
    const-string v1, "WorkHandler"

    const-string v2, "removeCallbacks."

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/channel/server/utils/WorkHandler;->handler:Landroid/os/Handler;

    if-nez v1, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_17
    iget-object p0, p0, Lcom/oplus/channel/server/utils/WorkHandler;->delayMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method
