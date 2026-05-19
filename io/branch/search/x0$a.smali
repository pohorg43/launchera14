.class public final Lio/branch/search/x0$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/x0;->a(Lio/branch/search/l;Ljava/util/List;I)V
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
    c = "io.branch.search.internal.image.DrawableHelpersKt$bucketize$1"
    f = "DrawableHelpers.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:Lio/branch/search/y0;

.field public final synthetic f:Lio/branch/search/l;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/y0;Lio/branch/search/l;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/x0$a;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lio/branch/search/x0$a;->e:Lio/branch/search/y0;

    iput-object p3, p0, Lio/branch/search/x0$a;->f:Lio/branch/search/l;

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

    new-instance v0, Lio/branch/search/x0$a;

    iget-object v1, p0, Lio/branch/search/x0$a;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lio/branch/search/x0$a;->e:Lio/branch/search/y0;

    iget-object p0, p0, Lio/branch/search/x0$a;->f:Lio/branch/search/l;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/branch/search/x0$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/y0;Lio/branch/search/l;Ll4/d;)V

    iput-object p1, v0, Lio/branch/search/x0$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/x0$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/x0$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/x0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/x0$a;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lio/branch/search/x0$a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lio/branch/search/x0$a;->a:Ljava/lang/Object;

    check-cast v3, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/x0$a;->a:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lm7/j0;

    iget-object p1, p0, Lio/branch/search/x0$a;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    move-object p1, v3

    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/x0$a;->e:Lio/branch/search/y0;

    new-instance v5, Lio/branch/search/z0;

    iget-object v6, p0, Lio/branch/search/x0$a;->f:Lio/branch/search/l;

    invoke-direct {v5, v3, v6}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    invoke-virtual {v4, v5}, Lio/branch/search/y0;->b(Lio/branch/search/z0;)Lp1/c;

    move-result-object v4

    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object v5

    invoke-virtual {v5}, Lio/branch/search/j0;->a()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_76

    const-string v5, "preloaded image for url: "

    invoke-static {v5, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_77

    :cond_76
    move-object v3, v6

    :goto_77
    if-eqz v3, :cond_82

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_80

    goto :goto_82

    :cond_80
    const/4 v5, 0x0

    goto :goto_83

    :cond_82
    :goto_82
    move v5, v2

    :goto_83
    if-nez v5, :cond_a3

    const/16 v5, 0x1000

    invoke-static {v3, v5}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "bucketize"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_a3
    new-instance v7, Lio/branch/search/x0$a$a;

    invoke-direct {v7, v4, v6}, Lio/branch/search/x0$a$a;-><init>(Lp1/c;Ll4/d;)V

    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, v7

    move v7, v8

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Lm7/h;->a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_b8
    iput-object p1, p0, Lio/branch/search/x0$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/x0$a;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/x0$a;->c:I

    invoke-static {v9, p0}, Lm7/d;->a(Ljava/util/Collection;Ll4/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_30

    return-object v0

    :cond_c5
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
