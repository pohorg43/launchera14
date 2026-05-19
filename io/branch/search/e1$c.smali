.class public final Lio/branch/search/e1$c;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1;->a(Lio/branch/search/BranchZeroStateRequest;Lf4/e;)V
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeZeroState$2"
    f = "KCompositeInterface.kt"
    l = {
        0x10b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/e1;

.field public final synthetic d:Lio/branch/search/BranchZeroStateRequest;

.field public final synthetic e:Lf4/e;


# direct methods
.method public constructor <init>(Lio/branch/search/e1;Lio/branch/search/BranchZeroStateRequest;Lf4/e;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/e1$c;->c:Lio/branch/search/e1;

    iput-object p2, p0, Lio/branch/search/e1$c;->d:Lio/branch/search/BranchZeroStateRequest;

    iput-object p3, p0, Lio/branch/search/e1$c;->e:Lf4/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 6
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

    new-instance v0, Lio/branch/search/e1$c;

    iget-object v1, p0, Lio/branch/search/e1$c;->c:Lio/branch/search/e1;

    iget-object v2, p0, Lio/branch/search/e1$c;->d:Lio/branch/search/BranchZeroStateRequest;

    iget-object p0, p0, Lio/branch/search/e1$c;->e:Lf4/e;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/branch/search/e1$c;-><init>(Lio/branch/search/e1;Lio/branch/search/BranchZeroStateRequest;Lf4/e;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/e1$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$c;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$c;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/e1$c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lio/branch/search/e1$c;->a:Ljava/lang/Object;

    check-cast v0, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_35

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$c;->a:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    iget-object v1, p0, Lio/branch/search/e1$c;->c:Lio/branch/search/e1;

    invoke-static {v1}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/e1$c;->d:Lio/branch/search/BranchZeroStateRequest;

    iput-object p1, p0, Lio/branch/search/e1$c;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/e1$c;->b:I

    invoke-static {v1, v3, p1, p0}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchZeroStateRequest;Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_33

    return-object v0

    :cond_33
    move-object v0, p1

    move-object p1, v1

    :goto_35
    check-cast p1, Lio/branch/search/j1;

    invoke-virtual {p1}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v1

    instance-of v2, v1, Lio/branch/search/f5$b;

    if-eqz v2, :cond_86

    check-cast v1, Lio/branch/search/f5$b;

    invoke-virtual {v1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchZeroStateResult;

    iget-object v2, p0, Lio/branch/search/e1$c;->c:Lio/branch/search/e1;

    invoke-static {v2}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/KBranchRemoteConfiguration;->x()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v3

    iget-object v2, p0, Lio/branch/search/e1$c;->c:Lio/branch/search/e1;

    invoke-static {v2}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v4

    invoke-virtual {v1}, Lio/branch/search/BranchZeroStateResult;->getResults()Ljava/util/List;

    move-result-object v5

    const-string v1, "it.results"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v6

    sget-object v7, Lio/branch/search/u4;->c:Lio/branch/search/u4;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/m;Ljava/util/List;Lio/branch/search/p0;Lio/branch/search/u4;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/e1$c;->c:Lio/branch/search/e1;

    invoke-static {v2}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v2

    invoke-static {v2, v1}, Lio/branch/search/n5;->b(Lio/branch/search/m;Ljava/util/List;)V

    new-instance v2, Lf4/f;

    invoke-direct {v2, v1}, Lf4/f;-><init>(Ljava/util/List;)V

    new-instance v1, Lio/branch/search/f5$b;

    invoke-direct {v1, v2}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_8a

    :cond_86
    instance-of v2, v1, Lio/branch/search/f5$a;

    if-eqz v2, :cond_c9

    :goto_8a
    instance-of v2, v1, Lio/branch/search/f5$b;

    if-eqz v2, :cond_8f

    goto :goto_a7

    :cond_8f
    instance-of v2, v1, Lio/branch/search/f5$a;

    if-eqz v2, :cond_c3

    check-cast v1, Lio/branch/search/f5$a;

    invoke-virtual {v1}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchLocalError;

    sget-object v2, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v2, v1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;

    move-result-object v1

    new-instance v2, Lio/branch/search/f5$a;

    invoke-direct {v2, v1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_a7
    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lio/branch/search/e1$c$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lio/branch/search/e1$c$a;-><init>(Lio/branch/search/e1$c;Lio/branch/search/f5;Ll4/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 p0, 0x0

    move-object v1, v2

    move v2, p0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    invoke-virtual {p1}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/p0;->d()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_c3
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_c9
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
