.class public Lv7/d;
.super Lv7/h;
.source ""

# interfaces
.implements Lv7/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv7/d$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n332#2,12:301\n1#3:313\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n168#1:301,12\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile owner:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lv7/d;

    const-class v1, Ljava/lang/Object;

    const-string v2, "owner"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv7/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lv7/h;-><init>(II)V

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    sget-object p1, Lv7/f;->a:Lr7/f0;

    :goto_a
    iput-object p1, p0, Lv7/d;->owner:Ljava/lang/Object;

    new-instance p1, Lv7/d$b;

    invoke-direct {p1, p0}, Lv7/d$b;-><init>(Lv7/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 6

    :cond_0
    invoke-virtual {p0}, Lv7/d;->e()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lv7/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lv7/f;->a:Lr7/f0;

    if-eq v1, v2, :cond_0

    if-eq v1, p1, :cond_17

    if-nez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v3, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v3, 0x1

    :goto_18
    if-eqz v3, :cond_24

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv7/h;->d()V

    return-void

    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This mutex is locked by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is expected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This mutex is not locked"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    :goto_0
    sget-object p1, Lv7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lv7/h;->a:I

    if-le v0, v1, :cond_1b

    :cond_a
    sget-object p1, Lv7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lv7/h;->a:I

    if-le v0, v1, :cond_0

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_1b
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_21

    move p1, v1

    goto :goto_2a

    :cond_21
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    :goto_2a
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_35

    sget-object p1, Lv7/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move p1, v1

    goto :goto_36

    :cond_35
    move p1, v2

    :goto_36
    if-eqz p1, :cond_54

    if-eq p1, v2, :cond_55

    if-eq p1, v0, :cond_48

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This mutex is already locked by the specified owner: null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    move v1, v2

    :cond_55
    if-eqz v1, :cond_5a

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_81

    :cond_5a
    invoke-static {p2}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object p1

    invoke-static {p1}, Lm7/p;->a(Ll4/d;)Lm7/n;

    move-result-object p1

    :try_start_62
    new-instance v0, Lv7/d$a;

    invoke-direct {v0, p0, p1, v3}, Lv7/d$a;-><init>(Lv7/d;Lm7/n;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lv7/h;->c(Lm7/l;)V
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_82

    invoke-virtual {p1}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_77

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_77
    if-ne p0, p1, :cond_7a

    goto :goto_7c

    :cond_7a
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_7c
    if-ne p0, p1, :cond_7f

    goto :goto_81

    :cond_7f
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_81
    return-object p0

    :catchall_82
    move-exception p0

    invoke-virtual {p1}, Lm7/n;->F()V

    throw p0
.end method

.method public e()Z
    .registers 2

    sget-object v0, Lv7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Mutex@"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lm7/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv7/d;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lv7/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
