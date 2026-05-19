.class public final Lio/branch/search/d1$a$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/d1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KAppStoreInterfaceImpl$appStoreSearch$1$3$1"
    f = "KAppStoreInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lf4/d;

.field public final synthetic c:Lio/branch/search/BranchSearchError;

.field public final synthetic d:Lio/branch/search/d1$a;

.field public final synthetic e:Lm7/j0;

.field public final synthetic f:Lio/branch/search/p0;


# direct methods
.method public constructor <init>(Lf4/d;Lio/branch/search/BranchSearchError;Ll4/d;Lio/branch/search/d1$a;Lm7/j0;Lio/branch/search/p0;)V
    .registers 7

    iput-object p1, p0, Lio/branch/search/d1$a$b;->b:Lf4/d;

    iput-object p2, p0, Lio/branch/search/d1$a$b;->c:Lio/branch/search/BranchSearchError;

    iput-object p4, p0, Lio/branch/search/d1$a$b;->d:Lio/branch/search/d1$a;

    iput-object p5, p0, Lio/branch/search/d1$a$b;->e:Lm7/j0;

    iput-object p6, p0, Lio/branch/search/d1$a$b;->f:Lio/branch/search/p0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/d1$a$b;

    iget-object v1, p0, Lio/branch/search/d1$a$b;->b:Lf4/d;

    iget-object v2, p0, Lio/branch/search/d1$a$b;->c:Lio/branch/search/BranchSearchError;

    iget-object v4, p0, Lio/branch/search/d1$a$b;->d:Lio/branch/search/d1$a;

    iget-object v5, p0, Lio/branch/search/d1$a$b;->e:Lm7/j0;

    iget-object v6, p0, Lio/branch/search/d1$a$b;->f:Lio/branch/search/p0;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/d1$a$b;-><init>(Lf4/d;Lio/branch/search/BranchSearchError;Ll4/d;Lio/branch/search/d1$a;Lm7/j0;Lio/branch/search/p0;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/d1$a$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/d1$a$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/d1$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/d1$a$b;->a:I

    if-nez v0, :cond_27

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/d1$a$b;->d:Lio/branch/search/d1$a;

    iget-object v0, p1, Lio/branch/search/d1$a;->g:Lf4/c;

    iget-object p1, p1, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {p1}, Lio/branch/search/BranchAppStoreRequest;->getQuery()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/d1$a$b;->b:Lf4/d;

    iget-object p0, p0, Lio/branch/search/d1$a$b;->c:Lio/branch/search/BranchSearchError;

    if-eqz p0, :cond_20

    sget-object v2, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v2, p0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    invoke-interface {v0, p1, v1, p0}, Lf4/c;->onSearchComplete(Ljava/lang/String;Lf4/d;Lio/branch/search/BranchError;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
