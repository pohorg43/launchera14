.class public final Lio/branch/search/e1$b$e;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lio/branch/search/f5<",
        "+",
        "Lio/branch/search/BranchSearchError;",
        "+",
        "Lh4/z;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$5"
    f = "KCompositeInterface.kt"
    l = {
        0xd7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/e1$b;

.field public final synthetic d:Lio/branch/search/BranchSearchRequest;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/e1$b;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Ll4/d;)V
    .registers 6

    iput-object p1, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iput-object p2, p0, Lio/branch/search/e1$b$e;->d:Lio/branch/search/BranchSearchRequest;

    iput-object p3, p0, Lio/branch/search/e1$b$e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lio/branch/search/e1$b$e;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 10
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

    new-instance v0, Lio/branch/search/e1$b$e;

    iget-object v2, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iget-object v3, p0, Lio/branch/search/e1$b$e;->d:Lio/branch/search/BranchSearchRequest;

    iget-object v4, p0, Lio/branch/search/e1$b$e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lio/branch/search/e1$b$e;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/branch/search/e1$b$e;-><init>(Lio/branch/search/e1$b;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/e1$b$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b$e;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b$e;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/e1$b$e;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_12

    iget-object v0, p0, Lio/branch/search/e1$b$e;->a:Ljava/lang/Object;

    check-cast v0, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_3c

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$b$e;->a:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    iget-object v1, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iget-object v1, v1, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v1}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->h()Lio/branch/search/f1;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/e1$b$e;->d:Lio/branch/search/BranchSearchRequest;

    iput-object p1, p0, Lio/branch/search/e1$b$e;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/e1$b$e;->b:I

    invoke-virtual {v1, v3, p0}, Lio/branch/search/f1;->a(Lio/branch/search/BranchSearchRequest;Ll4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3a

    return-object v0

    :cond_3a
    move-object v3, p1

    move-object p1, v1

    :goto_3c
    check-cast p1, Lio/branch/search/f5;

    instance-of v0, p1, Lio/branch/search/f5$b;

    if-eqz v0, :cond_57

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/search/e1$b$e;->d:Lio/branch/search/BranchSearchRequest;

    invoke-static {v0, p1}, Lio/branch/search/BranchSearchResult;->a(Lio/branch/search/BranchSearchRequest;Lorg/json/JSONObject;)Lh4/j;

    move-result-object p1

    new-instance v0, Lio/branch/search/f5$b;

    invoke-direct {v0, p1}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_5b

    :cond_57
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_18d

    :goto_5b
    iget-object v0, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iget-object v0, v0, Lio/branch/search/e1$b;->k:Lf4/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_114

    instance-of v0, p1, Lio/branch/search/f5$b;

    if-eqz v0, :cond_d2

    move-object v0, p1

    check-cast v0, Lio/branch/search/f5$b;

    invoke-virtual {v0}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    iget-object v4, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Lio/branch/search/BranchSearchResult;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lio/branch/search/p0;

    iget-object v0, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iget-object v0, v0, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v0}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->v()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v5

    iget-object v0, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iget-object v0, v0, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v0}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v6

    const-string v0, "it"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/branch/search/d;->getResults()Ljava/util/List;

    move-result-object v7

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<io.branch.search.BranchBaseAppResult<out io.branch.search.BranchBaseLinkResult>>"

    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "virtualRequest"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lio/branch/search/u4;->b:Lio/branch/search/u4;

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/m;Ljava/util/List;Lio/branch/search/p0;Lio/branch/search/u4;Z)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iget-object v5, v5, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v5}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v5

    invoke-static {v5, v0}, Lio/branch/search/n5;->b(Lio/branch/search/m;Ljava/util/List;)V

    new-instance v5, Lf4/d;

    invoke-virtual {v4}, Lio/branch/search/BranchSearchResult;->getBranchSearchRequest()Lio/branch/search/BranchSearchRequest;

    move-result-object v4

    const-string v6, "it.branchSearchRequest"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v4

    const-string v6, "it.branchSearchRequest.query"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v0}, Lf4/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lio/branch/search/f5$b;

    invoke-direct {v0, v5}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_d7

    :cond_d2
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_10e

    move-object v0, p1

    :goto_d7
    instance-of v4, v0, Lio/branch/search/f5$b;

    if-eqz v4, :cond_dc

    goto :goto_f4

    :cond_dc
    instance-of v4, v0, Lio/branch/search/f5$a;

    if-eqz v4, :cond_108

    check-cast v0, Lio/branch/search/f5$a;

    invoke-virtual {v0}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchSearchError;

    sget-object v4, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v4, v0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object v0

    new-instance v4, Lio/branch/search/f5$a;

    invoke-direct {v4, v0}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    :goto_f4
    iget-object v4, p0, Lio/branch/search/e1$b$e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_167

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v4, Lio/branch/search/e1$b$e$a;

    invoke-direct {v4, p0, v0, v1}, Lio/branch/search/e1$b$e$a;-><init>(Lio/branch/search/e1$b$e;Lio/branch/search/f5;Ll4/d;)V

    move-object v6, v4

    move-object v4, v2

    goto :goto_15a

    :cond_108
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_10e
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_114
    iget-object v0, p0, Lio/branch/search/e1$b$e;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-eqz v0, :cond_167

    iget-object v0, p0, Lio/branch/search/e1$b$e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_167

    instance-of v0, p1, Lio/branch/search/f5$b;

    if-eqz v0, :cond_14b

    move-object v0, p1

    check-cast v0, Lio/branch/search/f5$b;

    invoke-virtual {v0}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    iget-object v2, p0, Lio/branch/search/e1$b$e;->c:Lio/branch/search/e1$b;

    iget-object v2, v2, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v2}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v2

    iget-object v0, v0, Lh4/j;->a:Ljava/lang/Object;

    const-string v4, "it.first"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/branch/search/BranchSearchResult;

    invoke-virtual {v0}, Lio/branch/search/d;->getResults()Ljava/util/List;

    move-result-object v0

    const-string v4, "it.first.results"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lio/branch/search/n5;->a(Lio/branch/search/m;Ljava/util/List;)V

    goto :goto_14f

    :cond_14b
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_161

    :goto_14f
    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    new-instance v2, Lio/branch/search/e1$b$e$b;

    invoke-direct {v2, p0, p1, v1}, Lio/branch/search/e1$b$e$b;-><init>(Lio/branch/search/e1$b$e;Lio/branch/search/f5;Ll4/d;)V

    move-object v4, v0

    move-object v6, v2

    :goto_15a
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto :goto_167

    :cond_161
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_167
    :goto_167
    instance-of p0, p1, Lio/branch/search/f5$b;

    if-eqz p0, :cond_182

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/j;

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Lio/branch/search/p0;

    invoke-virtual {p0}, Lio/branch/search/p0;->d()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    new-instance p1, Lio/branch/search/f5$b;

    invoke-direct {p1, p0}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_186

    :cond_182
    instance-of p0, p1, Lio/branch/search/f5$a;

    if-eqz p0, :cond_187

    :goto_186
    return-object p1

    :cond_187
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_18d
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
