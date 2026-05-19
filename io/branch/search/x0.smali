.class public final Lio/branch/search/x0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lp1/c;JJLl4/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;JJ",
            "Ll4/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/branch/search/x0$c;

    if-eqz v0, :cond_13

    move-object v0, p5

    check-cast v0, Lio/branch/search/x0$c;

    iget v1, v0, Lio/branch/search/x0$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/x0$c;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/branch/search/x0$c;

    invoke-direct {v0, p5}, Lio/branch/search/x0$c;-><init>(Ll4/d;)V

    :goto_18
    iget-object p5, v0, Lio/branch/search/x0$c;->a:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lio/branch/search/x0$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    if-ne v2, v3, :cond_27

    invoke-static {p5}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_41

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    invoke-static {p5}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance p5, Lio/branch/search/x0$d;

    const/4 v2, 0x0

    invoke-direct {p5, p0, p3, p4, v2}, Lio/branch/search/x0$d;-><init>(Lp1/c;JLl4/d;)V

    iput v3, v0, Lio/branch/search/x0$c;->b:I

    invoke-static {p1, p2, p5, v0}, Lm7/r2;->c(JLkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_41

    return-object v1

    :cond_41
    :goto_41
    check-cast p5, Ljava/lang/Boolean;

    if-eqz p5, :cond_46

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lp1/c;JJLl4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 14

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_6

    const-wide/16 p1, 0x2710

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_d

    const-wide/16 p3, 0x1f4

    :cond_d
    move-wide v3, p3

    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/branch/search/x0;->a(Lp1/c;JJLl4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/branch/search/l;Ljava/util/List;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v0

    const-string v1, "DrawableLoader.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lio/branch/search/x0$b;->a:Lio/branch/search/x0$b;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "transform"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p2}, Li4/q0;->a(II)V

    instance-of v3, v2, Ljava/util/RandomAccess;

    const/4 v4, 0x1

    if-eqz v3, :cond_80

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_80

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    div-int v5, v3, p2

    rem-int v6, v3, p2

    const/4 v7, 0x0

    if-nez v6, :cond_4a

    move v6, v7

    goto :goto_4b

    :cond_4a
    move v6, v4

    :goto_4b
    add-int/2addr v5, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Li4/l0;

    invoke-direct {v5, v2}, Li4/l0;-><init>(Ljava/util/List;)V

    move v2, v7

    :goto_57
    if-ltz v2, :cond_5d

    if-ge v2, v3, :cond_5d

    move v8, v4

    goto :goto_5e

    :cond_5d
    move v8, v7

    :goto_5e
    if-eqz v8, :cond_a1

    sub-int v8, v3, v2

    if-le p2, v8, :cond_65

    goto :goto_66

    :cond_65
    move v8, p2

    :goto_66
    add-int/2addr v8, v2

    sget-object v9, Li4/c;->Companion:Li4/c$a;

    iget-object v10, v5, Li4/l0;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v2, v8, v10}, Li4/c$a;->c(III)V

    iput v2, v5, Li4/l0;->b:I

    sub-int/2addr v8, v2

    iput v8, v5, Li4/l0;->c:I

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, p2

    goto :goto_57

    :cond_80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p2, p2, v4, v4}, Li4/q0;->b(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;

    move-result-object p2

    :goto_8d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_a1
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p1, Lio/branch/search/x0$a;

    const/4 p2, 0x0

    invoke-direct {p1, v1, v0, p0, p2}, Lio/branch/search/x0$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/y0;Lio/branch/search/l;Ll4/d;)V

    invoke-static {p2, p1, v4, p2}, Lm7/h;->d(Ll4/f;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
