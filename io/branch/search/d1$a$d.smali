.class public final Lio/branch/search/d1$a$d;
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
        "Lio/branch/search/f5<",
        "+",
        "Lio/branch/search/BranchSearchError;",
        "+",
        "Lh4/j<",
        "+",
        "Lio/branch/search/BranchAppStoreSearchResult;",
        "+",
        "Lio/branch/search/p0;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.KAppStoreInterfaceImpl$appStoreSearch$1$postProcessResult$1$1"
    f = "KAppStoreInterface.kt"
    l = {
        0x3b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Lio/branch/search/d1$a;

.field public final synthetic d:Lio/branch/search/p0;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ll4/d;Lio/branch/search/d1$a;Lio/branch/search/p0;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/d1$a$d;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/branch/search/d1$a$d;->c:Lio/branch/search/d1$a;

    iput-object p4, p0, Lio/branch/search/d1$a$d;->d:Lio/branch/search/p0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance p1, Lio/branch/search/d1$a$d;

    iget-object v0, p0, Lio/branch/search/d1$a$d;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/d1$a$d;->c:Lio/branch/search/d1$a;

    iget-object p0, p0, Lio/branch/search/d1$a$d;->d:Lio/branch/search/p0;

    invoke-direct {p1, v0, p2, v1, p0}, Lio/branch/search/d1$a$d;-><init>(Lorg/json/JSONObject;Ll4/d;Lio/branch/search/d1$a;Lio/branch/search/p0;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/d1$a$d;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/d1$a$d;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/d1$a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/d1$a$d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_35

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object v1, Lio/branch/search/u1;->a:Lio/branch/search/u1;

    iget-object p1, p0, Lio/branch/search/d1$a$d;->d:Lio/branch/search/p0;

    iget-object v3, p0, Lio/branch/search/d1$a$d;->c:Lio/branch/search/d1$a;

    iget-object v3, v3, Lio/branch/search/d1$a;->e:Lio/branch/search/d1;

    invoke-virtual {v3}, Lio/branch/search/d1;->a()Lio/branch/search/m;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/d1$a$d;->c:Lio/branch/search/d1$a;

    iget-object v4, v4, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    iget-object v5, p0, Lio/branch/search/d1$a$d;->b:Lorg/json/JSONObject;

    iput v2, p0, Lio/branch/search/d1$a$d;->a:I

    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/u1;->a(Lio/branch/search/p0;Lio/branch/search/m;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_35

    return-object v0

    :cond_35
    :goto_35
    return-object p1
.end method
