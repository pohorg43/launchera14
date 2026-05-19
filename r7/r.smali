.class public Lr7/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _cur:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lr7/r;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr7/s;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lr7/s;-><init>(IZ)V

    iput-object v0, p0, Lr7/r;->_cur:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    sget-object v0, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/s;

    invoke-virtual {v1, p1}, Lr7/s;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    if-eq v2, v3, :cond_17

    const/4 v1, 0x2

    if-eq v2, v1, :cond_15

    goto :goto_2

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    sget-object v2, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lr7/s;->d()Lr7/s;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_21
    return v3
.end method

.method public final b()V
    .registers 5

    sget-object v0, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/s;

    invoke-virtual {v1}, Lr7/s;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    :cond_f
    sget-object v2, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lr7/s;->d()Lr7/s;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final c()I
    .registers 5

    sget-object v0, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr7/s;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lr7/s;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 p0, 0x0

    shr-long/2addr v2, p0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p0

    const p0, 0x3fffffff  # 1.9999999f

    and-int/2addr p0, v0

    return p0
.end method

.method public final d()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    sget-object v0, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/s;

    invoke-virtual {v1}, Lr7/s;->e()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr7/s;->g:Lr7/f0;

    if-eq v2, v3, :cond_11

    return-object v2

    :cond_11
    sget-object v2, Lr7/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lr7/s;->d()Lr7/s;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2
.end method
