.class public Lm7/n;
.super Lm7/v0;
.source ""

# interfaces
.implements Lm7/l;
.implements Ln4/d;
.implements Lm7/v2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/v0<",
        "TT;>;",
        "Lm7/l<",
        "TT;>;",
        "Ln4/d;",
        "Lm7/v2;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,672:1\n230#1,2:676\n232#1,8:679\n230#1,10:687\n230#1,10:698\n1#2:673\n24#3:674\n24#3:675\n22#3:697\n21#3:708\n22#3,3:709\n21#3:712\n22#3,3:713\n22#3:721\n21#3,4:722\n22#4:678\n13#4:720\n61#5,2:716\n61#5,2:718\n61#5,2:726\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n246#1:676,2\n246#1:679,8\n249#1:687,10\n254#1:698,10\n72#1:674\n158#1:675\n252#1:697\n277#1:708\n278#1:709,3\n287#1:712\n288#1:713,3\n390#1:721\n393#1:722,4\n246#1:678\n350#1:720\n329#1:716,2\n339#1:718,2\n615#1:726,2\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _parentHandle:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final d:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Ll4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lm7/n;

    const-string v2, "_decisionAndIndex"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Lm7/n;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Lm7/n;

    const-string v2, "_parentHandle"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm7/n;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ll4/d;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lm7/v0;-><init>(I)V

    iput-object p1, p0, Lm7/n;->d:Ll4/d;

    invoke-interface {p1}, Ll4/d;->getContext()Ll4/f;

    move-result-object p1

    iput-object p1, p0, Lm7/n;->e:Ll4/f;

    const p1, 0x1fffffff

    iput p1, p0, Lm7/n;->_decisionAndIndex:I

    sget-object p1, Lm7/b;->a:Lm7/b;

    iput-object p1, p0, Lm7/n;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 1

    invoke-virtual {p0}, Lm7/n;->v()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lm7/e2;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final B()Z
    .registers 5

    iget v0, p0, Lm7/v0;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    :goto_a
    if-eqz v0, :cond_26

    iget-object p0, p0, Lm7/n;->d:Ll4/d;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lr7/j;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    move p0, v2

    goto :goto_23

    :cond_22
    move p0, v3

    :goto_23
    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    return v2
.end method

.method public C(Ljava/lang/Object;)V
    .registers 2

    iget p1, p0, Lm7/v0;->c:I

    invoke-virtual {p0, p1}, Lm7/n;->q(I)V

    return-void
.end method

