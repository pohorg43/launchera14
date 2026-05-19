.class public final Lo7/k;
.super Lr7/c0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr7/c0<",
        "Lo7/k<",
        "TE;>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3122:1\n1#2:3123\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lo7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLo7/k;Lo7/b;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lo7/k<",
            "TE;>;",
            "Lo7/b<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lr7/c0;-><init>(JLr7/c0;I)V

    iput-object p4, p0, Lo7/k;->e:Lo7/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget p2, Lo7/e;->b:I

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public i()I
    .registers 1

    sget p0, Lo7/e;->b:I

    return p0
.end method

.method public j(ILjava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1}, Lo7/k;->q(I)Z

    return-void
.end method

.method public final m(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object p0, p0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final n(I)V
    .registers 3

    iget-object p0, p0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method public final o(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object p0, p0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q(I)Z
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lr7/c0;->c:J

    sget v4, Lo7/e;->b:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v4, v0, Lo7/k;->e:Lo7/b;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lo7/b;->s()J

    move-result-wide v4

    iget-object v6, v0, Lo7/k;->e:Lo7/b;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lo7/b;->p()J

    move-result-wide v6

    :cond_1e
    :goto_1e
    iget-object v8, v0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v11, v8, Lm7/v2;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v11, :cond_67

    instance-of v11, v8, Lo7/u;

    if-eqz v11, :cond_34

    goto :goto_67

    :cond_34
    sget-object v10, Lo7/e;->j:Lr7/f0;

    if-eq v8, v10, :cond_61

    sget-object v10, Lo7/e;->k:Lr7/f0;

    if-ne v8, v10, :cond_3d

    goto :goto_61

    :cond_3d
    sget-object v9, Lo7/e;->g:Lr7/f0;

    if-eq v8, v9, :cond_1e

    sget-object v9, Lo7/e;->f:Lr7/f0;

    if-ne v8, v9, :cond_46

    goto :goto_1e

    :cond_46
    sget-object v0, Lo7/e;->i:Lr7/f0;

    if-eq v8, v0, :cond_60

    sget-object v0, Lo7/e;->d:Lr7/f0;

    if-ne v8, v0, :cond_4f

    goto :goto_60

    :cond_4f
    sget-object v0, Lo7/e;->l:Lr7/f0;

    if-ne v8, v0, :cond_54

    return v13

    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected state: "

    invoke-static {v1, v8}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    :goto_60
    return v13

    :cond_61
    :goto_61
    iget-object v0, v0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v9, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return v14

    :cond_67
    :goto_67
    cmp-long v11, v2, v4

    if-gez v11, :cond_71

    cmp-long v15, v2, v6

    if-ltz v15, :cond_71

    move v15, v14

    goto :goto_72

    :cond_71
    move v15, v13

    :goto_72
    cmp-long v16, v2, v6

    if-gez v16, :cond_79

    if-ltz v11, :cond_79

    move v13, v14

    :cond_79
    if-nez v15, :cond_83

    if-nez v13, :cond_83

    iget-object v0, v0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v9, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return v14

    :cond_83
    if-eqz v15, :cond_88

    sget-object v11, Lo7/e;->j:Lr7/f0;

    goto :goto_8a

    :cond_88
    sget-object v11, Lo7/e;->k:Lr7/f0;

    :goto_8a
    iget-object v15, v0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v15, v10, v8, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v2, v0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v9, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v13}, Lo7/k;->r(IZ)V

    return v14
.end method

.method public final r(IZ)V
    .registers 20

    move-object/from16 v0, p0

    if-eqz p2, :cond_a1

    iget-object v7, v0, Lo7/k;->e:Lo7/b;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, v0, Lr7/c0;->c:J

    sget v3, Lo7/e;->b:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    move/from16 v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v7}, Lo7/b;->D()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_a1

    :cond_1b
    invoke-virtual {v7}, Lo7/b;->m()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_1b

    sget v1, Lo7/e;->c:I

    const/4 v8, 0x0

    move v2, v8

    :goto_27
    const-wide v9, 0x3fffffffffffffffL  # 1.9999999999999998

    if-ge v2, v1, :cond_49

    invoke-virtual {v7}, Lo7/b;->m()J

    move-result-wide v3

    sget-object v5, Lo7/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long/2addr v5, v9

    cmp-long v5, v3, v5

    if-nez v5, :cond_46

    invoke-virtual {v7}, Lo7/b;->m()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_46

    goto :goto_a1

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_49
    sget-object v11, Lo7/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_4b
    invoke-virtual {v11, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    and-long v1, v3, v9

    const/4 v12, 0x1

    invoke-static {v1, v2, v12}, Lo7/e;->a(JZ)J

    move-result-wide v5

    move-object v1, v11

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_5e
    :goto_5e
    invoke-virtual {v7}, Lo7/b;->m()J

    move-result-wide v1

    sget-object v11, Lo7/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    and-long v5, v3, v9

    const-wide/high16 v13, 0x4000000000000000L  # 2.0

    and-long/2addr v13, v3

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_75

    move v13, v12

    goto :goto_76

    :cond_75
    move v13, v8

    :goto_76
    cmp-long v14, v1, v5

    if-nez v14, :cond_95

    invoke-virtual {v7}, Lo7/b;->m()J

    move-result-wide v14

    cmp-long v1, v1, v14

    if-nez v1, :cond_95

    :cond_82
    invoke-virtual {v11, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    and-long v1, v3, v9

    invoke-static {v1, v2, v8}, Lo7/e;->a(JZ)J

    move-result-wide v5

    move-object v1, v11

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_a1

    :cond_95
    if-nez v13, :cond_5e

    invoke-static {v5, v6, v12}, Lo7/e;->a(JZ)J

    move-result-wide v5

    move-object v1, v11

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_5e

    :cond_a1
    :goto_a1
    invoke-virtual/range {p0 .. p0}, Lr7/c0;->k()V

    return-void
.end method

.method public final s(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lo7/k;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-object v0
.end method
