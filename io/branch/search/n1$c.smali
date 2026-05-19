.class public final Lio/branch/search/n1$c;
.super Ln4/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/n1;->a(JJ)Lj7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lj7/j<",
        "-",
        "Lio/branch/search/m4;",
        ">;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.local.appUsage.AppUsageReader$usageStats$1"
    f = "AppUsageReader.kt"
    l = {
        0x10
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/n1;

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Lio/branch/search/n1;JJLl4/d;)V
    .registers 7

    iput-object p1, p0, Lio/branch/search/n1$c;->d:Lio/branch/search/n1;

    iput-wide p2, p0, Lio/branch/search/n1$c;->e:J

    iput-wide p4, p0, Lio/branch/search/n1$c;->f:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/i;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/n1$c;

    iget-object v2, p0, Lio/branch/search/n1$c;->d:Lio/branch/search/n1;

    iget-wide v3, p0, Lio/branch/search/n1$c;->e:J

    iget-wide v5, p0, Lio/branch/search/n1$c;->f:J

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/n1$c;-><init>(Lio/branch/search/n1;JJLl4/d;)V

    iput-object p1, v0, Lio/branch/search/n1$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/n1$c;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/n1$c;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/n1$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/n1$c;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lio/branch/search/n1$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lio/branch/search/n1$c;->a:Ljava/lang/Object;

    check-cast v3, Lj7/j;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3a

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/n1$c;->a:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lj7/j;

    iget-object p1, p0, Lio/branch/search/n1$c;->d:Lio/branch/search/n1;

    invoke-static {p1}, Lio/branch/search/n1;->b(Lio/branch/search/n1;)Lio/branch/search/p1;

    move-result-object v4

    iget-wide v6, p0, Lio/branch/search/n1$c;->e:J

    iget-wide v8, p0, Lio/branch/search/n1$c;->f:J

    const/4 v5, 0x4

    invoke-virtual/range {v4 .. v9}, Lio/branch/search/p1;->a(IJJ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_65

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStats;

    new-instance v10, Lio/branch/search/m4;

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lio/branch/search/m4;-><init>(Ljava/lang/String;JJ)V

    iput-object v3, p0, Lio/branch/search/n1$c;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/n1$c;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/n1$c;->c:I

    invoke-virtual {v3, v10, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3a

    return-object v0

    :cond_65
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
