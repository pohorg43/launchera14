.class public final Lio/branch/search/e1$b$b$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$2$2"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/e1$b$b;

.field public final synthetic c:Lio/branch/search/f5;


# direct methods
.method public constructor <init>(Lio/branch/search/e1$b$b;Lio/branch/search/f5;Ll4/d;)V
    .registers 4

    iput-object p1, p0, Lio/branch/search/e1$b$b$a;->b:Lio/branch/search/e1$b$b;

    iput-object p2, p0, Lio/branch/search/e1$b$b$a;->c:Lio/branch/search/f5;

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

    new-instance p1, Lio/branch/search/e1$b$b$a;

    iget-object v0, p0, Lio/branch/search/e1$b$b$a;->b:Lio/branch/search/e1$b$b;

    iget-object p0, p0, Lio/branch/search/e1$b$b$a;->c:Lio/branch/search/f5;

    invoke-direct {p1, v0, p0, p2}, Lio/branch/search/e1$b$b$a;-><init>(Lio/branch/search/e1$b$b;Lio/branch/search/f5;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b$b$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b$b$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/e1$b$b$a;->a:I

    if-nez v0, :cond_52

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$b$b$a;->c:Lio/branch/search/f5;

    instance-of v0, p1, Lio/branch/search/f5$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/j;

    iget-object p0, p0, Lio/branch/search/e1$b$b$a;->b:Lio/branch/search/e1$b$b;

    iget-object p0, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object p0, p0, Lio/branch/search/e1$b;->h:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    if-eqz p1, :cond_25

    iget-object p1, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p1, Lio/branch/search/BranchAppStoreSearchResult;

    goto :goto_26

    :cond_25
    move-object p1, v1

    :goto_26
    invoke-interface {p0, p1, v1}, Lio/branch/search/AppStoreEvents;->onAppStoreSearchComplete(Lio/branch/search/BranchAppStoreSearchResult;Lio/branch/search/BranchError;)V

    goto :goto_49

    :cond_2a
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_4c

    check-cast p1, Lio/branch/search/f5$a;

    invoke-virtual {p1}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchSearchError;

    iget-object p0, p0, Lio/branch/search/e1$b$b$a;->b:Lio/branch/search/e1$b$b;

    iget-object p0, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object p0, p0, Lio/branch/search/e1$b;->h:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    if-eqz p1, :cond_45

    sget-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object p1

    goto :goto_46

    :cond_45
    move-object p1, v1

    :goto_46
    invoke-interface {p0, v1, p1}, Lio/branch/search/AppStoreEvents;->onAppStoreSearchComplete(Lio/branch/search/BranchAppStoreSearchResult;Lio/branch/search/BranchError;)V

    :goto_49
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_4c
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
