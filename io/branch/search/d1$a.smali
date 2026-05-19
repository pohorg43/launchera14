.class public final Lio/branch/search/d1$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/d1;->a(Lio/branch/search/BranchAppStoreRequest;Lf4/c;)V
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
    c = "io.branch.search.internal.interfaces.KAppStoreInterfaceImpl$appStoreSearch$1"
    f = "KAppStoreInterface.kt"
    l = {
        0x33,
        0x3b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:J

.field public d:I

.field public final synthetic e:Lio/branch/search/d1;

.field public final synthetic f:Lio/branch/search/BranchAppStoreRequest;

.field public final synthetic g:Lf4/c;


# direct methods
.method public constructor <init>(Lio/branch/search/d1;Lio/branch/search/BranchAppStoreRequest;Lf4/c;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/d1$a;->e:Lio/branch/search/d1;

    iput-object p2, p0, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    iput-object p3, p0, Lio/branch/search/d1$a;->g:Lf4/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 6
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

    new-instance v0, Lio/branch/search/d1$a;

    iget-object v1, p0, Lio/branch/search/d1$a;->e:Lio/branch/search/d1;

    iget-object v2, p0, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    iget-object p0, p0, Lio/branch/search/d1$a;->g:Lf4/c;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/branch/search/d1$a;-><init>(Lio/branch/search/d1;Lio/branch/search/BranchAppStoreRequest;Lf4/c;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/d1$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/d1$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/d1$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/d1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v4, p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, v4, Lio/branch/search/d1$a;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3c

    if-eq v1, v3, :cond_2a

    if-ne v1, v2, :cond_22

    iget-wide v0, v4, Lio/branch/search/d1$a;->c:J

    iget-object v2, v4, Lio/branch/search/d1$a;->b:Ljava/lang/Object;

    check-cast v2, Lio/branch/search/p0;

    iget-object v3, v4, Lio/branch/search/d1$a;->a:Ljava/lang/Object;

    check-cast v3, Lm7/j0;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v8, v3

    move-object v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_da

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-wide v6, v4, Lio/branch/search/d1$a;->c:J

    iget-object v1, v4, Lio/branch/search/d1$a;->b:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/p0;

    iget-object v3, v4, Lio/branch/search/d1$a;->a:Ljava/lang/Object;

    check-cast v3, Lm7/j0;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-wide v7, v6

    move-object v6, v3

    move-object/from16 v3, p1

    goto :goto_a0

    :cond_3c
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v1, v4, Lio/branch/search/d1$a;->a:Ljava/lang/Object;

    check-cast v1, Lm7/j0;

    new-instance v12, Lio/branch/search/p0;

    iget-object v7, v4, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    invoke-static {}, Lio/branch/search/p0;->a()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    const-string v8, "app_store_api"

    const-string v9, "app_store_app"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v4, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {v8}, Lio/branch/search/BranchAppStoreRequest;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_66

    move v8, v3

    goto :goto_67

    :cond_66
    const/4 v8, 0x0

    :goto_67
    if-eqz v8, :cond_77

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    new-instance v2, Lio/branch/search/d1$a$a;

    invoke-direct {v2, v4, v5}, Lio/branch/search/d1$a$a;-><init>(Lio/branch/search/d1$a;Ll4/d;)V

    move-object v11, v0

    move-object v10, v1

    move-object v13, v2

    goto/16 :goto_1ab

    :cond_77
    iget-object v8, v4, Lio/branch/search/d1$a;->e:Lio/branch/search/d1;

    invoke-virtual {v8}, Lio/branch/search/d1;->a()Lio/branch/search/m;

    move-result-object v8

    invoke-virtual {v8}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lio/branch/search/KBranchRemoteConfiguration;->e()Z

    move-result v8

    if-eqz v8, :cond_a8

    sget-object v8, Lm7/y0;->d:Lm7/f0;

    new-instance v9, Lio/branch/search/d1$a$e;

    invoke-direct {v9, v4, v12, v5}, Lio/branch/search/d1$a$e;-><init>(Lio/branch/search/d1$a;Lio/branch/search/p0;Ll4/d;)V

    iput-object v1, v4, Lio/branch/search/d1$a;->a:Ljava/lang/Object;

    iput-object v12, v4, Lio/branch/search/d1$a;->b:Ljava/lang/Object;

    iput-wide v6, v4, Lio/branch/search/d1$a;->c:J

    iput v3, v4, Lio/branch/search/d1$a;->d:I

    invoke-static {v8, v9, v4}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_9d

    return-object v0

    :cond_9d
    move-wide v7, v6

    move-object v6, v1

    move-object v1, v12

    :goto_a0
    check-cast v3, Lio/branch/search/f5;

    move-wide/from16 v18, v7

    move-object v8, v6

    move-wide/from16 v6, v18

    goto :goto_b4

    :cond_a8
    new-instance v3, Lio/branch/search/f5$b;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v3, v8}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v1, v12

    :goto_b4
    instance-of v9, v3, Lio/branch/search/f5$b;

    if-eqz v9, :cond_e0

    check-cast v3, Lio/branch/search/f5$b;

    invoke-virtual {v3}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {}, Lio/branch/search/c5;->c()Lm7/j1;

    move-result-object v9

    new-instance v10, Lio/branch/search/d1$a$d;

    invoke-direct {v10, v3, v5, v4, v1}, Lio/branch/search/d1$a$d;-><init>(Lorg/json/JSONObject;Ll4/d;Lio/branch/search/d1$a;Lio/branch/search/p0;)V

    iput-object v8, v4, Lio/branch/search/d1$a;->a:Ljava/lang/Object;

    iput-object v1, v4, Lio/branch/search/d1$a;->b:Ljava/lang/Object;

    iput-wide v6, v4, Lio/branch/search/d1$a;->c:J

    iput v2, v4, Lio/branch/search/d1$a;->d:I

    invoke-static {v9, v10, v4}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_d8

    return-object v0

    :cond_d8
    move-object v3, v1

    move-wide v0, v6

    :goto_da
    check-cast v2, Lio/branch/search/f5;

    move-wide v10, v0

    move-object v6, v3

    move-object v3, v2

    goto :goto_e6

    :cond_e0
    instance-of v0, v3, Lio/branch/search/f5$a;

    if-eqz v0, :cond_1c0

    move-wide v10, v6

    move-object v6, v1

    :goto_e6
    sget-object v9, Lio/branch/search/i1;->Companion:Lio/branch/search/i1$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3}, Lio/branch/search/f5;->a()Z

    move-result v14

    iget-object v0, v4, Lio/branch/search/d1$a;->e:Lio/branch/search/d1;

    invoke-virtual {v0}, Lio/branch/search/d1;->a()Lio/branch/search/m;

    move-result-object v17

    const-string v15, "SOURCE_SQL_APP_STORE"

    move-object/from16 v16, v6

    invoke-virtual/range {v9 .. v17}, Lio/branch/search/i1$b;->a(JJZLjava/lang/String;Lio/branch/search/p0;Lio/branch/search/m;)V

    instance-of v0, v3, Lio/branch/search/f5$b;

    if-eqz v0, :cond_112

    move-object v1, v3

    check-cast v1, Lio/branch/search/f5$b;

    invoke-virtual {v1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/p0;

    invoke-virtual {v1}, Lio/branch/search/p0;->d()V

    goto :goto_116

    :cond_112
    instance-of v1, v3, Lio/branch/search/f5$a;

    if-eqz v1, :cond_1ba

    :goto_116
    if-eqz v0, :cond_18c

    check-cast v3, Lio/branch/search/f5$b;

    invoke-virtual {v3}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    check-cast v0, Lh4/j;

    if-eqz v0, :cond_17c

    iget-object v1, v4, Lio/branch/search/d1$a;->e:Lio/branch/search/d1;

    invoke-virtual {v1}, Lio/branch/search/d1;->a()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->d()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v9

    iget-object v1, v4, Lio/branch/search/d1$a;->e:Lio/branch/search/d1;

    invoke-virtual {v1}, Lio/branch/search/d1;->a()Lio/branch/search/m;

    move-result-object v10

    iget-object v0, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Lio/branch/search/BranchAppStoreSearchResult;

    invoke-virtual {v0}, Lio/branch/search/BranchBaseLinkSearchResult;->getResults()Ljava/util/List;

    move-result-object v0

    const-string v1, "it.first.results"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_153
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_168

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchAppStoreLinkResult;

    new-instance v3, Lio/branch/search/c;

    invoke-direct {v3, v1}, Lio/branch/search/c;-><init>(Lio/branch/search/BranchAppStoreLinkResult;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    :cond_168
    sget-object v13, Lio/branch/search/u4;->d:Lio/branch/search/u4;

    const/4 v14, 0x1

    move-object v12, v6

    invoke-static/range {v9 .. v14}, Lio/branch/search/x4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/m;Ljava/util/List;Lio/branch/search/p0;Lio/branch/search/u4;Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lf4/d;

    iget-object v3, v4, Lio/branch/search/d1$a;->f:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {v3}, Lio/branch/search/BranchAppStoreRequest;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lf4/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_17d

    :cond_17c
    move-object v1, v5

    :goto_17d
    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v7, Lr7/v;->a:Lm7/b2;

    new-instance v9, Lio/branch/search/d1$a$b;

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v4, p0

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lio/branch/search/d1$a$b;-><init>(Lf4/d;Lio/branch/search/BranchSearchError;Ll4/d;Lio/branch/search/d1$a;Lm7/j0;Lio/branch/search/p0;)V

    goto :goto_1a8

    :cond_18c
    instance-of v0, v3, Lio/branch/search/f5$a;

    if-eqz v0, :cond_1b4

    check-cast v3, Lio/branch/search/f5$a;

    invoke-virtual {v3}, Lio/branch/search/f5$a;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/branch/search/BranchSearchError;

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v7, Lr7/v;->a:Lm7/b2;

    new-instance v9, Lio/branch/search/d1$a$c;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v4, p0

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lio/branch/search/d1$a$c;-><init>(Lf4/d;Lio/branch/search/BranchSearchError;Ll4/d;Lio/branch/search/d1$a;Lm7/j0;Lio/branch/search/p0;)V

    :goto_1a8
    move-object v11, v7

    move-object v10, v8

    move-object v13, v9

    :goto_1ab
    const/4 v15, 0x0

    const/4 v14, 0x2

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_1b4
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_1ba
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_1c0
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0
.end method
