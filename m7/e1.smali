.class public abstract Lm7/e1;
.super Lm7/f0;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:J

.field public b:Z

.field public c:Li4/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li4/h<",
            "Lm7/v0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lm7/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .registers 3

    iget-object p0, p0, Lm7/e1;->c:Li4/h;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Li4/h;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Li4/h;->p()Ljava/lang/Object;

    move-result-object p0

    :goto_12
    check-cast p0, Lm7/v0;

    if-nez p0, :cond_17

    return v0

    :cond_17
    invoke-virtual {p0}, Lm7/v0;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public final limitedParallelism(I)Lm7/f0;
    .registers 2

    invoke-static {p1}, Lr7/n;->a(I)V

    return-object p0
.end method

.method public final q(Z)V
    .registers 6

    iget-wide v0, p0, Lm7/e1;->a:J

    invoke-virtual {p0, p1}, Lm7/e1;->s(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lm7/e1;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_10

    return-void

    :cond_10
    iget-boolean p1, p0, Lm7/e1;->b:Z

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lm7/e1;->shutdown()V

    :cond_17
    return-void
.end method

.method public final s(Z)J
    .registers 2

    if-eqz p1, :cond_8

    const-wide p0, 0x100000000L

    goto :goto_a

    :cond_8
    const-wide/16 p0, 0x1

    :goto_a
    return-wide p0
.end method

.method public shutdown()V
    .registers 1

    return-void
.end method

.method public final v(Z)V
    .registers 6

    iget-wide v0, p0, Lm7/e1;->a:J

    invoke-virtual {p0, p1}, Lm7/e1;->s(Z)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lm7/e1;->a:J

    if-nez p1, :cond_e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm7/e1;->b:Z

    :cond_e
    return-void
.end method

.method public final x()Z
    .registers 6

    iget-wide v0, p0, Lm7/e1;->a:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lm7/e1;->s(Z)J

    move-result-wide v3

    cmp-long p0, v0, v3

    if-ltz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public z()J
    .registers 3

    invoke-virtual {p0}, Lm7/e1;->A()Z

    move-result p0

    if-nez p0, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method
