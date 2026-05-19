.class public abstract Lm7/w1;
.super Lm7/z;
.source ""

# interfaces
.implements Lm7/a1;
.implements Lm7/n1;


# instance fields
.field public d:Lm7/x1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/z;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lm7/c2;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public dispose()V
    .registers 5

    invoke-virtual {p0}, Lm7/w1;->j()Lm7/x1;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lm7/w1;

    if-eqz v2, :cond_1a

    if-eq v1, p0, :cond_f

    goto :goto_61

    :cond_f
    sget-object v2, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lm7/y1;->g:Lm7/d1;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_61

    :cond_1a
    instance-of v0, v1, Lm7/n1;

    if-eqz v0, :cond_61

    check-cast v1, Lm7/n1;

    invoke-interface {v1}, Lm7/n1;->b()Lm7/c2;

    move-result-object v0

    if-eqz v0, :cond_61

    :cond_26
    invoke-virtual {p0}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lr7/z;

    if-eqz v1, :cond_33

    check-cast v0, Lr7/z;

    iget-object p0, v0, Lr7/z;->a:Lr7/q;

    goto :goto_61

    :cond_33
    if-ne v0, p0, :cond_38

    check-cast v0, Lr7/q;

    goto :goto_61

    :cond_38
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lr7/q;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lr7/q;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr7/z;

    if-nez v3, :cond_55

    new-instance v3, Lr7/z;

    invoke-direct {v3, v1}, Lr7/z;-><init>(Lr7/q;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    sget-object v2, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lr7/q;->c(Lr7/y;)Lr7/q;

    :cond_61
    :goto_61
    return-void
.end method

.method public isActive()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final j()Lm7/x1;
    .registers 1

    iget-object p0, p0, Lm7/w1;->d:Lm7/x1;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "job"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm7/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm7/w1;->j()Lm7/x1;

    move-result-object p0

    invoke-static {p0}, Lm7/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
