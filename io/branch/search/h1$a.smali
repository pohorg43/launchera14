.class public final Lio/branch/search/h1$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
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
    c = "io.branch.search.internal.interfaces.LocalInterfaceRewriteKt$localQueryHint$2"
    f = "LocalInterfaceRewrite.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/m;

.field public final synthetic d:Lio/branch/search/BranchQueryHintRequest;

.field public final synthetic e:Lio/branch/search/IBranchLocalQueryHintEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/h1$a;->c:Lio/branch/search/m;

    iput-object p2, p0, Lio/branch/search/h1$a;->d:Lio/branch/search/BranchQueryHintRequest;

    iput-object p3, p0, Lio/branch/search/h1$a;->e:Lio/branch/search/IBranchLocalQueryHintEvents;

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

    new-instance v0, Lio/branch/search/h1$a;

    iget-object v1, p0, Lio/branch/search/h1$a;->c:Lio/branch/search/m;

    iget-object v2, p0, Lio/branch/search/h1$a;->d:Lio/branch/search/BranchQueryHintRequest;

    iget-object p0, p0, Lio/branch/search/h1$a;->e:Lio/branch/search/IBranchLocalQueryHintEvents;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/branch/search/h1$a;-><init>(Lio/branch/search/m;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/h1$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/h1$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/h1$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/h1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/h1$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object v0, p0, Lio/branch/search/h1$a;->a:Ljava/lang/Object;

    check-cast v0, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_52

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/h1$a;->a:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    new-instance v1, Lio/branch/search/i1;

    iget-object v4, p0, Lio/branch/search/h1$a;->c:Lio/branch/search/m;

    new-instance v11, Lio/branch/search/p0;

    iget-object v6, p0, Lio/branch/search/h1$a;->d:Lio/branch/search/BranchQueryHintRequest;

    invoke-static {}, Lio/branch/search/p0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lio/branch/search/p0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    const-string v7, "local_hints"

    const-string v8, "local_hints"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v8, Lio/branch/search/h1$a$b;

    invoke-direct {v8, p0}, Lio/branch/search/h1$a$b;-><init>(Lio/branch/search/h1$a;)V

    const-string v6, "SQL"

    move-object v3, v1

    move-object v5, p1

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lio/branch/search/i1;-><init>(Lio/branch/search/m;Lm7/j0;Ljava/lang/String;Lio/branch/search/p0;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lio/branch/search/h1$a;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/h1$a;->b:I

    invoke-virtual {v1, p0}, Lio/branch/search/i1;->a(Ll4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_50

    return-object v0

    :cond_50
    move-object v0, p1

    move-object p1, v1

    :goto_52
    check-cast p1, Lio/branch/search/j1;

    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lio/branch/search/h1$a$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lio/branch/search/h1$a$a;-><init>(Lio/branch/search/h1$a;Lio/branch/search/j1;Ll4/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    invoke-static {p1}, Lio/branch/search/h1;->a(Lio/branch/search/j1;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
