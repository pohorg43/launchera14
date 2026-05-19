.class public Lr7/k0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lr7/l0;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n28#2,4:169\n28#2,4:174\n28#2,4:179\n28#2,4:184\n28#2,4:189\n28#2,4:194\n28#2,4:199\n28#2,4:204\n20#3:173\n20#3:178\n20#3:183\n20#3:188\n20#3:193\n20#3:198\n20#3:203\n20#3:208\n1#4:209\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n35#1:169,4\n42#1:174,4\n50#1:179,4\n52#1:184,4\n60#1:189,4\n69#1:194,4\n72#1:199,4\n81#1:204,4\n35#1:173\n42#1:178\n50#1:183\n52#1:188\n60#1:193\n69#1:198\n72#1:203\n81#1:208\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _size:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public a:[Lr7/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lr7/k0;

    const-string v1, "_size"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lr7/k0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr7/l0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lm7/f1$c;

    invoke-virtual {v0, p0}, Lm7/f1$c;->d(Lr7/k0;)V

    iget-object v1, p0, Lr7/k0;->a:[Lr7/l0;

    if-nez v1, :cond_10

    const/4 v1, 0x4

    new-array v1, v1, [Lr7/l0;

    iput-object v1, p0, Lr7/k0;->a:[Lr7/l0;

    goto :goto_2a

    :cond_10
    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_2a

    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Lr7/l0;

    iput-object v1, p0, Lr7/k0;->a:[Lr7/l0;

    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lr7/k0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    aput-object p1, v1, v2

    iput v2, v0, Lm7/f1$c;->b:I

    invoke-virtual {p0, v2}, Lr7/k0;->e(I)V

    return-void
.end method

.method public final b()Lr7/l0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lr7/k0;->a:[Lr7/l0;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return-object p0
.end method

.method public final c()I
    .registers 2

    sget-object v0, Lr7/k0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final d(I)Lr7/l0;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lr7/k0;->a:[Lr7/l0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    sget-object v3, Lr7/k0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v1

    if-ge p1, v1, :cond_7f

    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lr7/k0;->f(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_3c

    aget-object v3, v0, p1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3c

    invoke-virtual {p0, p1, v1}, Lr7/k0;->f(II)V

    invoke-virtual {p0, v1}, Lr7/k0;->e(I)V

    goto :goto_7f

    :cond_3c
    :goto_3c
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v3

    if-lt v1, v3, :cond_47

    goto :goto_7f

    :cond_47
    iget-object v3, p0, Lr7/k0;->a:[Lr7/l0;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result v5

    if-ge v4, v5, :cond_67

    aget-object v5, v3, v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v3, v1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_67

    move v1, v4

    :cond_67
    aget-object v4, v3, p1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_7a

    goto :goto_7f

    :cond_7a
    invoke-virtual {p0, p1, v1}, Lr7/k0;->f(II)V

    move p1, v1

    goto :goto_3c

    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lr7/l0;->d(Lr7/k0;)V

    invoke-interface {p1, v2}, Lr7/l0;->e(I)V

    invoke-virtual {p0}, Lr7/k0;->c()I

    move-result p0

    aput-object v1, v0, p0

    return-object p1
.end method

.method public final e(I)V
    .registers 5

    :goto_0
    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lr7/k0;->a:[Lr7/l0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p0, p1, v1}, Lr7/k0;->f(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final f(II)V
    .registers 5

    iget-object p0, p0, Lr7/k0;->a:[Lr7/l0;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, p0, p2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, p0, p1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v0, p0, p1

    aput-object v1, p0, p2

    invoke-interface {v0, p1}, Lr7/l0;->e(I)V

    invoke-interface {v1, p2}, Lr7/l0;->e(I)V

    return-void
.end method
