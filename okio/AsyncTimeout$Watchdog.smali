.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    sget-object p0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_0

    :try_start_9
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->awaitTimeout$okio()Lokio/AsyncTimeout;

    move-result-object p0

    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v1

    if-ne p0, v1, :cond_1b

    const/4 p0, 0x0

    invoke-static {p0}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_24

    :try_start_17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokio/AsyncTimeout;->timedOut()V

    goto :goto_0

    :catchall_24
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_29} :catch_0
.end method
