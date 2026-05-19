.class final Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LiveDataScopeImpl;->emitSource(Landroidx/lifecycle/LiveData;Ll4/d;)Ljava/lang/Object;
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
        "Lm7/a1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "androidx.lifecycle.LiveDataScopeImpl$emitSource$2"
    f = "CoroutineLiveData.kt"
    l = {
        0x5f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $source:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Landroidx/lifecycle/LiveDataScopeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveDataScopeImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveDataScopeImpl;Landroidx/lifecycle/LiveData;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveDataScopeImpl<",
            "TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->this$0:Landroidx/lifecycle/LiveDataScopeImpl;

    iput-object p2, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->$source:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
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

    new-instance p1, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;

    iget-object v0, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->this$0:Landroidx/lifecycle/LiveDataScopeImpl;

    iget-object p0, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->$source:Landroidx/lifecycle/LiveData;

    invoke-direct {p1, v0, p0, p2}, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;-><init>(Landroidx/lifecycle/LiveDataScopeImpl;Landroidx/lifecycle/LiveData;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lm7/a1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_29

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->this$0:Landroidx/lifecycle/LiveDataScopeImpl;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveDataScopeImpl;->getTarget$lifecycle_livedata_ktx_release()Landroidx/lifecycle/CoroutineLiveData;

    move-result-object p1

    iget-object v1, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->$source:Landroidx/lifecycle/LiveData;

    iput v2, p0, Landroidx/lifecycle/LiveDataScopeImpl$emitSource$2;->label:I

    invoke-virtual {p1, v1, p0}, Landroidx/lifecycle/CoroutineLiveData;->emitSource$lifecycle_livedata_ktx_release(Landroidx/lifecycle/LiveData;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    return-object p1
.end method
