.class public final Lio/branch/search/e1$b$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$2"
    f = "KCompositeInterface.kt"
    l = {
        0x68,
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/e1$b;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lio/branch/search/e1$b;Lkotlin/jvm/internal/Ref$ObjectRef;JLl4/d;)V
    .registers 6

    iput-object p1, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iput-object p2, p0, Lio/branch/search/e1$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide p3, p0, Lio/branch/search/e1$b$b;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/e1$b$b;

    iget-object v2, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object v3, p0, Lio/branch/search/e1$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v4, p0, Lio/branch/search/e1$b$b;->e:J

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/branch/search/e1$b$b;-><init>(Lio/branch/search/e1$b;Lkotlin/jvm/internal/Ref$ObjectRef;JLl4/d;)V

    iput-object p1, v0, Lio/branch/search/e1$b$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/e1$b$b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v4, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v0, p0, Lio/branch/search/e1$b$b;->a:Ljava/lang/Object;

    check-cast v0, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_95

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    iget-object v1, p0, Lio/branch/search/e1$b$b;->a:Ljava/lang/Object;

    check-cast v1, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_52

    :cond_26
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1$b$b;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lm7/j0;

    iget-object p1, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object p1, p1, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {p1}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->e()Z

    move-result p1

    if-eqz p1, :cond_55

    sget-object p1, Lm7/y0;->d:Lm7/f0;

    new-instance v5, Lio/branch/search/e1$b$b$b;

    invoke-direct {v5, p0, v3}, Lio/branch/search/e1$b$b$b;-><init>(Lio/branch/search/e1$b$b;Ll4/d;)V

    iput-object v1, p0, Lio/branch/search/e1$b$b;->a:Ljava/lang/Object;

    iput v4, p0, Lio/branch/search/e1$b$b;->b:I

    invoke-static {p1, v5, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_52

    return-object v0

    :cond_52
    :goto_52
    check-cast p1, Lio/branch/search/f5;

    goto :goto_5f

    :cond_55
    new-instance p1, Lio/branch/search/f5$b;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p1, v4}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    :goto_5f
    instance-of v4, p1, Lio/branch/search/f5$b;

    if-eqz v4, :cond_99

    sget-object v5, Lio/branch/search/u1;->a:Lio/branch/search/u1;

    iget-object v4, p0, Lio/branch/search/e1$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Lio/branch/search/p0;

    iget-object v4, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object v4, v4, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v4}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v7

    iget-object v4, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object v4, v4, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v8, v4, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/BranchAppStoreRequest;

    const-string v4, "request.appStoreRequest"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lorg/json/JSONObject;

    iput-object v1, p0, Lio/branch/search/e1$b$b;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/e1$b$b;->b:I

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lio/branch/search/u1;->a(Lio/branch/search/p0;Lio/branch/search/m;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_94

    return-object v0

    :cond_94
    move-object v0, v1

    :goto_95
    check-cast p1, Lio/branch/search/f5;

    move-object v4, v0

    goto :goto_aa

    :cond_99
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_fb

    new-instance v0, Lio/branch/search/f5$a;

    check-cast p1, Lio/branch/search/f5$a;

    invoke-virtual {p1}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    move-object v4, v1

    :goto_aa
    sget-object v5, Lio/branch/search/i1;->Companion:Lio/branch/search/i1$b;

    iget-wide v6, p0, Lio/branch/search/e1$b$b;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Lio/branch/search/f5;->a()Z

    move-result v10

    iget-object v0, p0, Lio/branch/search/e1$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lio/branch/search/p0;

    iget-object v0, p0, Lio/branch/search/e1$b$b;->c:Lio/branch/search/e1$b;

    iget-object v0, v0, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v0}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v13

    const-string v11, "SOURCE_SQL_APP_STORE"

    invoke-virtual/range {v5 .. v13}, Lio/branch/search/i1$b;->a(JJZLjava/lang/String;Lio/branch/search/p0;Lio/branch/search/m;)V

    instance-of v0, p1, Lio/branch/search/f5$b;

    if-eqz v0, :cond_df

    move-object v0, p1

    check-cast v0, Lio/branch/search/f5$b;

    invoke-virtual {v0}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Lio/branch/search/p0;

    invoke-virtual {v0}, Lio/branch/search/p0;->d()V

    goto :goto_e3

    :cond_df
    instance-of v0, p1, Lio/branch/search/f5$a;

    if-eqz v0, :cond_f5

    :goto_e3
    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v5, Lr7/v;->a:Lm7/b2;

    new-instance v7, Lio/branch/search/e1$b$b$a;

    invoke-direct {v7, p0, p1, v3}, Lio/branch/search/e1$b$b$a;-><init>(Lio/branch/search/e1$b$b;Lio/branch/search/f5;Ll4/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_f5
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_fb
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
