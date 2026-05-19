.class public Lr7/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/q$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,367:1\n73#1,3:369\n1#2:368\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n134#1:369,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _next:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _prev:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _removedRef:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lr7/q;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lr7/q;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lr7/q;->_next:Ljava/lang/Object;

    iput-object p0, p0, Lr7/q;->_prev:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lr7/y;)Lr7/q;
    .registers 9

    :goto_0
    sget-object p1, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr7/q;

    const/4 v0, 0x0

    move-object v1, p1

    :goto_a
    move-object v2, v0

    :goto_b
    sget-object v3, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_20

    if-ne p1, v1, :cond_16

    return-object v1

    :cond_16
    sget-object v0, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_0

    :cond_1f
    return-object v1

    :cond_20
    invoke-virtual {p0}, Lr7/q;->h()Z

    move-result v5

    if-eqz v5, :cond_27

    return-object v0

    :cond_27
    if-nez v4, :cond_2a

    return-object v1

    :cond_2a
    instance-of v5, v4, Lr7/y;

    if-eqz v5, :cond_34

    check-cast v4, Lr7/y;

    invoke-virtual {v4, v1}, Lr7/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_34
    instance-of v5, v4, Lr7/z;

    if-eqz v5, :cond_50

    if-eqz v2, :cond_47

    check-cast v4, Lr7/z;

    iget-object v4, v4, Lr7/z;->a:Lr7/q;

    invoke-virtual {v3, v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_0

    :cond_45
    move-object v1, v2

    goto :goto_a

    :cond_47
    sget-object v3, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/q;

    goto :goto_b

    :cond_50
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    check-cast v2, Lr7/q;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_b
.end method

.method public final d(Lr7/q;)V
    .registers 5

    sget-object v0, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/q;

    invoke-virtual {p0}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_f

    return-void

    :cond_f
    sget-object v2, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lr7/q;->h()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lr7/q;->c(Lr7/y;)Lr7/q;

    :cond_21
    return-void
.end method

.method public final e()Ljava/lang/Object;
    .registers 4

    sget-object v0, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

.method public final f()Lr7/q;
    .registers 2

    invoke-virtual {p0}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lr7/z;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lr7/z;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_13

    iget-object v0, v0, Lr7/z;->a:Lr7/q;

    if-nez v0, :cond_1b

    :cond_13
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lr7/q;

    :cond_1b
    return-object v0
.end method

.method public final g()Lr7/q;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr7/q;->c(Lr7/y;)Lr7/q;

    move-result-object v0

    if-nez v0, :cond_21

    sget-object v0, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr7/q;

    move-object v0, p0

    :goto_10
    invoke-virtual {v0}, Lr7/q;->h()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_21

    :cond_17
    sget-object p0, Lr7/q;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lr7/q;

    goto :goto_10

    :cond_21
    :goto_21
    return-object v0
.end method

.method public h()Z
    .registers 1

    invoke-virtual {p0}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lr7/z;

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lr7/q$b;

    invoke-direct {v1, p0}, Lr7/q$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm7/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
