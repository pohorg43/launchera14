.class public final Lio/branch/search/e1$b$b$b;
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
        "Lio/branch/search/f5<",
        "+",
        "Lio/branch/search/BranchSearchError;",
        "+",
        "Lorg/json/JSONObject;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$2$response$1"
    f = "KCompositeInterface.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/e1$b$b;


# direct methods
.method public constructor <init>(Lio/branch/search/e1$b$b;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/e1$b$b$b;->b:Lio/branch/search/e1$b$b;

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

    new-instance p1, Lio/branch/search/e1$b$b$b;

    iget-object p0, p0, Lio/branch/search/e1$b$b$b;->b:Lio/branch/search/e1$b$b;

    invoke-direct {p1, p0, p2}, Lio/branch/search/e1$b$b$b;-><init>(Lio/branch/search/e1$b$b;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b$b$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b$b$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/e1$b$b$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_44

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$b$b$b;->b:Lio/branch/search/e1$b$b;

    iget-object p1, p1, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object p1, p1, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {p1}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/m;->h()Lio/branch/search/f1;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/e1$b$b$b;->b:Lio/branch/search/e1$b$b;

    iget-object v1, v1, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object v1, v1, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v1, v1, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/BranchAppStoreRequest;

    const-string v3, "request.appStoreRequest"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/branch/search/e1$b$b$b;->b:Lio/branch/search/e1$b$b;

    iget-object v3, v3, Lio/branch/search/e1$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lio/branch/search/p0;

    iput v2, p0, Lio/branch/search/e1$b$b$b;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lio/branch/search/f1;->a(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/p0;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_44

    return-object v0

    :cond_44
    :goto_44
    return-object p1
.end method
