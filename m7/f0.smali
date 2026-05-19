.class public abstract Lm7/f0;
.super Ll4/a;
.source ""

# interfaces
.implements Ll4/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/f0$a;
    }
.end annotation


# static fields
.field public static final Key:Lm7/f0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm7/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm7/f0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lm7/f0;->Key:Lm7/f0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Ll4/e$a;->a:Ll4/e$a;

    invoke-direct {p0, v0}, Ll4/a;-><init>(Ll4/f$b;)V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Ll4/f;Ljava/lang/Runnable;)V
.end method

.method public dispatchYield(Ll4/f;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(Ll4/f$b;)Ll4/f$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ll4/f$a;",
            ">(",
            "Ll4/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Ll4/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    check-cast p1, Ll4/b;

    invoke-interface {p0}, Ll4/f$a;->getKey()Ll4/f$b;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1f

    iget-object v0, p1, Ll4/b;->b:Ll4/f$b;

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-eqz v0, :cond_41

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll4/b;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll4/f$a;

    instance-of p1, p0, Ll4/f$a;

    if-eqz p1, :cond_41

    :goto_33
    move-object v2, p0

    goto :goto_41

    :cond_35
    sget-object v0, Ll4/e$a;->a:Ll4/e$a;

    if-ne v0, p1, :cond_3f

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_33

    :cond_3f
    move-object p0, v2

    goto :goto_33

    :cond_41
    :goto_41
    return-object v2
.end method

.method public final interceptContinuation(Ll4/d;)Ll4/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll4/d<",
            "-TT;>;)",
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr7/j;

    invoke-direct {v0, p0, p1}, Lr7/j;-><init>(Lm7/f0;Ll4/d;)V

    return-object v0
.end method

.method public isDispatchNeeded(Ll4/f;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public limitedParallelism(I)Lm7/f0;
    .registers 3

    invoke-static {p1}, Lr7/n;->a(I)V

    new-instance v0, Lr7/m;

    invoke-direct {v0, p0, p1}, Lr7/m;-><init>(Lm7/f0;I)V

    return-object v0
.end method

.method public minusKey(Ll4/f$b;)Ll4/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f$b<",
            "*>;)",
            "Ll4/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Ll4/b;

    if-eqz v1, :cond_33

    check-cast p1, Ll4/b;

    invoke-interface {p0}, Ll4/f$a;->getKey()Ll4/f$b;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1e

    iget-object v0, p1, Ll4/b;->b:Ll4/f$b;

    if-ne v0, v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    if-eqz v0, :cond_39

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ll4/b;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll4/f$a;

    if-eqz p1, :cond_39

    sget-object p0, Ll4/h;->a:Ll4/h;

    goto :goto_39

    :cond_33
    sget-object v0, Ll4/e$a;->a:Ll4/e$a;

    if-ne v0, p1, :cond_39

    sget-object p0, Ll4/h;->a:Ll4/h;

    :cond_39
    :goto_39
    return-object p0
.end method

.method public final plus(Lm7/f0;)Lm7/f0;
    .registers 2

    return-object p1
.end method

.method public final releaseInterceptedContinuation(Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "*>;)V"
        }
    .end annotation

    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr7/j;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_c
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr7/k;->b:Lr7/f0;

    if-eq v0, v1, :cond_c

    sget-object p0, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lm7/n;

    if-eqz p1, :cond_21

    check-cast p0, Lm7/n;

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lm7/n;->o()V

    :cond_27
    return-void
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

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
