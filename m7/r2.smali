.class public final Lm7/r2;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lm7/q2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T::TU;>(",
            "Lm7/q2<",
            "TU;-TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lm7/j0;",
            "-",
            "Ll4/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lr7/b0;->d:Ll4/d;

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    invoke-static {v0}, Lm7/s0;->b(Ll4/f;)Lm7/r0;

    move-result-object v0

    iget-wide v1, p0, Lm7/q2;->e:J

    iget-object v3, p0, Lm7/a;->c:Ll4/f;

    invoke-interface {v0, v1, v2, p0, v3}, Lm7/r0;->l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;

    move-result-object v0

    new-instance v1, Lm7/c1;

    invoke-direct {v1, v0}, Lm7/c1;-><init>(Lm7/a1;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lm7/x1;->f(ZZLkotlin/jvm/functions/Function1;)Lm7/a1;

    const/4 v1, 0x2

    :try_start_1d
    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, p0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_28

    goto :goto_2f

    :catchall_28
    move-exception p1

    new-instance v3, Lm7/x;

    invoke-direct {v3, p1, v0, v1}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    move-object p1, v3

    :goto_2f
    sget-object v1, Lm4/a;->a:Lm4/a;

    if-ne p1, v1, :cond_34

    goto :goto_63

    :cond_34
    invoke-virtual {p0, p1}, Lm7/x1;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lm7/y1;->b:Lr7/f0;

    if-ne v3, v4, :cond_3d

    goto :goto_63

    :cond_3d
    instance-of v1, v3, Lm7/x;

    if-eqz v1, :cond_5e

    check-cast v3, Lm7/x;

    iget-object v1, v3, Lm7/x;->a:Ljava/lang/Throwable;

    instance-of v3, v1, Lm7/p2;

    if-eqz v3, :cond_50

    move-object v3, v1

    check-cast v3, Lm7/p2;

    iget-object v3, v3, Lm7/p2;->a:Lm7/s1;

    if-eq v3, p0, :cond_51

    :cond_50
    move v0, v2

    :cond_51
    if-nez v0, :cond_5d

    instance-of p0, p1, Lm7/x;

    if-nez p0, :cond_58

    goto :goto_62

    :cond_58
    check-cast p1, Lm7/x;

    iget-object p0, p1, Lm7/x;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5d
    throw v1

    :cond_5e
    invoke-static {v3}, Lm7/y1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_62
    move-object v1, p1

    :goto_63
    return-object v1
.end method

.method public static final b(JLkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lm7/j0;",
            "-",
            "Ll4/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_19

    new-instance v0, Lm7/q2;

    invoke-direct {v0, p0, p1, p3}, Lm7/q2;-><init>(JLl4/d;)V

    invoke-static {v0, p2}, Lm7/r2;->a(Lm7/q2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_18

    const-string p1, "frame"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    return-object p0

    :cond_19
    new-instance p0, Lm7/p2;

    const-string p1, "Timed out immediately"

    invoke-direct {p0, p1}, Lm7/p2;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(JLkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lm7/j0;",
            "-",
            "Ll4/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lm7/r2$a;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lm7/r2$a;

    iget v1, v0, Lm7/r2$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lm7/r2$a;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lm7/r2$a;

    invoke-direct {v0, p3}, Lm7/r2$a;-><init>(Ll4/d;)V

    :goto_18
    iget-object p3, v0, Lm7/r2$a;->c:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lm7/r2$a;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v4, :cond_32

    iget-object p0, v0, Lm7/r2$a;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v0, Lm7/r2$a;->a:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    :try_start_2c
    invoke-static {p3}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_2f
    .catch Lm7/p2; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_65

    :catch_30
    move-exception p1

    goto :goto_69

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p3}, Lh4/l;->b(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long p3, p0, v5

    if-gtz p3, :cond_44

    return-object v3

    :cond_44
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_49
    iput-object p2, v0, Lm7/r2$a;->a:Ljava/lang/Object;

    iput-object p3, v0, Lm7/r2$a;->b:Ljava/lang/Object;

    iput v4, v0, Lm7/r2$a;->d:I

    new-instance v2, Lm7/q2;

    invoke-direct {v2, p0, p1, v0}, Lm7/q2;-><init>(JLl4/d;)V

    iput-object v2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2, p2}, Lm7/r2;->a(Lm7/q2;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_61

    const-string p1, "frame"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_61
    .catch Lm7/p2; {:try_start_49 .. :try_end_61} :catch_66

    :cond_61
    if-ne p0, v1, :cond_64

    return-object v1

    :cond_64
    move-object p3, p0

    :goto_65
    return-object p3

    :catch_66
    move-exception p0

    move-object p1, p0

    move-object p0, p3

    :goto_69
    iget-object p2, p1, Lm7/p2;->a:Lm7/s1;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne p2, p0, :cond_70

    return-object v3

    :cond_70
    throw p1
.end method
