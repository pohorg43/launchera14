.class public Lo7/g;
.super Lm7/a;
.source ""

# interfaces
.implements Lo7/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/a<",
        "Lh4/z;",
        ">;",
        "Lo7/f<",
        "TE;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,41:1\n705#2,2:42\n705#2,2:44\n705#2,2:46\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n21#1:42,2\n26#1:44,2\n32#1:46,2\n*E\n"
    }
.end annotation


# instance fields
.field public final d:Lo7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/f;Lo7/f;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "Lo7/f<",
            "TE;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lm7/a;-><init>(Ll4/f;ZZ)V

    iput-object p2, p0, Lo7/g;->d:Lo7/f;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {p0, p1, p2}, Lo7/t;->A(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public B()Z
    .registers 1

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {p0}, Lo7/t;->B()Z

    move-result p0

    return p0
.end method

.method public G(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lm7/x1;->h0(Lm7/x1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {v0, p1}, Lo7/s;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lm7/x1;->F(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm7/x;

    if-nez v1, :cond_17

    instance-of v1, v0, Lm7/x1$c;

    if-eqz v1, :cond_15

    check-cast v0, Lm7/x1$c;

    invoke-virtual {v0}, Lm7/x1$c;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    if-nez p1, :cond_28

    const/4 p1, 0x0

    new-instance v0, Lm7/t1;

    invoke-virtual {p0}, Lm7/x1;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lm7/t1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm7/s1;)V

    move-object p1, v0

    :cond_28
    invoke-virtual {p0, p1}, Lo7/g;->G(Ljava/lang/Throwable;)V

    return-void
.end method

.method public iterator()Lo7/h;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/h<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {p0}, Lo7/s;->iterator()Lo7/h;

    move-result-object p0

    return-object p0
.end method

.method public n(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {p0, p1}, Lo7/t;->n(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {p0, p1}, Lo7/t;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public v()Lu7/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu7/d<",
            "Lo7/j<",
            "TE;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {p0}, Lo7/s;->v()Lu7/d;

    move-result-object p0

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)Z
    .registers 2

    iget-object p0, p0, Lo7/g;->d:Lo7/f;

    invoke-interface {p0, p1}, Lo7/t;->z(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
