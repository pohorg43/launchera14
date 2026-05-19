.class public final Lm7/d0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ll4/f;Ll4/f;Z)Ll4/f;
    .registers 6

    invoke-static {p0}, Lm7/d0;->b(Ll4/f;)Z

    move-result v0

    invoke-static {p1}, Lm7/d0;->b(Ll4/f;)Z

    move-result v1

    if-nez v0, :cond_11

    if-nez v1, :cond_11

    invoke-interface {p0, p1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Ll4/h;->a:Ll4/h;

    new-instance v2, Lm7/d0$b;

    invoke-direct {v2, v0, p2}, Lm7/d0$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    invoke-interface {p0, p1, v2}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll4/f;

    if-eqz v1, :cond_33

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ll4/f;

    sget-object v1, Lm7/d0$a;->a:Lm7/d0$a;

    invoke-interface {p2, p1, v1}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_33
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ll4/f;

    invoke-interface {p0, p1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ll4/f;)Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lm7/d0$c;->a:Lm7/d0$c;

    invoke-interface {p0, v0, v1}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final c(Lm7/j0;Ll4/f;)Ll4/f;
    .registers 3

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lm7/d0;->a(Ll4/f;Ll4/f;Z)Ll4/f;

    move-result-object p0

    sget-object p1, Lm7/y0;->b:Lm7/f0;

    if-eq p0, p1, :cond_1b

    sget v0, Ll4/e;->J:I

    sget-object v0, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-interface {p0, p1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p0

    :cond_1b
    return-object p0
.end method

.method public static final d(Ll4/d;Ll4/f;Ljava/lang/Object;)Lm7/t2;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "*>;",
            "Ll4/f;",
            "Ljava/lang/Object;",
            ")",
            "Lm7/t2<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Ln4/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Lm7/u2;->a:Lm7/u2;

    invoke-interface {p1, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    :cond_14
    check-cast p0, Ln4/d;

    :cond_16
    instance-of v0, p0, Lm7/u0;

    if-eqz v0, :cond_1b

    goto :goto_29

    :cond_1b
    invoke-interface {p0}, Ln4/d;->getCallerFrame()Ln4/d;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_29

    :cond_22
    instance-of v0, p0, Lm7/t2;

    if-eqz v0, :cond_16

    move-object v1, p0

    check-cast v1, Lm7/t2;

    :goto_29
    if-eqz v1, :cond_2e

    invoke-virtual {v1, p1, p2}, Lm7/t2;->p0(Ll4/f;Ljava/lang/Object;)V

    :cond_2e
    return-object v1
.end method
