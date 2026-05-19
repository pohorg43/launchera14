.class public final Lm7/t2;
.super Lr7/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr7/b0<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,311:1\n1#2:312\n107#3,13:313\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n269#1:313,13\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lh4/j<",
            "Ll4/f;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Ll4/f;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "Ll4/d<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Lm7/u2;->a:Lm7/u2;

    invoke-interface {p1, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-interface {p1, v0}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    invoke-direct {p0, v0, p2}, Lr7/b0;-><init>(Ll4/f;Ll4/d;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lm7/t2;->e:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object p2

    sget v1, Ll4/e;->J:I

    sget-object v1, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {p2, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p2

    instance-of p2, p2, Lm7/f0;

    if-nez p2, :cond_3b

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm7/t2;->threadLocalIsSet:Z

    new-instance p0, Lh4/j;

    invoke-direct {p0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public k0(Ljava/lang/Object;)V
    .registers 7

    iget-boolean v0, p0, Lm7/t2;->threadLocalIsSet:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lm7/t2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    if-eqz v0, :cond_17

    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Ll4/f;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    :cond_17
    iget-object v0, p0, Lm7/t2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1c
    iget-object v0, p0, Lr7/b0;->d:Ll4/d;

    invoke-static {p1, v0}, Lm7/b0;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lr7/b0;->d:Ll4/d;

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr7/h0;->a:Lr7/f0;

    if-eq v3, v4, :cond_35

    invoke-static {v0, v1, v3}, Lm7/d0;->d(Ll4/d;Ll4/f;Ljava/lang/Object;)Lm7/t2;

    move-result-object v2

    :cond_35
    :try_start_35
    iget-object p0, p0, Lr7/b0;->d:Ll4/d;

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_46

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Lm7/t2;->o0()Z

    move-result p0

    if-eqz p0, :cond_45

    :cond_42
    invoke-static {v1, v3}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    :cond_45
    return-void

    :catchall_46
    move-exception p0

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lm7/t2;->o0()Z

    move-result p1

    if-eqz p1, :cond_52

    :cond_4f
    invoke-static {v1, v3}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    :cond_52
    throw p0
.end method

.method public final o0()Z
    .registers 3

    iget-boolean v0, p0, Lm7/t2;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lm7/t2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object p0, p0, Lm7/t2;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final p0(Ll4/f;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm7/t2;->threadLocalIsSet:Z

    iget-object p0, p0, Lm7/t2;->e:Ljava/lang/ThreadLocal;

    new-instance v0, Lh4/j;

    invoke-direct {v0, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
