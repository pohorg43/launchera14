.class public final Lp7/s;
.super Lq7/a;
.source ""

# interfaces
.implements Lp7/m;
.implements Lp7/d;
.implements Lq7/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq7/a<",
        "Lp7/u;",
        ">;",
        "Lp7/m<",
        "TT;>;",
        "Lq7/q<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,428:1\n18#2:429\n18#2:443\n28#3,4:430\n28#3,4:437\n20#4:434\n20#4:441\n13579#5,2:435\n329#6:442\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n315#1:429\n396#1:443\n324#1:430,4\n352#1:437,4\n324#1:434\n352#1:441\n348#1:435,2\n385#1:442\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lp7/s;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lp7/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lq7/a;-><init>()V

    iput-object p1, p0, Lp7/s;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ll4/f;ILo7/a;)Lp7/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "I",
            "Lo7/a;",
            ")",
            "Lp7/d<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_7

    const/4 v1, 0x2

    if-ge p2, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_c

    const/4 v0, -0x2

    if-ne p2, v0, :cond_11

    :cond_c
    sget-object v0, Lo7/a;->b:Lo7/a;

    if-ne p3, v0, :cond_11

    goto :goto_21

    :cond_11
    if-eqz p2, :cond_16

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1b

    :cond_16
    sget-object v0, Lo7/a;->a:Lo7/a;

    if-ne p3, v0, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance v0, Lq7/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lq7/j;-><init>(Lp7/d;Ll4/f;ILo7/a;)V

    move-object p0, v0

    :goto_21
    return-object p0
.end method

.method public c()Lq7/c;
    .registers 1

    new-instance p0, Lp7/u;

    invoke-direct {p0}, Lp7/u;-><init>()V

    return-object p0
.end method

