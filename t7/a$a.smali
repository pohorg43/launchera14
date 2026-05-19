.class public final Lt7/a$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1033:1\n298#2:1034\n285#2:1035\n299#2,4:1036\n304#2:1040\n294#2,2:1041\n294#2,2:1045\n280#2:1052\n289#2:1053\n283#2:1054\n280#2:1055\n1#3:1043\n87#4:1044\n28#5,4:1047\n20#6:1051\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n665#1:1034\n665#1:1035\n665#1:1036,4\n679#1:1040\n753#1:1041,2\n807#1:1045,2\n855#1:1052\n881#1:1053\n881#1:1054\n963#1:1055\n790#1:1044\n851#1:1047,4\n851#1:1051\n*E\n"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lt7/n;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lt7/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public d:J

.field public e:J

.field public f:I

.field public g:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final synthetic h:Lt7/a;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private volatile workerCtl:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lt7/a$a;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lt7/a$a;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lt7/a;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lt7/a$a;->h:Lt7/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lt7/n;

    invoke-direct {p1}, Lt7/n;-><init>()V

    iput-object p1, p0, Lt7/a$a;->a:Lt7/n;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, p0, Lt7/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x4

    iput p1, p0, Lt7/a$a;->c:I

    sget-object p1, Lt7/a;->k:Lr7/f0;

    iput-object p1, p0, Lt7/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lw4/c;->a:Lw4/c$a;

    invoke-virtual {p1}, Lw4/c$a;->b()I

    move-result p1

    iput p1, p0, Lt7/a$a;->f:I

    invoke-virtual {p0, p2}, Lt7/a$a;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lt7/h;
    .registers 12

    iget v0, p0, Lt7/a$a;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_32

    :cond_7
    iget-object v0, p0, Lt7/a$a;->h:Lt7/a;

    sget-object v9, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_b
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v3, v3

    if-nez v3, :cond_1d

    move v0, v2

    goto :goto_2e

    :cond_1d
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    sget-object v3, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    :goto_2e
    if-eqz v0, :cond_34

    iput v1, p0, Lt7/a$a;->c:I

    :goto_32
    move v0, v1

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    const/4 v3, 0x0

    if-eqz v0, :cond_7f

    if-eqz p1, :cond_72

    iget-object p1, p0, Lt7/a$a;->h:Lt7/a;

    iget p1, p1, Lt7/a;->a:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lt7/a$a;->d(I)I

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    :goto_48
    if-eqz v1, :cond_51

    invoke-virtual {p0}, Lt7/a$a;->e()Lt7/h;

    move-result-object p1

    if-eqz p1, :cond_51

    goto :goto_7e

    :cond_51
    iget-object p1, p0, Lt7/a$a;->a:Lt7/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt7/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/h;

    if-nez v0, :cond_65

    invoke-virtual {p1}, Lt7/n;->c()Lt7/h;

    move-result-object p1

    goto :goto_66

    :cond_65
    move-object p1, v0

    :goto_66
    if-eqz p1, :cond_69

    goto :goto_7e

    :cond_69
    if-nez v1, :cond_79

    invoke-virtual {p0}, Lt7/a$a;->e()Lt7/h;

    move-result-object p1

    if-eqz p1, :cond_79

    goto :goto_7e

    :cond_72
    invoke-virtual {p0}, Lt7/a$a;->e()Lt7/h;

    move-result-object p1

    if-eqz p1, :cond_79

    goto :goto_7e

    :cond_79
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lt7/a$a;->i(I)Lt7/h;

    move-result-object p1

    :goto_7e
    return-object p1

    :cond_7f
    iget-object p1, p0, Lt7/a$a;->a:Lt7/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    sget-object v0, Lt7/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt7/h;

    if-nez v4, :cond_8f

    goto :goto_a4

    :cond_8f
    iget-object v5, v4, Lt7/h;->b:Lt7/i;

    invoke-interface {v5}, Lt7/i;->b()I

    move-result v5

    if-ne v5, v1, :cond_99

    move v5, v1

    goto :goto_9a

    :cond_99
    move v5, v2

    :goto_9a
    if-ne v5, v1, :cond_a4

    invoke-virtual {v0, p1, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    :goto_a2
    move-object v3, v4

    goto :goto_c4

    :cond_a4
    :goto_a4
    sget-object v0, Lt7/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    sget-object v2, Lt7/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    :cond_b0
    if-eq v0, v2, :cond_c4

    sget-object v4, Lt7/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_bb

    goto :goto_c4

    :cond_bb
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2, v1}, Lt7/n;->d(IZ)Lt7/h;

    move-result-object v4

    if-eqz v4, :cond_b0

    goto :goto_a2

    :cond_c4
    :goto_c4
    if-nez v3, :cond_d7

    iget-object p1, p0, Lt7/a$a;->h:Lt7/a;

    iget-object p1, p1, Lt7/a;->f:Lt7/d;

    invoke-virtual {p1}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lt7/h;

    if-nez v3, :cond_d7

    invoke-virtual {p0, v1}, Lt7/a$a;->i(I)Lt7/h;

    move-result-object v3

    :cond_d7
    return-object v3
