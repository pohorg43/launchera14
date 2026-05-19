.class public abstract Lr7/c0;
.super Lr7/e;
.source ""

# interfaces
.implements Lm7/e2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lr7/c0<",
        "TS;>;>",
        "Lr7/e<",
        "TS;>;",
        "Lm7/e2;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,262:1\n245#2,4:263\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n224#1:263,4\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final c:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private volatile cleanedAndPointers:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lr7/c0;

    const-string v1, "cleanedAndPointers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lr7/c0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLr7/c0;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTS;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lr7/e;-><init>(Lr7/e;)V

    iput-wide p1, p0, Lr7/c0;->c:J

    shl-int/lit8 p1, p4, 0x10

    iput p1, p0, Lr7/c0;->cleanedAndPointers:I

    return-void
.end method


# virtual methods
.method public e()Z
    .registers 3

    sget-object v0, Lr7/c0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lr7/c0;->i()I

    move-result v1

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lr7/e;->f()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final h()Z
    .registers 3

    sget-object v0, Lr7/c0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v1, -0x10000

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v0

    invoke-virtual {p0}, Lr7/c0;->i()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Lr7/e;->f()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public abstract i()I
.end method

.method public abstract j(ILjava/lang/Throwable;)V
.end method

.method public final k()V
    .registers 3

    sget-object v0, Lr7/c0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lr7/c0;->i()I

    move-result v1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lr7/e;->g()V

    :cond_f
    return-void
.end method

.method public final l()Z
    .registers 6

    sget-object v0, Lr7/c0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lr7/c0;->i()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Lr7/e;->f()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    move v2, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v4

    :goto_18
    if-nez v2, :cond_1b

    goto :goto_25

    :cond_1b
    const/high16 v2, 0x10000

    add-int/2addr v2, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v4

    :goto_25
    return v3
.end method
