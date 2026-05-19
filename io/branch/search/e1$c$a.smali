.class public final Lio/branch/search/e1$c$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeZeroState$2$1"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/e1$c;

.field public final synthetic c:Lio/branch/search/f5;


# direct methods
.method public constructor <init>(Lio/branch/search/e1$c;Lio/branch/search/f5;Ll4/d;)V
    .registers 4

    iput-object p1, p0, Lio/branch/search/e1$c$a;->b:Lio/branch/search/e1$c;

    iput-object p2, p0, Lio/branch/search/e1$c$a;->c:Lio/branch/search/f5;

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

    new-instance p1, Lio/branch/search/e1$c$a;

    iget-object v0, p0, Lio/branch/search/e1$c$a;->b:Lio/branch/search/e1$c;

    iget-object p0, p0, Lio/branch/search/e1$c$a;->c:Lio/branch/search/f5;

    invoke-direct {p1, v0, p0, p2}, Lio/branch/search/e1$c$a;-><init>(Lio/branch/search/e1$c;Lio/branch/search/f5;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$c$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$c$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/e1$c$a;->a:I

    if-nez v0, :cond_38

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$c$a;->c:Lio/branch/search/f5;

    iget-object p0, p0, Lio/branch/search/e1$c$a;->b:Lio/branch/search/e1$c;

    iget-object p0, p0, Lio/branch/search/e1$c;->e:Lf4/e;

    instance-of v0, p1, Lio/branch/search/f5$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf4/f;

    invoke-interface {p0, p1, v1}, Lf4/e;->onZeroStateComplete(Lf4/f;Lio/branch/search/BranchError;)V

    goto :goto_2f

    :cond_20
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_32

    check-cast p1, Lio/branch/search/f5$a;

    invoke-virtual {p1}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchError;

    invoke-interface {p0, v1, p1}, Lf4/e;->onZeroStateComplete(Lf4/f;Lio/branch/search/BranchError;)V

    :goto_2f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_32
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
