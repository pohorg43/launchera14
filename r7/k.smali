.class public final Lr7/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,315:1\n295#1,5:323\n300#1,12:329\n312#1:385\n299#1:387\n300#1,12:389\n312#1:418\n215#2,7:316\n222#2:344\n241#2,8:345\n223#2:353\n253#2:354\n254#2,2:365\n256#2:369\n225#2:370\n227#2:386\n1#3:328\n1#3:388\n1#3:419\n198#4,3:341\n201#4,14:371\n198#4,17:401\n198#4,17:420\n107#5,10:355\n118#5,2:367\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n280#1:323,5\n280#1:329,12\n280#1:385\n285#1:387\n285#1:389,12\n285#1:418\n280#1:316,7\n280#1:344\n280#1:345,8\n280#1:353\n280#1:354\n280#1:365,2\n280#1:369\n280#1:370\n280#1:386\n280#1:328\n285#1:388\n280#1:341,3\n280#1:371,14\n285#1:401,17\n311#1:420,17\n280#1:355,10\n280#1:367,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lr7/f0;

.field public static final b:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr7/k;->a:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr7/k;->b:Lr7/f0;

    return-void
.end method

.method public static final a(Ll4/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll4/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lr7/j;

    if-eqz v0, :cond_c1

    check-cast p0, Lr7/j;

    invoke-static {p1, p2}, Lm7/b0;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lr7/j;->d:Lm7/f0;

    invoke-virtual {p0}, Lr7/j;->getContext()Ll4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm7/f0;->isDispatchNeeded(Ll4/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iput-object p2, p0, Lr7/j;->f:Ljava/lang/Object;

    iput v1, p0, Lm7/v0;->c:I

    iget-object p1, p0, Lr7/j;->d:Lm7/f0;

    invoke-virtual {p0}, Lr7/j;->getContext()Ll4/f;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    goto/16 :goto_c4

    :cond_26
    sget-object v0, Lm7/m2;->a:Lm7/m2;

    invoke-static {}, Lm7/m2;->a()Lm7/e1;

    move-result-object v0

    invoke-virtual {v0}, Lm7/e1;->x()Z

    move-result v2

    if-eqz v2, :cond_46

    iput-object p2, p0, Lr7/j;->f:Ljava/lang/Object;

    iput v1, p0, Lm7/v0;->c:I

    iget-object p1, v0, Lm7/e1;->c:Li4/h;

    if-nez p1, :cond_41

    new-instance p1, Li4/h;

    invoke-direct {p1}, Li4/h;-><init>()V

    iput-object p1, v0, Lm7/e1;->c:Li4/h;

    :cond_41
    invoke-virtual {p1, p0}, Li4/h;->h(Ljava/lang/Object;)V

    goto/16 :goto_c4

    :cond_46
    invoke-virtual {v0, v1}, Lm7/e1;->v(Z)V

    const/4 v2, 0x0

    :try_start_4a
    invoke-virtual {p0}, Lr7/j;->getContext()Ll4/f;

    move-result-object v3

    sget-object v4, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {v3, v4}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v3

    check-cast v3, Lm7/s1;

    if-eqz v3, :cond_76

    invoke-interface {v3}, Lm7/s1;->isActive()Z

    move-result v4

    if-nez v4, :cond_76

    invoke-interface {v3}, Lm7/s1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    instance-of v4, p2, Lm7/y;

    if-eqz v4, :cond_6d

    check-cast p2, Lm7/y;

    iget-object p2, p2, Lm7/y;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    move p2, v1

    goto :goto_77

    :cond_76
    const/4 p2, 0x0

    :goto_77
    if-nez p2, :cond_ad

    iget-object p2, p0, Lr7/j;->e:Ll4/d;

    iget-object v3, p0, Lr7/j;->g:Ljava/lang/Object;

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object v4

    invoke-static {v4, v3}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lr7/h0;->a:Lr7/f0;

    if-eq v3, v5, :cond_8e

    invoke-static {p2, v4, v3}, Lm7/d0;->d(Ll4/d;Ll4/f;Ljava/lang/Object;)Lm7/t2;

    move-result-object p2
    :try_end_8d
    .catchall {:try_start_4a .. :try_end_8d} :catchall_b4

    goto :goto_8f

    :cond_8e
    move-object p2, v2

    :goto_8f
    :try_start_8f
    iget-object v5, p0, Lr7/j;->e:Ll4/d;

    invoke-interface {v5, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_a0

    if-eqz p2, :cond_9c

    :try_start_96
    invoke-virtual {p2}, Lm7/t2;->o0()Z

    move-result p1

    if-eqz p1, :cond_ad

    :cond_9c
    invoke-static {v4, v3}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    goto :goto_ad

    :catchall_a0
    move-exception p1

    if-eqz p2, :cond_a9

    invoke-virtual {p2}, Lm7/t2;->o0()Z

    move-result p2

    if-eqz p2, :cond_ac

    :cond_a9
    invoke-static {v4, v3}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    :cond_ac
    throw p1

    :cond_ad
    :goto_ad
    invoke-virtual {v0}, Lm7/e1;->A()Z

    move-result p1
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_b4

    if-nez p1, :cond_ad

    goto :goto_b8

    :catchall_b4
    move-exception p1

    :try_start_b5
    invoke-virtual {p0, p1, v2}, Lm7/v0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_bc

    :goto_b8
    invoke-virtual {v0, v1}, Lm7/e1;->q(Z)V

    goto :goto_c4

    :catchall_bc
    move-exception p0

    invoke-virtual {v0, v1}, Lm7/e1;->q(Z)V

    throw p0

    :cond_c1
    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :goto_c4
    return-void
.end method

.method public static synthetic b(Ll4/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .registers 4

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lr7/k;->a(Ll4/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