.end method

.method public final b()I
    .registers 1

    iget p0, p0, Lt7/a$a;->indexInArray:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lt7/a$a;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)I
    .registers 4

    iget v0, p0, Lt7/a$a;->f:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lt7/a$a;->f:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_15

    and-int/2addr p0, v0

    return p0

    :cond_15
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final e()Lt7/h;
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lt7/a$a;->d(I)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lt7/a$a;->h:Lt7/a;

    iget-object v0, v0, Lt7/a;->e:Lt7/d;

    invoke-virtual {v0}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/h;

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    iget-object p0, p0, Lt7/a$a;->h:Lt7/a;

    iget-object p0, p0, Lt7/a;->f:Lt7/d;

    invoke-virtual {p0}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt7/h;

    return-object p0

    :cond_1f
    iget-object v0, p0, Lt7/a$a;->h:Lt7/a;

    iget-object v0, v0, Lt7/a;->f:Lt7/d;

    invoke-virtual {v0}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/h;

    if-eqz v0, :cond_2c

    return-object v0

    :cond_2c
    iget-object p0, p0, Lt7/a$a;->h:Lt7/a;

    iget-object p0, p0, Lt7/a;->e:Lt7/d;

    invoke-virtual {p0}, Lr7/r;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt7/h;

    return-object p0
.end method

