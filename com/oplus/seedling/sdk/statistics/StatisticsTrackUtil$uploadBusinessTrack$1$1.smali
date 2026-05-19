.class final Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
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
    c = "com.oplus.seedling.sdk.statistics.StatisticsTrackUtil$uploadBusinessTrack$1$1"
    f = "StatisticsTrackUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $eventId:Ljava/lang/String;

.field public final synthetic $logTag:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$logTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$eventId:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$data:Ljava/util/Map;

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

    new-instance p1, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$logTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$eventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$data:Ljava/util/Map;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->label:I

    if-nez v0, :cond_3f

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$logTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$eventId:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$uploadBusinessTrack$1$1;->$data:Ljava/util/Map;

    :try_start_11
    invoke-static {p1, v0, v1, p0}, Lcom/oplus/pantanal/track/TrackUtil;->uploadBusinessTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_1c

    :catchall_17
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1c
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3c

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uploadBusinessTrack error, msg: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "StatisticsTrackUtil"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_3c
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
