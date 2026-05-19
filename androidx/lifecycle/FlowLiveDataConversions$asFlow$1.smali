.class final Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/FlowLiveDataConversions;->asFlow(Landroidx/lifecycle/LiveData;)Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lp7/e<",
        "-TT;>;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1"
    f = "FlowLiveData.kt"
    l = {
        0x61,
        0x65,
        0x66
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $this_asFlow:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method

.method public static synthetic a(Lo7/f;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->invokeSuspend$lambda-0(Lo7/f;Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lo7/f;Ljava/lang/Object;)V
    .registers 2

    invoke-interface {p0, p1}, Lo7/t;->q(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;

    iget-object p0, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;-><init>(Landroidx/lifecycle/LiveData;Ll4/d;)V

    iput-object p1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lp7/e;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->invoke(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lp7/e;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "-TT;>;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4c

    if-eq v1, v5, :cond_3c

    if-eq v1, v2, :cond_29

    if-ne v1, v3, :cond_21

    iget-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lo7/h;

    iget-object v5, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroidx/lifecycle/Observer;

    iget-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lp7/e;

    :try_start_1c
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_39

    :cond_1f
    move-object p1, v1

    goto :goto_83

    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    iget-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lo7/h;

    iget-object v5, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroidx/lifecycle/Observer;

    iget-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lp7/e;

    :try_start_35
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_95

    :catchall_39
    move-exception p1

    goto/16 :goto_ca

    :cond_3c
    iget-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/Observer;

    iget-object v5, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lo7/f;

    iget-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lp7/e;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_7e

    :cond_4c
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lp7/e;

    const/4 p1, -0x1

    const/4 v1, 0x6

    invoke-static {p1, v4, v4, v1}, Lo7/i;->a(ILo7/a;Lkotlin/jvm/functions/Function1;I)Lo7/f;

    move-result-object p1

    new-instance v1, Landroidx/lifecycle/b;

    invoke-direct {v1, p1}, Landroidx/lifecycle/b;-><init>(Lo7/f;)V

    sget-object v7, Lm7/y0;->a:Lm7/y0;

    sget-object v7, Lr7/v;->a:Lm7/b2;

    invoke-virtual {v7}, Lm7/b2;->q()Lm7/b2;

    move-result-object v7

    new-instance v8, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$1;

    iget-object v9, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    invoke-direct {v8, v9, v1, v4}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$1;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;Ll4/d;)V

    iput-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    invoke-static {v7, v8, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_7d

    return-object v0

    :cond_7d
    move-object v5, p1

    :goto_7e
    :try_start_7e
    invoke-interface {v5}, Lo7/s;->iterator()Lo7/h;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_cc

    move-object v5, v1

    :goto_83
    :try_start_83
    iput-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    invoke-interface {p1, p0}, Lo7/h;->e(Ll4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_92

    return-object v0

    :cond_92
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    :goto_95
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b0

    invoke-interface {v1}, Lo7/h;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object v6, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->label:I

    invoke-interface {v6, p1, p0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_ad
    .catchall {:try_start_83 .. :try_end_ad} :catchall_39

    if-ne p1, v0, :cond_1f

    return-object v0

    :cond_b0
    sget-object v6, Lm7/l1;->a:Lm7/l1;

    sget-object p1, Lm7/y0;->a:Lm7/y0;

    sget-object p1, Lr7/v;->a:Lm7/b2;

    invoke-virtual {p1}, Lm7/b2;->q()Lm7/b2;

    move-result-object v7

    new-instance v9, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;

    iget-object p0, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    invoke-direct {v9, p0, v5, v4}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;Ll4/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :goto_ca
    move-object v1, v5

    goto :goto_cd

    :catchall_cc
    move-exception p1

    :goto_cd
    sget-object v5, Lm7/l1;->a:Lm7/l1;

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-virtual {v0}, Lm7/b2;->q()Lm7/b2;

    move-result-object v6

    new-instance v8, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;

    iget-object p0, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->$this_asFlow:Landroidx/lifecycle/LiveData;

    invoke-direct {v8, p0, v1, v4}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;Ll4/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    throw p1
.end method
