.class public final Lio/branch/search/z4$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/z4;->a(IJLkotlin/jvm/functions/Function0;)Lm7/s1;
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
    c = "io.branch.search.internal.util.BncExecutor$runCatchingRetryWithDelay$1"
    f = "BncExecutor.kt"
    l = {
        0x10
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:I

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function0;JLl4/d;)V
    .registers 6

    iput p1, p0, Lio/branch/search/z4$a;->c:I

    iput-object p2, p0, Lio/branch/search/z4$a;->d:Lkotlin/jvm/functions/Function0;

    iput-wide p3, p0, Lio/branch/search/z4$a;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 9
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

    new-instance p1, Lio/branch/search/z4$a;

    iget v1, p0, Lio/branch/search/z4$a;->c:I

    iget-object v2, p0, Lio/branch/search/z4$a;->d:Lkotlin/jvm/functions/Function0;

    iget-wide v3, p0, Lio/branch/search/z4$a;->e:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/branch/search/z4$a;-><init>(ILkotlin/jvm/functions/Function0;JLl4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/z4$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/z4$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/z4$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/z4$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    iget v1, p0, Lio/branch/search/z4$a;->a:I

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3c

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget p1, p0, Lio/branch/search/z4$a;->c:I

    iget-object v1, p0, Lio/branch/search/z4$a;->d:Lkotlin/jvm/functions/Function0;

    :try_start_1e
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_23

    goto :goto_28

    :catchall_23
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_28
    instance-of v1, v1, Lh4/k$a;

    if-eqz v1, :cond_62

    if-lez p1, :cond_62

    iget-wide v3, p0, Lio/branch/search/z4$a;->e:J

    iput p1, p0, Lio/branch/search/z4$a;->a:I

    iput v2, p0, Lio/branch/search/z4$a;->b:I

    invoke-static {v3, v4, p0}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3b

    return-object v0

    :cond_3b
    move v1, p1

    :goto_3c
    iget-object p1, p0, Lio/branch/search/z4$a;->d:Lkotlin/jvm/functions/Function0;

    :try_start_3e
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_48

    :catchall_43
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_48
    add-int/lit8 v1, v1, -0x1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_57

    goto :goto_59

    :cond_57
    const-string v3, "Unknown"

    :goto_59
    const-string v4, "BncExecutor.runCatchingRetryWithDelay"

    invoke-static {v4, v3}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    move-object v1, p1

    move p1, v5

    goto :goto_28

    :cond_62
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
