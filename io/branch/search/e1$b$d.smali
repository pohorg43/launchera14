.class public final Lio/branch/search/e1$b$d;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$4"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/e1$b;

.field public final synthetic c:Lio/branch/search/BranchSearchRequest;

.field public final synthetic d:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/e1$b;Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/e1$b$d;->b:Lio/branch/search/e1$b;

    iput-object p2, p0, Lio/branch/search/e1$b$d;->c:Lio/branch/search/BranchSearchRequest;

    iput-object p3, p0, Lio/branch/search/e1$b$d;->d:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/e1$b$d;

    iget-object v0, p0, Lio/branch/search/e1$b$d;->b:Lio/branch/search/e1$b;

    iget-object v1, p0, Lio/branch/search/e1$b$d;->c:Lio/branch/search/BranchSearchRequest;

    iget-object p0, p0, Lio/branch/search/e1$b$d;->d:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/e1$b$d;-><init>(Lio/branch/search/e1$b;Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b$d;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b$d;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/e1$b$d;->a:I

    if-nez v0, :cond_4e

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$b$d;->b:Lio/branch/search/e1$b;

    iget-object v0, p1, Lio/branch/search/e1$b;->k:Lf4/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object p1, p1, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    invoke-virtual {p1}, Lio/branch/search/BranchCompositeSearchRequest;->getLocalRequest()Lio/branch/search/BranchLocalSearchRequest;

    move-result-object p1

    const-string v2, "request.localRequest"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v2, "request.localRequest.query"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lf4/d;

    iget-object p0, p0, Lio/branch/search/e1$b$d;->c:Lio/branch/search/BranchSearchRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object p0

    const-string v3, "remoteRequest.query"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Li4/y;->a:Li4/y;

    invoke-direct {v2, p0, v3}, Lf4/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, p1, v2, v1}, Lf4/c;->onSearchComplete(Ljava/lang/String;Lf4/d;Lio/branch/search/BranchError;)V

    goto :goto_4b

    :cond_3a
    iget-object p1, p0, Lio/branch/search/e1$b$d;->d:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-eqz p1, :cond_4b

    iget-object p0, p0, Lio/branch/search/e1$b$d;->c:Lio/branch/search/BranchSearchRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchSearchRequest;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/branch/search/BranchSearchResult;->a(Lio/branch/search/BranchSearchRequest;Ljava/lang/String;)Lio/branch/search/BranchSearchResult;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;->onBranchRemoteSearchComplete(Lio/branch/search/BranchSearchResult;Lio/branch/search/BranchSearchError;)V

    :cond_4b
    :goto_4b
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
