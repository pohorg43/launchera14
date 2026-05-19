.class public final Lio/branch/search/n1$b;
.super Ln4/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/n1;->a(JJJ)Lj7/h;
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
        "Lio/branch/search/j4;",
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
    c = "io.branch.search.internal.local.appUsage.AppUsageReader$batchedUsageEvents$1"
    f = "AppUsageReader.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:J

.field public c:I

.field public final synthetic d:Lio/branch/search/n1;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Lio/branch/search/n1;JJJLl4/d;)V
    .registers 9

    iput-object p1, p0, Lio/branch/search/n1$b;->d:Lio/branch/search/n1;

    iput-wide p2, p0, Lio/branch/search/n1$b;->e:J

    iput-wide p4, p0, Lio/branch/search/n1$b;->f:J

    iput-wide p6, p0, Lio/branch/search/n1$b;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ln4/i;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 13
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

    new-instance v0, Lio/branch/search/n1$b;

    iget-object v2, p0, Lio/branch/search/n1$b;->d:Lio/branch/search/n1;

    iget-wide v3, p0, Lio/branch/search/n1$b;->e:J

    iget-wide v5, p0, Lio/branch/search/n1$b;->f:J

    iget-wide v7, p0, Lio/branch/search/n1$b;->g:J

    move-object v1, v0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lio/branch/search/n1$b;-><init>(Lio/branch/search/n1;JJJLl4/d;)V

    iput-object p1, v0, Lio/branch/search/n1$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/n1$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/n1$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/n1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lio/branch/search/n1$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    if-ne v2, v3, :cond_15

    iget-wide v4, v0, Lio/branch/search/n1$b;->b:J

    iget-object v2, v0, Lio/branch/search/n1$b;->a:Ljava/lang/Object;

    check-cast v2, Lj7/j;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_26

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/branch/search/n1$b;->a:Ljava/lang/Object;

    check-cast v2, Lj7/j;

    iget-wide v4, v0, Lio/branch/search/n1$b;->e:J

    :goto_26
    iget-wide v6, v0, Lio/branch/search/n1$b;->f:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_aa

    iget-wide v8, v0, Lio/branch/search/n1$b;->g:J

    add-long/2addr v8, v4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lio/branch/search/n1$b;->d:Lio/branch/search/n1;

    invoke-static {v8}, Lio/branch/search/n1;->b(Lio/branch/search/n1;)Lio/branch/search/p1;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v6, v7}, Lio/branch/search/p1;->a(JJ)Lio/branch/search/o1;

    move-result-object v4

    if-eqz v4, :cond_a7

    iget-object v5, v0, Lio/branch/search/n1$b;->d:Lio/branch/search/n1;

    invoke-static {v5}, Lio/branch/search/n1;->a(Lio/branch/search/n1;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5, v4, v8}, Lio/branch/search/n1;->a(Lio/branch/search/n1;Lio/branch/search/o1;Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents$Event;

    new-instance v15, Lio/branch/search/j4;

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v9

    int-to-long v13, v9

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v15

    move-object v3, v15

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lio/branch/search/j4;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_58

    :cond_82
    iput-object v2, v0, Lio/branch/search/n1$b;->a:Ljava/lang/Object;

    iput-wide v6, v0, Lio/branch/search/n1$b;->b:J

    const/4 v3, 0x1

    iput v3, v0, Lio/branch/search/n1$b;->c:I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_95

    sget-object v4, Lh4/z;->a:Lh4/z;

    goto :goto_a4

    :cond_95
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lj7/j;->b(Ljava/util/Iterator;Ll4/d;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lm4/a;->a:Lm4/a;

    if-ne v4, v5, :cond_a2

    goto :goto_a4

    :cond_a2
    sget-object v4, Lh4/z;->a:Lh4/z;

    :goto_a4
    if-ne v4, v1, :cond_a7

    return-object v1

    :cond_a7
    move-wide v4, v6

    goto/16 :goto_26

    :cond_aa
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
