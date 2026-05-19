.class public abstract Lpantanal/content/base/IServiceDao;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getCurrentList$default(Lpantanal/content/base/IServiceDao;Ljava/util/Set;IILjava/lang/Object;)Ljava/util/List;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x3

    :cond_7
    invoke-virtual {p0, p1, p2}, Lpantanal/content/base/IServiceDao;->getCurrentList(Ljava/util/Set;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCurrentList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic registerObserver$default(Lpantanal/content/base/IServiceDao;ILkotlin/jvm/functions/Function1;IILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x3

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lpantanal/content/base/IServiceDao;->registerObserver(ILkotlin/jvm/functions/Function1;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: registerObserver"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic unregisterObserver$default(Lpantanal/content/base/IServiceDao;Lkotlin/jvm/functions/Function1;IILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x3

    :cond_7
    invoke-virtual {p0, p1, p2}, Lpantanal/content/base/IServiceDao;->unregisterObserver(Lkotlin/jvm/functions/Function1;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unregisterObserver"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAllList()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public abstract getCurrentList(Ljava/util/Set;I)Ljava/util/List;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public abstract getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;
.end method

.method public abstract registerObserver(ILkotlin/jvm/functions/Function1;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;",
            "Lh4/z;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract unregisterObserver(Lkotlin/jvm/functions/Function1;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+TT;>;",
            "Lh4/z;",
            ">;I)V"
        }
    .end annotation
.end method
