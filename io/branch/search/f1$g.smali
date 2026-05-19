.class public final Lio/branch/search/f1$g;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f1;->a(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;)Z
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$queryHint$2"
    f = "KNetworkInterface.kt"
    l = {
        0xee,
        0xf4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/f1;

.field public final synthetic e:Lio/branch/search/BranchQueryHintRequest;

.field public final synthetic f:Lio/branch/search/IBranchQueryHintEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/f1;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/f1$g;->d:Lio/branch/search/f1;

    iput-object p2, p0, Lio/branch/search/f1$g;->e:Lio/branch/search/BranchQueryHintRequest;

    iput-object p3, p0, Lio/branch/search/f1$g;->f:Lio/branch/search/IBranchQueryHintEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
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

    new-instance p1, Lio/branch/search/f1$g;

    iget-object v0, p0, Lio/branch/search/f1$g;->d:Lio/branch/search/f1;

    iget-object v1, p0, Lio/branch/search/f1$g;->e:Lio/branch/search/BranchQueryHintRequest;

    iget-object p0, p0, Lio/branch/search/f1$g;->f:Lio/branch/search/IBranchQueryHintEvents;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/f1$g;-><init>(Lio/branch/search/f1;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1$g;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/f1$g;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/f1$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/f1$g;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    if-eq v1, v3, :cond_19

    if-ne v1, v2, :cond_11

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_c9

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    iget-object v1, p0, Lio/branch/search/f1$g;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/branch/search/f1$g;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_91

    :cond_25
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, p0, Lio/branch/search/f1$g;->d:Lio/branch/search/f1;

    sget-object v5, Lio/branch/search/t5;->m:Lio/branch/search/t5;

    invoke-static {v4}, Lio/branch/search/f1;->a(Lio/branch/search/f1;)Lio/branch/search/m;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p1

    const-string v6, "branchSearch.branchConfiguration"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->i()Ljava/lang/String;

    move-result-object v6

    const-string p1, "branchSearch.branchConfiguration.hintsUrl"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/branch/search/f1$g;->e:Lio/branch/search/BranchQueryHintRequest;

    iget-object v7, p0, Lio/branch/search/f1$g;->d:Lio/branch/search/f1;

    invoke-static {v7}, Lio/branch/search/f1;->a(Lio/branch/search/f1;)Lio/branch/search/m;

    move-result-object v7

    invoke-virtual {v7}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lio/branch/search/f1$g;->d:Lio/branch/search/f1;

    invoke-static {v8}, Lio/branch/search/f1;->a(Lio/branch/search/f1;)Lio/branch/search/m;

    move-result-object v8

    invoke-virtual {v8}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v8

    iget-object v9, p0, Lio/branch/search/f1$g;->d:Lio/branch/search/f1;

    invoke-static {v9}, Lio/branch/search/f1;->a(Lio/branch/search/f1;)Lio/branch/search/m;

    move-result-object v9

    invoke-virtual {v9}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object v9

    iget-object v10, p0, Lio/branch/search/f1$g;->d:Lio/branch/search/f1;

    invoke-static {v10}, Lio/branch/search/f1;->a(Lio/branch/search/f1;)Lio/branch/search/m;

    move-result-object v10

    invoke-virtual {v10}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Lio/branch/search/f;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;Lio/branch/search/KBranchRemoteConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string p1, "request.toPayload(branch…Configuration).toString()"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lio/branch/search/f1$g;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/f1$g;->b:Ljava/lang/Object;

    iput v3, p0, Lio/branch/search/f1$g;->c:I

    const/4 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v9, p0

    invoke-static/range {v4 .. v11}, Lio/branch/search/f1;->a(Lio/branch/search/f1;Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_90

    return-object v0

    :cond_90
    move-object v3, v1

    :goto_91
    check-cast p1, Lio/branch/search/f5;

    instance-of v4, p1, Lio/branch/search/f5$b;

    if-eqz v4, :cond_ac

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object v4, p0, Lio/branch/search/f1$g;->e:Lio/branch/search/BranchQueryHintRequest;

    invoke-static {v4, p1}, Lio/branch/search/BranchQueryHintResult;->a(Lio/branch/search/BranchQueryHintRequest;Lorg/json/JSONObject;)Lio/branch/search/BranchQueryHintResult;

    move-result-object p1

    new-instance v4, Lio/branch/search/f5$b;

    invoke-direct {v4, p1}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_b0

    :cond_ac
    instance-of v4, p1, Lio/branch/search/f5$a;

    if-eqz v4, :cond_cc

    :goto_b0
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Lm7/y0;->a:Lm7/y0;

    sget-object p1, Lr7/v;->a:Lm7/b2;

    new-instance v1, Lio/branch/search/f1$g$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lio/branch/search/f1$g$a;-><init>(Lio/branch/search/f1$g;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    iput-object v4, p0, Lio/branch/search/f1$g;->a:Ljava/lang/Object;

    iput-object v4, p0, Lio/branch/search/f1$g;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/f1$g;->c:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c9

    return-object v0

    :cond_c9
    :goto_c9
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_cc
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
