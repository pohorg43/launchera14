.class public Lm7/x1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/s1;
.implements Lm7/u;
.implements Lm7/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/x1$a;,
        Lm7/x1$b;,
        Lm7/x1$c;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 10 CompletionHandler.common.kt\nkotlinx/coroutines/CompletionHandler_commonKt\n+ 11 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 12 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 13 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1451:1\n705#1,2:1458\n366#1,2:1468\n368#1,4:1473\n372#1,4:1479\n376#1,2:1486\n366#1,2:1488\n368#1,4:1493\n372#1,4:1499\n376#1,2:1506\n177#1,2:1515\n706#1:1517\n177#1,2:1518\n177#1,2:1537\n177#1,2:1552\n705#1,2:1554\n705#1,2:1556\n177#1,2:1558\n705#1,2:1560\n177#1,2:1562\n177#1,2:1569\n177#1,2:1571\n1#2:1452\n1#2:1477\n1#2:1497\n28#3,4:1453\n28#3,4:1520\n28#3,4:1564\n28#3,4:1573\n20#4:1457\n20#4:1524\n20#4:1568\n20#4:1577\n288#5,2:1460\n288#5,2:1462\n19#6:1464\n162#7:1465\n162#7:1466\n153#7,4:1580\n75#8:1467\n75#8:1478\n75#8:1498\n75#8:1511\n341#9,3:1470\n344#9,3:1483\n341#9,3:1490\n344#9,3:1503\n341#9,3:1508\n344#9,3:1512\n47#10:1525\n22#11:1526\n22#11:1527\n13#11:1548\n13#11:1551\n13#11:1578\n13#11:1579\n13#11:1584\n13#11:1585\n134#12:1528\n73#12,3:1529\n135#12,5:1532\n314#13,9:1539\n323#13,2:1549\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n249#1:1458,2\n331#1:1468,2\n331#1:1473,4\n331#1:1479,4\n331#1:1486,2\n363#1:1488,2\n363#1:1493,4\n363#1:1499,4\n363#1:1506,2\n380#1:1515,2\n425#1:1517\n460#1:1518,2\n552#1:1537,2\n593#1:1552,2\n620#1:1554,2\n629#1:1556,2\n693#1:1558,2\n722#1:1560,2\n735#1:1562,2\n808#1:1569,2\n830#1:1571,2\n331#1:1477\n363#1:1497\n212#1:1453,4\n477#1:1520,4\n738#1:1564,4\n883#1:1573,4\n212#1:1457\n477#1:1524\n738#1:1568\n883#1:1577\n260#1:1460,2\n264#1:1462,2\n272#1:1464\n278#1:1465\n280#1:1466\n1217#1:1580,4\n283#1:1467\n331#1:1478\n363#1:1498\n371#1:1511\n331#1:1470,3\n331#1:1483,3\n363#1:1490,3\n363#1:1503,3\n367#1:1508,3\n367#1:1512,3\n482#1:1525\n494#1:1526\n504#1:1527\n560#1:1548\n576#1:1551\n923#1:1578\n973#1:1579\n1236#1:1584\n1258#1:1585\n525#1:1528\n525#1:1529,3\n525#1:1532,5\n558#1:1539,9\n558#1:1549,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lm7/x1;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_parentHandle"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm7/x1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    sget-object p1, Lm7/y1;->g:Lm7/d1;

    goto :goto_a

    :cond_8
    sget-object p1, Lm7/y1;->f:Lm7/d1;

    :goto_a
    iput-object p1, p0, Lm7/x1;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic h0(Lm7/x1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .registers 5

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lm7/x1;->g0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Lm7/c2;Lm7/w1;)Z
    .registers 8

    new-instance v0, Lm7/x1$d;

    invoke-direct {v0, p3, p0, p1}, Lm7/x1$d;-><init>(Lr7/q;Lm7/x1;Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p2}, Lr7/q;->g()Lr7/q;

    move-result-object p0

    sget-object p1, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, Lr7/q$a;->c:Lr7/q;

    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_20

    move p0, v2

    goto :goto_29

    :cond_20
    invoke-virtual {v0, p0}, Lr7/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_28

    move p0, v3

    goto :goto_29

    :cond_28
    move p0, v1

    :goto_29
    if-eq p0, v3, :cond_2e

    if-eq p0, v1, :cond_2f

    goto :goto_5

    :cond_2e
    move v2, v3

    :cond_2f
    return v2
.end method

