.class public final Lr7/s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n299#2,3:309\n299#2,3:312\n299#2,3:315\n299#2,3:318\n299#2,3:321\n299#2,3:325\n299#2,3:328\n1#3:324\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n91#1:309,3\n92#1:312,3\n107#1:315,3\n167#1:318,3\n200#1:321,3\n231#1:325,3\n247#1:328,3\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private volatile _next:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _state:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lr7/s;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lr7/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    new-instance v0, Lr7/f0;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr7/s;->g:Lr7/f0;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr7/s;->a:I

    iput-boolean p2, p0, Lr7/s;->b:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lr7/s;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 p0, 0x0

    const/4 v0, 0x1

    const v1, 0x3fffffff  # 1.9999999f

    if-gt p2, v1, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    move v1, p0

    :goto_1c
    const-string v2, "Check failed."

    if-eqz v1, :cond_31

    and-int/2addr p1, p2

    if-nez p1, :cond_24

    move p0, v0

    :cond_24
    if-eqz p0, :cond_27

    return-void

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v8, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_6
    invoke-virtual {v8, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v0, 0x3000000000000000L  # 1.727233711018889E-77

    and-long/2addr v0, v2

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    const-wide/high16 v4, 0x2000000000000000L

    and-long/2addr v2, v4

    cmp-long v0, v2, v9

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    :cond_1c
    return v1

    :cond_1d
    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    const/4 v11, 0x0

    shr-long/2addr v4, v11

    long-to-int v0, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v12, 0x1e

    shr-long/2addr v4, v12

    long-to-int v13, v4

    iget v14, v6, Lr7/s;->c:I

    add-int/lit8 v4, v13, 0x2

    and-int/2addr v4, v14

    and-int v5, v0, v14

    if-ne v4, v5, :cond_38

    return v1

    :cond_38
    iget-boolean v4, v6, Lr7/s;->b:Z

    const v5, 0x3fffffff  # 1.9999999f

    if-nez v4, :cond_57

    iget-object v4, v6, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v15, v13, v14

    invoke-virtual {v4, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_57

    iget v2, v6, Lr7/s;->a:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_56

    sub-int/2addr v13, v0

    and-int v0, v13, v5

    shr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_6

    :cond_56
    return v1

    :cond_57
    add-int/lit8 v0, v13, 0x1

    and-int/2addr v0, v5

    sget-object v1, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, -0xfffffffc0000001L  # -3.1050369248997324E231

    and-long/2addr v4, v2

    int-to-long v9, v0

    shl-long/2addr v9, v12

    or-long/2addr v4, v9

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v1, v13, v14

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_75
    sget-object v0, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a8

    invoke-virtual {v6}, Lr7/s;->d()Lr7/s;

    move-result-object v0

    iget-object v1, v0, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v4, v0, Lr7/s;->c:I

    and-int/2addr v4, v13

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lr7/s$a;

    if-eqz v4, :cond_a4

    check-cast v1, Lr7/s$a;

    iget v1, v1, Lr7/s$a;->a:I

    if-ne v1, v13, :cond_a4

    iget-object v1, v0, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v4, v0, Lr7/s;->c:I

    and-int/2addr v4, v13

    invoke-virtual {v1, v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    move-object v6, v0

    if-nez v6, :cond_75

    :cond_a8
    return v11
.end method

.method public final b()Z
    .registers 11

    sget-object v6, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_2
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    const/4 v9, 0x1

    if-eqz v4, :cond_12

    return v9

    :cond_12
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    or-long v4, v2, v0

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v9
.end method

.method public final c()Z
    .registers 6

    sget-object v0, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 p0, 0x0

    shr-long/2addr v2, p0

    long-to-int v2, v2

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v0, v3

    const/16 v3, 0x1e

    shr-long/2addr v0, v3

    long-to-int v0, v0

    if-ne v2, v0, :cond_1a

    const/4 p0, 0x1

    :cond_1a
    return p0
.end method

.method public final d()Lr7/s;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr7/s<",
            "TE;>;"
        }
    .end annotation

    sget-object v6, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_2
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_11

    goto :goto_1d

    :cond_11
    or-long v7, v2, v0

    move-object v0, v6

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v2, v7

    :goto_1d
    sget-object v0, Lr7/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_1f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/s;

    if-eqz v1, :cond_28

    return-object v1

    :cond_28
    sget-object v1, Lr7/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    new-instance v5, Lr7/s;

    iget v6, p0, Lr7/s;->a:I

    mul-int/lit8 v6, v6, 0x2

    iget-boolean v7, p0, Lr7/s;->b:Z

    invoke-direct {v5, v6, v7}, Lr7/s;-><init>(IZ)V

    const-wide/32 v6, 0x3fffffff

    and-long/2addr v6, v2

    const/4 v8, 0x0

    shr-long/2addr v6, v8

    long-to-int v6, v6

    const-wide v7, 0xfffffffc0000000L

    and-long/2addr v7, v2

    const/16 v9, 0x1e

    shr-long/2addr v7, v9

    long-to-int v7, v7

    :goto_47
    iget v8, p0, Lr7/s;->c:I

    and-int v9, v6, v8

    and-int/2addr v8, v7

    if-eq v9, v8, :cond_66

    iget-object v8, p0, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5b

    new-instance v8, Lr7/s$a;

    invoke-direct {v8, v6}, Lr7/s$a;-><init>(I)V

    :cond_5b
    iget-object v9, v5, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v10, v5, Lr7/s;->c:I

    and-int/2addr v10, v6

    invoke-virtual {v9, v10, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_66
    sget-object v6, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v7, -0x1000000000000001L  # -3.1050361846014175E231

    and-long/2addr v7, v2

    invoke-virtual {v6, v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    invoke-virtual {v1, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method public final e()Ljava/lang/Object;
    .registers 24

    move-object/from16 v6, p0

    sget-object v7, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_4
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v8, 0x1000000000000000L

    and-long v0, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_15

    sget-object v0, Lr7/s;->g:Lr7/f0;

    return-object v0

    :cond_15
    const-wide/32 v12, 0x3fffffff

    and-long v0, v2, v12

    const/4 v14, 0x0

    shr-long/2addr v0, v14

    long-to-int v15, v0

    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v0, v0

    iget v1, v6, Lr7/s;->c:I

    and-int/2addr v0, v1

    and-int/2addr v1, v15

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2f

    return-object v4

    :cond_2f
    iget-object v0, v6, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3c

    iget-boolean v0, v6, Lr7/s;->b:Z

    if-eqz v0, :cond_4

    return-object v4

    :cond_3c
    instance-of v0, v5, Lr7/s$a;

    if-eqz v0, :cond_41

    return-object v4

    :cond_41
    add-int/lit8 v0, v15, 0x1

    const v1, 0x3fffffff  # 1.9999999f

    and-int/2addr v0, v1

    sget-object v1, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v16, -0x40000000

    and-long v18, v2, v16

    move-object/from16 v20, v5

    int-to-long v4, v0

    shl-long v21, v4, v14

    or-long v4, v18, v21

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v11, v20

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, v6, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, v6, Lr7/s;->c:I

    and-int/2addr v1, v15

    invoke-virtual {v0, v1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v11

    :cond_6a
    iget-boolean v0, v6, Lr7/s;->b:Z

    if-eqz v0, :cond_4

    move-object v0, v6

    :cond_6f
    sget-object v15, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_71
    invoke-virtual {v15, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    and-long v1, v3, v12

    shr-long/2addr v1, v14

    long-to-int v7, v1

    and-long v1, v3, v8

    const-wide/16 v18, 0x0

    cmp-long v1, v1, v18

    if-eqz v1, :cond_86

    invoke-virtual {v0}, Lr7/s;->d()Lr7/s;

    move-result-object v0

    goto :goto_9c

    :cond_86
    sget-object v1, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    and-long v5, v3, v16

    or-long v5, v5, v21

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, v0, Lr7/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v0, v0, Lr7/s;->c:I

    and-int/2addr v0, v7

    invoke-virtual {v1, v0, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, v10

    :goto_9c
    if-nez v0, :cond_6f

    return-object v11
.end method
