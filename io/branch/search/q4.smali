.class public Lio/branch/search/q4;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/q4;->a:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lio/branch/search/q4;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lio/branch/search/q4;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/branch/search/q4;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/branch/search/q4;->b:Landroid/os/Handler;

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/q4;->a()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/q4;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_17

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1c

    :cond_17
    iget-object p0, p0, Lio/branch/search/q4;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1c
    return-void
.end method

.method public b()Landroid/os/Handler;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/q4;->a()V

    iget-object p0, p0, Lio/branch/search/q4;->b:Landroid/os/Handler;

    return-object p0
.end method
