.class public Lv7/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,396:1\n204#1,10:410\n204#1,10:420\n1#2:397\n332#3,12:398\n71#4,3:430\n45#4,8:433\n71#4,3:444\n45#4,8:447\n374#5:441\n374#5:442\n366#5:443\n377#5:455\n366#5:456\n374#5:457\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n196#1:410,10\n220#1:420,10\n186#1:398,12\n288#1:430,3\n288#1:433,8\n321#1:444,3\n321#1:447,8\n292#1:441\n298#1:442\n312#1:443\n327#1:455\n333#1:456\n336#1:457\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _availablePermits:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final a:I

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private volatile deqIdx:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile enqIdx:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile head:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile tail:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lv7/h;

    const-string v2, "head"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lv7/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "deqIdx"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lv7/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "tail"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv7/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lv7/h;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lv7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv7/h;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    if-eqz v2, :cond_3e

    if-ltz p2, :cond_13

    if-gt p2, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-eqz v0, :cond_2e

    new-instance v0, Lv7/k;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lv7/k;-><init>(JLv7/k;I)V

    iput-object v0, p0, Lv7/h;->head:Ljava/lang/Object;

    iput-object v0, p0, Lv7/h;->tail:Ljava/lang/Object;

    sub-int/2addr p1, p2

    iput p1, p0, Lv7/h;->_availablePermits:I

    new-instance p1, Lv7/h$a;

    invoke-direct {p1, p0}, Lv7/h$a;-><init>(Lv7/h;)V

    iput-object p1, p0, Lv7/h;->b:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_2e
    const-string p0, "The number of acquired permits should be in 0.."

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    const-string p0, "Semaphore should have at least 1 permit, but had "

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c(Lm7/l;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/l<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :cond_4
    sget-object v2, Lv7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v2

    iget v3, v0, Lv7/h;->a:I

    if-gt v2, v3, :cond_4

    if-lez v2, :cond_1b

    sget-object v2, Lh4/z;->a:Lh4/z;

    iget-object v0, v0, Lv7/h;->b:Lkotlin/jvm/functions/Function1;

    check-cast v1, Lv7/d$a;

    invoke-virtual {v1, v2, v0}, Lv7/d$a;->l(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_e6

    :cond_1b
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lm7/v2;

    sget-object v3, Lv7/h;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv7/k;

    sget-object v5, Lv7/h;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v5

    sget-object v7, Lv7/g;->a:Lv7/g;

    sget v8, Lv7/j;->f:I

    int-to-long v8, v8

    div-long v8, v5, v8

    :goto_38
    invoke-static {v4, v8, v9, v7}, Lr7/d;->a(Lr7/c0;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lr7/d0;->b(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_84

    invoke-static {v10}, Lr7/d0;->a(Ljava/lang/Object;)Lr7/c0;

    move-result-object v11

    :goto_46
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr7/c0;

    iget-wide v12, v14, Lr7/c0;->c:J

    move-object v15, v7

    move-wide/from16 v16, v8

    iget-wide v7, v11, Lr7/c0;->c:J

    cmp-long v7, v12, v7

    if-ltz v7, :cond_58

    goto :goto_6f

    :cond_58
    invoke-virtual {v11}, Lr7/c0;->l()Z

    move-result v7

    if-nez v7, :cond_60

    const/4 v7, 0x0

    goto :goto_70

    :cond_60
    invoke-virtual {v3, v0, v14, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-virtual {v14}, Lr7/c0;->h()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-virtual {v14}, Lr7/e;->g()V

    :cond_6f
    :goto_6f
    const/4 v7, 0x1

    :goto_70
    if-eqz v7, :cond_73

    goto :goto_84

    :cond_73
    move-object v7, v15

    move-wide/from16 v8, v16

    goto :goto_38

    :cond_77
    invoke-virtual {v11}, Lr7/c0;->h()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-virtual {v11}, Lr7/e;->g()V

    :cond_80
    move-object v7, v15

    move-wide/from16 v8, v16

    goto :goto_46

    :cond_84
    :goto_84
    invoke-static {v10}, Lr7/d0;->a(Ljava/lang/Object;)Lr7/c0;

    move-result-object v3

    check-cast v3, Lv7/k;

    sget v4, Lv7/j;->f:I

    int-to-long v7, v4

    rem-long/2addr v5, v7

    long-to-int v4, v5

    const/4 v5, 0x0

    iget-object v6, v3, Lv7/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, v4, v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v2, v3, v4}, Lm7/v2;->b(Lr7/c0;I)V

    goto :goto_c6

    :cond_9c
    sget-object v5, Lv7/j;->b:Lr7/f0;

    sget-object v6, Lv7/j;->c:Lr7/f0;

    iget-object v3, v3, Lv7/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    instance-of v3, v2, Lm7/l;

    if-eqz v3, :cond_bb

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lm7/l;

    sget-object v3, Lh4/z;->a:Lh4/z;

    iget-object v4, v0, Lv7/h;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v3, v4}, Lm7/l;->l(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto :goto_c6

    :cond_bb
    instance-of v3, v2, Lu7/h;

    if-eqz v3, :cond_c8

    check-cast v2, Lu7/h;

    sget-object v3, Lh4/z;->a:Lh4/z;

    invoke-interface {v2, v3}, Lu7/h;->c(Ljava/lang/Object;)V

    :goto_c6
    const/4 v12, 0x1

    goto :goto_e4

    :cond_c8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e3
    const/4 v12, 0x0

    :goto_e4
    if-eqz v12, :cond_4

    :goto_e6
    return-void
.end method

.method public d()V
    .registers 15

    :cond_0
    sget-object v0, Lv7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lv7/h;->a:I

    if-lt v0, v1, :cond_34

    :goto_a
    sget-object v0, Lv7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lv7/h;->a:I

    if-le v1, v2, :cond_1b

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The number of released permits cannot be greater than "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lv7/h;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    if-ltz v0, :cond_37

    return-void

    :cond_37
    sget-object v0, Lv7/h;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv7/k;

    sget-object v2, Lv7/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    sget v4, Lv7/j;->f:I

    int-to-long v4, v4

    div-long v4, v2, v4

    sget-object v6, Lv7/i;->a:Lv7/i;

    :cond_4c
    invoke-static {v1, v4, v5, v6}, Lr7/d;->a(Lr7/c0;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lr7/d0;->b(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8e

    invoke-static {v7}, Lr7/d0;->a(Ljava/lang/Object;)Lr7/c0;

    move-result-object v8

    :cond_5a
    :goto_5a
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr7/c0;

    iget-wide v10, v9, Lr7/c0;->c:J

    iget-wide v12, v8, Lr7/c0;->c:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_69

    goto :goto_80

    :cond_69
    invoke-virtual {v8}, Lr7/c0;->l()Z

    move-result v10

    if-nez v10, :cond_71

    const/4 v8, 0x0

    goto :goto_81

    :cond_71
    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    invoke-virtual {v9}, Lr7/c0;->h()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-virtual {v9}, Lr7/e;->g()V

    :cond_80
    :goto_80
    const/4 v8, 0x1

    :goto_81
    if-eqz v8, :cond_4c

    goto :goto_8e

    :cond_84
    invoke-virtual {v8}, Lr7/c0;->h()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-virtual {v8}, Lr7/e;->g()V

    goto :goto_5a

    :cond_8e
    :goto_8e
    invoke-static {v7}, Lr7/d0;->a(Ljava/lang/Object;)Lr7/c0;

    move-result-object v0

    check-cast v0, Lv7/k;

    invoke-virtual {v0}, Lr7/e;->b()V

    iget-wide v6, v0, Lr7/c0;->c:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_9e

    goto :goto_ee

    :cond_9e
    sget v1, Lv7/j;->f:I

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    sget-object v2, Lv7/j;->b:Lr7/f0;

    iget-object v3, v0, Lv7/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_ce

    sget v2, Lv7/j;->a:I

    const/4 v3, 0x0

    :goto_b0
    if-ge v3, v2, :cond_c1

    iget-object v4, v0, Lv7/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lv7/j;->c:Lr7/f0;

    if-ne v4, v5, :cond_be

    const/4 v0, 0x1

    goto :goto_fc

    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_b0

    :cond_c1
    sget-object v2, Lv7/j;->b:Lr7/f0;

    sget-object v3, Lv7/j;->d:Lr7/f0;

    iget-object v0, v0, Lv7/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_fc

    :cond_ce
    const/4 v0, 0x1

    sget-object v1, Lv7/j;->e:Lr7/f0;

    if-ne v2, v1, :cond_d4

    goto :goto_ee

    :cond_d4
    instance-of v1, v2, Lm7/l;

    if-eqz v1, :cond_f0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lm7/l;

    sget-object v1, Lh4/z;->a:Lh4/z;

    const/4 v3, 0x0

    iget-object v4, p0, Lv7/h;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1, v3, v4}, Lm7/l;->x(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ee

    invoke-interface {v2, v1}, Lm7/l;->C(Ljava/lang/Object;)V

    goto :goto_fc

    :cond_ee
    :goto_ee
    const/4 v0, 0x0

    goto :goto_fc

    :cond_f0
    instance-of v0, v2, Lu7/h;

    if-eqz v0, :cond_ff

    check-cast v2, Lu7/h;

    sget-object v0, Lh4/z;->a:Lh4/z;

    invoke-interface {v2, p0, v0}, Lu7/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_fc
    if-eqz v0, :cond_0

    return-void

    :cond_ff
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected: "

    invoke-static {v0, v2}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
