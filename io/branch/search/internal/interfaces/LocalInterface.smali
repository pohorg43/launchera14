.class public Lio/branch/search/internal/interfaces/LocalInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/IBranchClosableObject;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public a:Lio/branch/search/v3;

.field public b:Lio/branch/search/k2;

.field public c:Landroid/content/BroadcastReceiver;

.field public d:Landroid/content/BroadcastReceiver;

.field public e:Landroid/content/BroadcastReceiver;

.field public f:Lio/branch/search/g1;

.field public final g:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public h:Landroidx/lifecycle/LifecycleObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;)V
    .registers 7
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$5;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$5;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->h:Landroidx/lifecycle/LifecycleObserver;

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {p1, p0}, Lio/branch/search/m;->a(Lio/branch/search/IBranchClosableObject;)V

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/branch/search/v3;

    invoke-direct {v1, p1}, Lio/branch/search/v3;-><init>(Lio/branch/search/m;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    new-instance v1, Lio/branch/search/g1;

    iget-object v2, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-direct {v1, v0, v2}, Lio/branch/search/g1;-><init>(Landroid/content/Context;Lio/branch/search/v3;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->f:Lio/branch/search/g1;

    new-instance v1, Lio/branch/search/k2;

    invoke-direct {v1, p1}, Lio/branch/search/k2;-><init>(Lio/branch/search/m;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    iget-object v2, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {v1, v2}, Lio/branch/search/k2;->a(Lio/branch/search/k2$e;)V

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    iget-object v2, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {v1, v2}, Lio/branch/search/k2;->a(Lio/branch/search/k2$f;)V

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    iget-object v2, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    invoke-virtual {v1, v2}, Lio/branch/search/v3;->a(Lio/branch/search/h2;)V

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->f:Lio/branch/search/g1;

    invoke-virtual {v1}, Lio/branch/search/g1;->a()V

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->e:Landroid/content/BroadcastReceiver;

    const-string v2, "LocalInterface"

    if-nez v1, :cond_65

    new-instance v1, Lio/branch/search/internal/interfaces/LocalInterface$a;

    invoke-direct {v1, p0}, Lio/branch/search/internal/interfaces/LocalInterface$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->e:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6a

    :cond_65
    const-string v1, "Registering duplicate callback for language changes."

    invoke-virtual {p1, v2, v1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    new-instance v1, Lb4/a;

    invoke-direct {v1, p0}, Lb4/a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    invoke-static {v1}, Lio/branch/search/g5;->a(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_88

    new-instance v1, Lio/branch/search/internal/interfaces/LocalInterface$c;

    invoke-direct {v1, p0}, Lio/branch/search/internal/interfaces/LocalInterface$c;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_8d

    :cond_88
    const-string v1, "Registering duplicate callback for user profile removed."

    invoke-virtual {p1, v2, v1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_a3

    new-instance p1, Lio/branch/search/internal/interfaces/LocalInterface$d;

    invoke-direct {p1, p0}, Lio/branch/search/internal/interfaces/LocalInterface$d;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_a8

    :cond_a3
    const-string v0, "Registering duplicate callback for user profile added."

    invoke-virtual {p1, v2, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a8
    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    invoke-virtual {p0}, Lio/branch/search/k2;->b()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/e4;)V
    .registers 3
    .param p1  # Lio/branch/search/e4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {p0, p1}, Lio/branch/search/v3;->a(Lio/branch/search/e4;)V

    :cond_15
    return-void
.end method

.method public close()V
    .registers 5

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->f:Lio/branch/search/g1;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lio/branch/search/g1;->b()V

    :cond_f
    sget-object v1, Lio/branch/search/internal/interfaces/LocalInterface;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/internal/interfaces/LocalInterface;->h:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_36

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_27

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_27
    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2e

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2e
    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->e:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_39

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_39

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0

    :cond_39
    :goto_39
    return-void
.end method
