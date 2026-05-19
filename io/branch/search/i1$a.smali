.class public final Lio/branch/search/i1$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/i1;-><init>(Lio/branch/search/m;Lm7/j0;Ljava/lang/String;Lio/branch/search/p0;Lkotlin/jvm/functions/Function1;)V
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
        "Lio/branch/search/j1<",
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.LocalJob$1"
    f = "LocalInterfaceRewrite.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/i1;


# direct methods
.method public constructor <init>(Lio/branch/search/i1;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

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

    new-instance p1, Lio/branch/search/i1$a;

    iget-object p0, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-direct {p1, p0, p2}, Lio/branch/search/i1$a;-><init>(Lio/branch/search/i1;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/i1$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/i1$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/i1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "request_id"

    const-string v1, "LIRewrite.localSearch."

    sget-object v2, Lm4/a;->a:Lm4/a;

    iget v2, p0, Lio/branch/search/i1$a;->a:I

    if-nez v2, :cond_a5

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :try_start_d
    sget-object p1, Lio/branch/search/j1;->Companion:Lio/branch/search/j1$a;

    iget-object v2, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {v2}, Lio/branch/search/i1;->c(Lio/branch/search/i1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {v3}, Lio/branch/search/i1;->d(Lio/branch/search/i1;)Lio/branch/search/p0;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {v3}, Lio/branch/search/i1;->d(Lio/branch/search/i1;)Lio/branch/search/p0;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lio/branch/search/j1$a;->a(Ljava/lang/Object;Lio/branch/search/p0;)Lio/branch/search/j1;

    move-result-object p0
    :try_end_29
    .catch Lio/branch/search/BranchLocalError$InvalidDB; {:try_start_d .. :try_end_29} :catch_68
    .catchall {:try_start_d .. :try_end_29} :catchall_2a

    goto :goto_a4

    :catchall_2a
    move-exception p1

    iget-object v2, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {v2}, Lio/branch/search/i1;->a(Lio/branch/search/i1;)Lio/branch/search/m;

    move-result-object v2

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-virtual {v3}, Lio/branch/search/i1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {v3}, Lio/branch/search/i1;->d(Lio/branch/search/i1;)Lio/branch/search/p0;

    move-result-object v3

    iget-object v3, v3, Lio/branch/search/p0;->f:Ljava/lang/String;

    new-instance v4, Lh4/j;

    invoke-direct {v4, v0, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, p1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    sget-object p1, Lio/branch/search/j1;->Companion:Lio/branch/search/j1$a;

    new-instance v0, Lio/branch/search/BranchLocalError$Unknown;

    invoke-direct {v0}, Lio/branch/search/BranchLocalError$Unknown;-><init>()V

    iget-object p0, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {p0}, Lio/branch/search/i1;->d(Lio/branch/search/i1;)Lio/branch/search/p0;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lio/branch/search/j1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/p0;)Lio/branch/search/j1;

    move-result-object p0

    goto :goto_a4

    :catch_68
    move-exception p1

    iget-object v2, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {v2}, Lio/branch/search/i1;->a(Lio/branch/search/i1;)Lio/branch/search/m;

    move-result-object v2

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-virtual {v3}, Lio/branch/search/i1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError$InvalidDB;->getInternalMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {v4}, Lio/branch/search/i1;->d(Lio/branch/search/i1;)Lio/branch/search/p0;

    move-result-object v4

    iget-object v4, v4, Lio/branch/search/p0;->f:Ljava/lang/String;

    new-instance v5, Lh4/j;

    invoke-direct {v5, v0, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lio/branch/search/j1;->Companion:Lio/branch/search/j1$a;

    iget-object p0, p0, Lio/branch/search/i1$a;->b:Lio/branch/search/i1;

    invoke-static {p0}, Lio/branch/search/i1;->d(Lio/branch/search/i1;)Lio/branch/search/p0;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lio/branch/search/j1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/p0;)Lio/branch/search/j1;

    move-result-object p0

    :goto_a4
    return-object p0

    :cond_a5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
