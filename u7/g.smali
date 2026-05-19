.class public Lu7/g;
.super Lm7/j;
.source ""

# interfaces
.implements Lu7/h;
.implements Lm7/v2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu7/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/j;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,873:1\n1#2:874\n2624#3,3:875\n1855#3,2:888\n1855#3,2:896\n1855#3,2:898\n314#4,9:878\n323#4,2:890\n19#5:887\n153#6,4:892\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n505#1:875,3\n569#1:888,2\n726#1:896,2\n751#1:898,2\n545#1:878,9\n545#1:890,2\n561#1:887\n711#1:892,4\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final a:Ll4/f;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu7/g$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:Ljava/lang/Object;

.field private volatile state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lu7/g;

    const-class v1, Ljava/lang/Object;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ll4/f;)V
    .registers 3

    invoke-direct {p0}, Lm7/j;-><init>()V

    iput-object p1, p0, Lu7/g;->a:Ll4/f;

    sget-object p1, Lu7/i;->b:Lr7/f0;

    iput-object p1, p0, Lu7/g;->state:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lu7/g;->b:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lu7/g;->d:I

    sget-object p1, Lu7/i;->e:Lr7/f0;

    iput-object p1, p0, Lu7/g;->e:Ljava/lang/Object;

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

    iput-object p1, p0, Lu7/g;->c:Ljava/lang/Object;

    iput p2, p0, Lu7/g;->d:I

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lu7/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public d(Lm7/a1;)V
    .registers 2

    iput-object p1, p0, Lu7/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lu7/g;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public g(Ljava/lang/Throwable;)V
    .registers 4

    sget-object p1, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lu7/i;->c:Lr7/f0;

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    sget-object v1, Lu7/i;->d:Lr7/f0;

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lu7/g;->b:Ljava/util/List;

    if-nez p1, :cond_18

    return-void

    :cond_18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu7/g$a;

    invoke-virtual {v0}, Lu7/g$a;->b()V

    goto :goto_1c

    :cond_2c
    sget-object p1, Lu7/i;->e:Lr7/f0;

    iput-object p1, p0, Lu7/g;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lu7/g;->b:Ljava/util/List;

    return-void
.end method

.method public getContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lu7/g;->a:Ll4/f;

    return-object p0
.end method

