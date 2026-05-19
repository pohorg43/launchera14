.class public final Lio/branch/search/internal/services/ScheduledQueryService$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/services/ScheduledQueryService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.services.ScheduledQueryService$onStartJob$2"
    f = "ScheduledQueryService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/services/ScheduledQueryService;

.field public final synthetic b:Lio/branch/search/m;

.field public final synthetic c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/services/ScheduledQueryService;Lio/branch/search/m;Landroid/app/job/JobParameters;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->a:Lio/branch/search/internal/services/ScheduledQueryService;

    iput-object p2, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->b:Lio/branch/search/m;

    iput-object p3, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->c:Landroid/app/job/JobParameters;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/internal/services/ScheduledQueryService$a;

    iget-object v0, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->a:Lio/branch/search/internal/services/ScheduledQueryService;

    iget-object v1, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->b:Lio/branch/search/m;

    iget-object p0, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->c:Landroid/app/job/JobParameters;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/internal/services/ScheduledQueryService$a;-><init>(Lio/branch/search/internal/services/ScheduledQueryService;Lio/branch/search/m;Landroid/app/job/JobParameters;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p2, Ll4/d;

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/internal/services/ScheduledQueryService$a;

    iget-object v0, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->a:Lio/branch/search/internal/services/ScheduledQueryService;

    iget-object v1, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->b:Lio/branch/search/m;

    iget-object p0, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->c:Landroid/app/job/JobParameters;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/internal/services/ScheduledQueryService$a;-><init>(Lio/branch/search/internal/services/ScheduledQueryService;Lio/branch/search/m;Landroid/app/job/JobParameters;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lio/branch/search/internal/services/ScheduledQueryService$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_5
    iget-object p1, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->b:Lio/branch/search/m;

    invoke-static {p1}, Lio/branch/search/h1;->a(Lio/branch/search/m;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "ScheduledQueryService.onStartJob"

    invoke-static {v0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    iget-object p1, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->a:Lio/branch/search/internal/services/ScheduledQueryService;

    iget-object p0, p0, Lio/branch/search/internal/services/ScheduledQueryService$a;->c:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
