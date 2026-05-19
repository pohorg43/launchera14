.class final Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->delayTask(JLjava/lang/Runnable;)Lm7/s1;
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
    c = "com.oplus.seedling.sdk.statistics.StatisticsTrackUtil$delayTask$1"
    f = "StatisticsTrackUtil.kt"
    l = {
        0xa9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $task:Ljava/lang/Runnable;

.field public final synthetic $timeOut:J

.field public label:I


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Runnable;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->$timeOut:J

    iput-object p3, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->$task:Ljava/lang/Runnable;

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

    new-instance p1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;

    iget-wide v0, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->$timeOut:J

    iget-object p0, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->$task:Ljava/lang/Runnable;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;-><init>(JLjava/lang/Runnable;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_23

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->$timeOut:J

    iput v2, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->label:I

    invoke-static {v3, v4, p0}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_23

    return-object v0

    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$delayTask$1;->$task:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
