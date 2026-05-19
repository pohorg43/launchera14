.class public final Lr7/m;
.super Lm7/f0;
.source ""

# interfaces
.implements Lm7/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/m$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lm7/f0;

.field public final b:I

.field public final synthetic c:Lm7/r0;

.field public final d:Lr7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/r<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;

.field private volatile runningWorkers:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lr7/m;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lr7/m;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lm7/f0;I)V
    .registers 3

    invoke-direct {p0}, Lm7/f0;-><init>()V

    iput-object p1, p0, Lr7/m;->a:Lm7/f0;

    iput p2, p0, Lr7/m;->b:I

    instance-of p2, p1, Lm7/r0;

    if-eqz p2, :cond_e

    check-cast p1, Lm7/r0;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_13

    sget-object p1, Lm7/o0;->b:Lm7/r0;

    :cond_13
    iput-object p1, p0, Lr7/m;->c:Lm7/r0;

    new-instance p1, Lr7/r;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lr7/r;-><init>(Z)V

    iput-object p1, p0, Lr7/m;->d:Lr7/r;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/m;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispatch(Ll4/f;Ljava/lang/Runnable;)V
    .registers 3

    iget-object p1, p0, Lr7/m;->d:Lr7/r;

    invoke-virtual {p1, p2}, Lr7/r;->a(Ljava/lang/Object;)Z

    sget-object p1, Lr7/m;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lr7/m;->b:I

    if-ge p1, p2, :cond_26

    invoke-virtual {p0}, Lr7/m;->s()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lr7/m;->q()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_26

    :cond_1c
    new-instance p2, Lr7/m$a;

    invoke-direct {p2, p0, p1}, Lr7/m$a;-><init>(Lr7/m;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lr7/m;->a:Lm7/f0;

    invoke-virtual {p1, p0, p2}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public dispatchYield(Ll4/f;Ljava/lang/Runnable;)V
    .registers 3

    iget-object p1, p0, Lr7/m;->d:Lr7/r;

    invoke-virtual {p1, p2}, Lr7/r;->a(Ljava/lang/Object;)Z

    sget-object p1, Lr7/m;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lr7/m;->b:I

    if-ge p1, p2, :cond_26

    invoke-virtual {p0}, Lr7/m;->s()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lr7/m;->q()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_26

    :cond_1c
    new-instance p2, Lr7/m$a;

    invoke-direct {p2, p0, p1}, Lr7/m$a;-><init>(Lr7/m;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lr7/m;->a:Lm7/f0;

    invoke-virtual {p1, p0, p2}, Lm7/f0;->dispatchYield(Ll4/f;Ljava/lang/Runnable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;
    .registers 5

    iget-object p0, p0, Lr7/m;->c:Lm7/r0;

    invoke-interface {p0, p1, p2, p3, p4}, Lm7/r0;->l(JLjava/lang/Runnable;Ll4/f;)Lm7/a1;

    move-result-object p0

    return-object p0
.end method

.method public limitedParallelism(I)Lm7/f0;
    .registers 3

    invoke-static {p1}, Lr7/n;->a(I)V

    iget v0, p0, Lr7/m;->b:I

    if-lt p1, v0, :cond_8

    return-object p0

    :cond_8
    invoke-super {p0, p1}, Lm7/f0;->limitedParallelism(I)Lm7/f0;

    move-result-object p0

    return-object p0
.end method

.method public m(JLm7/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lr7/m;->c:Lm7/r0;

    invoke-interface {p0, p1, p2, p3}, Lm7/r0;->m(JLm7/l;)V

    return-void
.end method

.method public final q()Ljava/lang/Runnable;
    .registers 4

    :goto_0
    iget-object v0, p0, Lr7/m;->d:Lr7/r;

    invoke-virtual {v0}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_25

    iget-object v0, p0, Lr7/m;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lr7/m;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lr7/m;->d:Lr7/r;

    invoke-virtual {v2}, Lr7/r;->c()I

    move-result v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    if-nez v2, :cond_1d

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1d
    :try_start_1d
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    monitor-exit v0

    goto :goto_0

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_25
    return-object v0
.end method

.method public final s()Z
    .registers 5

    iget-object v0, p0, Lr7/m;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lr7/m;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lr7/m;->b:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_16

    if-lt v2, v3, :cond_10

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_10
    :try_start_10
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_16

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method
