.class public final Lio/branch/search/internal/services/PingService$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/services/PingService;->onStartJob(Landroid/app/job/JobParameters;)Z
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
    c = "io.branch.search.internal.services.PingService$onStartJob$1"
    f = "PingService.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/internal/services/PingService;

.field public final synthetic c:Lio/branch/search/m;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/services/PingService;Lio/branch/search/m;Ljava/lang/String;Landroid/app/job/JobParameters;Ll4/d;)V
    .registers 6

    iput-object p1, p0, Lio/branch/search/internal/services/PingService$b;->b:Lio/branch/search/internal/services/PingService;

    iput-object p2, p0, Lio/branch/search/internal/services/PingService$b;->c:Lio/branch/search/m;

    iput-object p3, p0, Lio/branch/search/internal/services/PingService$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/internal/services/PingService$b;->e:Landroid/app/job/JobParameters;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 9
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

    new-instance p1, Lio/branch/search/internal/services/PingService$b;

    iget-object v1, p0, Lio/branch/search/internal/services/PingService$b;->b:Lio/branch/search/internal/services/PingService;

    iget-object v2, p0, Lio/branch/search/internal/services/PingService$b;->c:Lio/branch/search/m;

    iget-object v3, p0, Lio/branch/search/internal/services/PingService$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/internal/services/PingService$b;->e:Landroid/app/job/JobParameters;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/branch/search/internal/services/PingService$b;-><init>(Lio/branch/search/internal/services/PingService;Lio/branch/search/m;Ljava/lang/String;Landroid/app/job/JobParameters;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/services/PingService$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/internal/services/PingService$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/internal/services/PingService$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/internal/services/PingService$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    :try_start_9
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_30

    goto :goto_29

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_18
    iget-object p1, p0, Lio/branch/search/internal/services/PingService$b;->c:Lio/branch/search/m;

    invoke-virtual {p1}, Lio/branch/search/m;->h()Lio/branch/search/f1;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/internal/services/PingService$b;->d:Ljava/lang/String;

    iput v2, p0, Lio/branch/search/internal/services/PingService$b;->a:I

    invoke-virtual {p1, v1, p0}, Lio/branch/search/f1;->a(Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    check-cast p1, Lio/branch/search/f5;

    invoke-virtual {p1}, Lio/branch/search/f5;->a()Z

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_30

    xor-int/2addr v2, p1

    :catch_30
    iget-object p1, p0, Lio/branch/search/internal/services/PingService$b;->b:Lio/branch/search/internal/services/PingService;

    iget-object p0, p0, Lio/branch/search/internal/services/PingService$b;->e:Landroid/app/job/JobParameters;

    invoke-virtual {p1, p0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