.method public E(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final F(Ljava/lang/Object;)Z
    .registers 11

    sget-object v0, Lm7/y1;->a:Lr7/f0;

    invoke-virtual {p0}, Lm7/x1;->P()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3a

    :cond_b
    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm7/n1;

    if-eqz v1, :cond_33

    instance-of v1, v0, Lm7/x1$c;

    if-eqz v1, :cond_21

    move-object v1, v0

    check-cast v1, Lm7/x1$c;

    invoke-virtual {v1}, Lm7/x1$c;->g()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_33

    :cond_21
    new-instance v1, Lm7/x;

    invoke-virtual {p0, p1}, Lm7/x1;->L(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v1, v5, v3, v2}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0, v0, v1}, Lm7/x1;->i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm7/y1;->c:Lr7/f0;

    if-eq v0, v1, :cond_b

    goto :goto_35

    :cond_33
    :goto_33
    sget-object v0, Lm7/y1;->a:Lr7/f0;

    :goto_35
    sget-object v1, Lm7/y1;->b:Lr7/f0;

    if-ne v0, v1, :cond_3a

    return v4

    :cond_3a
    sget-object v1, Lm7/y1;->a:Lr7/f0;

    if-ne v0, v1, :cond_de

    const/4 v0, 0x0

    move-object v1, v0

    :cond_40
    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lm7/x1$c;

    if-eqz v6, :cond_8a

    monitor-enter v5

    :try_start_49
    move-object v2, v5

    check-cast v2, Lm7/x1$c;

    invoke-virtual {v2}, Lm7/x1$c;->h()Z

    move-result v2

    if-eqz v2, :cond_57

    sget-object p1, Lm7/y1;->d:Lr7/f0;
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_87

    monitor-exit v5

    goto/16 :goto_dd

    :cond_57
    :try_start_57
    move-object v2, v5

    check-cast v2, Lm7/x1$c;

    invoke-virtual {v2}, Lm7/x1$c;->f()Z

    move-result v2

    if-nez p1, :cond_62

    if-nez v2, :cond_6e

    :cond_62
    if-nez v1, :cond_68

    invoke-virtual {p0, p1}, Lm7/x1;->L(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_68
    move-object p1, v5

    check-cast p1, Lm7/x1$c;

    invoke-virtual {p1, v1}, Lm7/x1$c;->a(Ljava/lang/Throwable;)V

    :cond_6e
    move-object p1, v5

    check-cast p1, Lm7/x1$c;

    invoke-virtual {p1}, Lm7/x1$c;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_87

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_7a

    move-object v0, p1

    :cond_7a
    monitor-exit v5

    if-eqz v0, :cond_84

    check-cast v5, Lm7/x1$c;

    iget-object p1, v5, Lm7/x1$c;->a:Lm7/c2;

    invoke-virtual {p0, p1, v0}, Lm7/x1;->a0(Lm7/c2;Ljava/lang/Throwable;)V

    :cond_84
    sget-object p1, Lm7/y1;->a:Lr7/f0;

    goto :goto_dd

    :catchall_87
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_8a
    instance-of v6, v5, Lm7/n1;

    if-eqz v6, :cond_db

    if-nez v1, :cond_94

    invoke-virtual {p0, p1}, Lm7/x1;->L(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_94
    move-object v6, v5

    check-cast v6, Lm7/n1;

    invoke-interface {v6}, Lm7/n1;->isActive()Z

    move-result v7

    if-eqz v7, :cond_bc

    invoke-virtual {p0, v6}, Lm7/x1;->Q(Lm7/n1;)Lm7/c2;

    move-result-object v5

    if-nez v5, :cond_a4

    goto :goto_b1

    :cond_a4
    new-instance v7, Lm7/x1$c;

    invoke-direct {v7, v5, v3, v1}, Lm7/x1$c;-><init>(Lm7/c2;ZLjava/lang/Throwable;)V

    sget-object v8, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b3

    :goto_b1
    move v5, v3

    goto :goto_b7

    :cond_b3
    invoke-virtual {p0, v5, v1}, Lm7/x1;->a0(Lm7/c2;Ljava/lang/Throwable;)V

    move v5, v4

    :goto_b7
    if-eqz v5, :cond_40

    sget-object p1, Lm7/y1;->a:Lr7/f0;

    goto :goto_dd

    :cond_bc
    new-instance v6, Lm7/x;

    invoke-direct {v6, v1, v3, v2}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0, v5, v6}, Lm7/x1;->i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lm7/y1;->a:Lr7/f0;

    if-eq v6, v7, :cond_cf

    sget-object v5, Lm7/y1;->c:Lr7/f0;

    if-eq v6, v5, :cond_40

    move-object v0, v6

    goto :goto_de

    :cond_cf
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen in "

    invoke-static {p1, v5}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_db
    sget-object p1, Lm7/y1;->d:Lr7/f0;

    :goto_dd
    move-object v0, p1

    :cond_de
    :goto_de
    sget-object p1, Lm7/y1;->a:Lr7/f0;

    if-ne v0, p1, :cond_e3

    goto :goto_f0

    :cond_e3
    sget-object p1, Lm7/y1;->b:Lr7/f0;

    if-ne v0, p1, :cond_e8

    goto :goto_f0

    :cond_e8
    sget-object p1, Lm7/y1;->d:Lr7/f0;

    if-ne v0, p1, :cond_ed

    goto :goto_f1

    :cond_ed
    invoke-virtual {p0, v0}, Lm7/x1;->E(Ljava/lang/Object;)V

    :goto_f0
    move v3, v4

    :goto_f1
    return v3
.end method

.method public G(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lm7/x1;->F(Ljava/lang/Object;)Z

    return-void
.end method

.method public final H(Ljava/lang/Throwable;)Z
    .registers 5

    invoke-virtual {p0}, Lm7/x1;->W()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Lm7/x1;->R()Lm7/s;

    move-result-object p0

    if-eqz p0, :cond_20

    sget-object v2, Lm7/d2;->a:Lm7/d2;

    if-ne p0, v2, :cond_15

    goto :goto_20

    :cond_15
    invoke-interface {p0, p1}, Lm7/s;->a(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_1f

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    return v0
.end method

.method public I()Ljava/lang/String;
    .registers 1

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public J(Ljava/lang/Throwable;)Z
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lm7/x1;->F(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lm7/x1;->O()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public final K(Lm7/n1;Ljava/lang/Object;)V
    .registers 10

    invoke-virtual {p0}, Lm7/x1;->R()Lm7/s;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lm7/a1;->dispose()V

    sget-object v0, Lm7/d2;->a:Lm7/d2;

    sget-object v1, Lm7/x1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    instance-of v0, p2, Lm7/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    check-cast p2, Lm7/x;

    goto :goto_19

    :cond_18
    move-object p2, v1

    :goto_19
    if-eqz p2, :cond_1e

    iget-object p2, p2, Lm7/x;->a:Ljava/lang/Throwable;

    goto :goto_1f

    :cond_1e
    move-object p2, v1

    :goto_1f
    instance-of v0, p1, Lm7/w1;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_4d

    :try_start_27
    move-object v0, p1

    check-cast v0, Lm7/w1;

    invoke-virtual {v0, p2}, Lm7/z;->i(Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2e

    goto :goto_9a

    :catchall_2e
    move-exception p2

    new-instance v0, Lm7/a0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lm7/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lm7/x1;->U(Ljava/lang/Throwable;)V

    goto :goto_9a

    :cond_4d
    invoke-interface {p1}, Lm7/n1;->b()Lm7/c2;

    move-result-object p1

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lr7/q;

    :goto_5e
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    instance-of v4, v0, Lm7/w1;

    if-eqz v4, :cond_90

    move-object v4, v0

    check-cast v4, Lm7/w1;

    :try_start_6b
    invoke-virtual {v4, p2}, Lm7/z;->i(Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_90

    :catchall_6f
    move-exception v5

    if-eqz v1, :cond_76

    invoke-static {v1, v5}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_90

    :cond_76
    new-instance v1, Lm7/a0;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lm7/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    invoke-virtual {v0}, Lr7/q;->f()Lr7/q;

    move-result-object v0

    goto :goto_5e

    :cond_95
    if-eqz v1, :cond_9a

    invoke-virtual {p0, v1}, Lm7/x1;->U(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public final L(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_6
    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_23

    const/4 p1, 0x0

    new-instance v0, Lm7/t1;

    invoke-virtual {p0}, Lm7/x1;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lm7/t1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm7/s1;)V

    move-object p1, v0

    goto :goto_23

    :cond_18
    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lm7/f2;

    invoke-interface {p1}, Lm7/f2;->o()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_23
    :goto_23
    return-object p1
.end method

.method public final M(Lm7/x1$c;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p2, Lm7/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lm7/x;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-eqz v0, :cond_e

    iget-object v1, v0, Lm7/x;->a:Ljava/lang/Throwable;

    :cond_e
    monitor-enter p1

    :try_start_f
    invoke-virtual {p1}, Lm7/x1$c;->f()Z

    invoke-virtual {p1, v1}, Lm7/x1$c;->i(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lm7/x1;->N(Lm7/x1$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_24

    goto :goto_53

    :cond_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eq v5, v2, :cond_35

    if-eq v5, v2, :cond_35

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_35

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-static {v2, v5}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_9f

    goto :goto_35

    :cond_53
    :goto_53
    monitor-exit p1

    const/4 v0, 0x0

    if-nez v2, :cond_58

    goto :goto_61

    :cond_58
    if-ne v2, v1, :cond_5b

    goto :goto_61

    :cond_5b
    new-instance p2, Lm7/x;

    const/4 v1, 0x2

    invoke-direct {p2, v2, v0, v1}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    :goto_61
    if-eqz v2, :cond_85

    invoke-virtual {p0, v2}, Lm7/x1;->H(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_72

    invoke-virtual {p0, v2}, Lm7/x1;->T(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_72

    :cond_70
    move v1, v0

    goto :goto_73

    :cond_72
    :goto_72
    move v1, v3

    :goto_73
    if-eqz v1, :cond_85

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Lm7/x;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lm7/x;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_85
    invoke-virtual {p0, p2}, Lm7/x1;->b0(Ljava/lang/Object;)V

    sget-object v0, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lm7/n1;

    if-eqz v1, :cond_97

    new-instance v1, Lm7/o1;

    move-object v2, p2

    check-cast v2, Lm7/n1;

    invoke-direct {v1, v2}, Lm7/o1;-><init>(Lm7/n1;)V

    goto :goto_98

    :cond_97
    move-object v1, p2

    :goto_98
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lm7/x1;->K(Lm7/n1;Ljava/lang/Object;)V

    return-object p2

    :catchall_9f
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final N(Lm7/x1$c;Ljava/util/List;)Ljava/lang/Throwable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/x1$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lm7/x1$c;->f()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lm7/t1;

    invoke-virtual {p0}, Lm7/x1;->I()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lm7/t1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm7/s1;)V

    return-object p1

    :cond_17
    return-object v1

    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1c

    goto :goto_31

    :cond_30
    move-object p1, v1

    :goto_31
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_36

    return-object p1

    :cond_36
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    instance-of v2, p1, Lm7/p2;

    if-eqz v2, :cond_63

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eq v3, p1, :cond_5a

    instance-of v3, v3, Lm7/p2;

    if-eqz v3, :cond_5a

    move v3, v0

    goto :goto_5b

    :cond_5a
    move v3, p0

    :goto_5b
    if-eqz v3, :cond_45

    move-object v1, v2

    :cond_5e
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_63

    return-object v1

    :cond_63
    return-object p1
.end method

.method public O()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public P()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final Q(Lm7/n1;)Lm7/c2;
    .registers 4

    invoke-interface {p1}, Lm7/n1;->b()Lm7/c2;

    move-result-object v0

    if-nez v0, :cond_36

    instance-of v0, p1, Lm7/d1;

    if-eqz v0, :cond_10

    new-instance v0, Lm7/c2;

    invoke-direct {v0}, Lm7/c2;-><init>()V

    goto :goto_36

    :cond_10
    instance-of v0, p1, Lm7/w1;

    if-eqz v0, :cond_1b

    check-cast p1, Lm7/w1;

    invoke-virtual {p0, p1}, Lm7/x1;->d0(Lm7/w1;)V

    const/4 v0, 0x0

    goto :goto_36

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    return-object v0
.end method

.method public final R()Lm7/s;
    .registers 2

    sget-object v0, Lm7/x1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/s;

    return-object p0
.end method

.method public final S()Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lr7/y;

    if-nez v2, :cond_b

    return-object v1

    :cond_b
    check-cast v1, Lr7/y;

    invoke-virtual {v1, p0}, Lr7/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public T(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public U(Ljava/lang/Throwable;)V
    .registers 2

    throw p1
.end method

.method public final V(Lm7/s1;)V
    .registers 4

    if-nez p1, :cond_a

    sget-object p1, Lm7/d2;->a:Lm7/d2;

    sget-object v0, Lm7/x1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-interface {p1}, Lm7/s1;->start()Z

    invoke-interface {p1, p0}, Lm7/s1;->r(Lm7/u;)Lm7/s;

    move-result-object p1

    sget-object v0, Lm7/x1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm7/x1;->p()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lm7/a1;->dispose()V

    sget-object p1, Lm7/d2;->a:Lm7/d2;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public W()Z
    .registers 1

    instance-of p0, p0, Lm7/f;

    return p0
.end method

.method public final X(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :cond_0
    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lm7/x1;->i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm7/y1;->a:Lr7/f0;

    if-ne v0, v1, :cond_38

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, Lm7/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    check-cast p1, Lm7/x;

    goto :goto_30

    :cond_2f
    move-object p1, v2

    :goto_30
    if-eqz p1, :cond_34

    iget-object v2, p1, Lm7/x;->a:Ljava/lang/Throwable;

    :cond_34
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_38
    sget-object v1, Lm7/y1;->c:Lr7/f0;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Z(Lr7/q;)Lm7/t;
    .registers 2

    :goto_0
    invoke-virtual {p1}, Lr7/q;->h()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lr7/q;->g()Lr7/q;

    move-result-object p1

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lr7/q;->f()Lr7/q;

    move-result-object p1

    invoke-virtual {p1}, Lr7/q;->h()Z

    move-result p0

    if-nez p0, :cond_b

    instance-of p0, p1, Lm7/t;

    if-eqz p0, :cond_1c

    check-cast p1, Lm7/t;

    return-object p1

    :cond_1c
    instance-of p0, p1, Lm7/c2;

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    if-nez p1, :cond_d

    const/4 p1, 0x0

    new-instance v0, Lm7/t1;

    invoke-virtual {p0}, Lm7/x1;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lm7/t1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm7/s1;)V

    move-object p1, v0

    :cond_d
    invoke-virtual {p0, p1}, Lm7/x1;->G(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a0(Lm7/c2;Ljava/lang/Throwable;)V
    .registers 9

    invoke-virtual {p1}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lr7/q;

    const/4 v1, 0x0

    :goto_c
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    instance-of v2, v0, Lm7/u1;

    if-eqz v2, :cond_42

    move-object v2, v0

    check-cast v2, Lm7/w1;

    :try_start_19
    invoke-virtual {v2, p2}, Lm7/z;->i(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_42

    :catchall_1d
    move-exception v3

    if-eqz v1, :cond_24

    invoke-static {v1, v3}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_42

    :cond_24
    new-instance v1, Lm7/a0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lm7/a0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    invoke-virtual {v0}, Lr7/q;->f()Lr7/q;

    move-result-object v0

    goto :goto_c

    :cond_47
    if-eqz v1, :cond_4c

    invoke-virtual {p0, v1}, Lm7/x1;->U(Ljava/lang/Throwable;)V

    :cond_4c
    invoke-virtual {p0, p2}, Lm7/x1;->H(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public b0(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final c()Lj7/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj7/h<",
            "Lm7/s1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lm7/x1$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm7/x1$e;-><init>(Lm7/x1;Ll4/d;)V

    invoke-static {v0}, Lp4/c;->d(Lkotlin/jvm/functions/Function2;)Lj7/h;

    move-result-object p0

    return-object p0
.end method

.method public c0()V
    .registers 1

    return-void
.end method

.method public final d0(Lm7/w1;)V
    .registers 4

    new-instance v0, Lm7/c2;

    invoke-direct {v0}, Lm7/c2;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p1}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_19

    goto :goto_24

    :cond_19
    sget-object v1, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, p1}, Lr7/q;->d(Lr7/q;)V

    :goto_24
    invoke-virtual {p1}, Lr7/q;->f()Lr7/q;

    move-result-object v0

    sget-object v1, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Lm7/f2;)V
    .registers 2

    invoke-virtual {p0, p1}, Lm7/x1;->F(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e0(Ljava/lang/Object;)I
    .registers 6

    instance-of v0, p1, Lm7/d1;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lm7/d1;

    iget-boolean v0, v0, Lm7/d1;->a:Z

    if-eqz v0, :cond_f

    return v3

    :cond_f
    sget-object v0, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lm7/y1;->g:Lm7/d1;

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    invoke-virtual {p0}, Lm7/x1;->c0()V

    return v2

    :cond_1e
    instance-of v0, p1, Lm7/m1;

    if-eqz v0, :cond_34

    sget-object v0, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lm7/m1;

    iget-object v3, v3, Lm7/m1;->a:Lm7/c2;

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    :cond_30
    invoke-virtual {p0}, Lm7/x1;->c0()V

    return v2

    :cond_34
    return v3
.end method

.method public final f(ZZLkotlin/jvm/functions/Function1;)Lm7/a1;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)",
            "Lm7/a1;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    instance-of v1, p3, Lm7/u1;

    if-eqz v1, :cond_b

    move-object v1, p3

    check-cast v1, Lm7/u1;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    if-nez v1, :cond_25

    new-instance v1, Lm7/q1;

    invoke-direct {v1, p3}, Lm7/q1;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_25

    :cond_14
    instance-of v1, p3, Lm7/w1;

    if-eqz v1, :cond_1c

    move-object v1, p3

    check-cast v1, Lm7/w1;

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    :goto_1d
    if-eqz v1, :cond_20

    goto :goto_25

    :cond_20
    new-instance v1, Lm7/r1;

    invoke-direct {v1, p3}, Lm7/r1;-><init>(Lkotlin/jvm/functions/Function1;)V

    :cond_25
    :goto_25
    iput-object p0, v1, Lm7/w1;->d:Lm7/x1;

    :cond_27
    :goto_27
    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lm7/d1;

    if-eqz v3, :cond_55

    move-object v3, v2

    check-cast v3, Lm7/d1;

    iget-boolean v4, v3, Lm7/d1;->a:Z

    if-eqz v4, :cond_3f

    sget-object v3, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    :cond_3f
    new-instance v2, Lm7/c2;

    invoke-direct {v2}, Lm7/c2;-><init>()V

    iget-boolean v4, v3, Lm7/d1;->a:Z

    if-eqz v4, :cond_49

    goto :goto_4f

    :cond_49
    new-instance v4, Lm7/m1;

    invoke-direct {v4, v2}, Lm7/m1;-><init>(Lm7/c2;)V

    move-object v2, v4

    :goto_4f
    sget-object v4, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_27

    :cond_55
    instance-of v3, v2, Lm7/n1;

    if-eqz v3, :cond_ae

    move-object v3, v2

    check-cast v3, Lm7/n1;

    invoke-interface {v3}, Lm7/n1;->b()Lm7/c2;

    move-result-object v3

    if-nez v3, :cond_6d

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lm7/w1;

    invoke-virtual {p0, v2}, Lm7/x1;->d0(Lm7/w1;)V

    goto :goto_27

    :cond_6d
    sget-object v4, Lm7/d2;->a:Lm7/d2;

    if-eqz p1, :cond_9e

    instance-of v5, v2, Lm7/x1$c;

    if-eqz v5, :cond_9e

    monitor-enter v2

    :try_start_76
    move-object v5, v2

    check-cast v5, Lm7/x1$c;

    invoke-virtual {v5}, Lm7/x1$c;->e()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_8c

    instance-of v6, p3, Lm7/t;

    if-eqz v6, :cond_99

    move-object v6, v2

    check-cast v6, Lm7/x1$c;

    invoke-virtual {v6}, Lm7/x1$c;->g()Z

    move-result v6

    if-nez v6, :cond_99

    :cond_8c
    invoke-virtual {p0, v2, v3, v1}, Lm7/x1;->D(Ljava/lang/Object;Lm7/c2;Lm7/w1;)Z

    move-result v4
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_9b

    if-nez v4, :cond_94

    monitor-exit v2

    goto :goto_27

    :cond_94
    if-nez v5, :cond_98

    monitor-exit v2

    return-object v1

    :cond_98
    move-object v4, v1

    :cond_99
    monitor-exit v2

    goto :goto_9f

    :catchall_9b
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_9e
    move-object v5, v0

    :goto_9f
    if-eqz v5, :cond_a7

    if-eqz p2, :cond_a6

    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6
    return-object v4

    :cond_a7
    invoke-virtual {p0, v2, v3, v1}, Lm7/x1;->D(Ljava/lang/Object;Lm7/c2;Lm7/w1;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    :cond_ae
    if-eqz p2, :cond_bf

    instance-of p0, v2, Lm7/x;

    if-eqz p0, :cond_b7

    check-cast v2, Lm7/x;

    goto :goto_b8

    :cond_b7
    move-object v2, v0

    :goto_b8
    if-eqz v2, :cond_bc

    iget-object v0, v2, Lm7/x;->a:Ljava/lang/Throwable;

    :cond_bc
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    sget-object p0, Lm7/d2;->a:Lm7/d2;

    return-object p0
.end method

.method public final f0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of p0, p1, Lm7/x1$c;

    const-string v0, "Active"

    if-eqz p0, :cond_1a

    check-cast p1, Lm7/x1$c;

    invoke-virtual {p1}, Lm7/x1$c;->f()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string v0, "Cancelling"

    goto :goto_33

    :cond_11
    invoke-virtual {p1}, Lm7/x1$c;->g()Z

    move-result p0

    if-eqz p0, :cond_33

    const-string v0, "Completing"

    goto :goto_33

    :cond_1a
    instance-of p0, p1, Lm7/n1;

    if-eqz p0, :cond_2a

    check-cast p1, Lm7/n1;

    invoke-interface {p1}, Lm7/n1;->isActive()Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_33

    :cond_27
    const-string v0, "New"

    goto :goto_33

    :cond_2a
    instance-of p0, p1, Lm7/x;

    if-eqz p0, :cond_31

    const-string v0, "Cancelled"

    goto :goto_33

    :cond_31
    const-string v0, "Completed"

    :cond_33
    :goto_33
    return-object v0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Ll4/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ll4/f$a$a;->a(Ll4/f$a;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/util/concurrent/CancellationException;
    .registers 5

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm7/x1$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_49

    check-cast v0, Lm7/x1$c;

    invoke-virtual {v0}, Lm7/x1$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lm7/x1;->g0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    goto :goto_7b

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    instance-of v1, v0, Lm7/n1;

    if-nez v1, :cond_7c

    instance-of v1, v0, Lm7/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    check-cast v0, Lm7/x;

    iget-object v0, v0, Lm7/x;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lm7/x1;->h0(Lm7/x1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    goto :goto_7b

    :cond_5c
    new-instance v0, Lm7/t1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lm7/t1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm7/s1;)V

    move-object p0, v0

    :goto_7b
    return-object p0

    :cond_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .registers 4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_16

    new-instance v0, Lm7/t1;

    if-nez p2, :cond_13

    invoke-virtual {p0}, Lm7/x1;->I()Ljava/lang/String;

    move-result-object p2

    :cond_13
    invoke-direct {v0, p2, p1, p0}, Lm7/t1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm7/s1;)V

    :cond_16
    return-object v0
.end method

.method public get(Ll4/f$b;)Ll4/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ll4/f$a;",
            ">(",
            "Ll4/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ll4/f$a$a;->b(Ll4/f$a;Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ll4/f$b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4/f$b<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lm7/s1$b;->a:Lm7/s1$b;

    return-object p0
.end method

.method public getParent()Lm7/s1;
    .registers 1

    invoke-virtual {p0}, Lm7/x1;->R()Lm7/s;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lm7/s;->getParent()Lm7/s1;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final i0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p1, Lm7/n1;

    if-nez v0, :cond_7

    sget-object p0, Lm7/y1;->a:Lr7/f0;

    return-object p0

    :cond_7
    instance-of v0, p1, Lm7/d1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    instance-of v0, p1, Lm7/w1;

    if-eqz v0, :cond_3f

    :cond_11
    instance-of v0, p1, Lm7/t;

    if-nez v0, :cond_3f

    instance-of v0, p2, Lm7/x;

    if-nez v0, :cond_3f

    check-cast p1, Lm7/n1;

    sget-object v0, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v3, p2, Lm7/n1;

    if-eqz v3, :cond_2a

    new-instance v3, Lm7/o1;

    move-object v4, p2

    check-cast v4, Lm7/n1;

    invoke-direct {v3, v4}, Lm7/o1;-><init>(Lm7/n1;)V

    goto :goto_2b

    :cond_2a
    move-object v3, p2

    :goto_2b
    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    move v1, v2

    goto :goto_39

    :cond_33
    invoke-virtual {p0, p2}, Lm7/x1;->b0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lm7/x1;->K(Lm7/n1;Ljava/lang/Object;)V

    :goto_39
    if-eqz v1, :cond_3c

    return-object p2

    :cond_3c
    sget-object p0, Lm7/y1;->c:Lr7/f0;

    return-object p0

    :cond_3f
    check-cast p1, Lm7/n1;

    invoke-virtual {p0, p1}, Lm7/x1;->Q(Lm7/n1;)Lm7/c2;

    move-result-object v0

    if-nez v0, :cond_4b

    sget-object p0, Lm7/y1;->c:Lr7/f0;

    goto/16 :goto_d3

    :cond_4b
    instance-of v3, p1, Lm7/x1$c;

    const/4 v4, 0x0

    if-eqz v3, :cond_54

    move-object v3, p1

    check-cast v3, Lm7/x1$c;

    goto :goto_55

    :cond_54
    move-object v3, v4

    :goto_55
    if-nez v3, :cond_5c

    new-instance v3, Lm7/x1$c;

    invoke-direct {v3, v0, v2, v4}, Lm7/x1$c;-><init>(Lm7/c2;ZLjava/lang/Throwable;)V

    :cond_5c
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    monitor-enter v3

    :try_start_62
    invoke-virtual {v3}, Lm7/x1$c;->g()Z

    move-result v5

    if-eqz v5, :cond_6d

    sget-object p0, Lm7/y1;->a:Lr7/f0;
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_d4

    monitor-exit v3

    goto/16 :goto_d3

    :cond_6d
    :try_start_6d
    sget-object v5, Lm7/x1$c;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eq v3, p1, :cond_80

    sget-object v5, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    sget-object p0, Lm7/y1;->c:Lr7/f0;
    :try_end_7e
    .catchall {:try_start_6d .. :try_end_7e} :catchall_d4

    monitor-exit v3

    goto :goto_d3

    :cond_80
    :try_start_80
    invoke-virtual {v3}, Lm7/x1$c;->f()Z

    move-result v5

    instance-of v6, p2, Lm7/x;

    if-eqz v6, :cond_8c

    move-object v6, p2

    check-cast v6, Lm7/x;

    goto :goto_8d

    :cond_8c
    move-object v6, v4

    :goto_8d
    if-eqz v6, :cond_94

    iget-object v6, v6, Lm7/x;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v6}, Lm7/x1$c;->a(Ljava/lang/Throwable;)V

    :cond_94
    invoke-virtual {v3}, Lm7/x1$c;->e()Ljava/lang/Throwable;

    move-result-object v6

    xor-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a4

    goto :goto_a5

    :cond_a4
    move-object v6, v4

    :goto_a5
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_a7
    .catchall {:try_start_80 .. :try_end_a7} :catchall_d4

    monitor-exit v3

    if-eqz v6, :cond_ad

    invoke-virtual {p0, v0, v6}, Lm7/x1;->a0(Lm7/c2;Ljava/lang/Throwable;)V

    :cond_ad
    instance-of v0, p1, Lm7/t;

    if-eqz v0, :cond_b5

    move-object v0, p1

    check-cast v0, Lm7/t;

    goto :goto_b6

    :cond_b5
    move-object v0, v4

    :goto_b6
    if-nez v0, :cond_c3

    invoke-interface {p1}, Lm7/n1;->b()Lm7/c2;

    move-result-object p1

    if-eqz p1, :cond_c4

    invoke-virtual {p0, p1}, Lm7/x1;->Z(Lr7/q;)Lm7/t;

    move-result-object v4

    goto :goto_c4

    :cond_c3
    move-object v4, v0

    :cond_c4
    :goto_c4
    if-eqz v4, :cond_cf

    invoke-virtual {p0, v3, v4, p2}, Lm7/x1;->j0(Lm7/x1$c;Lm7/t;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    sget-object p0, Lm7/y1;->b:Lr7/f0;

    goto :goto_d3

    :cond_cf
    invoke-virtual {p0, v3, p2}, Lm7/x1;->M(Lm7/x1$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_d3
    return-object p0

    :catchall_d4
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public isActive()Z
    .registers 2

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lm7/n1;

    if-eqz v0, :cond_12

    check-cast p0, Lm7/n1;

    invoke-interface {p0}, Lm7/n1;->isActive()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final j(Lkotlin/jvm/functions/Function1;)Lm7/a1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)",
            "Lm7/a1;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lm7/x1;->f(ZZLkotlin/jvm/functions/Function1;)Lm7/a1;

    move-result-object p0

    return-object p0
.end method

.method public final j0(Lm7/x1$c;Lm7/t;Ljava/lang/Object;)Z
    .registers 10

    :cond_0
    iget-object v0, p2, Lm7/t;->e:Lm7/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lm7/x1$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lm7/x1$b;-><init>(Lm7/x1;Lm7/x1$c;Lm7/t;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/s1$a;->b(Lm7/s1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lm7/a1;

    move-result-object v0

    sget-object v1, Lm7/d2;->a:Lm7/d2;

    if-eq v0, v1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    invoke-virtual {p0, p2}, Lm7/x1;->Z(Lr7/q;)Lm7/t;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public minusKey(Ll4/f$b;)Ll4/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f$b<",
            "*>;)",
            "Ll4/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Ll4/f$a$a;->c(Ll4/f$a;Ll4/f$b;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/util/concurrent/CancellationException;
    .registers 5

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm7/x1$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lm7/x1$c;

    invoke-virtual {v1}, Lm7/x1$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_20

    :cond_11
    instance-of v1, v0, Lm7/x;

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Lm7/x;

    iget-object v1, v1, Lm7/x;->a:Ljava/lang/Throwable;

    goto :goto_20

    :cond_1b
    instance-of v1, v0, Lm7/n1;

    if-nez v1, :cond_40

    move-object v1, v2

    :goto_20
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_27

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_27
    if-nez v2, :cond_3f

    new-instance v2, Lm7/t1;

    const-string v3, "Parent job is "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lm7/x1;->f0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lm7/t1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm7/s1;)V

    :cond_3f
    return-object v2

    :cond_40
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-static {v1, v0}, Lm7/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p()Z
    .registers 1

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lm7/n1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public plus(Ll4/f;)Ll4/f;
    .registers 2

    invoke-static {p0, p1}, Ll4/f$a$a;->d(Ll4/f$a;Ll4/f;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lm7/u;)Lm7/s;
    .registers 8

    new-instance v3, Lm7/t;

    invoke-direct {v3, p1}, Lm7/t;-><init>(Lm7/u;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lm7/s1$a;->b(Lm7/s1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lm7/a1;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lm7/s;

    return-object p0
.end method

.method public final start()Z
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm7/x1;->e0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lm7/x1;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lm7/x1;->f0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm7/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w(Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm7/n1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    move v0, v3

    goto :goto_13

    :cond_c
    invoke-virtual {p0, v0}, Lm7/x1;->e0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v2

    :goto_13
    if-nez v0, :cond_1f

    invoke-interface {p1}, Ll4/d;->getContext()Ll4/f;

    move-result-object p0

    invoke-static {p0}, Li5/j;->e(Ll4/f;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_1f
    new-instance v0, Lm7/n;

    invoke-static {p1}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v0}, Lm7/n;->w()V

    new-instance v1, Lm7/h2;

    invoke-direct {v1, v0}, Lm7/h2;-><init>(Ll4/d;)V

    invoke-virtual {p0, v3, v2, v1}, Lm7/x1;->f(ZZLkotlin/jvm/functions/Function1;)Lm7/a1;

    move-result-object p0

    new-instance v1, Lm7/b1;

    invoke-direct {v1, p0}, Lm7/b1;-><init>(Lm7/a1;)V

    invoke-virtual {v0, v1}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    if-ne p0, v0, :cond_49

    const-string v1, "frame"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_49
    if-ne p0, v0, :cond_4c

    goto :goto_4e

    :cond_4c
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_4e
    if-ne p0, v0, :cond_51

    return-object p0

    :cond_51
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
