.class public abstract Lm7/v0;
.super Lt7/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt7/h;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,220:1\n1#2:221\n107#3,10:222\n118#3,2:236\n218#4:232\n219#4:235\n61#5,2:233\n75#6:238\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n88#1:222,10\n88#1:236,2\n101#1:232\n101#1:235\n101#1:233,2\n140#1:238\n*E\n"
    }
.end annotation


# instance fields
.field public c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lt7/h;-><init>()V

    iput p1, p0, Lm7/v0;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public abstract c()Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 3

    instance-of p0, p1, Lm7/x;

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    check-cast p1, Lm7/x;

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-eqz p1, :cond_d

    iget-object v0, p1, Lm7/x;->a:Ljava/lang/Throwable;

    :cond_d
    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {p1, p2}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_c
    if-nez p1, :cond_f

    move-object p1, p2

    :cond_f
    new-instance p2, Lm7/l0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lm7/l0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lm7/v0;->c()Ll4/d;

    move-result-object p0

    invoke-interface {p0}, Ll4/d;->getContext()Ll4/f;

    move-result-object p0

    invoke-static {p0, p2}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract g()Ljava/lang/Object;
.end method

.method public final run()V
    .registers 11

    iget-object v0, p0, Lt7/h;->b:Lt7/i;

    :try_start_2
    invoke-virtual {p0}, Lm7/v0;->c()Ll4/d;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lr7/j;

    iget-object v2, v1, Lr7/j;->e:Ll4/d;

    iget-object v1, v1, Lr7/j;->g:Ljava/lang/Object;

    invoke-interface {v2}, Ll4/d;->getContext()Ll4/f;

    move-result-object v3

    invoke-static {v3, v1}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lr7/h0;->a:Lr7/f0;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_23

    invoke-static {v2, v3, v1}, Lm7/d0;->d(Ll4/d;Ll4/f;Ljava/lang/Object;)Lm7/t2;

    move-result-object v4
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_9a

    goto :goto_24

    :cond_23
    move-object v4, v5

    :goto_24
    :try_start_24
    invoke-interface {v2}, Ll4/d;->getContext()Ll4/f;

    move-result-object v6

    invoke-virtual {p0}, Lm7/v0;->g()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lm7/v0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_47

    iget v9, p0, Lm7/v0;->c:I

    invoke-static {v9}, Lm7/w0;->a(I)Z

    move-result v9

    if-eqz v9, :cond_47

    sget v9, Lm7/s1;->L:I

    sget-object v9, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {v6, v9}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v6

    check-cast v6, Lm7/s1;

    goto :goto_48

    :catchall_45
    move-exception v2

    goto :goto_8e

    :cond_47
    move-object v6, v5

    :goto_48
    if-eqz v6, :cond_5f

    invoke-interface {v6}, Lm7/s1;->isActive()Z

    move-result v9

    if-nez v9, :cond_5f

    invoke-interface {v6}, Lm7/s1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lm7/v0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v6}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_70

    :cond_5f
    if-eqz v8, :cond_69

    invoke-static {v8}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_70

    :cond_69
    invoke-virtual {p0, v7}, Lm7/v0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :goto_70
    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_72
    .catchall {:try_start_24 .. :try_end_72} :catchall_45

    if-eqz v4, :cond_7a

    :try_start_74
    invoke-virtual {v4}, Lm7/t2;->o0()Z

    move-result v4

    if-eqz v4, :cond_7d

    :cond_7a
    invoke-static {v3, v1}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_9a

    :cond_7d
    :try_start_7d
    invoke-interface {v0}, Lt7/i;->a()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_86

    :catchall_81
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_86
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lm7/v0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_ad

    :goto_8e
    if-eqz v4, :cond_96

    :try_start_90
    invoke-virtual {v4}, Lm7/t2;->o0()Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_96
    invoke-static {v3, v1}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    :cond_99
    throw v2
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v1

    :try_start_9b
    invoke-interface {v0}, Lt7/i;->a()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_a1

    goto :goto_a6

    :catchall_a1
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_a6
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lm7/v0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_ad
    return-void
.end method
