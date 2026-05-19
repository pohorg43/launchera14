.class public final Ln7/d;
.super Ln7/e;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,217:1\n1#2:218\n17#3:219\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n*L\n147#1:219\n*E\n"
    }
.end annotation


# instance fields
.field private volatile _immediate:Ln7/d;

.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ln7/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ln7/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ln7/d;->a:Landroid/os/Handler;

    iput-object p2, p0, Ln7/d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Ln7/d;->c:Z

    if-eqz p3, :cond_d

    move-object v0, p0

    :cond_d
    iput-object v0, p0, Ln7/d;->_immediate:Ln7/d;

    iget-object p3, p0, Ln7/d;->_immediate:Ln7/d;

    if-nez p3, :cond_1b

    new-instance p3, Ln7/d;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Ln7/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Ln7/d;->_immediate:Ln7/d;

    :cond_1b
    iput-object p3, p0, Ln7/d;->d:Ln7/d;

    return-void
.end method


# virtual methods
.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Ln7/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Ln7/d;->v(Ll4/f;Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ln7/d;

    if-eqz v0, :cond_e

    check-cast p1, Ln7/d;

    iget-object p1, p1, Ln7/d;->a:Landroid/os/Handler;

    iget-object p0, p0, Ln7/d;->a:Landroid/os/Handler;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Ln7/d;->a:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDispatchNeeded(Ll4/f;)Z
    .registers 2

    iget-boolean p1, p0, Ln7/d;->c:Z

    if-eqz p1, :cond_17

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Ln7/d;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;
    .registers 8

    iget-object v0, p0, Ln7/d;->a:Landroid/os/Handler;

    const-wide v1, 0x3fffffffffffffffL  # 1.9999999999999998

    invoke-static {p1, p2, v1, v2}, Ly4/h;->c(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Ln7/c;

    invoke-direct {p1, p0, p3}, Ln7/c;-><init>(Ln7/d;Ljava/lang/Runnable;)V

    return-object p1

    :cond_17
    invoke-virtual {p0, p4, p3}, Ln7/d;->v(Ll4/f;Ljava/lang/Runnable;)V

    sget-object p0, Lm7/d2;->a:Lm7/d2;

    return-object p0
.end method

.method public m(JLm7/l;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ln7/d$a;

    invoke-direct {v0, p3, p0}, Ln7/d$a;-><init>(Lm7/l;Ln7/d;)V

    iget-object v1, p0, Ln7/d;->a:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL  # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Ly4/h;->c(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-instance p1, Ln7/d$b;

    invoke-direct {p1, p0, v0}, Ln7/d$b;-><init>(Ln7/d;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    goto :goto_26

    :cond_1f
    invoke-interface {p3}, Ll4/d;->getContext()Ll4/f;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ln7/d;->v(Ll4/f;Ljava/lang/Runnable;)V

    :goto_26
    return-void
.end method

.method public q()Lm7/b2;
    .registers 1

    iget-object p0, p0, Ln7/d;->d:Ln7/d;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lm7/b2;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ln7/d;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ln7/d;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    iget-boolean p0, p0, Ln7/d;->c:Z

    if-eqz p0, :cond_1a

    const-string p0, ".immediate"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method public final v(Ll4/f;Ljava/lang/Runnable;)V
    .registers 6

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Li5/j;->b(Ll4/f;Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lm7/y0;->d:Lm7/f0;

    check-cast p0, Lt7/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt7/b;->b:Lm7/f0;

    invoke-virtual {p0, p1, p2}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    return-void
.end method
