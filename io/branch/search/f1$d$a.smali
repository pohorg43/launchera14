.class public final Lio/branch/search/f1$d$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f1$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$autoSuggest$3$1"
    f = "KNetworkInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/f1$d;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lio/branch/search/f1$d;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V
    .registers 4

    iput-object p1, p0, Lio/branch/search/f1$d$a;->b:Lio/branch/search/f1$d;

    iput-object p2, p0, Lio/branch/search/f1$d$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
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

    new-instance p1, Lio/branch/search/f1$d$a;

    iget-object v0, p0, Lio/branch/search/f1$d$a;->b:Lio/branch/search/f1$d;

    iget-object p0, p0, Lio/branch/search/f1$d$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, p0, p2}, Lio/branch/search/f1$d$a;-><init>(Lio/branch/search/f1$d;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1$d$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/f1$d$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/f1$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/f1$d$a;->a:I

    if-nez v0, :cond_3b

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/f1$d$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lio/branch/search/f5;

    iget-object p0, p0, Lio/branch/search/f1$d$a;->b:Lio/branch/search/f1$d;

    iget-object p0, p0, Lio/branch/search/f1$d;->f:Lio/branch/search/IBranchAutoSuggestEvents;

    instance-of v0, p1, Lio/branch/search/f5$b;

    if-eqz v0, :cond_23

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchAutoSuggestResult;

    invoke-interface {p0, p1}, Lio/branch/search/IBranchAutoSuggestEvents;->onBranchAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    goto :goto_32

    :cond_23
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_35

    check-cast p1, Lio/branch/search/f5$a;

    invoke-virtual {p1}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchSearchError;

    invoke-interface {p0, p1}, Lio/branch/search/IBranchAutoSuggestEvents;->onBranchAutoSuggestError(Lio/branch/search/BranchSearchError;)V

    :goto_32
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_35
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
