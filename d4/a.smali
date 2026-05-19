.class public Ld4/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Lio/branch/search/BranchConfiguration;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lio/branch/search/m;

.field public final synthetic e:Landroid/app/job/JobParameters;

.field public final synthetic f:Lio/branch/search/internal/rawsqlite/BundleUpdateService;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/rawsqlite/BundleUpdateService;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/BranchConfiguration;Landroid/os/Handler;Lio/branch/search/m;Landroid/app/job/JobParameters;)V
    .registers 7

    iput-object p1, p0, Ld4/a;->f:Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    iput-object p2, p0, Ld4/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Ld4/a;->b:Lio/branch/search/BranchConfiguration;

    iput-object p4, p0, Ld4/a;->c:Landroid/os/Handler;

    iput-object p5, p0, Ld4/a;->d:Lio/branch/search/m;

    iput-object p6, p0, Ld4/a;->e:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Ld4/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Ld4/a;->b:Lio/branch/search/BranchConfiguration;

    iget-object v1, p0, Ld4/a;->f:Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    iget-object v1, v1, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/p;

    invoke-virtual {v0, v1}, Lio/branch/search/BranchConfiguration;->b(Lio/branch/search/p;)V

    iget-object v0, p0, Ld4/a;->f:Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/p;

    iget-object v0, p0, Ld4/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ld4/a;->f:Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    iget-object v1, p0, Ld4/a;->d:Lio/branch/search/m;

    iget-object p0, p0, Ld4/a;->e:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, p0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c(Lio/branch/search/m;Landroid/app/job/JobParameters;)Z

    return-void
.end method
