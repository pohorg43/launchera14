.class public Lb4/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .registers 2

    iput-object p1, p0, Lb4/a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->i:Ljava/lang/Object;

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lb4/a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v2, v2, Lio/branch/search/internal/interfaces/LocalInterface;->h:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object p0, p0, Lb4/a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->h:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw p0
.end method
