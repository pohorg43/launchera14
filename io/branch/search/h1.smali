.class public final Lio/branch/search/h1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lm7/j0;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            "Lio/branch/search/BranchLocalSearchRequest;",
            "Lm7/j0;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/j1<",
            "+",
            "Lio/branch/search/BranchLocalSearchResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/branch/search/h1$c;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Lio/branch/search/h1$c;

    iget v2, v1, Lio/branch/search/h1$c;->b:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_19

    sub-int/2addr v2, v3

    iput v2, v1, Lio/branch/search/h1$c;->b:I

    goto :goto_1e

    :cond_19
    new-instance v1, Lio/branch/search/h1$c;

    invoke-direct {v1, v0}, Lio/branch/search/h1$c;-><init>(Ll4/d;)V

    :goto_1e
    move-object v15, v1

    iget-object v0, v15, Lio/branch/search/h1$c;->a:Ljava/lang/Object;

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v1, v15, Lio/branch/search/h1$c;->b:I

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    if-eq v1, v3, :cond_3f

    if-ne v1, v4, :cond_37

    iget-object v1, v15, Lio/branch/search/h1$c;->c:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/i1;

    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_1d3

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-wide v6, v15, Lio/branch/search/h1$c;->i:J

    iget-object v1, v15, Lio/branch/search/h1$c;->h:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/i1;

    iget-object v8, v15, Lio/branch/search/h1$c;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, v15, Lio/branch/search/h1$c;->f:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v15, Lio/branch/search/h1$c;->e:Ljava/lang/Object;

    check-cast v10, Lm7/j0;

    iget-object v11, v15, Lio/branch/search/h1$c;->d:Ljava/lang/Object;

    check-cast v11, Lio/branch/search/BranchLocalSearchRequest;

    iget-object v12, v15, Lio/branch/search/h1$c;->c:Ljava/lang/Object;

    check-cast v12, Lio/branch/search/m;

    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    move-wide/from16 v30, v6

    move-object v7, v0

    move-object v0, v10

    move-object v6, v12

    move-object v12, v5

    move v5, v3

    move-wide/from16 v3, v30

    goto/16 :goto_140

    :cond_67
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/v0;->a:Lio/branch/search/t0;

    invoke-interface {v0, v14}, Lio/branch/search/t0;->a(Lio/branch/search/BranchLocalSearchRequest;)V

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->m()I

    move-result v1

    int-to-long v12, v1

    if-eqz p3, :cond_7d

    move-object/from16 v11, p3

    goto :goto_82

    :cond_7d
    invoke-static {}, Lio/branch/search/p0;->a()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    :goto_82
    invoke-static {}, Lio/branch/search/p0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_95

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_93

    goto :goto_95

    :cond_93
    const/4 v1, 0x0

    goto :goto_96

    :cond_95
    :goto_95
    move v1, v3

    :goto_96
    if-eqz v1, :cond_b4

    sget-object v7, Lio/branch/search/j1;->Companion:Lio/branch/search/j1$a;

    new-instance v8, Lio/branch/search/BranchLocalError$EmptyQuery;

    invoke-direct {v8}, Lio/branch/search/BranchLocalError$EmptyQuery;-><init>()V

    new-instance v9, Lio/branch/search/p0;

    const-string v2, "local_search"

    const-string v3, "app"

    const-string v4, "local_search"

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v5, v11

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v8, v9}, Lio/branch/search/j1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/p0;)Lio/branch/search/j1;

    move-result-object v0

    return-object v0

    :cond_b4
    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchLocalSearchRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fe

    sget-object v1, Lio/branch/search/t0$a;->b:Lio/branch/search/t0$a;

    invoke-interface {v0, v1}, Lio/branch/search/t0;->a(Lio/branch/search/t0$a;)Z

    move-result v0

    if-eqz v0, :cond_c7

    goto :goto_fe

    :cond_c7
    new-instance v16, Lio/branch/search/i1;

    new-instance v17, Lio/branch/search/p0;

    const-string v9, "local_search"

    const-string v0, "app"

    const-string v1, "local_search"

    move-object/from16 v7, v17

    move-object/from16 v8, p1

    move-object/from16 p3, v10

    move-object v10, v0

    move-object v0, v11

    move-object v11, v1

    move-wide/from16 v18, v12

    move-object v12, v0

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v7, Lio/branch/search/h1$d;

    invoke-direct {v7, v6, v14}, Lio/branch/search/h1$d;-><init>(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;)V

    const-string v8, "SQL"

    move-object v13, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p2

    move v11, v3

    move-object v3, v8

    move v10, v4

    move-object/from16 v4, v17

    move-object v8, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lio/branch/search/i1;-><init>(Lio/branch/search/m;Lm7/j0;Ljava/lang/String;Lio/branch/search/p0;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v2, v16

    goto :goto_108

    :cond_fe
    :goto_fe
    move-object v8, v5

    move-object/from16 p3, v10

    move-wide/from16 v18, v12

    move-object v12, v2

    move v10, v4

    move-object v13, v11

    move v11, v3

    move-object v2, v12

    :goto_108
    if-eqz v2, :cond_14f

    iput-object v6, v15, Lio/branch/search/h1$c;->c:Ljava/lang/Object;

    iput-object v14, v15, Lio/branch/search/h1$c;->d:Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v0, v15, Lio/branch/search/h1$c;->e:Ljava/lang/Object;

    iput-object v13, v15, Lio/branch/search/h1$c;->f:Ljava/lang/Object;

    move-object/from16 v1, p3

    iput-object v1, v15, Lio/branch/search/h1$c;->g:Ljava/lang/Object;

    iput-object v2, v15, Lio/branch/search/h1$c;->h:Ljava/lang/Object;

    move-wide/from16 v3, v18

    iput-wide v3, v15, Lio/branch/search/h1$c;->i:J

    iput v11, v15, Lio/branch/search/h1$c;->b:I

    const/4 v5, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v7, v2

    move-object/from16 v20, v8

    move-wide v8, v3

    move v10, v5

    move v5, v11

    move-object v11, v15

    move/from16 v12, v16

    move-object/from16 v16, v13

    move-object/from16 v13, v17

    invoke-static/range {v7 .. v13}, Lio/branch/search/i1;->a(Lio/branch/search/i1;JZLl4/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v12, v20

    if-ne v7, v12, :cond_13b

    return-object v12

    :cond_13b
    move-object v8, v1

    move-object v1, v2

    move-object v11, v14

    move-object/from16 v9, v16

    :goto_140
    move-object v2, v7

    check-cast v2, Lio/branch/search/j1;

    move-object v13, v0

    move-object/from16 v22, v6

    move-object v10, v9

    move-object v9, v11

    move-object v11, v8

    move-wide/from16 v30, v3

    move-object v3, v1

    move-wide/from16 v0, v30

    goto :goto_163

    :cond_14f
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v12, v8

    move v5, v11

    move-object/from16 v16, v13

    move-wide/from16 v3, v18

    move-object v13, v0

    move-object v11, v1

    move-wide v0, v3

    move-object/from16 v22, v6

    move-object v9, v14

    move-object/from16 v10, v16

    move-object v3, v2

    const/4 v2, 0x0

    :goto_163
    if-eqz v2, :cond_16a

    invoke-virtual {v2}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v4

    goto :goto_16b

    :cond_16a
    const/4 v4, 0x0

    :goto_16b
    instance-of v6, v4, Lio/branch/search/f5$b;

    if-eqz v6, :cond_18a

    check-cast v4, Lio/branch/search/f5$b;

    invoke-virtual {v4}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_18a

    invoke-virtual {v3, v5}, Lio/branch/search/i1;->a(Z)V

    new-instance v0, Lh4/j;

    invoke-virtual {v3}, Lio/branch/search/i1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1dd

    :cond_18a
    if-eqz v3, :cond_18f

    invoke-virtual {v3}, Lio/branch/search/i1;->a()V

    :cond_18f
    new-instance v14, Lio/branch/search/i1;

    new-instance v16, Lio/branch/search/p0;

    const-string v25, "local_search"

    const-string v26, "app"

    const-string v27, "local_search"

    move-object/from16 v23, v16

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    invoke-direct/range {v23 .. v29}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v26, Lio/branch/search/h1$b;

    move-object/from16 v2, v26

    move-object v4, v15

    move-wide v5, v0

    move-object/from16 v7, v22

    move-object v8, v13

    invoke-direct/range {v2 .. v11}, Lio/branch/search/h1$b;-><init>(Lio/branch/search/i1;Ll4/d;JLio/branch/search/m;Lm7/j0;Lio/branch/search/BranchLocalSearchRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const-string v24, "FALLBACK"

    move-object/from16 v21, v14

    move-object/from16 v23, v13

    move-object/from16 v25, v16

    invoke-direct/range {v21 .. v26}, Lio/branch/search/i1;-><init>(Lio/branch/search/m;Lm7/j0;Ljava/lang/String;Lio/branch/search/p0;Lkotlin/jvm/functions/Function1;)V

    iput-object v14, v15, Lio/branch/search/h1$c;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v15, Lio/branch/search/h1$c;->d:Ljava/lang/Object;

    iput-object v0, v15, Lio/branch/search/h1$c;->e:Ljava/lang/Object;

    iput-object v0, v15, Lio/branch/search/h1$c;->f:Ljava/lang/Object;

    iput-object v0, v15, Lio/branch/search/h1$c;->g:Ljava/lang/Object;

    iput-object v0, v15, Lio/branch/search/h1$c;->h:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v15, Lio/branch/search/h1$c;->b:I

    invoke-virtual {v14, v15}, Lio/branch/search/i1;->a(Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_1d2

    return-object v12

    :cond_1d2
    move-object v1, v14

    :goto_1d3
    invoke-virtual {v1}, Lio/branch/search/i1;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh4/j;

    invoke-direct {v2, v0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_1dd
    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/j1;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v2

    invoke-virtual {v1}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v3

    instance-of v4, v3, Lio/branch/search/f5$b;

    if-eqz v4, :cond_21a

    check-cast v3, Lio/branch/search/f5$b;

    invoke-virtual {v3}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lio/branch/search/BranchLocalSearchResult;

    invoke-virtual {v1}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v1

    iget-object v1, v1, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-direct {v4, v3, v1}, Lio/branch/search/BranchLocalSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/v0;->a:Lio/branch/search/t0;

    sget-object v3, Lio/branch/search/t0$a;->a:Lio/branch/search/t0$a;

    invoke-interface {v1, v3}, Lio/branch/search/t0;->a(Lio/branch/search/t0$a;)Z

    move-result v1

    if-eqz v1, :cond_214

    new-instance v1, Lio/branch/search/l1;

    invoke-direct {v1, v4, v0}, Lio/branch/search/l1;-><init>(Lio/branch/search/BranchLocalSearchResult;Ljava/lang/String;)V

    move-object v4, v1

    :cond_214
    new-instance v3, Lio/branch/search/f5$b;

    invoke-direct {v3, v4}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_21e

    :cond_21a
    instance-of v0, v3, Lio/branch/search/f5$a;

    if-eqz v0, :cond_224

    :goto_21e
    new-instance v0, Lio/branch/search/j1;

    invoke-direct {v0, v2, v3}, Lio/branch/search/j1;-><init>(Lio/branch/search/p0;Lio/branch/search/f5;)V

    return-object v0

    :cond_224
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0
.end method

.method public static synthetic a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lm7/j0;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lm7/j0;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/branch/search/m;Lio/branch/search/BranchZeroStateRequest;Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            "Lio/branch/search/BranchZeroStateRequest;",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/j1<",
            "+",
            "Lio/branch/search/BranchZeroStateResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lio/branch/search/h1$f;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Lio/branch/search/h1$f;

    iget v2, v1, Lio/branch/search/h1$f;->b:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lio/branch/search/h1$f;->b:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lio/branch/search/h1$f;

    invoke-direct {v1, v0}, Lio/branch/search/h1$f;-><init>(Ll4/d;)V

    :goto_1a
    iget-object v0, v1, Lio/branch/search/h1$f;->a:Ljava/lang/Object;

    sget-object v2, Lm4/a;->a:Lm4/a;

    iget v3, v1, Lio/branch/search/h1$f;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    if-ne v3, v4, :cond_29

    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_69

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/p0;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lio/branch/search/p0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    new-instance v0, Lio/branch/search/i1;

    new-instance v16, Lio/branch/search/p0;

    const-string v7, "zero_state"

    const-string v8, "app"

    const-string v9, "zero_state"

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v3, Lio/branch/search/h1$g;

    move-object/from16 v5, p0

    invoke-direct {v3, v5}, Lio/branch/search/h1$g;-><init>(Lio/branch/search/m;)V

    const-string v15, "SQL"

    move-object v12, v0

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lio/branch/search/i1;-><init>(Lio/branch/search/m;Lm7/j0;Ljava/lang/String;Lio/branch/search/p0;Lkotlin/jvm/functions/Function1;)V

    iput v4, v1, Lio/branch/search/h1$f;->b:I

    invoke-virtual {v0, v1}, Lio/branch/search/i1;->a(Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_69

    return-object v2

    :cond_69
    :goto_69
    check-cast v0, Lio/branch/search/j1;

    invoke-virtual {v0}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v1

    invoke-virtual {v0}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v2

    instance-of v3, v2, Lio/branch/search/f5$b;

    if-eqz v3, :cond_90

    check-cast v2, Lio/branch/search/f5$b;

    invoke-virtual {v2}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lio/branch/search/BranchZeroStateResult;

    invoke-virtual {v0}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Lio/branch/search/BranchZeroStateResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Lio/branch/search/f5$b;

    invoke-direct {v2, v3}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_94

    :cond_90
    instance-of v0, v2, Lio/branch/search/f5$a;

    if-eqz v0, :cond_9a

    :goto_94
    new-instance v0, Lio/branch/search/j1;

    invoke-direct {v0, v1, v2}, Lio/branch/search/j1;-><init>(Lio/branch/search/p0;Lio/branch/search/f5;)V

    return-object v0

    :cond_9a
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0
.end method

.method public static final a(Lio/branch/search/j1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/j1<",
            "+",
            "Lio/branch/search/BranchQueryHintResult;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "trackBranchQueryHintResult"
    .end annotation

    const-string v0, "$this$track"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v0

    instance-of v0, v0, Lio/branch/search/f5$b;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lio/branch/search/j1;->a()Lio/branch/search/f5;

    move-result-object v0

    check-cast v0, Lio/branch/search/f5$b;

    invoke-virtual {v0}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchQueryHintResult;

    invoke-virtual {v0}, Lio/branch/search/BranchQueryHintResult;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchQueryHint;

    invoke-virtual {p0}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/branch/search/p0;->b(Lio/branch/search/AnalyticsEntity;)V

    goto :goto_21

    :cond_35
    invoke-virtual {p0}, Lio/branch/search/j1;->b()Lio/branch/search/p0;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/p0;->d()V

    return-void
.end method

.method public static final a(Lio/branch/search/m;)V
    .registers 2

    const-string v0, "branchSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    const-string v0, "branchSearch.localInterface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    invoke-virtual {p0}, Lio/branch/search/k2;->c()V

    return-void
.end method

.method public static final a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;)V
    .registers 11

    const-string v0, "branchSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance p1, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p1}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIRewrite.localSearch"

    invoke-virtual {p0, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/branch/search/IBranchLocalSearchEvents;->onBranchLocalSearchError(Lio/branch/search/BranchLocalError;)V

    return-void

    :cond_2b
    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v2

    sget-object v3, Lm7/y0;->b:Lm7/f0;

    new-instance v5, Lio/branch/search/h1$e;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lio/branch/search/h1$e;-><init>(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public static final a(Lio/branch/search/m;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
    .registers 11

    const-string v0, "branchSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance p1, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p1}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIRewrite.localQueryHint"

    invoke-virtual {p0, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/branch/search/IBranchLocalQueryHintEvents;->onBranchQueryHintError(Lio/branch/search/BranchLocalError;)V

    return-void

    :cond_2b
    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v2

    sget-object v3, Lm7/y0;->b:Lm7/f0;

    new-instance v5, Lio/branch/search/h1$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lio/branch/search/h1$a;-><init>(Lio/branch/search/m;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public static final a(Lio/branch/search/m;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchZeroStateEvents;)V
    .registers 11

    const-string v0, "branchSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance p1, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p1}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIRewrite.localZeroStateWithCallback"

    invoke-virtual {p0, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/branch/search/IBranchZeroStateEvents;->onBranchZeroStateError(Lio/branch/search/BranchLocalError;)V

    return-void

    :cond_2b
    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v2

    sget-object v3, Lm7/y0;->b:Lm7/f0;

    new-instance v5, Lio/branch/search/h1$h;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lio/branch/search/h1$h;-><init>(Lio/branch/search/m;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchZeroStateEvents;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
