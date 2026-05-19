.class public abstract Lq7/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lq7/c<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n28#2,4:133\n28#2,4:138\n28#2,4:144\n20#3:137\n20#3:142\n20#3:148\n1#4:143\n13579#5,2:149\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n30#1:133,4\n45#1:138,4\n76#1:144,4\n30#1:137\n45#1:142\n76#1:148\n95#1:149,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:[Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lq7/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lq7/a;->a:[Lq7/c;

    const/4 v1, 0x2

    if-nez v0, :cond_d

    invoke-virtual {p0, v1}, Lq7/a;->d(I)[Lq7/c;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->a:[Lq7/c;

    goto :goto_24

    :cond_d
    iget v2, p0, Lq7/a;->b:I

    array-length v3, v0

    if-lt v2, v3, :cond_24

    array-length v2, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Lq7/c;

    iput-object v1, p0, Lq7/a;->a:[Lq7/c;

    check-cast v0, [Lq7/c;

    :cond_24
    :goto_24
    iget v1, p0, Lq7/a;->c:I

    :cond_26
    aget-object v2, v0, v1

    if-nez v2, :cond_30

    invoke-virtual {p0}, Lq7/a;->c()Lq7/c;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_36

    const/4 v1, 0x0

    :cond_36
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lq7/c;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iput v1, p0, Lq7/a;->c:I

    iget v0, p0, Lq7/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq7/a;->b:I
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    monitor-exit p0

    return-object v2

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract c()Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract d(I)[Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method public final e(Lq7/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lq7/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq7/a;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iput v1, p0, Lq7/a;->c:I

    :cond_c
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lq7/c;->b(Ljava/lang/Object;)[Ll4/d;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_26

    monitor-exit p0

    array-length p0, p1

    :goto_17
    if-ge v1, p0, :cond_25

    aget-object v0, p1, v1

    if-eqz v0, :cond_22

    sget-object v2, Lh4/z;->a:Lh4/z;

    invoke-interface {v0, v2}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_25
    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method