.method public final h(Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lu7/g$a;

    iget-object v1, p0, Lu7/g;->e:Ljava/lang/Object;

    iget-object v2, p0, Lu7/g;->b:Ljava/util/List;

    if-nez v2, :cond_14

    goto :goto_38

    :cond_14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu7/g$a;

    if-eq v3, v0, :cond_18

    invoke-virtual {v3}, Lu7/g$a;->b()V

    goto :goto_18

    :cond_2a
    sget-object v2, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lu7/i;->c:Lr7/f0;

    invoke-virtual {v2, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lu7/i;->e:Lr7/f0;

    iput-object v2, p0, Lu7/g;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lu7/g;->b:Ljava/util/List;

    :goto_38
    iget-object p0, v0, Lu7/g$a;->c:Lkotlin/jvm/functions/Function3;

    iget-object v2, v0, Lu7/g$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Lu7/g$a;->d:Ljava/lang/Object;

    invoke-interface {p0, v2, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lu7/g$a;->c(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ll4/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lu7/g$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lu7/g$b;

    iget v1, v0, Lu7/g$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lu7/g$b;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lu7/g$b;

    invoke-direct {v0, p0, p1}, Lu7/g$b;-><init>(Lu7/g;Ll4/d;)V

    :goto_18
    iget-object p1, v0, Lu7/g$b;->b:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lu7/g$b;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3d

    if-eq v2, v5, :cond_34

    if-ne v2, v4, :cond_2c

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lu7/g$b;->a:Ljava/lang/Object;

    check-cast p0, Lu7/g;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_bb

    :cond_3d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lu7/g$b;->a:Ljava/lang/Object;

    iput v5, v0, Lu7/g$b;->d:I

    new-instance p1, Lm7/n;

    invoke-static {v0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v2

    invoke-direct {p1, v2, v5}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {p1}, Lm7/n;->w()V

    sget-object v2, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_52
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lu7/i;->b:Lr7/f0;

    if-ne v6, v7, :cond_66

    sget-object v7, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {p1, p0}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    goto :goto_a6

    :cond_66
    instance-of v8, v6, Ljava/util/List;

    if-eqz v8, :cond_95

    sget-object v8, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lu7/g;->j(Ljava/lang/Object;)Lu7/g$a;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v3, v7, Lu7/g$a;->g:Ljava/lang/Object;

    const/4 v8, -0x1

    iput v8, v7, Lu7/g$a;->h:I

    invoke-virtual {p0, v7, v5}, Lu7/g;->l(Lu7/g$a;Z)V

    goto :goto_7b

    :cond_95
    instance-of v2, v6, Lu7/g$a;

    if-eqz v2, :cond_c7

    sget-object v2, Lh4/z;->a:Lh4/z;

    check-cast v6, Lu7/g$a;

    iget-object v5, p0, Lu7/g;->e:Ljava/lang/Object;

    invoke-virtual {v6, p0, v5}, Lu7/g$a;->a(Lu7/h;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lm7/n;->l(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :goto_a6
    invoke-virtual {p1}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lm4/a;->a:Lm4/a;

    if-ne p1, v2, :cond_b3

    const-string v5, "frame"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b3
    if-ne p1, v2, :cond_b6

    goto :goto_b8

    :cond_b6
    sget-object p1, Lh4/z;->a:Lh4/z;

    :goto_b8
    if-ne p1, v1, :cond_bb

    return-object v1

    :cond_bb
    :goto_bb
    iput-object v3, v0, Lu7/g$b;->a:Ljava/lang/Object;

    iput v4, v0, Lu7/g$b;->d:I

    invoke-virtual {p0, v0}, Lu7/g;->h(Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c6

    return-object v1

    :cond_c6
    :goto_c6
    return-object p1

    :cond_c7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected state: "

    invoke-static {p1, v6}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lu7/g;->g(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final j(Ljava/lang/Object;)Lu7/g$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lu7/g$a<",
            "TR;>;"
        }
    .end annotation

    iget-object p0, p0, Lu7/g;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lu7/g$a;

    iget-object v2, v2, Lu7/g$a;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_a

    move-object v0, v1

    :cond_21
    check-cast v0, Lu7/g$a;

    if-eqz v0, :cond_26

    return-object v0

    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clause with object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k(Lu7/d;Lkotlin/jvm/functions/Function2;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lu7/d<",
            "+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Ll4/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lu7/g$a;

    invoke-interface {p1}, Lu7/f;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lu7/f;->a()Lkotlin/jvm/functions/Function3;

    move-result-object v2

    invoke-interface {p1}, Lu7/f;->c()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lu7/f;->b()Lkotlin/jvm/functions/Function3;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v7

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lu7/g$a;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v7, p1}, Lu7/g;->l(Lu7/g$a;Z)V

    return-void
.end method

.method public final l(Lu7/g$a;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/g$a<",
            "TR;>;Z)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "register"
    .end annotation

    sget-object v0, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lu7/g$a;

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_5b

    iget-object v2, p1, Lu7/g$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lu7/g;->b:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_3c

    :cond_21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu7/g$a;

    iget-object v4, v4, Lu7/g$a;->a:Ljava/lang/Object;

    if-ne v4, v2, :cond_37

    move v4, v0

    goto :goto_38

    :cond_37
    move v4, v1

    :goto_38
    if-eqz v4, :cond_25

    move v3, v1

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v3, v0

    :goto_3d
    if-eqz v3, :cond_40

    goto :goto_5b

    :cond_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot use select clauses on the same object: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    :goto_5b
    iget-object v2, p1, Lu7/g$a;->b:Lkotlin/jvm/functions/Function3;

    iget-object v3, p1, Lu7/g$a;->a:Ljava/lang/Object;

    iget-object v4, p1, Lu7/g$a;->d:Ljava/lang/Object;

    invoke-interface {v2, v3, p0, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lu7/g;->e:Ljava/lang/Object;

    sget-object v3, Lu7/i;->e:Lr7/f0;

    if-ne v2, v3, :cond_6b

    goto :goto_6c

    :cond_6b
    move v0, v1

    :goto_6c
    if-eqz v0, :cond_87

    if-nez p2, :cond_78

    iget-object p2, p0, Lu7/g;->b:Ljava/util/List;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_78
    iget-object p2, p0, Lu7/g;->c:Ljava/lang/Object;

    iput-object p2, p1, Lu7/g$a;->g:Ljava/lang/Object;

    iget p2, p0, Lu7/g;->d:I

    iput p2, p1, Lu7/g$a;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, Lu7/g;->c:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lu7/g;->d:I

    goto :goto_8c

    :cond_87
    sget-object p2, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8c
    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 11

    :cond_0
    :goto_0
    sget-object v0, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm7/l;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    invoke-virtual {p0, p1}, Lu7/g;->j(Ljava/lang/Object;)Lu7/g$a;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    iget-object v5, v2, Lu7/g$a;->f:Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x0

    if-eqz v5, :cond_21

    iget-object v7, v2, Lu7/g$a;->d:Ljava/lang/Object;

    invoke-interface {v5, p0, v7, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function1;

    goto :goto_22

    :cond_21
    move-object v5, v6

    :goto_22
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lm7/l;

    iput-object p2, p0, Lu7/g;->e:Ljava/lang/Object;

    sget-object p1, Lu7/i;->a:Lkotlin/jvm/functions/Function3;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-interface {v1, p1, v6, v5}, Lm7/l;->x(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_39

    move v4, p2

    goto :goto_3c

    :cond_39
    invoke-interface {v1, p1}, Lm7/l;->C(Ljava/lang/Object;)V

    :goto_3c
    if-eqz v4, :cond_3f

    return p2

    :cond_3f
    iput-object v6, p0, Lu7/g;->e:Ljava/lang/Object;

    return v3

    :cond_42
    sget-object v2, Lu7/i;->c:Lr7/f0;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move v2, v4

    goto :goto_4e

    :cond_4c
    instance-of v2, v1, Lu7/g$a;

    :goto_4e
    if-eqz v2, :cond_52

    const/4 p0, 0x3

    return p0

    :cond_52
    sget-object v2, Lu7/i;->d:Lr7/f0;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    return v3

    :cond_5b
    sget-object v2, Lu7/i;->b:Lr7/f0;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_6e
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_80

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, Li4/v;->V(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_80
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected state: "

    invoke-static {p1, v1}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
