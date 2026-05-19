.class public final Lio/branch/search/h1$e;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;)V
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
    c = "io.branch.search.internal.interfaces.LocalInterfaceRewriteKt$localSearchWithCallback$2"
    f = "LocalInterfaceRewrite.kt"
    l = {
        0xaf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/m;

.field public final synthetic d:Lio/branch/search/BranchLocalSearchRequest;

.field public final synthetic e:Lio/branch/search/IBranchLocalSearchEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/h1$e;->c:Lio/branch/search/m;

    iput-object p2, p0, Lio/branch/search/h1$e;->d:Lio/branch/search/BranchLocalSearchRequest;

    iput-object p3, p0, Lio/branch/search/h1$e;->e:Lio/branch/search/IBranchLocalSearchEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 6
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

    new-instance v0, Lio/branch/search/h1$e;

    iget-object v1, p0, Lio/branch/search/h1$e;->c:Lio/branch/search/m;

    iget-object v2, p0, Lio/branch/search/h1$e;->d:Lio/branch/search/BranchLocalSearchRequest;

    iget-object p0, p0, Lio/branch/search/h1$e;->e:Lio/branch/search/IBranchLocalSearchEvents;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/branch/search/h1$e;-><init>(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/h1$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/h1$e;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/h1$e;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/h1$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/h1$e;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lio/branch/search/h1$e;->a:Ljava/lang/Object;

    check-cast v0, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_37

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/h1$e;->a:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    iget-object v3, p0, Lio/branch/search/h1$e;->c:Lio/branch/search/m;

    iget-object v4, p0, Lio/branch/search/h1$e;->d:Lio/branch/search/BranchLocalSearchRequest;

    iput-object p1, p0, Lio/branch/search/h1$e;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/h1$e;->b:I

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v5, p1

    move-object v7, p0

    invoke-static/range {v3 .. v9}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lm7/j0;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_35

    return-object v0

    :cond_35
    move-object v0, p1

    move-object p1, v1

    :goto_37
    check-cast p1, Lio/branch/search/j1;

    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lio/branch/search/h1$e$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lio/branch/search/h1$e$a;-><init>(Lio/branch/search/h1$e;Lio/branch/search/j1;Ll4/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    invoke-virtual {p1}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object p0

    instance-of v0, p0, Lio/branch/search/f5$b;

    if-eqz v0, :cond_95

    check-cast p0, Lio/branch/search/f5$b;

    invoke-virtual {p0}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLocalSearchResult;

    invoke-virtual {p0}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchLocalAppResult;

    invoke-virtual {p1}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/branch/search/p0;->b(Lio/branch/search/AnalyticsEntity;)V

    const-string v1, "a"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_81
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p1}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/branch/search/p0;->b(Lio/branch/search/AnalyticsEntity;)V

    goto :goto_81

    :cond_95
    instance-of p0, p0, Lio/branch/search/f5$a;

    if-eqz p0, :cond_a3

    :cond_99
    :try_start_99
    invoke-virtual {p1}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/p0;->d()V
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_99 .. :try_end_a0} :catch_a0

    :catch_a0
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_a3
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
