.class public Lio/branch/search/internal/rawsqlite/BundleUpdateService;
.super Landroid/app/job/JobService;
.source ""

# interfaces
.implements Le4/a;


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public a:Landroid/app/job/JobParameters;

.field public volatile b:Lio/branch/search/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/p;

    return-void
.end method

.method public static a(Lio/branch/search/m;)V
    .registers 8
    .param p0  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1a

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b(Lio/branch/search/m;JJZ)V

    :cond_1a
    return-void
.end method

.method public static b(Lio/branch/search/m;JJZ)V
    .registers 12
    .param p0  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const v1, 0x22a0f02

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0

    :goto_17
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1d

    move v0, v3

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    if-eqz v0, :cond_22

    if-eqz p5, :cond_6d

    :cond_22
    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p5

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/job/JobScheduler;

    if-nez p5, :cond_38

    const-string p1, "SQLUpdaterService.schedule"

    const-string p2, "jobScheduler is null?! (should never happen)"

    invoke-virtual {p0, p1, p2}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-nez v4, :cond_41

    move v2, v3

    :cond_41
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0, p3, p4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    const-wide/32 p1, 0x927c0

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_6d
    return-void
.end method


# virtual methods
.method public final c(Lio/branch/search/m;Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a:Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Lio/branch/search/m;->g()Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object p1

    iget-object p1, p1, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    if-eqz p1, :cond_19

    invoke-virtual {p1, p0}, Lio/branch/search/k2;->a(Le4/a;)V

    :cond_19
    return v1

    :cond_1a
    const-string p0, "SQLUpdaterService.doStartJob"

    const-string p2, "attempted to start bundle download job, while the last one hasn\'t completed yet."

    invoke-virtual {p1, p0, p2}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onBundleUpdateComplete(Z)V
    .registers 4

    iget-object v0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a:Landroid/app/job/JobParameters;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget-object p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_29

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/z1;->e()V

    :cond_29
    return-void
.end method

.method public onBundleUpdateInit()V
    .registers 1

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 13

    invoke-static {p1}, Lio/branch/search/g3;->a(Landroid/app/job/JobParameters;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v7

    const/4 v0, 0x1

    if-nez v7, :cond_1e

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0

    :cond_1e
    invoke-virtual {v7}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/z1;->c()Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    :cond_2d
    invoke-virtual {v7}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v2

    if-eqz v2, :cond_38

    return v1

    :cond_38
    invoke-virtual {v7}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lio/branch/search/BranchConfiguration;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_78

    iget-object v2, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/p;

    if-eqz v2, :cond_4e

    const-string p0, "SQLUpdaterService.listenToGAIDUpdates"

    const-string p1, "Returning a duplicate registration for config changes."

    invoke-virtual {v7, p0, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_4e
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v7}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v5

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ld4/a;

    move-object v2, v1

    move-object v3, p0

    move-object v6, v10

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Ld4/a;-><init>(Lio/branch/search/internal/rawsqlite/BundleUpdateService;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/BranchConfiguration;Landroid/os/Handler;Lio/branch/search/m;Landroid/app/job/JobParameters;)V

    new-instance p1, Ld4/b;

    invoke-direct {p1, v1}, Ld4/b;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/p;

    iget-object p0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->b:Lio/branch/search/p;

    invoke-virtual {v9, p0}, Lio/branch/search/BranchConfiguration;->a(Lio/branch/search/p;)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v10, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v1, v0

    :goto_77
    return v1

    :cond_78
    invoke-virtual {p0, v7, p1}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->c(Lio/branch/search/m;Landroid/app/job/JobParameters;)Z

    move-result p0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method
