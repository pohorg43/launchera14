.class public final Lio/branch/search/e1$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1;->b(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1"
    f = "KCompositeInterface.kt"
    l = {
        0xc3,
        0xd6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lio/branch/search/e1;

.field public final synthetic h:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

.field public final synthetic i:Lio/branch/search/BranchCompositeSearchRequest;

.field public final synthetic j:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

.field public final synthetic k:Lf4/c;


# direct methods
.method public constructor <init>(Lio/branch/search/e1;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lf4/c;Ll4/d;)V
    .registers 7

    iput-object p1, p0, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    iput-object p2, p0, Lio/branch/search/e1$b;->h:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    iput-object p3, p0, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    iput-object p4, p0, Lio/branch/search/e1$b;->j:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iput-object p5, p0, Lio/branch/search/e1$b;->k:Lf4/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
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

    new-instance v0, Lio/branch/search/e1$b;

    iget-object v2, p0, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    iget-object v3, p0, Lio/branch/search/e1$b;->h:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    iget-object v4, p0, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v5, p0, Lio/branch/search/e1$b;->j:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iget-object v6, p0, Lio/branch/search/e1$b;->k:Lf4/c;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/e1$b;-><init>(Lio/branch/search/e1;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lf4/c;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/e1$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27

    move-object/from16 v8, p0

    sget-object v9, Lm4/a;->a:Lm4/a;

    iget v0, v8, Lio/branch/search/e1$b;->f:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_36

    if-eq v0, v12, :cond_1d

    if-ne v0, v11, :cond_15

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_1a0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, v8, Lio/branch/search/e1$b;->e:Ljava/lang/Object;

    check-cast v0, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iget-object v1, v8, Lio/branch/search/e1$b;->d:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/BranchSearchRequest;

    iget-object v2, v8, Lio/branch/search/e1$b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, v8, Lio/branch/search/e1$b;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, v8, Lio/branch/search/e1$b;->a:Ljava/lang/Object;

    check-cast v4, Lm7/j0;

    :try_start_31
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_34
    .catch Lm7/p2; {:try_start_31 .. :try_end_34} :catch_13f

    goto/16 :goto_142

    :cond_36
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v0, v8, Lio/branch/search/e1$b;->a:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lm7/j0;

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v13, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v8, Lio/branch/search/e1$b;->h:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    if-eqz v0, :cond_9e

    new-instance v0, Lio/branch/search/p0;

    iget-object v1, v8, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v2, v1, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/BranchAppStoreRequest;

    invoke-static {}, Lio/branch/search/p0;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const-string v3, "app_store_api"

    const-string v4, "app_store_app"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v8, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v0, v0, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {v0}, Lio/branch/search/BranchAppStoreRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_72

    move v0, v12

    goto :goto_73

    :cond_72
    move v0, v10

    :goto_73
    if-eqz v0, :cond_86

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v4, Lio/branch/search/e1$b$a;

    invoke-direct {v4, v8, v7, v13}, Lio/branch/search/e1$b$a;-><init>(Lio/branch/search/e1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v14

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    goto :goto_9e

    :cond_86
    invoke-static {}, Lio/branch/search/c5;->c()Lm7/j1;

    move-result-object v6

    new-instance v15, Lio/branch/search/e1$b$b;

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lio/branch/search/e1$b$b;-><init>(Lio/branch/search/e1$b;Lkotlin/jvm/internal/Ref$ObjectRef;JLl4/d;)V

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, v14

    move-object v2, v6

    move-object v4, v15

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;

    :cond_9e
    :goto_9e
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v15, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, v8, Lio/branch/search/e1$b;->i:Lio/branch/search/BranchCompositeSearchRequest;

    invoke-virtual {v0}, Lio/branch/search/BranchCompositeSearchRequest;->getRemoteRequest()Lio/branch/search/BranchSearchRequest;

    move-result-object v5

    iget-object v0, v8, Lio/branch/search/e1$b;->j:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-eqz v0, :cond_b3

    goto :goto_bb

    :cond_b3
    iget-object v0, v8, Lio/branch/search/e1$b;->h:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    instance-of v1, v0, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-nez v1, :cond_bb

    move-object v4, v13

    goto :goto_bc

    :cond_bb
    :goto_bb
    move-object v4, v0

    :goto_bc
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v16, Lio/branch/search/e1$b$f;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v7, v3

    move-object v3, v6

    move-object/from16 p1, v4

    move-object/from16 v18, v5

    move-object v10, v6

    move-object v6, v15

    move-object v11, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e1$b$f;-><init>(Lio/branch/search/e1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v14

    move-object/from16 v4, v16

    invoke-static/range {v1 .. v6}, Lm7/h;->a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;

    move-result-object v0

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_e5
    iget-object v0, v8, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v0}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->u()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f6

    goto :goto_10e

    :cond_f6
    iget-object v0, v8, Lio/branch/search/e1$b;->g:Lio/branch/search/e1;

    invoke-static {v0}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->m()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    mul-double/2addr v0, v2

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v2

    :goto_10e
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance v2, Lio/branch/search/e1$b$c;

    invoke-direct {v2, v11, v13}, Lio/branch/search/e1$b$c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    iput-object v14, v8, Lio/branch/search/e1$b;->a:Ljava/lang/Object;

    iput-object v15, v8, Lio/branch/search/e1$b;->b:Ljava/lang/Object;

    iput-object v10, v8, Lio/branch/search/e1$b;->c:Ljava/lang/Object;
    :try_end_11d
    .catch Lm7/p2; {:try_start_e5 .. :try_end_11d} :catch_136

    move-object/from16 v3, v18

    :try_start_11f
    iput-object v3, v8, Lio/branch/search/e1$b;->d:Ljava/lang/Object;
    :try_end_121
    .catch Lm7/p2; {:try_start_11f .. :try_end_121} :catch_133

    move-object/from16 v4, p1

    :try_start_123
    iput-object v4, v8, Lio/branch/search/e1$b;->e:Ljava/lang/Object;

    iput v12, v8, Lio/branch/search/e1$b;->f:I

    invoke-static {v0, v1, v2, v8}, Lm7/r2;->b(JLkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12b
    .catch Lm7/p2; {:try_start_123 .. :try_end_12b} :catch_13a

    if-ne v0, v9, :cond_12e

    return-object v9

    :cond_12e
    move-object v2, v3

    move-object v3, v10

    move-object/from16 v19, v14

    goto :goto_148

    :catch_133
    move-object/from16 v4, p1

    goto :goto_13a

    :catch_136
    move-object/from16 v4, p1

    move-object/from16 v3, v18

    :catch_13a
    :goto_13a
    move-object v1, v3

    move-object v0, v4

    move-object v2, v10

    move-object v4, v14

    move-object v3, v15

    :catch_13f
    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_142
    move-object v15, v3

    move-object/from16 v19, v4

    move-object v4, v0

    move-object v3, v2

    move-object v2, v1

    :goto_148
    if-eqz v2, :cond_1a0

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a0

    invoke-virtual {v2}, Lio/branch/search/BranchSearchRequest;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remoteRequest.normalizedQuery"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_161

    move v10, v12

    goto :goto_162

    :cond_161
    const/4 v10, 0x0

    :goto_162
    if-eqz v10, :cond_181

    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_181

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v20, Lr7/v;->a:Lm7/b2;

    new-instance v0, Lio/branch/search/e1$b$d;

    invoke-direct {v0, v8, v2, v4, v13}, Lio/branch/search/e1$b$d;-><init>(Lio/branch/search/e1$b;Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Ll4/d;)V

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v0

    invoke-static/range {v19 .. v24}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_181
    sget-object v6, Lm7/y0;->d:Lm7/f0;

    new-instance v7, Lio/branch/search/e1$b$e;

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lio/branch/search/e1$b$e;-><init>(Lio/branch/search/e1$b;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Ll4/d;)V

    iput-object v13, v8, Lio/branch/search/e1$b;->a:Ljava/lang/Object;

    iput-object v13, v8, Lio/branch/search/e1$b;->b:Ljava/lang/Object;

    iput-object v13, v8, Lio/branch/search/e1$b;->c:Ljava/lang/Object;

    iput-object v13, v8, Lio/branch/search/e1$b;->d:Ljava/lang/Object;

    iput-object v13, v8, Lio/branch/search/e1$b;->e:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v8, Lio/branch/search/e1$b;->f:I

    invoke-static {v6, v7, v8}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_1a0

    return-object v9

    :cond_1a0
    :goto_1a0
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
