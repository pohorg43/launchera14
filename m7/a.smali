.class public abstract Lm7/a;
.super Lm7/x1;
.source ""

# interfaces
.implements Ll4/d;
.implements Lm7/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/x1;",
        "Lm7/s1;",
        "Ll4/d<",
        "TT;>;",
        "Lm7/j0;"
    }
.end annotation


# instance fields
.field public final c:Ll4/f;


# direct methods
.method public constructor <init>(Ll4/f;ZZ)V
    .registers 4

    invoke-direct {p0, p3}, Lm7/x1;-><init>(Z)V

    if-eqz p2, :cond_10

    sget-object p2, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p1, p2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p2

    check-cast p2, Lm7/s1;

    invoke-virtual {p0, p2}, Lm7/x1;->V(Lm7/s1;)V

    :cond_10
    invoke-interface {p1, p0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p1

    iput-object p1, p0, Lm7/a;->c:Ll4/f;

    return-void
.end method


# virtual methods
.method public I()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final U(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p0, p0, Lm7/a;->c:Ll4/f;

    invoke-static {p0, p1}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Y()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Lm7/x1;->Y()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lm7/x;

    if-eqz v0, :cond_1a

    check-cast p1, Lm7/x;

    iget-object v0, p1, Lm7/x;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lm7/x;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-virtual {p0, v0, p1}, Lm7/a;->l0(Ljava/lang/Throwable;Z)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1}, Lm7/a;->m0(Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method public final getContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lm7/a;->c:Ll4/f;

    return-object p0
.end method

.method public getCoroutineContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lm7/a;->c:Ll4/f;

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    invoke-super {p0}, Lm7/x1;->isActive()Z

    move-result p0

    return p0
.end method

.method public k0(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lm7/x1;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public l0(Ljava/lang/Throwable;Z)V
    .registers 3

    return-void
.end method

.method public m0(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final n0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Ll4/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lk/b;->g(I)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5f

    const-string v1, "completion"

    const/4 v2, 0x2

    if-eq p1, v2, :cond_45

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3f

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_15
    iget-object p1, p0, Lm7/a;->c:Ll4/f;

    invoke-static {p1, v0}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_30

    :try_start_1b
    invoke-static {p3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_32

    :try_start_25
    invoke-static {p1, v0}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_30

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-eq p2, p1, :cond_5f

    invoke-virtual {p0, p2}, Lm7/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5f

    :catchall_30
    move-exception p1

    goto :goto_37

    :catchall_32
    move-exception p2

    :try_start_33
    invoke-static {p1, v0}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    throw p2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_30

    :goto_37
    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm7/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_3f
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_45
    const-string p1, "<this>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2, p0}, Lm4/d;->f(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object p0

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_5b
    const/4 p1, 0x4

    invoke-static {p3, p2, p0, v0, p1}, Ls7/a;->b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ll4/d;Lkotlin/jvm/functions/Function1;I)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lm7/b0;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm7/x1;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lm7/y1;->b:Lr7/f0;

    if-ne p1, v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lm7/a;->k0(Ljava/lang/Object;)V

    return-void
.end method
