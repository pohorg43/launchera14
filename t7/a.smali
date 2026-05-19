.class public final Lt7/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt7/a$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1033:1\n285#1:1036\n283#1:1037\n283#1:1038\n285#1:1039\n280#1:1045\n281#1,5:1046\n291#1:1052\n283#1:1053\n284#1:1054\n283#1:1060\n284#1:1061\n280#1:1062\n288#1:1063\n283#1:1064\n283#1:1067\n284#1:1068\n285#1:1069\n90#2:1034\n90#2:1051\n1#3:1035\n28#4,4:1040\n28#4,4:1055\n20#5:1044\n20#5:1059\n87#6:1065\n610#7:1066\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n281#1:1036\n288#1:1037\n289#1:1038\n298#1:1039\n347#1:1045\n375#1:1046,5\n398#1:1052\n445#1:1053\n446#1:1054\n482#1:1060\n483#1:1061\n489#1:1062\n498#1:1063\n498#1:1064\n576#1:1067\n577#1:1068\n578#1:1069\n119#1:1034\n395#1:1051\n347#1:1040,4\n478#1:1055,4\n347#1:1044\n478#1:1059\n515#1:1065\n522#1:1066\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private volatile _isTerminated:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final a:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private volatile controlState:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:Lt7/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final f:Lt7/d;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final g:Lr7/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a0<",
            "Lt7/a$a;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private volatile parkedWorkersStack:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lt7/a;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lt7/a;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lt7/a;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lt7/a;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    new-instance v0, Lr7/f0;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt7/a;->k:Lr7/f0;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt7/a;->a:I

    iput p2, p0, Lt7/a;->b:I

    iput-wide p3, p0, Lt7/a;->c:J

    iput-object p5, p0, Lt7/a;->d:Ljava/lang/String;

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-lt p1, p5, :cond_11

    move v1, p5

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    if-eqz v1, :cond_93

    if-lt p2, p1, :cond_18

    move v1, p5

    goto :goto_19

    :cond_18
    move v1, v0

    :goto_19
    const-string v2, "Max pool size "

    if-eqz v1, :cond_83

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_24

    move v1, p5

    goto :goto_25

    :cond_24
    move v1, v0

    :goto_25
    if-eqz v1, :cond_73

    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move p5, v0

    :goto_2f
    if-eqz p5, :cond_53

    new-instance p2, Lt7/d;

    invoke-direct {p2}, Lt7/d;-><init>()V

    iput-object p2, p0, Lt7/a;->e:Lt7/d;

    new-instance p2, Lt7/d;

    invoke-direct {p2}, Lt7/d;-><init>()V

    iput-object p2, p0, Lt7/a;->f:Lt7/d;

    new-instance p2, Lr7/a0;

    add-int/lit8 p3, p1, 0x1

    mul-int/lit8 p3, p3, 0x2

    invoke-direct {p2, p3}, Lr7/a0;-><init>(I)V

    iput-object p2, p0, Lt7/a;->g:Lr7/a0;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lt7/a;->controlState:J

    iput v0, p0, Lt7/a;->_isTerminated:I

    return-void

    :cond_53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Idle worker keep alive time "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " must be positive"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    const-string p0, " should not exceed maximal supported number of threads 2097150"

    invoke-static {v2, p2, p0}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    const-string p0, " should be greater than or equals to core pool size "

    invoke-static {v2, p2, p0, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    const-string p0, "Core pool size "

    const-string p2, " should be at least 1"

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic d(Lt7/a;Ljava/lang/Runnable;Lt7/i;ZI)V
    .registers 5

    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_7

    sget-object p2, Lt7/l;->g:Lt7/i;

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    const/4 p3, 0x0

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lt7/a;->c(Ljava/lang/Runnable;Lt7/i;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 12

    iget-object v0, p0, Lt7/a;->g:Lr7/a0;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lt7/a;->isTerminated()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_7e

    if-eqz v1, :cond_c

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :cond_c
    :try_start_c
    sget-object v1, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long v6, v2, v4

    long-to-int v6, v6

    const-wide v7, 0x3ffffe00000L

    and-long/2addr v2, v7

    const/16 v7, 0x15

    shr-long/2addr v2, v7

    long-to-int v2, v2

    sub-int v2, v6, v2

    const/4 v3, 0x0

    if-gez v2, :cond_28

    move v2, v3

    :cond_28
    iget v7, p0, Lt7/a;->a:I
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_7e

    if-lt v2, v7, :cond_2e

    monitor-exit v0

    return v3

    :cond_2e
    :try_start_2e
    iget v7, p0, Lt7/a;->b:I
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_7e

    if-lt v6, v7, :cond_34

    monitor-exit v0

    return v3

    :cond_34
    :try_start_34
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v6, v4

    long-to-int v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-lez v6, :cond_48

    iget-object v8, p0, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v8, v6}, Lr7/a0;->b(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_48

    move v8, v7

    goto :goto_49

    :cond_48
    move v8, v3

    :goto_49
    if-eqz v8, :cond_72

    new-instance v8, Lt7/a$a;

    invoke-direct {v8, p0, v6}, Lt7/a$a;-><init>(Lt7/a;I)V

    iget-object v9, p0, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v9, v6, v8}, Lr7/a0;->c(ILjava/lang/Object;)V

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v9
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_7e

    and-long/2addr v4, v9

    long-to-int p0, v4

    if-ne v6, p0, :cond_5e

    move v3, v7

    :cond_5e
    if-eqz v3, :cond_66

    add-int/2addr v2, v7

    monitor-exit v0

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return v2

    :cond_66
    :try_start_66
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    const-string p0, "Failed requirement."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Lt7/a$a;
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lt7/a$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lt7/a$a;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_18

    iget-object v1, v0, Lt7/a$a;->h:Lt7/a;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    move-object v2, v0

    :cond_18
    return-object v2
.end method

.method public final c(Ljava/lang/Runnable;Lt7/i;Z)V
    .registers 11

    sget-object v0, Lt7/l;->f:Lt7/g;

    check-cast v0, Lt7/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    instance-of v2, p1, Lt7/h;

    if-eqz v2, :cond_16

    check-cast p1, Lt7/h;

    iput-wide v0, p1, Lt7/h;->a:J

    iput-object p2, p1, Lt7/h;->b:Lt7/i;

    goto :goto_1c

    :cond_16
    new-instance v2, Lt7/k;

    invoke-direct {v2, p1, v0, v1, p2}, Lt7/k;-><init>(Ljava/lang/Runnable;JLt7/i;)V

    move-object p1, v2

    :goto_1c
    iget-object p2, p1, Lt7/h;->b:Lt7/i;

    invoke-interface {p2}, Lt7/i;->b()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_28

    move p2, v1

    goto :goto_29

    :cond_28
    move p2, v0

    :goto_29
    if-eqz p2, :cond_35

    sget-object v2, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v3, 0x200000

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v2

    goto :goto_37

    :cond_35
    const-wide/16 v2, 0x0

    :goto_37
    invoke-virtual {p0}, Lt7/a;->b()Lt7/a$a;

    move-result-object v4

    if-nez v4, :cond_3e

    goto :goto_70

    :cond_3e
    iget v5, v4, Lt7/a$a;->c:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_44

    goto :goto_70

    :cond_44
    iget-object v5, p1, Lt7/h;->b:Lt7/i;

    invoke-interface {v5}, Lt7/i;->b()I

    move-result v5

    if-nez v5, :cond_52

    iget v5, v4, Lt7/a$a;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_52

    goto :goto_70

    :cond_52
    iput-boolean v1, v4, Lt7/a$a;->g:Z

    iget-object v5, v4, Lt7/a$a;->a:Lt7/n;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_60

    invoke-virtual {v5, p1}, Lt7/n;->a(Lt7/h;)Lt7/h;

    move-result-object p1

    goto :goto_70

    :cond_60
    sget-object v6, Lt7/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt7/h;

    if-nez p1, :cond_6c

    const/4 p1, 0x0

    goto :goto_70

    :cond_6c
    invoke-virtual {v5, p1}, Lt7/n;->a(Lt7/h;)Lt7/h;

    move-result-object p1

    :goto_70
    if-eqz p1, :cond_a2

    iget-object v5, p1, Lt7/h;->b:Lt7/i;

    invoke-interface {v5}, Lt7/i;->b()I

    move-result v5

    if-ne v5, v1, :cond_7c

    move v5, v1

    goto :goto_7d

    :cond_7c
    move v5, v0

    :goto_7d
    if-eqz v5, :cond_86

    iget-object v5, p0, Lt7/a;->f:Lt7/d;

    invoke-virtual {v5, p1}, Lr7/r;->a(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_8c

    :cond_86
    iget-object v5, p0, Lt7/a;->e:Lt7/d;

    invoke-virtual {v5, p1}, Lr7/r;->a(Ljava/lang/Object;)Z

    move-result p1

    :goto_8c
    if-eqz p1, :cond_8f

    goto :goto_a2

    :cond_8f
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lt7/a;->d:Ljava/lang/String;

    const-string p3, " was terminated"

    invoke-static {p2, p0, p3}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a2
    :goto_a2
    if-eqz p3, :cond_a7

    if-eqz v4, :cond_a7

    move v0, v1

    :cond_a7
    if-eqz p2, :cond_be

    if-eqz v0, :cond_ac

    goto :goto_c4

    :cond_ac
    invoke-virtual {p0}, Lt7/a;->k()Z

    move-result p1

    if-eqz p1, :cond_b3

    goto :goto_c4

    :cond_b3
    invoke-virtual {p0, v2, v3}, Lt7/a;->j(J)Z

    move-result p1

    if-eqz p1, :cond_ba

    goto :goto_c4

    :cond_ba
    invoke-virtual {p0}, Lt7/a;->k()Z

    goto :goto_c4

    :cond_be
    if-eqz v0, :cond_c1

    return-void

    :cond_c1
    invoke-virtual {p0}, Lt7/a;->i()V

    :goto_c4
    return-void
.end method

.method public close()V
    .registers 10

    sget-object v0, Lt7/a;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_9e

    :cond_c
    invoke-virtual {p0}, Lt7/a;->b()Lt7/a$a;

    move-result-object v0

    iget-object v3, p0, Lt7/a;->g:Lr7/a0;

    monitor-enter v3

    :try_start_13
    sget-object v4, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_a3

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    monitor-exit v3

    if-gt v2, v4, :cond_66

    move v3, v2

    :goto_22
    iget-object v5, p0, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v5, v3}, Lr7/a0;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lt7/a$a;

    if-eq v5, v0, :cond_61

    :goto_2f
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V

    goto :goto_2f

    :cond_3e
    iget-object v5, v5, Lt7/a$a;->a:Lt7/n;

    iget-object v6, p0, Lt7/a;->f:Lt7/d;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lt7/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt7/h;

    if-eqz v7, :cond_53

    invoke-virtual {v6, v7}, Lr7/r;->a(Ljava/lang/Object;)Z

    :cond_53
    invoke-virtual {v5}, Lt7/n;->c()Lt7/h;

    move-result-object v7

    if-nez v7, :cond_5b

    move v7, v1

    goto :goto_5f

    :cond_5b
    invoke-virtual {v6, v7}, Lr7/r;->a(Ljava/lang/Object;)Z

    move v7, v2

    :goto_5f
    if-nez v7, :cond_53

    :cond_61
    if-eq v3, v4, :cond_66

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_66
    iget-object v1, p0, Lt7/a;->f:Lt7/d;

    invoke-virtual {v1}, Lr7/r;->b()V

    iget-object v1, p0, Lt7/a;->e:Lt7/d;

    invoke-virtual {v1}, Lr7/r;->b()V

    :goto_70
    if-eqz v0, :cond_78

    invoke-virtual {v0, v2}, Lt7/a$a;->a(Z)Lt7/h;

    move-result-object v1

    if-nez v1, :cond_9f

    :cond_78
    iget-object v1, p0, Lt7/a;->e:Lt7/d;

    invoke-virtual {v1}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt7/h;

    if-nez v1, :cond_9f

    iget-object v1, p0, Lt7/a;->f:Lt7/d;

    invoke-virtual {v1}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt7/h;

    if-nez v1, :cond_9f

    if-eqz v0, :cond_92

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lt7/a$a;->h(I)Z

    :cond_92
    sget-object v0, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    sget-object v0, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    :goto_9e
    return-void

    :cond_9f
    invoke-virtual {p0, v1}, Lt7/a;->g(Lt7/h;)V

    goto :goto_70

    :catchall_a3
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public final e(Lt7/a$a;)I
    .registers 2

    invoke-virtual {p1}, Lt7/a$a;->c()Ljava/lang/Object;

    move-result-object p0

    :goto_4
    sget-object p1, Lt7/a;->k:Lr7/f0;

    if-ne p0, p1, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    if-nez p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    check-cast p0, Lt7/a$a;

    invoke-virtual {p0}, Lt7/a$a;->b()I

    move-result p1

    if-eqz p1, :cond_17

    return p1

    :cond_17
    invoke-virtual {p0}, Lt7/a$a;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_4
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Lt7/a;->d(Lt7/a;Ljava/lang/Runnable;Lt7/i;ZI)V

    return-void
.end method

.method public final f(Lt7/a$a;II)V
    .registers 13

    sget-object v0, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v1, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const-wide/32 v5, 0x200000

    add-long/2addr v5, v3

    const-wide/32 v7, -0x200000

    and-long/2addr v5, v7

    if-ne v1, p2, :cond_1d

    if-nez p3, :cond_1c

    invoke-virtual {p0, p1}, Lt7/a;->e(Lt7/a$a;)I

    move-result v1

    goto :goto_1d

    :cond_1c
    move v1, p3

    :cond_1d
    :goto_1d
    if-ltz v1, :cond_2

    sget-object v2, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v1

    or-long/2addr v5, v7

    move-object v1, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void
.end method

.method public final g(Lt7/h;)V
    .registers 3

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_10

    :catchall_4
    move-exception p0

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    :goto_10
    return-void

    :catchall_11
    move-exception p0

    throw p0
.end method

.method public final i()V
    .registers 3

    invoke-virtual {p0}, Lt7/a;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lt7/a;->j(J)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    invoke-virtual {p0}, Lt7/a;->k()Z

    return-void
.end method

.method public final isTerminated()Z
    .registers 2

    sget-object v0, Lt7/a;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final j(J)Z
    .registers 6

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_14

    move v0, p1

    :cond_14
    iget p2, p0, Lt7/a;->a:I

    if-ge v0, p2, :cond_29

    invoke-virtual {p0}, Lt7/a;->a()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    iget v1, p0, Lt7/a;->a:I

    if-le v1, v0, :cond_26

    invoke-virtual {p0}, Lt7/a;->a()I

    :cond_26
    if-lez p2, :cond_29

    return v0

    :cond_29
    return p1
.end method

.method public final k()Z
    .registers 11

    :cond_0
    sget-object v0, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v1, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v2, v1}, Lr7/a0;->b(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lt7/a$a;

    if-nez v7, :cond_18

    const/4 v7, 0x0

    goto :goto_38

    :cond_18
    const-wide/32 v1, 0x200000

    add-long/2addr v1, v3

    const-wide/32 v5, -0x200000

    and-long/2addr v1, v5

    invoke-virtual {p0, v7}, Lt7/a;->e(Lt7/a$a;)I

    move-result v5

    if-ltz v5, :cond_2

    sget-object v6, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v8, v5

    or-long/2addr v8, v1

    move-object v1, v6

    move-object v2, p0

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lt7/a;->k:Lr7/f0;

    invoke-virtual {v7, v0}, Lt7/a$a;->g(Ljava/lang/Object;)V

    :goto_38
    const/4 v0, 0x0

    if-nez v7, :cond_3c

    return v0

    :cond_3c
    sget-object v1, Lt7/a$a;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    invoke-virtual {v1, v7, v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v1}, Lr7/a0;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v8, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_12
    if-ge v8, v1, :cond_97

    iget-object v9, p0, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v9, v8}, Lr7/a0;->b(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt7/a$a;

    if-nez v9, :cond_20

    goto/16 :goto_93

    :cond_20
    iget-object v10, v9, Lt7/a$a;->a:Lt7/n;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lt7/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10}, Lt7/n;->b()I

    move-result v10

    if-eqz v11, :cond_33

    add-int/lit8 v10, v10, 0x1

    :cond_33
    iget v9, v9, Lt7/a$a;->c:I

    invoke-static {v9}, Lk/b;->g(I)I

    move-result v9

    if-eqz v9, :cond_7d

    if-eq v9, v2, :cond_66

    const/4 v11, 0x2

    if-eq v9, v11, :cond_63

    const/4 v11, 0x3

    if-eq v9, v11, :cond_4a

    const/4 v10, 0x4

    if-eq v9, v10, :cond_47

    goto :goto_93

    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    :cond_4a
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_93

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    :cond_66
    add-int/lit8 v4, v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x62

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_7d
    add-int/lit8 v3, v3, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x63

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_93
    :goto_93
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    :cond_97
    sget-object v1, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lt7/a;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm7/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "[Pool Size {core = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lt7/a;->a:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", max = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lt7/a;->b:I

    const-string v10, "}, Worker States {CPU = "

    const-string v11, ", blocking = "

    invoke-static {v8, v9, v10, v3, v11}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, ", parked = "

    const-string v9, ", dormant = "

    invoke-static {v8, v4, v3, v5, v9}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, ", terminated = "

    const-string v4, "}, running workers queues = "

    invoke-static {v8, v6, v3, v7, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt7/a;->e:Lt7/d;

    invoke-virtual {v0}, Lr7/r;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt7/a;->f:Lt7/d;

    invoke-virtual {v0}, Lr7/r;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v1

    long-to-int v0, v3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, 0x3ffffe00000L

    and-long/2addr v3, v1

    const/16 v0, 0x15

    shr-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lt7/a;->a:I

    const-wide v3, 0x7ffffc0000000000L

    and-long v0, v1, v3

    const/16 v2, 0x2a

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p0, v0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