.method public final D(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public E()Ljava/lang/String;
    .registers 1

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final F()V
    .registers 6

    iget-object v0, p0, Lm7/n;->d:Ll4/d;

    instance-of v1, v0, Lr7/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lr7/j;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_51

    sget-object v1, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr7/k;->b:Lr7/f0;

    if-ne v3, v4, :cond_20

    sget-object v3, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_2f

    :cond_20
    instance-of v1, v3, Ljava/lang/Throwable;

    if-eqz v1, :cond_45

    sget-object v1, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_2f
    if-nez v2, :cond_32

    goto :goto_51

    :cond_32
    invoke-virtual {p0}, Lm7/n;->o()V

    invoke-virtual {p0, v2}, Lm7/n;->m(Ljava/lang/Throwable;)Z

    return-void

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Inconsistent state "

    invoke-static {v0, v3}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    :goto_51
    return-void
.end method

.method public final G(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm7/e2;

    if-eqz v2, :cond_25

    move-object v4, v1

    check-cast v4, Lm7/e2;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lm7/n;->H(Lm7/e2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lm7/n;->p()V

    invoke-virtual {p0, p2}, Lm7/n;->q(I)V

    return-void

    :cond_25
    instance-of p2, v1, Lm7/q;

    if-eqz p2, :cond_40

    check-cast v1, Lm7/q;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lm7/q;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_40

    if-eqz p3, :cond_3f

    iget-object p1, v1, Lm7/x;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lm7/n;->k(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_3f
    return-void

    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Already resumed, but proposed with update "

    invoke-static {p2, p1}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final H(Lm7/e2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/e2;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p2, Lm7/x;

    if-eqz p0, :cond_5

    goto :goto_30

    :cond_5
    invoke-static {p3}, Lm7/w0;->a(I)Z

    move-result p0

    if-nez p0, :cond_e

    if-nez p5, :cond_e

    goto :goto_30

    :cond_e
    if-nez p4, :cond_1a

    instance-of p0, p1, Lm7/j;

    if-eqz p0, :cond_18

    instance-of p0, p1, Lm7/e;

    if-eqz p0, :cond_1a

    :cond_18
    if-eqz p5, :cond_30

    :cond_1a
    new-instance p0, Lm7/w;

    instance-of p3, p1, Lm7/j;

    if-eqz p3, :cond_23

    check-cast p1, Lm7/j;

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lm7/w;-><init>(Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    move-object p2, p0

    :cond_30
    :goto_30
    return-object p2
.end method

.method public final I(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lr7/f0;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)",
            "Lr7/f0;"
        }
    .end annotation

    sget-object v0, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm7/e2;

    if-eqz v2, :cond_25

    move-object v4, v1

    check-cast v4, Lm7/e2;

    iget v6, p0, Lm7/v0;->c:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lm7/n;->H(Lm7/e2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lm7/n;->p()V

    sget-object p0, Lm7/o;->a:Lr7/f0;

    return-object p0

    :cond_25
    instance-of p0, v1, Lm7/w;

    const/4 p1, 0x0

    if-eqz p0, :cond_34

    if-eqz p2, :cond_34

    check-cast v1, Lm7/w;

    iget-object p0, v1, Lm7/w;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_34

    sget-object p1, Lm7/o;->a:Lr7/f0;

    :cond_34
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 15

    sget-object v8, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v1, v9, Lm7/e2;

    if-nez v1, :cond_66

    instance-of v1, v9, Lm7/x;

    if-eqz v1, :cond_f

    return-void

    :cond_f
    instance-of v1, v9, Lm7/w;

    if-eqz v1, :cond_50

    move-object v10, v9

    check-cast v10, Lm7/w;

    iget-object v1, v10, Lm7/w;->e:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    xor-int/2addr v1, v2

    if-eqz v1, :cond_44

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    move-object v1, v10

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lm7/w;->a(Lm7/w;Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)Lm7/w;

    move-result-object v1

    sget-object v2, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v10, Lm7/w;->b:Lm7/j;

    if-eqz v1, :cond_3c

    invoke-virtual {p0, v1, p2}, Lm7/n;->j(Lm7/j;Ljava/lang/Throwable;)V

    :cond_3c
    iget-object v1, v10, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_43

    invoke-virtual {p0, v1, p2}, Lm7/n;->k(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_43
    return-void

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called at most once"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    sget-object v10, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v11, Lm7/w;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    move-object v1, v11

    move-object v2, v9

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lm7/w;-><init>(Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    invoke-virtual {v10, p0, v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not completed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lr7/c0;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/c0<",
            "*>;I)V"
        }
    .end annotation

    sget-object v0, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_21

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lm7/n;->z(Ljava/lang/Object;)V

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invokeOnCancellation should be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Ll4/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lm7/n;->d:Ll4/d;

    return-object p0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2

    invoke-super {p0, p1}, Lm7/v0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of p0, p1, Lm7/w;

    if-eqz p0, :cond_8

    check-cast p1, Lm7/w;

    iget-object p1, p1, Lm7/w;->a:Ljava/lang/Object;

    :cond_8
    return-object p1
.end method

.method public g()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lm7/n;->v()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCallerFrame()Ln4/d;
    .registers 2

    iget-object p0, p0, Lm7/n;->d:Ll4/d;

    instance-of v0, p0, Ln4/d;

    if-eqz v0, :cond_9

    check-cast p0, Ln4/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lm7/n;->e:Ll4/f;

    return-object p0
.end method

.method public h(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lm7/j;

    if-eqz v0, :cond_7

    check-cast p1, Lm7/j;

    goto :goto_d

    :cond_7
    new-instance v0, Lm7/p1;

    invoke-direct {v0, p1}, Lm7/p1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v0

    :goto_d
    invoke-virtual {p0, p1}, Lm7/n;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lm7/x;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lm7/n;->I(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lr7/f0;

    move-result-object p0

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    invoke-virtual {p0}, Lm7/n;->v()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lm7/e2;

    return p0
.end method

.method public final j(Lm7/j;Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1, p2}, Lm7/k;->g(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_20

    :catchall_4
    move-exception p1

    iget-object p2, p0, Lm7/n;->e:Ll4/f;

    new-instance v0, Lm7/a0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lm7/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_20

    :catchall_4
    move-exception p1

    iget-object p2, p0, Lm7/n;->e:Ll4/f;

    new-instance v0, Lm7/a0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lm7/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method public l(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lm7/v0;->c:I

    invoke-virtual {p0, p1, v0, p2}, Lm7/n;->G(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public m(Ljava/lang/Throwable;)Z
    .registers 8

    sget-object v0, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm7/e2;

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    :cond_c
    new-instance v2, Lm7/q;

    instance-of v4, v1, Lm7/j;

    const/4 v5, 0x1

    if-nez v4, :cond_17

    instance-of v4, v1, Lr7/c0;

    if-eqz v4, :cond_18

    :cond_17
    move v3, v5

    :cond_18
    invoke-direct {v2, p0, p1, v3}, Lm7/q;-><init>(Ll4/d;Ljava/lang/Throwable;Z)V

    sget-object v3, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Lm7/e2;

    instance-of v2, v0, Lm7/j;

    if-eqz v2, :cond_30

    check-cast v1, Lm7/j;

    invoke-virtual {p0, v1, p1}, Lm7/n;->j(Lm7/j;Ljava/lang/Throwable;)V

    goto :goto_39

    :cond_30
    instance-of v0, v0, Lr7/c0;

    if-eqz v0, :cond_39

    check-cast v1, Lr7/c0;

    invoke-virtual {p0, v1, p1}, Lm7/n;->n(Lr7/c0;Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    invoke-virtual {p0}, Lm7/n;->p()V

    iget p1, p0, Lm7/v0;->c:I

    invoke-virtual {p0, p1}, Lm7/n;->q(I)V

    return v5
.end method

.method public final n(Lr7/c0;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/c0<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_32

    :try_start_11
    invoke-virtual {p1, v0, p2}, Lr7/c0;->j(ILjava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_31

    :catchall_15
    move-exception p1

    iget-object p2, p0, Lm7/n;->e:Ll4/f;

    new-instance v0, Lm7/a0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lm7/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lm7/h0;->a(Ll4/f;Ljava/lang/Throwable;)V

    :goto_31
    return-void

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o()V
    .registers 3

    invoke-virtual {p0}, Lm7/n;->t()Lm7/a1;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Lm7/a1;->dispose()V

    sget-object v0, Lm7/n;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lm7/d2;->a:Lm7/d2;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .registers 2

    invoke-virtual {p0}, Lm7/n;->B()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lm7/n;->o()V

    :cond_9
    return-void
.end method

.method public final q(I)V
    .registers 9

    sget-object v0, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1c

    if-ne v2, v4, :cond_10

    move v0, v3

    goto :goto_2c

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    sget-object v2, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v5, 0x1fffffff

    and-int/2addr v5, v1

    const/high16 v6, 0x40000000  # 2.0f

    add-int/2addr v5, v6

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    :goto_2c
    if-eqz v0, :cond_2f

    return-void

    :cond_2f
    invoke-virtual {p0}, Lm7/v0;->c()Ll4/d;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_37

    move v3, v4

    :cond_37
    if-nez v3, :cond_96

    instance-of v1, v0, Lr7/j;

    if-eqz v1, :cond_96

    invoke-static {p1}, Lm7/w0;->a(I)Z

    move-result p1

    iget v1, p0, Lm7/v0;->c:I

    invoke-static {v1}, Lm7/w0;->a(I)Z

    move-result v1

    if-ne p1, v1, :cond_96

    move-object p1, v0

    check-cast p1, Lr7/j;

    iget-object p1, p1, Lr7/j;->d:Lm7/f0;

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm7/f0;->isDispatchNeeded(Ll4/f;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p1, v0, p0}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    goto :goto_99

    :cond_5c
    sget-object p1, Lm7/m2;->a:Lm7/m2;

    invoke-static {}, Lm7/m2;->a()Lm7/e1;

    move-result-object p1

    invoke-virtual {p1}, Lm7/e1;->x()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p1, Lm7/e1;->c:Li4/h;

    if-nez v0, :cond_73

    new-instance v0, Li4/h;

    invoke-direct {v0}, Li4/h;-><init>()V

    iput-object v0, p1, Lm7/e1;->c:Li4/h;

    :cond_73
    invoke-virtual {v0, p0}, Li4/h;->h(Ljava/lang/Object;)V

    goto :goto_99

    :cond_77
    invoke-virtual {p1, v4}, Lm7/e1;->v(Z)V

    :try_start_7a
    invoke-virtual {p0}, Lm7/v0;->c()Ll4/d;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lm7/w0;->b(Lm7/v0;Ll4/d;Z)V

    :cond_81
    invoke-virtual {p1}, Lm7/e1;->A()Z

    move-result v0
    :try_end_85
    .catchall {:try_start_7a .. :try_end_85} :catchall_88

    if-nez v0, :cond_81

    goto :goto_8d

    :catchall_88
    move-exception v0

    const/4 v1, 0x0

    :try_start_8a
    invoke-virtual {p0, v0, v1}, Lm7/v0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_91

    :goto_8d
    invoke-virtual {p1, v4}, Lm7/e1;->q(Z)V

    goto :goto_99

    :catchall_91
    move-exception p0

    invoke-virtual {p1, v4}, Lm7/e1;->q(Z)V

    throw p0

    :cond_96
    invoke-static {p0, v0, v3}, Lm7/w0;->b(Lm7/v0;Ll4/d;Z)V

    :goto_99
    return-void
.end method

.method public r(Lm7/s1;)Ljava/lang/Throwable;
    .registers 2

    check-cast p1, Lm7/x1;

    invoke-virtual {p1}, Lm7/x1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 5

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    new-instance p1, Lm7/x;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    :goto_e
    iget v0, p0, Lm7/v0;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lm7/n;->G(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public s(Lm7/f0;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/f0;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lm7/n;->d:Ll4/d;

    instance-of v1, v0, Lr7/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast v0, Lr7/j;

    goto :goto_b

    :cond_a
    move-object v0, v2

    :goto_b
    if-eqz v0, :cond_10

    iget-object v0, v0, Lr7/j;->d:Lm7/f0;

    goto :goto_11

    :cond_10
    move-object v0, v2

    :goto_11
    if-ne v0, p1, :cond_15

    const/4 p1, 0x4

    goto :goto_17

    :cond_15
    iget p1, p0, Lm7/v0;->c:I

    :goto_17
    invoke-virtual {p0, p2, p1, v2}, Lm7/n;->G(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final t()Lm7/a1;
    .registers 2

    sget-object v0, Lm7/n;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/a1;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lm7/n;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/n;->d:Ll4/d;

    invoke-static {v1}, Lm7/m0;->c(Ll4/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm7/n;->v()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm7/e2;

    if-eqz v2, :cond_2a

    const-string v1, "Active"

    goto :goto_33

    :cond_2a
    instance-of v1, v1, Lm7/q;

    if-eqz v1, :cond_31

    const-string v1, "Cancelled"

    goto :goto_33

    :cond_31
    const-string v1, "Completed"

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm7/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lm7/n;->B()Z

    move-result v0

    sget-object v1, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1d

    if-eqz v3, :cond_1f

    const/4 v1, 0x2

    if-ne v3, v1, :cond_13

    const/4 v1, 0x0

    goto :goto_2f

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    sget-object v3, Lm7/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v4, 0x1fffffff

    and-int/2addr v4, v2

    const/high16 v5, 0x20000000

    add-int/2addr v4, v5

    invoke-virtual {v3, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    :goto_2f
    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lm7/n;->t()Lm7/a1;

    move-result-object v1

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lm7/n;->y()Lm7/a1;

    :cond_3a
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lm7/n;->F()V

    :cond_3f
    sget-object p0, Lm4/a;->a:Lm4/a;

    return-object p0

    :cond_42
    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lm7/n;->F()V

    :cond_47
    invoke-virtual {p0}, Lm7/n;->v()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm7/x;

    if-nez v1, :cond_79

    iget v1, p0, Lm7/v0;->c:I

    invoke-static {v1}, Lm7/w0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lm7/n;->e:Ll4/f;

    sget v2, Lm7/s1;->L:I

    sget-object v2, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {v1, v2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    check-cast v1, Lm7/s1;

    if-eqz v1, :cond_74

    invoke-interface {v1}, Lm7/s1;->isActive()Z

    move-result v2

    if-eqz v2, :cond_6c

    goto :goto_74

    :cond_6c
    invoke-interface {v1}, Lm7/s1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lm7/n;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_74
    :goto_74
    invoke-virtual {p0, v0}, Lm7/n;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_79
    check-cast v0, Lm7/x;

    iget-object p0, v0, Lm7/x;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public final v()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public w()V
    .registers 3

    invoke-virtual {p0}, Lm7/n;->y()Lm7/a1;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lm7/n;->A()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Lm7/a1;->dispose()V

    sget-object v0, Lm7/n;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lm7/d2;->a:Lm7/d2;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public x(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lm7/n;->I(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lr7/f0;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lm7/a1;
    .registers 8

    iget-object v0, p0, Lm7/n;->e:Ll4/f;

    sget v1, Lm7/s1;->L:I

    sget-object v1, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {v0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lm7/s1;

    const/4 v0, 0x0

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lm7/r;

    invoke-direct {v4, p0}, Lm7/r;-><init>(Lm7/n;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/s1$a;->b(Lm7/s1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lm7/a1;

    move-result-object v1

    sget-object v2, Lm7/n;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final z(Ljava/lang/Object;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v3, v10, Lm7/b;

    if-eqz v3, :cond_17

    sget-object v3, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v10, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_17
    instance-of v3, v10, Lm7/j;

    const/4 v4, 0x1

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_20

    :cond_1e
    instance-of v3, v10, Lr7/c0;

    :goto_20
    const/4 v5, 0x0

    if-nez v3, :cond_bf

    instance-of v3, v10, Lm7/x;

    const/4 v6, 0x0

    if-eqz v3, :cond_5b

    move-object v2, v10

    check-cast v2, Lm7/x;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lm7/x;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v7, v2, v6, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_57

    instance-of v4, v10, Lm7/q;

    if-eqz v4, :cond_56

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v2, v5

    :goto_3e
    if-eqz v2, :cond_42

    iget-object v5, v2, Lm7/x;->a:Ljava/lang/Throwable;

    :cond_42
    instance-of v2, v1, Lm7/j;

    if-eqz v2, :cond_4c

    check-cast v1, Lm7/j;

    invoke-virtual {v0, v1, v5}, Lm7/n;->j(Lm7/j;Ljava/lang/Throwable;)V

    goto :goto_56

    :cond_4c
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lr7/c0;

    invoke-virtual {v0, v1, v5}, Lm7/n;->n(Lr7/c0;Ljava/lang/Throwable;)V

    :cond_56
    :goto_56
    return-void

    :cond_57
    invoke-virtual {v0, v1, v10}, Lm7/n;->D(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v5

    :cond_5b
    instance-of v3, v10, Lm7/w;

    const-string v7, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v3, :cond_9b

    move-object v11, v10

    check-cast v11, Lm7/w;

    iget-object v3, v11, Lm7/w;->b:Lm7/j;

    if-nez v3, :cond_97

    instance-of v3, v1, Lm7/e;

    if-nez v3, :cond_96

    instance-of v3, v1, Lr7/c0;

    if-eqz v3, :cond_71

    goto :goto_96

    :cond_71
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Lm7/j;

    iget-object v3, v11, Lm7/w;->e:Ljava/lang/Throwable;

    if-eqz v3, :cond_7c

    goto :goto_7d

    :cond_7c
    move v4, v6

    :goto_7d
    if-eqz v4, :cond_83

    invoke-virtual {v0, v13, v3}, Lm7/n;->j(Lm7/j;Ljava/lang/Throwable;)V

    return-void

    :cond_83
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1d

    invoke-static/range {v11 .. v17}, Lm7/w;->a(Lm7/w;Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)Lm7/w;

    move-result-object v3

    sget-object v4, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0, v10, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_96
    :goto_96
    return-void

    :cond_97
    invoke-virtual {v0, v1, v10}, Lm7/n;->D(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v5

    :cond_9b
    instance-of v3, v1, Lm7/e;

    if-nez v3, :cond_be

    instance-of v3, v1, Lr7/c0;

    if-eqz v3, :cond_a4

    goto :goto_be

    :cond_a4
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lm7/j;

    new-instance v11, Lm7/w;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    move-object v3, v11

    move-object v4, v10

    invoke-direct/range {v3 .. v9}, Lm7/w;-><init>(Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)V

    sget-object v3, Lm7/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_be
    :goto_be
    return-void

    :cond_bf
    invoke-virtual {v0, v1, v10}, Lm7/n;->D(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v5
.end method
