.class public final Lio/branch/search/m5$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/m5;-><init>(Landroid/content/Context;Lm7/j0;)V
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
    c = "io.branch.search.internal.util.UserAgentFetcher$job$1"
    f = "UserAgentFetcher.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lio/branch/search/m5;


# direct methods
.method public constructor <init>(Lio/branch/search/m5;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/m5$a;->c:Lio/branch/search/m5;

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

    new-instance p1, Lio/branch/search/m5$a;

    iget-object p0, p0, Lio/branch/search/m5$a;->c:Lio/branch/search/m5;

    invoke-direct {p1, p0, p2}, Lio/branch/search/m5$a;-><init>(Lio/branch/search/m5;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/m5$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/m5$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/m5$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/m5$a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    if-ne v1, v3, :cond_10

    iget v1, p0, Lio/branch/search/m5$a;->a:I

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_56

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/m5$a;->c:Lio/branch/search/m5;

    invoke-static {p1}, Lio/branch/search/m5;->b(Lio/branch/search/m5;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/m5$a;->c:Lio/branch/search/m5;

    invoke-static {v1}, Lio/branch/search/m5;->a(Lio/branch/search/m5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move v1, v2

    :goto_2b
    iget-object p1, p0, Lio/branch/search/m5$a;->c:Lio/branch/search/m5;

    invoke-static {p1}, Lio/branch/search/m5;->b(Lio/branch/search/m5;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_42

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_42

    :cond_40
    move p1, v2

    goto :goto_43

    :cond_42
    :goto_42
    move p1, v3

    :goto_43
    if-eqz p1, :cond_67

    const/4 p1, 0x3

    if-ge v1, p1, :cond_67

    iput v1, p0, Lio/branch/search/m5$a;->a:I

    iput v3, p0, Lio/branch/search/m5$a;->b:I

    const-wide/32 v4, 0x1b7740

    invoke-static {v4, v5, p0}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_56

    return-object v0

    :cond_56
    :goto_56
    iget-object p1, p0, Lio/branch/search/m5$a;->c:Lio/branch/search/m5;

    invoke-static {p1}, Lio/branch/search/m5;->b(Lio/branch/search/m5;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    iget-object v4, p0, Lio/branch/search/m5$a;->c:Lio/branch/search/m5;

    invoke-static {v4}, Lio/branch/search/m5;->a(Lio/branch/search/m5;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    add-int/2addr v1, v3

    goto :goto_2b

    :cond_67
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
