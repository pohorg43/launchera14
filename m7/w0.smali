.class public final Lm7/w0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 4 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,220:1\n198#1,17:238\n1#2:221\n253#3:222\n254#3,2:233\n256#3:237\n107#4,10:223\n118#4,2:235\n61#5,2:255\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n*L\n188#1:238,17\n176#1:222\n176#1:233,2\n176#1:237\n176#1:223,10\n176#1:235,2\n218#1:255,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static final b(Lm7/v0;Ll4/d;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm7/v0<",
            "-TT;>;",
            "Ll4/d<",
            "-TT;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lm7/v0;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm7/v0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0}, Lm7/v0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    if-eqz p2, :cond_50

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr7/j;

    iget-object p2, p1, Lr7/j;->e:Ll4/d;

    iget-object v0, p1, Lr7/j;->g:Ljava/lang/Object;

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object v1

    invoke-static {v1, v0}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lr7/h0;->a:Lr7/f0;

    if-eq v0, v2, :cond_31

    invoke-static {p2, v1, v0}, Lm7/d0;->d(Ll4/d;Ll4/f;Ljava/lang/Object;)Lm7/t2;

    move-result-object p2

    goto :goto_32

    :cond_31
    const/4 p2, 0x0

    :goto_32
    :try_start_32
    iget-object p1, p1, Lr7/j;->e:Ll4/d;

    invoke-interface {p1, p0}, Ll4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_43

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Lm7/t2;->o0()Z

    move-result p0

    if-eqz p0, :cond_53

    :cond_3f
    invoke-static {v1, v0}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    goto :goto_53

    :catchall_43
    move-exception p0

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Lm7/t2;->o0()Z

    move-result p1

    if-eqz p1, :cond_4f

    :cond_4c
    invoke-static {v1, v0}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    :cond_4f
    throw p0

    :cond_50
    invoke-interface {p1, p0}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_53
    :goto_53
    return-void
.end method
