.class public final Lio/branch/search/z$a$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/z$a;->a()Lio/branch/search/z3;
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
        "Lio/branch/search/z3;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.TrackingStatusManagerActions$Default$fetchLastPersisted$1"
    f = "TrackingStatusManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/z$a;


# direct methods
.method public constructor <init>(Lio/branch/search/z$a;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/z$a$a;->b:Lio/branch/search/z$a;

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

    new-instance p1, Lio/branch/search/z$a$a;

    iget-object p0, p0, Lio/branch/search/z$a$a;->b:Lio/branch/search/z$a;

    invoke-direct {p1, p0, p2}, Lio/branch/search/z$a$a;-><init>(Lio/branch/search/z$a;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/z$a$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/z$a$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/z$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lio/branch/search/z$a$a;->a:I

    if-nez v0, :cond_28

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/branch/search/z$a$a;->b:Lio/branch/search/z$a;

    invoke-static {p0}, Lio/branch/search/z$a;->a(Lio/branch/search/z$a;)Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object p0

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {p0}, Lio/branch/search/v3;->b()Lio/branch/search/z3;

    move-result-object p0

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0

    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
