.class public final Lr7/j;
.super Lm7/v0;
.source ""

# interfaces
.implements Ln4/d;
.implements Ll4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/v0<",
        "TT;>;",
        "Ln4/d;",
        "Ll4/d<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,315:1\n241#1,8:379\n253#1:387\n254#1,2:398\n256#1:402\n1#2:316\n1#2:322\n1#2:363\n295#3,5:317\n300#3,12:323\n312#3:357\n295#3,5:358\n300#3,12:364\n312#3:417\n198#4,3:335\n201#4,14:343\n198#4,3:376\n201#4,14:403\n95#5,5:338\n107#5,10:388\n118#5,2:400\n107#5,13:418\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n222#1:379,8\n223#1:387\n223#1:398,2\n223#1:402\n200#1:322\n221#1:363\n200#1:317,5\n200#1:323,12\n200#1:357\n221#1:358,5\n221#1:364,12\n221#1:417\n200#1:335,3\n200#1:343,14\n221#1:376,3\n221#1:403,14\n201#1:338,5\n223#1:388,10\n223#1:400,2\n253#1:418,13\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final d:Lm7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final g:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lr7/j;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lr7/j;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lm7/f0;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/f0;",
            "Ll4/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lm7/v0;-><init>(I)V

    iput-object p1, p0, Lr7/j;->d:Lm7/f0;

    iput-object p2, p0, Lr7/j;->e:Ll4/d;

    sget-object p1, Lr7/k;->a:Lr7/f0;

    iput-object p1, p0, Lr7/j;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lr7/j;->getContext()Ll4/f;

    move-result-object p1

    invoke-static {p1}, Lr7/h0;->b(Ll4/f;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lr7/j;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    instance-of p0, p1, Lm7/y;

    if-eqz p0, :cond_b

    check-cast p1, Lm7/y;

    iget-object p0, p1, Lm7/y;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public c()Ll4/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public g()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lr7/j;->f:Ljava/lang/Object;

    sget-object v1, Lr7/k;->a:Lr7/f0;

    iput-object v1, p0, Lr7/j;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getCallerFrame()Ln4/d;
    .registers 2

    iget-object p0, p0, Lr7/j;->e:Ll4/d;

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

    iget-object p0, p0, Lr7/j;->e:Ll4/d;

    invoke-interface {p0}, Ll4/d;->getContext()Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lr7/j;->e:Ll4/d;

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lm7/b0;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lr7/j;->d:Lm7/f0;

    invoke-virtual {v3, v0}, Lm7/f0;->isDispatchNeeded(Ll4/f;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    iput-object v2, p0, Lr7/j;->f:Ljava/lang/Object;

    iput v4, p0, Lm7/v0;->c:I

    iget-object p1, p0, Lr7/j;->d:Lm7/f0;

    invoke-virtual {p1, v0, p0}, Lm7/f0;->dispatch(Ll4/f;Ljava/lang/Runnable;)V

    goto :goto_66

    :cond_1e
    sget-object v0, Lm7/m2;->a:Lm7/m2;

    invoke-static {}, Lm7/m2;->a()Lm7/e1;

    move-result-object v0

    invoke-virtual {v0}, Lm7/e1;->x()Z

    move-result v3

    if-eqz v3, :cond_3d

    iput-object v2, p0, Lr7/j;->f:Ljava/lang/Object;

    iput v4, p0, Lm7/v0;->c:I

    iget-object p1, v0, Lm7/e1;->c:Li4/h;

    if-nez p1, :cond_39

    new-instance p1, Li4/h;

    invoke-direct {p1}, Li4/h;-><init>()V

    iput-object p1, v0, Lm7/e1;->c:Li4/h;

    :cond_39
    invoke-virtual {p1, p0}, Li4/h;->h(Ljava/lang/Object;)V

    goto :goto_66

    :cond_3d
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lm7/e1;->v(Z)V

    :try_start_41
    invoke-virtual {p0}, Lr7/j;->getContext()Ll4/f;

    move-result-object v3

    iget-object v4, p0, Lr7/j;->g:Ljava/lang/Object;

    invoke-static {v3, v4}, Lr7/h0;->c(Ll4/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_5f

    :try_start_4b
    iget-object v5, p0, Lr7/j;->e:Ll4/d;

    invoke-interface {v5, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_5a

    :try_start_50
    invoke-static {v3, v4}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    :cond_53
    invoke-virtual {v0}, Lm7/e1;->A()Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_63

    :catchall_5a
    move-exception p1

    invoke-static {v3, v4}, Lr7/h0;->a(Ll4/f;Ljava/lang/Object;)V

    throw p1
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p1

    :try_start_60
    invoke-virtual {p0, p1, v1}, Lm7/v0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_67

    :goto_63
    invoke-virtual {v0, v2}, Lm7/e1;->q(Z)V

    :goto_66
    return-void

    :catchall_67
    move-exception p0

    invoke-virtual {v0, v2}, Lm7/e1;->q(Z)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DispatchedContinuation["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr7/j;->d:Lm7/f0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr7/j;->e:Ll4/d;

    invoke-static {p0}, Lm7/m0;->c(Ll4/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
