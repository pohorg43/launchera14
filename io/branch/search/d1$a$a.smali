.class public final Lio/branch/search/d1$a$a;
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
    c = "io.branch.search.internal.interfaces.KAppStoreInterfaceImpl$appStoreSearch$1$1"
    f = "KAppStoreInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/d1$a;


# direct methods
.method public constructor <init>(Lio/branch/search/d1$a;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/d1$a$a;->b:Lio/branch/search/d1$a;

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

    new-instance p1, Lio/branch/search/d1$a$a;

    iget-object p0, p0, Lio/branch/search/d1$a$a;->b:Lio/branch/search/d1$a;

    invoke-direct {p1, p0, p2}, Lio/branch/search/d1$a$a;-><init>(Lio/branch/search/d1$a;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/d1$a$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/d1$a$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/d1$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/d1$a$a;->a:I

    if-nez v0, :cond_1c

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/branch/search/d1$a$a;->b:Lio/branch/search/d1$a;

    iget-object p1, p0, Lio/branch/search/d1$a;->g:Lf4/c;

    iget-object p0, p0, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchAppStoreRequest;->getQuery()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lio/branch/search/BranchError$f;->a:Lio/branch/search/BranchError$f;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lf4/c;->onSearchComplete(Ljava/lang/String;Lf4/d;Lio/branch/search/BranchError;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
