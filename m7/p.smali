.class public final Lm7/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,386:1\n1#2:387\n19#3:388\n*S KotlinDebug\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n380#1:388\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ll4/d;)Lm7/n;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll4/d<",
            "-TT;>;)",
            "Lm7/n<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lr7/j;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    new-instance v0, Lm7/n;

    invoke-direct {v0, p0, v1}, Lm7/n;-><init>(Ll4/d;I)V

    return-object v0

    :cond_b
    move-object v0, p0

    check-cast v0, Lr7/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_13
    :goto_13
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_23

    sget-object v2, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lr7/k;->b:Lr7/f0;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_33

    :cond_23
    instance-of v5, v3, Lm7/n;

    if-eqz v5, :cond_65

    sget-object v5, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v6, Lr7/k;->b:Lr7/f0;

    invoke-virtual {v5, v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    check-cast v3, Lm7/n;

    :goto_33
    if-eqz v3, :cond_5e

    sget-object v0, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lm7/w;

    if-eqz v5, :cond_4a

    check-cast v2, Lm7/w;

    iget-object v2, v2, Lm7/w;->d:Ljava/lang/Object;

    if-eqz v2, :cond_4a

    invoke-virtual {v3}, Lm7/n;->o()V

    const/4 v1, 0x0

    goto :goto_57

    :cond_4a
    sget-object v2, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v5, 0x1fffffff

    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v2, Lm7/b;->a:Lm7/b;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_57
    if-eqz v1, :cond_5a

    move-object v4, v3

    :cond_5a
    if-nez v4, :cond_5d

    goto :goto_5e

    :cond_5d
    return-object v4

    :cond_5e
    :goto_5e
    new-instance v0, Lm7/n;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lm7/n;-><init>(Ll4/d;I)V

    return-object v0

    :cond_65
    sget-object v4, Lr7/k;->b:Lr7/f0;

    if-eq v3, v4, :cond_13

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_6e

    goto :goto_13

    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Inconsistent state "

    invoke-static {v0, v3}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
