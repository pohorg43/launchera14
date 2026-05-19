.class public final Lo7/b$a;
.super Lm7/e;
.source ""

# interfaces
.implements Lo7/h;
.implements Lm7/v2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/e;",
        "Lo7/h<",
        "TE;>;",
        "Lm7/v2;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3122:1\n910#2,52:3123\n988#2,8:3179\n882#2:3187\n906#2,33:3188\n998#2:3221\n940#2,14:3222\n959#2,3:3237\n1003#2,6:3240\n332#3,4:3175\n336#3,8:3246\n906#4:3236\n19#5:3254\n61#6,2:3255\n61#6,2:3258\n1#7:3257\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1627#1:3123,52\n1664#1:3179,8\n1664#1:3187\n1664#1:3188,33\n1664#1:3221\n1664#1:3222,14\n1664#1:3237,3\n1664#1:3240,6\n1662#1:3175,4\n1662#1:3246,8\n1664#1:3236\n1687#1:3254\n1704#1:3255,2\n1749#1:3258,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lr7/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/c0<",
            "*>;"
        }
    .end annotation
.end field

.field public d:I

.field public final synthetic e:Lo7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo7/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo7/b$a;->e:Lo7/b;

    invoke-direct {p0}, Lm7/e;-><init>()V

    sget-object p1, Lo7/e;->p:Lr7/f0;

    iput-object p1, p0, Lo7/b$a;->a:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lo7/b$a;->d:I

    return-void
.end method


