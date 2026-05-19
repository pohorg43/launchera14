.class public Lo7/n;
.super Lo7/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo7/b<",
        "TE;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 5 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,119:1\n548#2,5:120\n514#2,6:125\n514#2,6:212\n548#2,5:218\n268#3:131\n293#3,10:132\n304#3,68:143\n3105#4:142\n293#5:211\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n41#1:120,5\n53#1:125,6\n106#1:212,6\n109#1:218,5\n80#1:131\n80#1:132,10\n80#1:143,68\n80#1:142\n80#1:211\n*E\n"
    }
.end annotation


# instance fields
.field public final m:Lo7/a;


# direct methods
.method public constructor <init>(ILo7/a;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo7/a;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lo7/b;-><init>(ILkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lo7/n;->m:Lo7/a;

    sget-object p0, Lo7/a;->a:Lo7/a;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, p0, :cond_d

    move p0, v0

    goto :goto_e

    :cond_d
    move p0, p3

    :goto_e
    if-eqz p0, :cond_28

    if-lt p1, v0, :cond_13

    move p3, v0

    :cond_13
    if-eqz p3, :cond_16

    return-void

    :cond_16
    const-string p0, "Buffered channel capacity must be at least 1, but "

    const-string p2, " was specified"

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    const-string p0, "This implementation does not support suspension for senders, use "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class p1, Lo7/b;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-interface {p1}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lo7/n;->L(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lo7/j$a;

    if-eqz v0, :cond_26

    if-eqz v0, :cond_d

    check-cast p2, Lo7/j$a;

    :cond_d
    iget-object p2, p0, Lo7/b;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_21

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1}, Lr7/x;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lr7/n0;I)Lr7/n0;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lo7/b;->r()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_21
    invoke-virtual {p0}, Lo7/b;->r()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_26
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public C()Z
    .registers 2

    iget-object p0, p0, Lo7/n;->m:Lo7/a;

    sget-object v0, Lo7/a;->b:Lo7/a;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final L(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    iget-object v0, v8, Lo7/n;->m:Lo7/a;

    sget-object v1, Lo7/a;->c:Lo7/a;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v0, v1, :cond_2e

    invoke-super/range {p0 .. p1}, Lo7/b;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lo7/j$b;

    xor-int/2addr v1, v11

    if-nez v1, :cond_eb

    instance-of v1, v0, Lo7/j$a;

    if-eqz v1, :cond_1a

    goto/16 :goto_eb

    :cond_1a
    if-eqz p2, :cond_2a

    iget-object v0, v8, Lo7/b;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2a

    move-object/from16 v12, p1

    invoke-static {v0, v12, v9, v10}, Lr7/x;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lr7/n0;I)Lr7/n0;

    move-result-object v0

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    throw v0

    :cond_2a
    :goto_2a
    sget-object v0, Lh4/z;->a:Lh4/z;

    goto/16 :goto_eb

    :cond_2e
    move-object/from16 v12, p1

    sget-object v13, Lo7/e;->d:Lr7/f0;

    sget-object v0, Lo7/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/k;

    :goto_3a
    sget-object v1, Lo7/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v14, v1, v3

    invoke-virtual {v8, v1, v2}, Lo7/b;->y(J)Z

    move-result v16

    sget v1, Lo7/e;->b:I

    int-to-long v6, v1

    div-long v1, v14, v6

    rem-long v3, v14, v6

    long-to-int v4, v3

    iget-wide v9, v0, Lr7/c0;->c:J

    cmp-long v3, v9, v1

    if-eqz v3, :cond_72

    invoke-static {v8, v1, v2, v0}, Lo7/b;->b(Lo7/b;JLo7/k;)Lo7/k;

    move-result-object v1

    if-nez v1, :cond_70

    if-eqz v16, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lo7/b;->r()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lo7/j$a;

    invoke-direct {v1, v0}, Lo7/j$a;-><init>(Ljava/lang/Throwable;)V

    :goto_6a
    move-object v0, v1

    goto/16 :goto_eb

    :cond_6d
    const/4 v9, 0x0

    const/4 v10, 0x2

    goto :goto_3a

    :cond_70
    move-object v9, v1

    goto :goto_73

    :cond_72
    move-object v9, v0

    :goto_73
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v4

    move-object/from16 v3, p1

    move v10, v4

    move-wide v4, v14

    move-wide/from16 v17, v6

    move-object v6, v13

    move/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lo7/b;->e(Lo7/b;Lo7/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_e6

    if-eq v0, v11, :cond_e9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_bd

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_9c

    const/4 v2, 0x5

    if-eq v0, v2, :cond_95

    goto :goto_98

    :cond_95
    invoke-virtual {v9}, Lr7/e;->b()V

    :goto_98
    move v10, v1

    move-object v0, v9

    const/4 v9, 0x0

    goto :goto_3a

    :cond_9c
    invoke-virtual/range {p0 .. p0}, Lo7/b;->p()J

    move-result-wide v0

    cmp-long v0, v14, v0

    if-gez v0, :cond_a7

    invoke-virtual {v9}, Lr7/e;->b()V

    :cond_a7
    invoke-virtual/range {p0 .. p0}, Lo7/b;->r()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lo7/j$a;

    invoke-direct {v1, v0}, Lo7/j$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6a

    :cond_b1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    if-eqz v16, :cond_cc

    invoke-virtual {v9}, Lr7/c0;->k()V

    invoke-virtual/range {p0 .. p0}, Lo7/b;->r()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lo7/j$a;

    invoke-direct {v1, v0}, Lo7/j$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6a

    :cond_cc
    instance-of v0, v13, Lm7/v2;

    if-eqz v0, :cond_d4

    move-object v0, v13

    check-cast v0, Lm7/v2;

    goto :goto_d5

    :cond_d4
    const/4 v0, 0x0

    :goto_d5
    if-eqz v0, :cond_da

    invoke-static {v8, v0, v9, v10}, Lo7/b;->d(Lo7/b;Lm7/v2;Lo7/k;I)V

    :cond_da
    iget-wide v0, v9, Lr7/c0;->c:J

    mul-long v0, v0, v17

    int-to-long v2, v10

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lo7/b;->j(J)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_eb

    :cond_e6
    invoke-virtual {v9}, Lr7/e;->b()V

    :cond_e9
    sget-object v0, Lh4/z;->a:Lh4/z;

    :cond_eb
    :goto_eb
    return-object v0
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo7/n;->L(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
