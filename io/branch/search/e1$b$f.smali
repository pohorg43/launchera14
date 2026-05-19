.class public final Lio/branch/search/e1$b$f;
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
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$localSearchJob$1"
    f = "KCompositeInterface.kt"
    l = {
        0x89
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/e1$b;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

.field public final synthetic g:Lio/branch/search/BranchSearchRequest;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/branch/search/e1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Ll4/d;)V
    .registers 8

    iput-object p1, p0, Lio/branch/search/e1$b$f;->c:Lio/branch/search/e1$b;

    iput-object p2, p0, Lio/branch/search/e1$b$f;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lio/branch/search/e1$b$f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lio/branch/search/e1$b$f;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iput-object p5, p0, Lio/branch/search/e1$b$f;->g:Lio/branch/search/BranchSearchRequest;

    iput-object p6, p0, Lio/branch/search/e1$b$f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 12
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

    new-instance v0, Lio/branch/search/e1$b$f;

    iget-object v2, p0, Lio/branch/search/e1$b$f;->c:Lio/branch/search/e1$b;

    iget-object v3, p0, Lio/branch/search/e1$b$f;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lio/branch/search/e1$b$f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lio/branch/search/e1$b$f;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iget-object v6, p0, Lio/branch/search/e1$b$f;->g:Lio/branch/search/BranchSearchRequest;

    iget-object v7, p0, Lio/branch/search/e1$b$f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lio/branch/search/e1$b$f;-><init>(Lio/branch/search/e1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/e1$b$f;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b$f;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b$f;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lio/branch/search/e1$b$f;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    if-ne v2, v3, :cond_17

    iget-object v1, v0, Lio/branch/search/e1$b$f;->a:Ljava/lang/Object;

    check-cast v1, Lm7/j0;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move-object v6, v1

    goto :goto_53

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/branch/search/e1$b$f;->a:Ljava/lang/Object;

    check-cast v2, Lm7/j0;

    iget-object v5, v0, Lio/branch/search/e1$b$f;->c:Lio/branch/search/e1$b;

    iget-object v5, v5, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v5}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v5

    iget-object v6, v0, Lio/branch/search/e1$b$f;->c:Lio/branch/search/e1$b;

    iget-object v6, v6, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    invoke-virtual {v6}, Lio/branch/search/BranchCompositeSearchRequest;->getLocalRequest()Lio/branch/search/BranchLocalSearchRequest;

    move-result-object v6

    const-string v7, "request.localRequest"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lio/branch/search/e1$b$f;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lio/branch/search/p0;

    if-eqz v7, :cond_46

    iget-object v7, v7, Lio/branch/search/p0;->f:Ljava/lang/String;

    goto :goto_47

    :cond_46
    move-object v7, v4

    :goto_47
    iput-object v2, v0, Lio/branch/search/e1$b$f;->a:Ljava/lang/Object;

    iput v3, v0, Lio/branch/search/e1$b$f;->b:I

    invoke-static {v5, v6, v2, v7, v0}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lm7/j0;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_52

    return-object v1

    :cond_52
    move-object v6, v2

    :goto_53
    check-cast v5, Lio/branch/search/j1;

    invoke-virtual {v5}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v1

    instance-of v2, v1, Lio/branch/search/f5$b;

    if-eqz v2, :cond_c6

    move-object v2, v1

    check-cast v2, Lio/branch/search/f5$b;

    invoke-virtual {v2}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/branch/search/BranchLocalSearchResult;

    invoke-virtual {v7}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v7

    const-string v8, "r.value.results"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_c6

    invoke-virtual {v2}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalSearchResult;

    invoke-virtual {v2}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lio/branch/search/e1$b$f;->c:Lio/branch/search/e1$b;

    iget-object v3, v2, Lio/branch/search/e1$b;->k:Lf4/c;

    if-eqz v3, :cond_b8

    iget-object v1, v2, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v1}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->v()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v9

    iget-object v1, v0, Lio/branch/search/e1$b$f;->c:Lio/branch/search/e1$b;

    iget-object v1, v1, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v1}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v10

    invoke-virtual {v5}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v12

    sget-object v13, Lio/branch/search/u4;->a:Lio/branch/search/u4;

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/m;Ljava/util/List;Lio/branch/search/p0;Lio/branch/search/u4;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lio/branch/search/e1$b$f$a;

    invoke-direct {v3, v0, v1, v4}, Lio/branch/search/e1$b$f$a;-><init>(Lio/branch/search/e1$b$f;Ljava/util/List;Ll4/d;)V

    goto :goto_d3

    :cond_b8
    iget-object v2, v0, Lio/branch/search/e1$b$f;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-eqz v2, :cond_101

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lio/branch/search/e1$b$f$b;

    invoke-direct {v3, v0, v11, v1, v4}, Lio/branch/search/e1$b$f$b;-><init>(Lio/branch/search/e1$b$f;Ljava/util/List;Lio/branch/search/f5;Ll4/d;)V

    goto :goto_d3

    :cond_c6
    iget-object v2, v0, Lio/branch/search/e1$b$f;->g:Lio/branch/search/BranchSearchRequest;

    if-nez v2, :cond_d6

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lio/branch/search/e1$b$f$c;

    invoke-direct {v3, v0, v1, v4}, Lio/branch/search/e1$b$f$c;-><init>(Lio/branch/search/e1$b$f;Lio/branch/search/f5;Ll4/d;)V

    :goto_d3
    move-object v7, v2

    move-object v9, v3

    goto :goto_f5

    :cond_d6
    instance-of v2, v1, Lio/branch/search/f5$a;

    if-eqz v2, :cond_fc

    move-object v2, v1

    check-cast v2, Lio/branch/search/f5$a;

    invoke-virtual {v2}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lio/branch/search/BranchLocalError$EmptyQuery;

    if-eqz v2, :cond_fc

    iget-object v2, v0, Lio/branch/search/e1$b$f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lio/branch/search/e1$b$f$d;

    invoke-direct {v3, v0, v1, v4}, Lio/branch/search/e1$b$f$d;-><init>(Lio/branch/search/e1$b$f;Lio/branch/search/f5;Ll4/d;)V

    goto :goto_d3

    :goto_f5
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto :goto_101

    :cond_fc
    iget-object v0, v0, Lio/branch/search/e1$b$f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_101
    :goto_101
    :try_start_101
    invoke-virtual {v5}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/p0;->d()V
    :try_end_108
    .catch Ljava/lang/NullPointerException; {:try_start_101 .. :try_end_108} :catch_108

    :catch_108
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
