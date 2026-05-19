.class public final Lo7/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,151:1\n1#2:152\n314#3,11:153\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n48#1:153,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lo7/q;Lkotlin/jvm/functions/Function0;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/q<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lo7/o$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lo7/o$a;

    iget v1, v0, Lo7/o$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lo7/o$a;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lo7/o$a;

    invoke-direct {v0, p2}, Lo7/o$a;-><init>(Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lo7/o$a;->c:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lo7/o$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p0, v0, Lo7/o$a;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p0, v0, Lo7/o$a;->a:Ljava/lang/Object;

    check-cast p0, Lo7/q;

    :try_start_2c
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_78

    :catchall_30
    move-exception p0

    goto :goto_7e

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object p2

    sget v2, Lm7/s1;->L:I

    sget-object v2, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p2, v2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p2

    if-ne p2, p0, :cond_4d

    move p2, v3

    goto :goto_4e

    :cond_4d
    const/4 p2, 0x0

    :goto_4e
    if-eqz p2, :cond_82

    :try_start_50
    iput-object p0, v0, Lo7/o$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lo7/o$a;->b:Ljava/lang/Object;

    iput v3, v0, Lo7/o$a;->d:I

    new-instance p2, Lm7/n;

    invoke-static {v0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {p2}, Lm7/n;->w()V

    new-instance v2, Lo7/o$b;

    invoke-direct {v2, p2}, Lo7/o$b;-><init>(Lm7/l;)V

    invoke-interface {p0, v2}, Lo7/t;->n(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_75

    const-string p2, "frame"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_30

    :cond_75
    if-ne p0, v1, :cond_78

    return-object v1

    :cond_78
    :goto_78
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :goto_7e
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw p0

    :cond_82
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lm7/j0;Ll4/f;ILo7/a;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lo7/s;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lm7/j0;",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lo7/q<",
            "-TE;>;-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo7/s<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1}, Lo7/i;->a(ILo7/a;Lkotlin/jvm/functions/Function1;I)Lo7/f;

    move-result-object p2

    invoke-static {p0, p1}, Lm7/d0;->c(Lm7/j0;Ll4/f;)Ll4/f;

    move-result-object p0

    new-instance p1, Lo7/p;

    invoke-direct {p1, p0, p2}, Lo7/p;-><init>(Ll4/f;Lo7/f;)V

    if-eqz p5, :cond_16

    const/4 p0, 0x0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2, p5}, Lm7/x1;->f(ZZLkotlin/jvm/functions/Function1;)Lm7/a1;

    :cond_16
    invoke-virtual {p1, p4, p1, p6}, Lm7/a;->n0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method
