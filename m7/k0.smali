.class public final Lm7/k0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ll4/f;)Lm7/j0;
    .registers 4

    new-instance v0, Lr7/f;

    sget v1, Lm7/s1;->L:I

    sget-object v1, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_17

    :cond_d
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Li5/j;->a(Lm7/s1;ILjava/lang/Object;)Lm7/v;

    move-result-object v1

    invoke-interface {p0, v1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    :goto_17
    invoke-direct {v0, p0}, Lr7/f;-><init>(Ll4/f;)V

    return-object v0
.end method

.method public static final b()Lm7/j0;
    .registers 3

    new-instance v0, Lr7/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lv1/j;->a(Lm7/s1;I)Lm7/v;

    move-result-object v1

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    check-cast v1, Lm7/x1;

    invoke-static {v1, v2}, Ll4/f$a$a;->d(Ll4/f$a;Ll4/f;)Ll4/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lr7/f;-><init>(Ll4/f;)V

    return-object v0
.end method

.method public static c(Lm7/j0;Ljava/util/concurrent/CancellationException;I)V
    .registers 4

    const/4 p1, 0x0

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p2

    sget v0, Lm7/s1;->L:I

    sget-object v0, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p2, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p2

    check-cast p2, Lm7/s1;

    if-eqz p2, :cond_15

    invoke-interface {p2, p1}, Lm7/s1;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final d(Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lm7/j0;",
            "-",
            "Ll4/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lr7/b0;

    invoke-interface {p1}, Ll4/d;->getContext()Ll4/f;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lr7/b0;-><init>(Ll4/f;Ll4/d;)V

    invoke-static {v0, v0, p0}, Ls7/b;->a(Lr7/b0;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    if-ne p0, v0, :cond_16

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    return-object p0
.end method

.method public static final e(Lm7/j0;)Z
    .registers 2

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p0

    sget v0, Lm7/s1;->L:I

    sget-object v0, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    check-cast p0, Lm7/s1;

    if-eqz p0, :cond_15

    invoke-interface {p0}, Lm7/s1;->isActive()Z

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
