.class public final Li5/j;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lm7/s1;ILjava/lang/Object;)Lm7/v;
    .registers 3

    const/4 p0, 0x0

    new-instance p1, Lm7/v1;

    invoke-direct {p1, p0}, Lm7/v1;-><init>(Lm7/s1;)V

    return-object p1
.end method

.method public static final b(Ll4/f;Ljava/util/concurrent/CancellationException;)V
    .registers 3

    sget v0, Lm7/s1;->L:I

    sget-object v0, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    check-cast p0, Lm7/s1;

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Lm7/s1;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_f
    return-void
.end method

.method public static synthetic c(Ll4/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    invoke-static {p0, p1}, Li5/j;->b(Ll4/f;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static d(Ll4/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    sget p2, Lm7/s1;->L:I

    sget-object p2, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p0, p2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    check-cast p0, Lm7/s1;

    if-eqz p0, :cond_27

    invoke-interface {p0}, Lm7/s1;->c()Lj7/h;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm7/s1;

    invoke-interface {p2, p1}, Lm7/s1;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public static final e(Ll4/f;)V
    .registers 2

    sget v0, Lm7/s1;->L:I

    sget-object v0, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    check-cast p0, Lm7/s1;

    if-eqz p0, :cond_18

    invoke-interface {p0}, Lm7/s1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_18

    :cond_13
    invoke-interface {p0}, Lm7/s1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_18
    :goto_18
    return-void
.end method
