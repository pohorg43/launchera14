.class public final Lio/branch/search/f1$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f1;->a(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$autoSuggest$1"
    f = "KNetworkInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/IBranchAutoSuggestEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/IBranchAutoSuggestEvents;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/f1$b;->b:Lio/branch/search/IBranchAutoSuggestEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lio/branch/search/f1$b;

    iget-object p0, p0, Lio/branch/search/f1$b;->b:Lio/branch/search/IBranchAutoSuggestEvents;

    invoke-direct {p1, p0, p2}, Lio/branch/search/f1$b;-><init>(Lio/branch/search/IBranchAutoSuggestEvents;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/f1$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/f1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/f1$b;->a:I

    if-nez v0, :cond_18

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/branch/search/f1$b;->b:Lio/branch/search/IBranchAutoSuggestEvents;

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->p:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, v0}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-interface {p0, p1}, Lio/branch/search/IBranchAutoSuggestEvents;->onBranchAutoSuggestError(Lio/branch/search/BranchSearchError;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