.method public collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lp7/s$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lp7/s$a;

    iget v1, v0, Lp7/s$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/s$a;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lp7/s$a;

    invoke-direct {v0, p0, p2}, Lp7/s$a;-><init>(Lp7/s;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lp7/s$a;->f:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/s$a;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_76

    if-eq v2, v6, :cond_64

    if-eq v2, v5, :cond_4a

    if-ne v2, v4, :cond_42

    iget-object p0, v0, Lp7/s$a;->e:Ljava/lang/Object;

    iget-object p1, v0, Lp7/s$a;->d:Ljava/lang/Object;

    check-cast p1, Lm7/s1;

    iget-object v2, v0, Lp7/s$a;->c:Ljava/lang/Object;

    check-cast v2, Lp7/u;

    iget-object v7, v0, Lp7/s$a;->b:Ljava/lang/Object;

    check-cast v7, Lp7/e;

    iget-object v8, v0, Lp7/s$a;->a:Ljava/lang/Object;

    check-cast v8, Lp7/s;

    :try_start_3c
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_61

    move-object p2, p0

    move-object p0, v8

    goto :goto_a7

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    iget-object p0, v0, Lp7/s$a;->e:Ljava/lang/Object;

    iget-object p1, v0, Lp7/s$a;->d:Ljava/lang/Object;

    check-cast p1, Lm7/s1;

    iget-object v2, v0, Lp7/s$a;->c:Ljava/lang/Object;

    check-cast v2, Lp7/u;

    iget-object v7, v0, Lp7/s$a;->b:Ljava/lang/Object;

    check-cast v7, Lp7/e;

    iget-object v8, v0, Lp7/s$a;->a:Ljava/lang/Object;

    check-cast v8, Lp7/s;

    :try_start_5c
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_61

    goto/16 :goto_e0

    :catchall_61
    move-exception p0

    goto/16 :goto_134

    :cond_64
    iget-object p0, v0, Lp7/s$a;->c:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lp7/u;

    iget-object p0, v0, Lp7/s$a;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lp7/e;

    iget-object p0, v0, Lp7/s$a;->a:Ljava/lang/Object;

    check-cast p0, Lp7/s;

    :try_start_72
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_131

    goto :goto_96

    :cond_76
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq7/a;->b()Lq7/c;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lp7/u;

    :try_start_80
    instance-of p2, p1, Lp7/v;

    if-eqz p2, :cond_96

    move-object p2, p1

    check-cast p2, Lp7/v;

    iput-object p0, v0, Lp7/s$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lp7/s$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Lp7/s$a;->c:Ljava/lang/Object;

    iput v6, v0, Lp7/s$a;->h:I

    invoke-virtual {p2, v0}, Lp7/v;->a(Ll4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_96

    return-object v1

    :cond_96
    :goto_96
    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object p2

    sget v7, Lm7/s1;->L:I

    sget-object v7, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p2, v7}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p2

    check-cast p2, Lm7/s1;

    move-object v7, p1

    move-object p1, p2

    move-object p2, v3

    :cond_a7
    :goto_a7
    sget-object v8, Lp7/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz p1, :cond_bb

    invoke-interface {p1}, Lm7/s1;->isActive()Z

    move-result v9

    if-eqz v9, :cond_b6

    goto :goto_bb

    :cond_b6
    invoke-interface {p1}, Lm7/s1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1

    :cond_bb
    :goto_bb
    if-eqz p2, :cond_c3

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e2

    :cond_c3
    sget-object p2, Lq7/t;->a:Lr7/f0;

    if-ne v8, p2, :cond_c9

    move-object p2, v3

    goto :goto_ca

    :cond_c9
    move-object p2, v8

    :goto_ca
    iput-object p0, v0, Lp7/s$a;->a:Ljava/lang/Object;

    iput-object v7, v0, Lp7/s$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Lp7/s$a;->c:Ljava/lang/Object;

    iput-object p1, v0, Lp7/s$a;->d:Ljava/lang/Object;

    iput-object v8, v0, Lp7/s$a;->e:Ljava/lang/Object;

    iput v5, v0, Lp7/s$a;->h:I

    invoke-interface {v7, p2, v0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_dd

    return-object v1

    :cond_dd
    move-object v12, v8

    move-object v8, p0

    move-object p0, v12

    :goto_e0
    move-object p2, p0

    move-object p0, v8

    :cond_e2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lp7/u;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v9, Lp7/t;->a:Lr7/f0;

    invoke-virtual {v8, v2, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v11, Lp7/t;->b:Lr7/f0;

    if-ne v10, v11, :cond_f6

    move v10, v6

    goto :goto_f7

    :cond_f6
    const/4 v10, 0x0

    :goto_f7
    if-nez v10, :cond_a7

    iput-object p0, v0, Lp7/s$a;->a:Ljava/lang/Object;

    iput-object v7, v0, Lp7/s$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Lp7/s$a;->c:Ljava/lang/Object;

    iput-object p1, v0, Lp7/s$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lp7/s$a;->e:Ljava/lang/Object;

    iput v4, v0, Lp7/s$a;->h:I

    new-instance v10, Lm7/n;

    invoke-static {v0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v10}, Lm7/n;->w()V

    invoke-virtual {v8, v2, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11c

    sget-object v8, Lh4/z;->a:Lh4/z;

    invoke-virtual {v10, v8}, Lm7/n;->resumeWith(Ljava/lang/Object;)V

    :cond_11c
    invoke-virtual {v10}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lm4/a;->a:Lm4/a;

    if-ne v8, v9, :cond_129

    const-string v10, "frame"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_129
    if-ne v8, v9, :cond_12c

    goto :goto_12e

    :cond_12c
    sget-object v8, Lh4/z;->a:Lh4/z;
    :try_end_12e
    .catchall {:try_start_80 .. :try_end_12e} :catchall_131

    :goto_12e
    if-ne v8, v1, :cond_a7

    return-object v1

    :catchall_131
    move-exception p1

    move-object v8, p0

    move-object p0, p1

    :goto_134
    invoke-virtual {v8, v2}, Lq7/a;->e(Lq7/c;)V

    throw p0
.end method

.method public d(I)[Lq7/c;
    .registers 2

    new-array p0, p1, [Lp7/u;

    return-object p0
.end method

.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lp7/s;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lq7/t;->a:Lr7/f0;

    sget-object v1, Lp7/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x0

    :cond_b
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Lq7/t;->a:Lr7/f0;

    :cond_4
    monitor-enter p0

    :try_start_5
    sget-object v0, Lp7/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_79

    if-eqz v1, :cond_15

    monitor-exit p0

    goto/16 :goto_78

    :cond_15
    :try_start_15
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lp7/s;->d:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_73

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp7/s;->d:I

    iget-object v0, p0, Lq7/a;->a:[Lq7/c;
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_79

    monitor-exit p0

    :goto_25
    check-cast v0, [Lp7/u;

    if-eqz v0, :cond_5e

    array-length v1, v0

    move v3, v2

    :goto_2b
    if-ge v3, v1, :cond_5e

    aget-object v4, v0, v3

    if-eqz v4, :cond_5b

    sget-object v5, Lp7/u;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_33
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3a

    goto :goto_5b

    :cond_3a
    sget-object v7, Lp7/t;->b:Lr7/f0;

    if-ne v6, v7, :cond_3f

    goto :goto_5b

    :cond_3f
    sget-object v8, Lp7/t;->a:Lr7/f0;

    if-ne v6, v8, :cond_4c

    sget-object v8, Lp7/u;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_5b

    :cond_4c
    sget-object v7, Lp7/u;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v4, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    check-cast v6, Lm7/n;

    sget-object v4, Lh4/z;->a:Lh4/z;

    invoke-virtual {v6, v4}, Lm7/n;->resumeWith(Ljava/lang/Object;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_5e
    monitor-enter p0

    :try_start_5f
    iget v0, p0, Lp7/s;->d:I

    if-ne v0, p1, :cond_69

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp7/s;->d:I
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_70

    monitor-exit p0

    goto :goto_78

    :cond_69
    :try_start_69
    iget-object p1, p0, Lq7/a;->a:[Lq7/c;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_70

    monitor-exit p0

    move v9, v0

    move-object v0, p1

    move p1, v9

    goto :goto_25

    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_73
    add-int/lit8 p1, p1, 0x2

    :try_start_75
    iput p1, p0, Lp7/s;->d:I
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_79

    monitor-exit p0

    :goto_78
    return-void

    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method
