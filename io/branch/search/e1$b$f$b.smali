.class public final Lio/branch/search/e1$b$f$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1$b$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$localSearchJob$1$2"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/e1$b$f;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lio/branch/search/f5;


# direct methods
.method public constructor <init>(Lio/branch/search/e1$b$f;Ljava/util/List;Lio/branch/search/f5;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/e1$b$f$b;->b:Lio/branch/search/e1$b$f;

    iput-object p2, p0, Lio/branch/search/e1$b$f$b;->c:Ljava/util/List;

    iput-object p3, p0, Lio/branch/search/e1$b$f$b;->d:Lio/branch/search/f5;

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

    new-instance p1, Lio/branch/search/e1$b$f$b;

    iget-object v0, p0, Lio/branch/search/e1$b$f$b;->b:Lio/branch/search/e1$b$f;

    iget-object v1, p0, Lio/branch/search/e1$b$f$b;->c:Ljava/util/List;

    iget-object p0, p0, Lio/branch/search/e1$b$f$b;->d:Lio/branch/search/f5;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/e1$b$f$b;-><init>(Lio/branch/search/e1$b$f;Ljava/util/List;Lio/branch/search/f5;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b$f$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b$f$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b$f$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/e1$b$f$b;->a:I

    if-nez v0, :cond_40

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$b$f$b;->b:Lio/branch/search/e1$b$f;

    iget-object p1, p1, Lio/branch/search/e1$b$f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3d

    new-instance p1, Lio/branch/search/BranchLocalSearchResult;

    iget-object v0, p0, Lio/branch/search/e1$b$f$b;->c:Ljava/util/List;

    iget-object v1, p0, Lio/branch/search/e1$b$f$b;->d:Lio/branch/search/f5;

    check-cast v1, Lio/branch/search/f5$b;

    invoke-virtual {v1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchLocalSearchResult;

    iget-object v1, v1, Lio/branch/search/d;->requestId:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lio/branch/search/BranchLocalSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/e1$b$f$b;->b:Lio/branch/search/e1$b$f;

    iget-object v0, v0, Lio/branch/search/e1$b$f;->c:Lio/branch/search/e1$b;

    iget-object v0, v0, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v0}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/e1$b$f$b;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lio/branch/search/n5;->a(Lio/branch/search/m;Ljava/util/List;)V

    iget-object p0, p0, Lio/branch/search/e1$b$f$b;->b:Lio/branch/search/e1$b$f;

    iget-object p0, p0, Lio/branch/search/e1$b$f;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    invoke-interface {p0, p1}, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;->onBranchLocalSearchComplete(Lio/branch/search/BranchLocalSearchResult;)V

    :cond_3d
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
