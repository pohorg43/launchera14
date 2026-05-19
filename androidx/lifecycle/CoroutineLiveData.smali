.class public final Landroidx/lifecycle/CoroutineLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MediatorLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blockRunner:Landroidx/lifecycle/BlockRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/BlockRunner<",
            "TT;>;"
        }
    .end annotation
.end field

.field private emittedSource:Landroidx/lifecycle/EmittedSource;


# direct methods
.method public constructor <init>(Ll4/f;JLkotlin/jvm/functions/Function2;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/lifecycle/LiveDataScope<",
            "TT;>;-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    sget v0, Lm7/s1;->L:I

    sget-object v0, Lm7/s1$b;->a:Lm7/s1$b;

    invoke-interface {p1, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object v0

    check-cast v0, Lm7/s1;

    new-instance v1, Lm7/k2;

    invoke-direct {v1, v0}, Lm7/k2;-><init>(Lm7/s1;)V

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-virtual {v0}, Lm7/b2;->q()Lm7/b2;

    move-result-object v0

    invoke-virtual {v0, p1}, Ll4/a;->plus(Ll4/f;)Ll4/f;

    move-result-object p1

    invoke-interface {p1, v1}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p1

    invoke-static {p1}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v5

    new-instance p1, Landroidx/lifecycle/BlockRunner;

    new-instance v6, Landroidx/lifecycle/CoroutineLiveData$1;

    invoke-direct {v6, p0}, Landroidx/lifecycle/CoroutineLiveData$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;)V

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/BlockRunner;-><init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/jvm/functions/Function2;JLm7/j0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    return-void
.end method

.method public synthetic constructor <init>(Ll4/f;JLkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    sget-object p1, Ll4/h;->a:Ll4/h;

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    const-wide/16 p2, 0x1388

    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/lifecycle/CoroutineLiveData;-><init>(Ll4/f;JLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$setBlockRunner$p(Landroidx/lifecycle/CoroutineLiveData;Landroidx/lifecycle/BlockRunner;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    return-void
.end method


# virtual methods
.method public final clearSource$lifecycle_livedata_ktx_release(Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    iget v1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;Ll4/d;)V

    :goto_18
    iget-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->result:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/CoroutineLiveData;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_45

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    if-eqz p1, :cond_45

    iput-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/lifecycle/EmittedSource;->disposeNow(Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_45

    return-object v1

    :cond_45
    :goto_45
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final emitSource$lifecycle_livedata_ktx_release(Landroidx/lifecycle/LiveData;Ll4/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Lm7/a1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    iget v1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->result:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_43

    if-eq v2, v4, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/CoroutineLiveData;

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_61

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    iget-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/CoroutineLiveData;

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_53

    :cond_43
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    invoke-virtual {p0, v0}, Landroidx/lifecycle/CoroutineLiveData;->clearSource$lifecycle_livedata_ktx_release(Ll4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_53

    return-object v1

    :cond_53
    :goto_53
    iput-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    invoke-static {p0, p1, v0}, Landroidx/lifecycle/CoroutineLiveDataKt;->addDisposableSource(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;Ll4/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_61

    return-object v1

    :cond_61
    :goto_61
    check-cast p2, Landroidx/lifecycle/EmittedSource;

    iput-object p2, p0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    return-object p2
.end method

.method public onActive()V
    .registers 1

    invoke-super {p0}, Landroidx/lifecycle/MediatorLiveData;->onActive()V

    iget-object p0, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/lifecycle/BlockRunner;->maybeRun()V

    :cond_a
    return-void
.end method

.method public onInactive()V
    .registers 1

    invoke-super {p0}, Landroidx/lifecycle/MediatorLiveData;->onInactive()V

    iget-object p0, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/lifecycle/BlockRunner;->cancel()V

    :cond_a
    return-void
.end method
