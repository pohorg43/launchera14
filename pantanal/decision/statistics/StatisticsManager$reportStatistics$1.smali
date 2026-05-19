.class final Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/decision/statistics/StatisticsManager;->reportStatistics(JLpantanal/decision/StatisticsBean;)V
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
    c = "pantanal.decision.statistics.StatisticsManager$reportStatistics$1"
    f = "StatisticsManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $entryType:J

.field public final synthetic $statisticsBean:Lpantanal/decision/StatisticsBean;

.field public label:I

.field public final synthetic this$0:Lpantanal/decision/statistics/StatisticsManager;


# direct methods
.method public constructor <init>(JLpantanal/decision/statistics/StatisticsManager;Lpantanal/decision/StatisticsBean;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lpantanal/decision/statistics/StatisticsManager;",
            "Lpantanal/decision/StatisticsBean;",
            "Ll4/d<",
            "-",
            "Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->$entryType:J

    iput-object p3, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->this$0:Lpantanal/decision/statistics/StatisticsManager;

    iput-object p4, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->$statisticsBean:Lpantanal/decision/StatisticsBean;

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

    new-instance p1, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;

    iget-wide v1, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->$entryType:J

    iget-object v3, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->this$0:Lpantanal/decision/statistics/StatisticsManager;

    iget-object v4, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->$statisticsBean:Lpantanal/decision/StatisticsBean;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;-><init>(JLpantanal/decision/statistics/StatisticsManager;Lpantanal/decision/StatisticsBean;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->label:I

    if-nez v0, :cond_56

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Le3/a;->c:Le3/a$a;

    invoke-virtual {p1}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    iget-wide v2, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->$entryType:J

    iget-object p1, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->this$0:Lpantanal/decision/statistics/StatisticsManager;

    iget-object p0, p0, Lpantanal/decision/statistics/StatisticsManager$reportStatistics$1;->$statisticsBean:Lpantanal/decision/StatisticsBean;

    invoke-static {p1, p0}, Lpantanal/decision/statistics/StatisticsManager;->access$toStaticSdkBean(Lpantanal/decision/statistics/StatisticsManager;Lpantanal/decision/StatisticsBean;)Lcom/pantanal/server/content/dot/StatisticsBean;

    move-result-object v4

    const-string p0, "statisticsBean"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "StaticSdk"

    const-string v0, "reportStatistics"

    invoke-static {p1, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lc3/b;->c:Lc3/b;

    sget-object p1, Lc3/b;->d:Lh4/f;

    invoke-interface {p1}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lk3/l;->a:Lk3/l;

    sget-object p0, Lm7/y0;->a:Lm7/y0;

    invoke-static {p0}, Lk3/l;->a(Lm7/y0;)Lm7/j1;

    move-result-object p0

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object p0

    new-instance v8, Lc3/c;

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc3/c;-><init>(Lc3/b;JLcom/pantanal/server/content/dot/StatisticsBean;Ll4/d;)V

    const/4 v6, 0x0

    const/4 v9, 0x3

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    iput-object p0, p1, Lc3/b;->a:Lm7/s1;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