.method public final f(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lt7/a$a;->h:Lt7/a;

    iget-object v1, v1, Lt7/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_16

    const-string v1, "TERMINATED"

    goto :goto_1a

    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lt7/a$a;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lt7/a$a;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(I)Z
    .registers 8

    iget v0, p0, Lt7/a$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_15

    iget-object v2, p0, Lt7/a$a;->h:Lt7/a;

    sget-object v3, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_15
    if-eq v0, p1, :cond_19

    iput p1, p0, Lt7/a$a;->c:I

    :cond_19
    return v1
.end method

.method public final i(I)Lt7/h;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lt7/a$a;->h:Lt7/a;

    sget-object v3, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v2, v3, :cond_16

    return-object v4

    :cond_16
    invoke-virtual {v0, v2}, Lt7/a$a;->d(I)I

    move-result v5

    iget-object v6, v0, Lt7/a$a;->h:Lt7/a;

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    :goto_22
    if-ge v10, v2, :cond_e6

    const/4 v15, 0x1

    add-int/2addr v5, v15

    if-le v5, v2, :cond_29

    move v5, v15

    :cond_29
    iget-object v3, v6, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v3, v5}, Lr7/a0;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt7/a$a;

    if-eqz v3, :cond_dc

    if-eq v3, v0, :cond_dc

    iget-object v3, v3, Lt7/a$a;->a:Lt7/n;

    iget-object v7, v0, Lt7/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    if-ne v1, v8, :cond_44

    invoke-virtual {v3}, Lt7/n;->c()Lt7/h;

    move-result-object v8

    goto :goto_6d

    :cond_44
    sget-object v8, Lt7/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v8

    sget-object v9, Lt7/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v9

    if-ne v1, v15, :cond_54

    move v13, v15

    goto :goto_55

    :cond_54
    const/4 v13, 0x0

    :goto_55
    if-eq v8, v9, :cond_6c

    if-eqz v13, :cond_62

    sget-object v14, Lt7/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v14, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v14

    if-nez v14, :cond_62

    goto :goto_6c

    :cond_62
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v3, v8, v13}, Lt7/n;->d(IZ)Lt7/h;

    move-result-object v8

    if-nez v8, :cond_6d

    move v8, v14

    goto :goto_55

    :cond_6c
    :goto_6c
    move-object v8, v4

    :cond_6d
    :goto_6d
    if-eqz v8, :cond_74

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move/from16 v17, v5

    goto :goto_bb

    :cond_74
    :goto_74
    sget-object v8, Lt7/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt7/h;

    const-wide/16 v16, -0x2

    if-nez v9, :cond_81

    goto :goto_94

    :cond_81
    iget-object v13, v9, Lt7/h;->b:Lt7/i;

    invoke-interface {v13}, Lt7/i;->b()I

    move-result v13

    if-ne v13, v15, :cond_8b

    move v13, v15

    goto :goto_8c

    :cond_8b
    const/4 v13, 0x0

    :goto_8c
    if-eqz v13, :cond_90

    move v13, v15

    goto :goto_91

    :cond_90
    const/4 v13, 0x2

    :goto_91
    and-int/2addr v13, v1

    if-nez v13, :cond_99

    :goto_94
    move-wide/from16 v3, v16

    move/from16 v17, v5

    goto :goto_bd

    :cond_99
    sget-object v13, Lt7/l;->f:Lt7/g;

    check-cast v13, Lt7/e;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    move/from16 v17, v5

    iget-wide v4, v9, Lt7/h;->a:J

    sub-long/2addr v13, v4

    sget-wide v4, Lt7/l;->b:J

    cmp-long v18, v13, v4

    if-gez v18, :cond_b2

    sub-long v3, v4, v13

    goto :goto_bd

    :cond_b2
    const/4 v4, 0x0

    invoke-virtual {v8, v3, v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    iput-object v9, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_bb
    const-wide/16 v3, -0x1

    :goto_bd
    const-wide/16 v8, -0x1

    cmp-long v5, v3, v8

    if-nez v5, :cond_cd

    iget-object v0, v0, Lt7/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lt7/h;

    const/4 v2, 0x0

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    :cond_cd
    const-wide/16 v13, 0x0

    cmp-long v5, v3, v13

    if-lez v5, :cond_de

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_de

    :cond_d8
    move/from16 v5, v17

    const/4 v4, 0x0

    goto :goto_74

    :cond_dc
    move/from16 v17, v5

    :cond_de
    :goto_de
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v17

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_22

    :cond_e6
    const-wide v3, 0x7fffffffffffffffL

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v3

    if-eqz v1, :cond_f2

    goto :goto_f3

    :cond_f2
    move-wide v11, v13

    :goto_f3
    iput-wide v11, v0, Lt7/a$a;->e:J

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 21

    move-object/from16 v0, p0

    :cond_2
    :goto_2
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    iget-object v3, v0, Lt7/a$a;->h:Lt7/a;

    invoke-virtual {v3}, Lt7/a;->isTerminated()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_16e

    iget v3, v0, Lt7/a$a;->c:I

    if-eq v3, v4, :cond_16e

    iget-boolean v3, v0, Lt7/a$a;->g:Z

    invoke-virtual {v0, v3}, Lt7/a$a;->a(Z)Lt7/h;

    move-result-object v3

    const-wide/32 v5, -0x200000

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    if-eqz v3, :cond_55

    iput-wide v7, v0, Lt7/a$a;->e:J

    const/4 v1, 0x2

    iget-object v2, v3, Lt7/h;->b:Lt7/i;

    invoke-interface {v2}, Lt7/i;->b()I

    move-result v2

    iput-wide v7, v0, Lt7/a$a;->d:J

    iget v7, v0, Lt7/a$a;->c:I

    if-ne v7, v9, :cond_30

    iput v1, v0, Lt7/a$a;->c:I

    :cond_30
    if-nez v2, :cond_33

    goto :goto_3e

    :cond_33
    invoke-virtual {v0, v1}, Lt7/a$a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lt7/a$a;->h:Lt7/a;

    invoke-virtual {v1}, Lt7/a;->i()V

    :cond_3e
    :goto_3e
    iget-object v1, v0, Lt7/a$a;->h:Lt7/a;

    invoke-virtual {v1, v3}, Lt7/a;->g(Lt7/h;)V

    if-nez v2, :cond_46

    goto :goto_2

    :cond_46
    iget-object v1, v0, Lt7/a$a;->h:Lt7/a;

    sget-object v2, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget v1, v0, Lt7/a$a;->c:I

    if-eq v1, v4, :cond_2

    const/4 v1, 0x4

    iput v1, v0, Lt7/a$a;->c:I

    goto :goto_2

    :cond_55
    iput-boolean v1, v0, Lt7/a$a;->g:Z

    iget-wide v10, v0, Lt7/a$a;->e:J

    cmp-long v3, v10, v7

    const/4 v10, 0x1

    if-eqz v3, :cond_70

    if-nez v2, :cond_62

    move v2, v10

    goto :goto_4

    :cond_62
    invoke-virtual {v0, v9}, Lt7/a$a;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v1, v0, Lt7/a$a;->e:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v7, v0, Lt7/a$a;->e:J

    goto :goto_2

    :cond_70
    iget-object v3, v0, Lt7/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v11, Lt7/a;->k:Lr7/f0;

    if-eq v3, v11, :cond_78

    move v3, v10

    goto :goto_79

    :cond_78
    move v3, v1

    :goto_79
    const-wide/32 v12, 0x1fffff

    if-nez v3, :cond_af

    iget-object v3, v0, Lt7/a$a;->h:Lt7/a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lt7/a$a;->nextParkedWorker:Ljava/lang/Object;

    if-eq v4, v11, :cond_88

    goto :goto_ad

    :cond_88
    sget-object v11, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_8a
    invoke-virtual {v11, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v16

    and-long v7, v16, v12

    long-to-int v4, v7

    const-wide/32 v7, 0x200000

    add-long v7, v16, v7

    and-long/2addr v7, v5

    iget v9, v0, Lt7/a$a;->indexInArray:I

    iget-object v10, v3, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v10, v4}, Lr7/a0;->b(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lt7/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v14, Lt7/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v9, v9

    or-long v18, v9, v7

    move-object v15, v3

    invoke-virtual/range {v14 .. v19}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v4

    if-eqz v4, :cond_8a

    :goto_ad
    goto/16 :goto_166

    :cond_af
    sget-object v3, Lt7/a$a;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, -0x1

    invoke-virtual {v3, v0, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :goto_b5
    iget-object v3, v0, Lt7/a$a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v6, Lt7/a;->k:Lr7/f0;

    if-eq v3, v6, :cond_bd

    move v3, v10

    goto :goto_be

    :cond_bd
    move v3, v1

    :goto_be
    if-eqz v3, :cond_166

    sget-object v3, Lt7/a$a;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v5, :cond_166

    iget-object v6, v0, Lt7/a$a;->h:Lt7/a;

    invoke-virtual {v6}, Lt7/a;->isTerminated()Z

    move-result v6

    if-nez v6, :cond_166

    iget v6, v0, Lt7/a$a;->c:I

    if-ne v6, v4, :cond_d6

    goto/16 :goto_166

    :cond_d6
    invoke-virtual {v0, v9}, Lt7/a$a;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v14, v0, Lt7/a$a;->d:J

    cmp-long v6, v14, v7

    if-nez v6, :cond_f0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    iget-object v6, v0, Lt7/a$a;->h:Lt7/a;

    move/from16 v16, v2

    iget-wide v1, v6, Lt7/a;->c:J

    add-long/2addr v14, v1

    iput-wide v14, v0, Lt7/a$a;->d:J

    goto :goto_f2

    :cond_f0
    move/from16 v16, v2

    :goto_f2
    iget-object v1, v0, Lt7/a$a;->h:Lt7/a;

    iget-wide v1, v1, Lt7/a;->c:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v14, v0, Lt7/a$a;->d:J

    sub-long/2addr v1, v14

    cmp-long v1, v1, v7

    if-ltz v1, :cond_160

    iput-wide v7, v0, Lt7/a$a;->d:J

    iget-object v1, v0, Lt7/a$a;->h:Lt7/a;

    iget-object v2, v1, Lt7/a;->g:Lr7/a0;

    monitor-enter v2

    :try_start_10b
    invoke-virtual {v1}, Lt7/a;->isTerminated()Z

    move-result v6
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_15d

    if-eqz v6, :cond_113

    monitor-exit v2

    goto :goto_128

    :cond_113
    :try_start_113
    sget-object v6, Lt7/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v14

    and-long/2addr v14, v12

    long-to-int v14, v14

    iget v15, v1, Lt7/a;->a:I
    :try_end_11d
    .catchall {:try_start_113 .. :try_end_11d} :catchall_15d

    if-gt v14, v15, :cond_121

    monitor-exit v2

    goto :goto_128

    :cond_121
    :try_start_121
    invoke-virtual {v3, v0, v5, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3
    :try_end_125
    .catchall {:try_start_121 .. :try_end_125} :catchall_15d

    if-nez v3, :cond_12c

    monitor-exit v2

    :goto_128
    move/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_b5

    :cond_12c
    :try_start_12c
    iget v3, v0, Lt7/a$a;->indexInArray:I

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lt7/a$a;->f(I)V

    invoke-virtual {v1, v0, v3, v11}, Lt7/a;->f(Lt7/a$a;II)V

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v14

    and-long/2addr v14, v12

    long-to-int v6, v14

    if-eq v6, v3, :cond_153

    iget-object v14, v1, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v14, v6}, Lr7/a0;->b(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Lt7/a$a;

    iget-object v15, v1, Lt7/a;->g:Lr7/a0;

    invoke-virtual {v15, v3, v14}, Lr7/a0;->c(ILjava/lang/Object;)V

    invoke-virtual {v14, v3}, Lt7/a$a;->f(I)V

    invoke-virtual {v1, v14, v6, v3}, Lt7/a;->f(Lt7/a$a;II)V

    :cond_153
    iget-object v1, v1, Lt7/a;->g:Lr7/a0;

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Lr7/a0;->c(ILjava/lang/Object;)V
    :try_end_159
    .catchall {:try_start_12c .. :try_end_159} :catchall_15d

    monitor-exit v2

    iput v4, v0, Lt7/a$a;->c:I

    goto :goto_161

    :catchall_15d
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_160
    const/4 v11, 0x0

    :goto_161
    move v1, v11

    move/from16 v2, v16

    goto/16 :goto_b5

    :cond_166
    :goto_166
    move v11, v1

    move/from16 v16, v2

    move v1, v11

    move/from16 v2, v16

    goto/16 :goto_4

    :cond_16e
    invoke-virtual {v0, v4}, Lt7/a$a;->h(I)Z

    return-void
.end method
