.class public final Lio/branch/search/p1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/app/usage/UsageStatsManager;

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/app/usage/UsageEvents;",
            "Lio/branch/search/o1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/usage/UsageStatsManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/usage/UsageEvents;",
            "Lio/branch/search/o1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/p1;->a:Landroid/app/usage/UsageStatsManager;

    iput-object p2, p0, Lio/branch/search/p1;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Lio/branch/search/p1$a;->a:Lio/branch/search/p1$a;

    :cond_6
    invoke-direct {p0, p1, p2}, Lio/branch/search/p1;-><init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a(JJ)Lio/branch/search/o1;
    .registers 6

    iget-object v0, p0, Lio/branch/search/p1;->a:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lio/branch/search/p1;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/o1;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public final a(IJJ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/p1;->a:Landroid/app/usage/UsageStatsManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
