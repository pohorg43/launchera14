.class public final Lio/branch/search/x3$c;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/x3;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.sqlite.SafeRoomObservableProvider$addObserverToStream$2"
    f = "SafeRoomObservableProvider.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/x3;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lio/branch/search/x3;ILandroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ll4/d;)V
    .registers 7

    iput-object p1, p0, Lio/branch/search/x3$c;->b:Lio/branch/search/x3;

    iput p2, p0, Lio/branch/search/x3$c;->c:I

    iput-object p3, p0, Lio/branch/search/x3$c;->d:Landroidx/lifecycle/MutableLiveData;

    iput-object p4, p0, Lio/branch/search/x3$c;->e:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/x3$c;->f:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/x3$c;

    iget-object v1, p0, Lio/branch/search/x3$c;->b:Lio/branch/search/x3;

    iget v2, p0, Lio/branch/search/x3$c;->c:I

    iget-object v3, p0, Lio/branch/search/x3$c;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lio/branch/search/x3$c;->e:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/x3$c;->f:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/x3$c;-><init>(Lio/branch/search/x3;ILandroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/x3$c;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/x3$c;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/x3$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/x3$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lio/branch/search/x3;->Companion:Lio/branch/search/x3$a;

    iget v1, p0, Lio/branch/search/x3$c;->c:I

    invoke-virtual {p1, v1}, Lio/branch/search/x3$a;->a(I)J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying with delay: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SafeRoomObservableProvider.getObservable"

    invoke-static {v1, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lio/branch/search/x3$c;->a:I

    invoke-static {v3, v4, p0}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3f

    return-object v0

    :cond_3f
    :goto_3f
    iget-object p1, p0, Lio/branch/search/x3$c;->b:Lio/branch/search/x3;

    iget-object v0, p0, Lio/branch/search/x3$c;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lio/branch/search/x3$c;->e:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/x3$c;->f:Lkotlin/jvm/functions/Function0;

    iget p0, p0, Lio/branch/search/x3$c;->c:I

    sub-int/2addr p0, v2

    invoke-static {p1, v0, v1, v3, p0}, Lio/branch/search/x3;->a(Lio/branch/search/x3;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
