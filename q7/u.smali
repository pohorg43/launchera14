.class public final Lq7/u;
.super Ln4/c;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln4/c;",
        "Lp7/e<",
        "TT;>;",
        "Ln4/d;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lp7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Ll4/f;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public d:Ll4/f;

.field public e:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp7/e;Ll4/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/f;",
            ")V"
        }
    .end annotation

    sget-object v0, Lq7/r;->a:Lq7/r;

    sget-object v1, Ll4/h;->a:Ll4/h;

    invoke-direct {p0, v0, v1}, Ln4/c;-><init>(Ll4/d;Ll4/f;)V

    iput-object p1, p0, Lq7/u;->a:Lp7/e;

    iput-object p2, p0, Lq7/u;->b:Ll4/f;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lq7/u$a;->a:Lq7/u$a;

    invoke-interface {p2, p1, v0}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lq7/u;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ll4/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    invoke-static {v0}, Li5/j;->e(Ll4/f;)V

    iget-object v1, p0, Lq7/u;->d:Ll4/f;

    if-eq v1, v0, :cond_7c

    instance-of v2, v1, Lq7/m;

    if-nez v2, :cond_50

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lq7/w;

    invoke-direct {v2, p0}, Lq7/w;-><init>(Lq7/u;)V

    invoke-interface {v0, v1, v2}, Ll4/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Lq7/u;->c:I

    if-ne v1, v2, :cond_2a

    iput-object v0, p0, Lq7/u;->d:Ll4/f;

    goto :goto_7c

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lq7/u;->b:Ll4/f;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",\n\t\tbut emission happened in "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    check-cast v1, Lq7/m;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v1, Lq7/m;->a:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but then emission attempt of value \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk7/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7c
    :goto_7c
    iput-object p1, p0, Lq7/u;->e:Ll4/d;

    sget-object p1, Lq7/v;->a:Lkotlin/jvm/functions/Function3;

    iget-object v0, p0, Lq7/u;->a:Lp7/e;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lm4/a;->a:Lm4/a;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9b

    const/4 p2, 0x0

    iput-object p2, p0, Lq7/u;->e:Ll4/d;

    :cond_9b
    return-object p1
.end method

.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lq7/u;->a(Ll4/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_13

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_d

    const-string v0, "frame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    if-ne p0, p1, :cond_10

    return-object p0

    :cond_10
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :catchall_13
    move-exception p1

    new-instance v0, Lq7/m;

    invoke-interface {p2}, Ll4/d;->getContext()Ll4/f;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lq7/m;-><init>(Ljava/lang/Throwable;Ll4/f;)V

    iput-object v0, p0, Lq7/u;->d:Ll4/f;

    throw p1
.end method

.method public getCallerFrame()Ln4/d;
    .registers 2

    iget-object p0, p0, Lq7/u;->e:Ll4/d;

    instance-of v0, p0, Ln4/d;

    if-eqz v0, :cond_9

    check-cast p0, Ln4/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lq7/u;->d:Ll4/f;

    if-nez p0, :cond_6

    sget-object p0, Ll4/h;->a:Ll4/h;

    :cond_6
    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Lq7/m;

    invoke-virtual {p0}, Lq7/u;->getContext()Ll4/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lq7/m;-><init>(Ljava/lang/Throwable;Ll4/f;)V

    iput-object v1, p0, Lq7/u;->d:Ll4/f;

    :cond_11
    iget-object p0, p0, Lq7/u;->e:Ll4/d;

    if-eqz p0, :cond_18

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_18
    sget-object p0, Lm4/a;->a:Lm4/a;

    return-object p0
.end method

.method public releaseIntercepted()V
    .registers 1

    invoke-super {p0}, Ln4/c;->releaseIntercepted()V

    return-void
.end method
