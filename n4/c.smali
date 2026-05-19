.class public abstract Ln4/c;
.super Ln4/a;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"
    }
.end annotation


# instance fields
.field private final _context:Ll4/f;

.field private transient intercepted:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p1, v0}, Ln4/c;-><init>(Ll4/d;Ll4/f;)V

    return-void
.end method

.method public constructor <init>(Ll4/d;Ll4/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ln4/a;-><init>(Ll4/d;)V

    iput-object p2, p0, Ln4/c;->_context:Ll4/f;

    return-void
.end method


# virtual methods
.method public getContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Ln4/c;->_context:Ll4/f;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Ll4/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln4/c;->intercepted:Ll4/d;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ln4/c;->getContext()Ll4/f;

    move-result-object v0

    sget v1, Ll4/e;->J:I

    sget-object v1, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {v0, v1}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    check-cast v0, Ll4/e;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0}, Ll4/e;->interceptContinuation(Ll4/d;)Ll4/d;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_1a
    move-object v0, p0

    :cond_1b
    iput-object v0, p0, Ln4/c;->intercepted:Ll4/d;

    :cond_1d
    return-object v0
.end method

.method public releaseIntercepted()V
    .registers 4

    iget-object v0, p0, Ln4/c;->intercepted:Ll4/d;

    if-eqz v0, :cond_1a

    if-eq v0, p0, :cond_1a

    invoke-virtual {p0}, Ln4/c;->getContext()Ll4/f;

    move-result-object v1

    sget v2, Ll4/e;->J:I

    sget-object v2, Ll4/e$a;->a:Ll4/e$a;

    invoke-interface {v1, v2}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ll4/e;

    invoke-interface {v1, v0}, Ll4/e;->releaseInterceptedContinuation(Ll4/d;)V

    :cond_1a
    sget-object v0, Ln4/b;->a:Ln4/b;

    iput-object v0, p0, Ln4/c;->intercepted:Ll4/d;

    return-void
.end method
