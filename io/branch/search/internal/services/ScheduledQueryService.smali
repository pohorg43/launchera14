.class public final Lio/branch/search/internal/services/ScheduledQueryService;
.super Landroid/app/job/JobService;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"
    }
    d2 = {
        "Lio/branch/search/internal/services/ScheduledQueryService;",
        "Landroid/app/job/JobService;",
        "<init>",
        "()V",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 10

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1

    :cond_10
    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance p0, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p0}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScheduledQueryService.onJobStart"

    invoke-virtual {v0, p1, p0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2a
    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v2

    invoke-static {}, Lio/branch/search/c5;->c()Lm7/j1;

    move-result-object v3

    new-instance v5, Lio/branch/search/internal/services/ScheduledQueryService$a;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v0, p1, v4}, Lio/branch/search/internal/services/ScheduledQueryService$a;-><init>(Lio/branch/search/internal/services/ScheduledQueryService;Lio/branch/search/m;Landroid/app/job/JobParameters;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method