# virtual methods
.method public b(Lr7/c0;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/c0<",
            "*>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lo7/b$a;->c:Lr7/c0;

    iput p2, p0, Lo7/b$a;->d:I

    iget-object p1, p0, Lo7/b$a;->b:Lm7/l;

    if-eqz p1, :cond_b

    invoke-interface {p1, p0}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    :cond_b
    return-void
.end method

.method public e(Ll4/d;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    iget-object v7, v0, Lo7/b$a;->e:Lo7/b;

    sget-object v1, Lo7/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo7/k;

    :goto_b
    invoke-virtual {v7}, Lo7/b;->x()Z

    move-result v2

    if-eqz v2, :cond_24

    sget-object v1, Lo7/e;->l:Lr7/f0;

    iput-object v1, v0, Lo7/b$a;->a:Ljava/lang/Object;

    iget-object v0, v0, Lo7/b$a;->e:Lo7/b;

    invoke-virtual {v0}, Lo7/b;->o()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_21

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_16b

    :cond_21
    sget-object v1, Lr7/e0;->a:Ljava/lang/StackTraceElement;

    throw v0

    :cond_24
    sget-object v2, Lo7/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    sget v2, Lo7/e;->b:I

    int-to-long v2, v2

    div-long v4, v8, v2

    rem-long v2, v8, v2

    long-to-int v10, v2

    iget-wide v2, v1, Lr7/c0;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_41

    invoke-virtual {v7, v4, v5, v1}, Lo7/b;->l(JLo7/k;)Lo7/k;

    move-result-object v2

    if-nez v2, :cond_3f

    goto :goto_b

    :cond_3f
    move-object v11, v2

    goto :goto_42

    :cond_41
    move-object v11, v1

    :goto_42
    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v11

    move v3, v10

    move-wide v4, v8

    invoke-virtual/range {v1 .. v6}, Lo7/b;->J(Lo7/k;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v12, Lo7/e;->m:Lr7/f0;

    if-eq v1, v12, :cond_16c

    sget-object v13, Lo7/e;->o:Lr7/f0;

    if-ne v1, v13, :cond_60

    invoke-virtual {v7}, Lo7/b;->s()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_5e

    invoke-virtual {v11}, Lr7/e;->b()V

    :cond_5e
    move-object v1, v11

    goto :goto_b

    :cond_60
    sget-object v2, Lo7/e;->n:Lr7/f0;

    if-ne v1, v2, :cond_164

    iget-object v7, v0, Lo7/b$a;->e:Lo7/b;

    invoke-static/range {p1 .. p1}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    invoke-static {v1}, Lm7/p;->a(Ll4/d;)Lm7/n;

    move-result-object v14

    :try_start_6e
    iput-object v14, v0, Lo7/b$a;->b:Lm7/l;

    sget-object v1, Lo7/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, v7

    move-object v2, v11

    move v3, v10

    move-wide v4, v8

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lo7/b;->J(Lo7/k;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_8a

    iput-object v11, v0, Lo7/b$a;->c:Lr7/c0;

    iput v10, v0, Lo7/b$a;->d:I

    iget-object v1, v0, Lo7/b$a;->b:Lm7/l;

    if-eqz v1, :cond_14f

    invoke-interface {v1, p0}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_14f

    :cond_8a
    const/4 v10, 0x0

    if-ne v1, v13, :cond_136

    invoke-virtual {v7}, Lo7/b;->s()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_98

    invoke-virtual {v11}, Lr7/e;->b()V

    :cond_98
    sget-object v1, Lo7/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo7/k;

    :goto_a0
    invoke-virtual {v7}, Lo7/b;->x()Z

    move-result v2

    if-eqz v2, :cond_c9

    iget-object v1, v0, Lo7/b$a;->b:Lm7/l;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v10, v0, Lo7/b$a;->b:Lm7/l;

    sget-object v2, Lo7/e;->l:Lr7/f0;

    iput-object v2, v0, Lo7/b$a;->a:Ljava/lang/Object;

    iget-object v0, v0, Lo7/b$a;->e:Lo7/b;

    invoke-virtual {v0}, Lo7/b;->o()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_c0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_14f

    :cond_c0
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_14f

    :cond_c9
    sget-object v2, Lo7/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    sget v2, Lo7/e;->b:I

    int-to-long v2, v2

    div-long v4, v8, v2

    rem-long v2, v8, v2

    long-to-int v11, v2

    iget-wide v2, v1, Lr7/c0;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e6

    invoke-virtual {v7, v4, v5, v1}, Lo7/b;->l(JLo7/k;)Lo7/k;

    move-result-object v2

    if-nez v2, :cond_e4

    goto :goto_a0

    :cond_e4
    move-object v12, v2

    goto :goto_e7

    :cond_e6
    move-object v12, v1

    :goto_e7
    move-object v1, v7

    move-object v2, v12

    move v3, v11

    move-wide v4, v8

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lo7/b;->J(Lo7/k;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lo7/e;->m:Lr7/f0;

    if-ne v1, v2, :cond_100

    iput-object v12, v0, Lo7/b$a;->c:Lr7/c0;

    iput v11, v0, Lo7/b$a;->d:I

    iget-object v1, v0, Lo7/b$a;->b:Lm7/l;

    if-eqz v1, :cond_14f

    invoke-interface {v1, p0}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    goto :goto_14f

    :cond_100
    sget-object v2, Lo7/e;->o:Lr7/f0;

    if-ne v1, v2, :cond_111

    invoke-virtual {v7}, Lo7/b;->s()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_10f

    invoke-virtual {v12}, Lr7/e;->b()V

    :cond_10f
    move-object v1, v12

    goto :goto_a0

    :cond_111
    sget-object v2, Lo7/e;->n:Lr7/f0;

    if-eq v1, v2, :cond_12a

    invoke-virtual {v12}, Lr7/e;->b()V

    iput-object v1, v0, Lo7/b$a;->a:Ljava/lang/Object;

    iput-object v10, v0, Lo7/b$a;->b:Lm7/l;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v7, Lo7/b;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_14a

    iget-object v3, v14, Lm7/n;->e:Ll4/f;

    new-instance v10, Lr7/w;

    invoke-direct {v10, v2, v1, v3}, Lr7/w;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ll4/f;)V

    goto :goto_14a

    :cond_12a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_136
    invoke-virtual {v11}, Lr7/e;->b()V

    iput-object v1, v0, Lo7/b$a;->a:Ljava/lang/Object;

    iput-object v10, v0, Lo7/b$a;->b:Lm7/l;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v7, Lo7/b;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_14a

    iget-object v3, v14, Lm7/n;->e:Ll4/f;

    new-instance v10, Lr7/w;

    invoke-direct {v10, v2, v1, v3}, Lr7/w;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ll4/f;)V

    :cond_14a
    :goto_14a
    iget v1, v14, Lm7/v0;->c:I

    invoke-virtual {v14, v0, v1, v10}, Lm7/n;->G(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    :try_end_14f
    .catchall {:try_start_6e .. :try_end_14f} :catchall_15f

    :cond_14f
    :goto_14f
    invoke-virtual {v14}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm4/a;->a:Lm4/a;

    if-ne v0, v1, :cond_15e

    const-string v1, "frame"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15e
    return-object v0

    :catchall_15f
    move-exception v0

    invoke-virtual {v14}, Lm7/n;->F()V

    throw v0

    :cond_164
    invoke-virtual {v11}, Lr7/e;->b()V

    iput-object v1, v0, Lo7/b$a;->a:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_16b
    return-object v0

    :cond_16c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unreachable"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lo7/b$a;->c:Lr7/c0;

    if-eqz p1, :cond_a

    iget p0, p0, Lo7/b$a;->d:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lr7/c0;->j(ILjava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lo7/b$a;->c:Lr7/c0;

    if-eqz p1, :cond_c

    iget p0, p0, Lo7/b$a;->d:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lr7/c0;->j(ILjava/lang/Throwable;)V

    :cond_c
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lo7/b$a;->a:Ljava/lang/Object;

    sget-object v1, Lo7/e;->p:Lr7/f0;

    if-eq v0, v1, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_26

    iput-object v1, p0, Lo7/b$a;->a:Ljava/lang/Object;

    sget-object v1, Lo7/e;->l:Lr7/f0;

    if-ne v0, v1, :cond_25

    iget-object p0, p0, Lo7/b$a;->e:Lo7/b;

    sget-object v0, Lo7/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p0}, Lo7/b;->o()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_22

    new-instance p0, Lo7/l;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Lo7/l;-><init>(Ljava/lang/String;)V

    :cond_22
    sget-object v0, Lr7/e0;->a:Ljava/lang/StackTraceElement;

    throw p0

    :cond_25
    return-object v0

    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "`hasNext()` has not been invoked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
