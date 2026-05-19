.class public final Lio/branch/search/internal/services/PingService;
.super Landroid/app/job/JobService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/services/PingService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"
    }
    d2 = {
        "Lio/branch/search/internal/services/PingService;",
        "Landroid/app/job/JobService;",
        "<init>",
        "()V",
        "Companion",
        "a",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/services/PingService$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/services/PingService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/services/PingService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/services/PingService;->Companion:Lio/branch/search/internal/services/PingService$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 15

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v2

    const/4 v6, 0x1

    if-nez v2, :cond_b

    invoke-virtual {p0, p1, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v6

    :cond_b
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v1, "PING_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36

    const-string v0, "params?.extras?.getStrin…G_PARAMS) ?: return false"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v7

    sget-object v8, Lm7/y0;->d:Lm7/f0;

    new-instance v10, Lio/branch/search/internal/services/PingService$b;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/branch/search/internal/services/PingService$b;-><init>(Lio/branch/search/internal/services/PingService;Lio/branch/search/m;Ljava/lang/String;Landroid/app/job/JobParameters;Ll4/d;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return v6

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
