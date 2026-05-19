.class public final Lm7/u0;
.super Lr7/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr7/b0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _decision:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lm7/u0;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lm7/u0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ll4/f;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "Ll4/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lr7/b0;-><init>(Ll4/f;Ll4/d;)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lm7/u0;->k0(Ljava/lang/Object;)V

    return-void
.end method

.method public k0(Ljava/lang/Object;)V
    .registers 7

    sget-object v0, Lm7/u0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_1a

    if-ne v1, v3, :cond_e

    goto :goto_23

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    sget-object v1, Lm7/u0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    :goto_23
    if-eqz v2, :cond_26

    return-void

    :cond_26
    iget-object v0, p0, Lr7/b0;->d:Ll4/d;

    invoke-static {v0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v0

    iget-object p0, p0, Lr7/b0;->d:Ll4/d;

    invoke-static {p1, p0}, Lm7/b0;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, v4}, Lr7/k;->b(Ll4/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method
