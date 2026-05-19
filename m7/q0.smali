.class public Lm7/q0;
.super Lm7/a;
.source ""

# interfaces
.implements Lm7/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/a<",
        "TT;>;",
        "Lm7/p0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll4/f;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lm7/a;-><init>(Ll4/f;ZZ)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lm7/n1;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    instance-of v0, p0, Lm7/x;

    if-nez v0, :cond_13

    invoke-static {p0}, Lm7/y1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    check-cast p0, Lm7/x;

    iget-object p0, p0, Lm7/x;->a:Ljava/lang/Throwable;

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This job has not completed yet"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm7/n1;

    if-nez v1, :cond_16

    instance-of p0, v0, Lm7/x;

    if-nez p0, :cond_11

    invoke-static {v0}, Lm7/y1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_48

    :cond_11
    check-cast v0, Lm7/x;

    iget-object p0, v0, Lm7/x;->a:Ljava/lang/Throwable;

    throw p0

    :cond_16
    invoke-virtual {p0, v0}, Lm7/x1;->e0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lm7/x1$a;

    invoke-static {p1}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lm7/x1$a;-><init>(Ll4/d;Lm7/x1;)V

    invoke-virtual {v0}, Lm7/n;->w()V

    new-instance v1, Lm7/g2;

    invoke-direct {v1, v0}, Lm7/g2;-><init>(Lm7/n;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1}, Lm7/x1;->f(ZZLkotlin/jvm/functions/Function1;)Lm7/a1;

    move-result-object p0

    new-instance v1, Lm7/b1;

    invoke-direct {v1, p0}, Lm7/b1;-><init>(Lm7/a1;)V

    invoke-virtual {v0, v1}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    if-ne p0, v0, :cond_48

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_48
    :goto_48
    sget-object p1, Lm4/a;->a:Lm4/a;

    return-object p0
.end method
