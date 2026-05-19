.class public final Ll4/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/d;
.implements Ln4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll4/d<",
        "TT;>;",
        "Ln4/d;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Ll4/i<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Ll4/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ll4/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lm4/a;->b:Lm4/a;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/i;->a:Ll4/d;

    iput-object v1, p0, Ll4/i;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ll4/i;->result:Ljava/lang/Object;

    sget-object v1, Lm4/a;->b:Lm4/a;

    if-ne v0, v1, :cond_13

    sget-object v0, Ll4/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lm4/a;->a:Lm4/a;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object v2

    :cond_11
    iget-object v0, p0, Ll4/i;->result:Ljava/lang/Object;

    :cond_13
    sget-object p0, Lm4/a;->c:Lm4/a;

    if-ne v0, p0, :cond_1a

    sget-object v0, Lm4/a;->a:Lm4/a;

    goto :goto_1e

    :cond_1a
    instance-of p0, v0, Lh4/k$a;

    if-nez p0, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    check-cast v0, Lh4/k$a;

    iget-object p0, v0, Lh4/k$a;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public getCallerFrame()Ln4/d;
    .registers 2

    iget-object p0, p0, Ll4/i;->a:Ll4/d;

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

    iget-object p0, p0, Ll4/i;->a:Ll4/d;

    invoke-interface {p0}, Ll4/d;->getContext()Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 5

    :cond_0
    iget-object v0, p0, Ll4/i;->result:Ljava/lang/Object;

    sget-object v1, Lm4/a;->b:Lm4/a;

    if-ne v0, v1, :cond_f

    sget-object v0, Ll4/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_f
    sget-object v1, Lm4/a;->a:Lm4/a;

    if-ne v0, v1, :cond_23

    sget-object v0, Ll4/i;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lm4/a;->c:Lm4/a;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll4/i;->a:Ll4/d;

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SafeContinuation for "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ll4/i;->a:Ll4/d;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
