.class public Lcom/oplus/fancyicon/RendererController;
.super Lcom/oplus/fancyicon/BaseRendererController;
.source ""


# static fields
.field private static sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

.field private static final sGlobalThreadLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/fancyicon/FramerateManager;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/BaseRendererController;-><init>(Lcom/oplus/fancyicon/FramerateManager;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method private static clearGlobalThread()V
    .registers 2

    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public getRenderThread()Lcom/oplus/fancyicon/RenderThread;
    .registers 3

    sget-object p0, Lcom/oplus/fancyicon/RendererController;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    if-nez v0, :cond_10

    new-instance v0, Lcom/oplus/fancyicon/RenderThread;

    const-string v1, "uiengine_global_thread"

    invoke-direct {v0, v1}, Lcom/oplus/fancyicon/RenderThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    :cond_10
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/RenderThread;->isStarted()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    if-nez v0, :cond_22

    :try_start_18
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/RenderThread;->resumeSelf()V
    :try_end_22
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_18 .. :try_end_22} :catch_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    :catch_22
    :cond_22
    :try_start_22
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public isGlobalThread()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public recycleThread()V
    .registers 1

    invoke-static {}, Lcom/oplus/fancyicon/RendererController;->clearGlobalThread()V

    return-void
.end method
