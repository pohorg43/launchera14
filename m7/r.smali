.class public final Lm7/r;
.super Lm7/u1;
.source ""


# instance fields
.field public final e:Lm7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/n<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/n<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lm7/u1;-><init>()V

    iput-object p1, p0, Lm7/r;->e:Lm7/n;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Throwable;)V
    .registers 9

    iget-object p1, p0, Lm7/r;->e:Lm7/n;

    invoke-virtual {p0}, Lm7/w1;->j()Lm7/x1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lm7/n;->r(Lm7/s1;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1}, Lm7/n;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    goto :goto_45

    :cond_12
    iget-object v0, p1, Lm7/n;->d:Ll4/d;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lr7/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_20
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr7/k;->b:Lr7/f0;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_36

    sget-object v3, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_3a

    :cond_36
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_3c

    :goto_3a
    move v1, v6

    goto :goto_45

    :cond_3c
    sget-object v4, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_45
    if-eqz v1, :cond_48

    goto :goto_4e

    :cond_48
    invoke-virtual {p1, p0}, Lm7/n;->m(Ljava/lang/Throwable;)Z

    invoke-virtual {p1}, Lm7/n;->p()V

    :goto_4e
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm7/r;->i(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
