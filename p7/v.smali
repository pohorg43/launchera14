.class public final Lp7/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,426:1\n329#2:427\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n417#1:427\n*E\n"
    }
.end annotation


# virtual methods
.method public final a(Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lp7/v$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lp7/v$a;

    iget v1, v0, Lp7/v$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/v$a;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/v$a;

    invoke-direct {v0, p0, p1}, Lp7/v$a;-><init>(Lp7/v;Ll4/d;)V

    :goto_18
    iget-object p1, v0, Lp7/v$a;->c:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v1, v0, Lp7/v$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    if-eq v1, v2, :cond_34

    const/4 p0, 0x2

    if-ne v1, p0, :cond_2c

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :goto_29
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lp7/v$a;->b:Ljava/lang/Object;

    check-cast p0, Lq7/u;

    iget-object v0, v0, Lp7/v$a;->a:Ljava/lang/Object;

    check-cast v0, Lp7/v;

    :try_start_3c
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_46

    invoke-virtual {p0}, Lq7/u;->releaseIntercepted()V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :catchall_46
    move-exception p1

    goto :goto_60

    :cond_48
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance p1, Lq7/u;

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1}, Lq7/u;-><init>(Lp7/e;Ll4/f;)V

    :try_start_55
    iput-object p0, v0, Lp7/v$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lp7/v$a;->b:Ljava/lang/Object;

    iput v2, v0, Lp7/v$a;->e:I

    throw v3
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_60
    invoke-virtual {p0}, Lq7/u;->releaseIntercepted()V

    throw p1
.end method

.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method
